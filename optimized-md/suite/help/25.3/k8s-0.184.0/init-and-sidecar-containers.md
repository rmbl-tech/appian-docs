---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/init-and-sidecar-containers.html
original_path: k8s-0.184.0/init-and-sidecar-containers.html
version: "25.3"
title: "Init and Sidecar Containers"
page_id: "k8s-0.184.0/init-and-sidecar-containers"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Init and Sidecar Containers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to set up init and sidecar containers on Appian custom resources for self-managed customers.

Init containers run before applications containers run in a pod, and sidecar containers run alongside application containers in a pod. One use for init containers is to bootstrap Appian with RDBMS/JDBC drivers not included in the Webapp container image (for example, MySQL or IBM Db2).

## Init Containers

[Init containers](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/) are specialized containers that run before application containers run in a pod. Init containers support many of the features of application containers. Like application containers, init containers can access their Pods' [shared storage volumes](https://kubernetes.io/docs/concepts/workloads/pods/#pod-storage).

The Appian operator and Appian custom resource definition (CRD) support specifying init containers via the [.spec.\[COMPONENT\].initContainers](crds.html#v1beta1component) fields on Appian custom resources.

```
1
2
3
4
5
6
7
8
9
10
11
12
13
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  serviceManager:
    initContainers:
    - name: test
      image: alpine
      command:
      - "/bin/sh"
      - "-c"
      - "echo 'I am an init container'"
```

### Using init containers to add JARs to Tomcat's classpath

Init containers for Webapp pods can be used to add JARs to Tomcat's classpath prior to site startup. This is useful, for example, for bootstrapping Appian with RDBMS/JDBC drivers not included in the Webapp container image (for example, MySQL or IBM Db2).

Appian configures Tomcat to search for JARs in `/usr/local/appian/ae/tomcat/apache-tomcat/lib/ext`. All Webapp pods define a volume mount for the `webapp` container in which Tomcat runs. If you specify a RWX volume using [.spec.webapp.haExistingClaim](crds.html#v1beta1webapp), the volume mount will mount from the [distributed volume](volumes-and-volume-mounts.html#webapp) to this directory with a sub-path of `tomcat/apache-tomcat/lib/ext`:

```
1
2
3
- name: distributed
  subPath: tomcat/apache-tomcat/lib/ext
  mountPath: /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext
```

Otherwise, it will mount from the [storage volume](volumes-and-volume-mounts.html#webapp) with a sub-path of `ae/tomcat/apache-tomcat/lib/ext`:

```
1
2
3
- name: storage
  subPath: ae/tomcat/apache-tomcat/lib/ext
  mountPath: /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext
```

By defining an init container with the same volume mount, it's possible to bootstrap Tomcat with JARs prior to site startup by placing them in `/usr/local/appian/ae/tomcat/apache-tomcat/lib/ext` in the init container. The following custom resource, for example, uses init containers to download the MySQL RDBMS/JDBC driver. Note how it also leverages the `tmp` volume so that `/tmp` is writable in case the container's file system is read-only.

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  webapp:
    initContainers:
    - name: mysql-jdbc-download
      image: alpine
      command:
      - "/bin/sh"
      - "-c"
      - "set -exo pipefail;
         if ! [ -f /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext/mysql-connector-java-5.1.49.jar ]; then
           wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.49.tar.gz -O /tmp/mysql-connector-java-5.1.49.tar.gz;
           [ \"$(md5sum /tmp/mysql-connector-java-5.1.49.tar.gz | awk '{print $1}')\" == \"e7bc11a55398bad0ea8548163deabaa8\" ];
           tar -xzf /tmp/mysql-connector-java-5.1.49.tar.gz -C /tmp;
           cp /tmp/mysql-connector-java-5.1.49/mysql-connector-java-5.1.49.jar /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext;
         fi"
      volumeMounts:
      - name: storage
        subPath: ae/tomcat/apache-tomcat/lib/ext
        mountPath: /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext
      - name: tmp
        mountPath: /tmp
```

While the init container above uses the [alpine Docker image](https://hub.docker.com/_/alpine) to download the MySQL RDBMS/JDBC driver, it's also possible to build and publish your own image containing the driver instead. Imagine, for example, that you've built the following Dockerfile and published the resulting container image as `registry.example.com/mysql-jdbc`:

```
1
2
3
4
5
6
7
8
FROM alpine

RUN \
  wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.49.tar.gz -O /tmp/mysql-connector-java-5.1.49.tar.gz && \
  [ \"$(md5sum /tmp/mysql-connector-java-5.1.49.tar.gz | awk '{print $1}')\" == \"e7bc11a55398bad0ea8548163deabaa8\" ] && \
  tar -xzf /tmp/mysql-connector-java-5.1.49.tar.gz -C /tmp && \
  mkdir /opt/jdbc && \
  cp /tmp/mysql-connector-java-5.1.49/mysql-connector-java-5.1.49.jar /opt/jdbc
```

Then, you could simplify your init container like so:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  webapp:
    initContainers:
    - name: mysql-jdbc-copy
      image: registry.example.com/mysql-jdbc
      command:
      - "/bin/sh"
      - "-c"
      - "set -exo pipefail;
         if ! [ -f /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext/mysql-connector-java-5.1.49.jar ]; then
           cp /opt/jdbc/mysql-connector-java-5.1.49.jar /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext;
         fi"
      volumeMounts:
      - name: storage
        subPath: ae/tomcat/apache-tomcat/lib/ext
        mountPath: /usr/local/appian/ae/tomcat/apache-tomcat/lib/ext
```

## Sidecar Containers

Sidecar containers are containers that run along with the main container in a pod. You can define any number of sidecar containers to run along side the main container. Like application containers, sidecar containers can access their pods' [shared storage volumes](https://kubernetes.io/docs/concepts/workloads/pods/#pod-storage).

The Appian operator and Appian custom resource definition (CRD) support specifying sidecar containers via the [.spec.\[COMPONENT\].sidecarContainers](crds.html#v1beta1component) fields on Appian custom resources.

```
1
2
3
4
5
6
7
8
9
10
11
12
13
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  serviceManager:
    sidecarContainers:
    - name: test
      image: alpine
      command:
      - "/bin/sh"
      - "-c"
      - "while true; do echo 'I am a sidecar container'; sleep 5; done"
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...