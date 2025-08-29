---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/troubleshooting-appian-k8s.html
original_path: k8s-0.184.0/troubleshooting-appian-k8s.html
version: "25.3"
title: "Troubleshooting Appian on Kubernetes"
page_id: "k8s-0.184.0/troubleshooting-appian-k8s"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Troubleshooting Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to troubleshoot Appian on Kubernetes for self-managed customers. It has tips for troubleshooting both the Appian site and Appian operator and specifics for site startup and shutdown.

## Troubleshooting site startup

As documented in the [install guide](install-appian-on-k8s.html), the status of a newly created Appian custom resource should transition from not set to `Creating` to `Starting` within seconds and then from `Starting` to `Ready` within 20 to 30 minutes. To check the status of your custom resource, run `kubectl get appians`:

```
1
2
3
$ kubectl -n <NAMESPACE> get appians
NAME     URL                  STATUS   AGE
appian   appian.example.com   Ready    25m
```

If the status is either not set or `Creating`, go to [Site status stuck in not set or Creating](#site-status-stuck-in-not-set-or-creating). If the status is `Starting`, go to [Site status stuck in starting](#site-status-stuck-in-starting).

### License issues

The Appian Operator may indicate one of the following issues with your license. Here are the possible errors and the steps you can take to resolve the issue.

`Warning: LicenseError, Appian terminal error: could not verify message using any of the signatures or keys`

This indicates your appian.lic file is no longer verifiable against our public key, and you may need to request a new License via Support Case.

`Warning: LicenseError, Appian terminal error: license is expired as of <YYYY-MM-DD>`

This indicates that your appian.lic license has expired. To resolve this, you need to request a new License via Support Case.

`Warning: LicenseError, Appian terminal error: license valid for <hostname license> but not <.Spec.URL.Hostname()>`

This indicates the hostname indicated in your appian.lic does not match that of your installation. To resolve this, you need to ensure your hostname matches that of your license.

### Site status stuck in not set or Creating

If the status of your custom resource never reaches `Starting`, the Appian operator is unable to create your custom resource's corresponding secondary resources, such as [ConfigMaps](https://kubernetes.io/docs/concepts/configuration/configmap/), [StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/), or [Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/).

#### Step 1: Check for reconciliation errors

If you set [webhooks.enabled](helm-chart-values.html) to `false` when installing the Appian operator Helm chart, it's likely that the operator is failing to reconcile your custom resource due to a validation error. If not, it's still likely that some other type of reconciliation error is the culprit.

Reconciliation errors are recorded as events on Appian custom resources.

To check your custom resource for reconciliation errors, run:

```
1
kubectl -n <NAMESPACE> describe appian <APPIAN>
```

For example:

```
1
2
3
4
5
6
$ kubectl -n <NAMESPACE> describe appian appian
...
Events:
  Type     Reason          Age                From               Message
  ----     ------          ----               ----               -------
  Warning  ReconcileError  32s (x15 over 2m)  appian-controller  Appian.crd.k8s.appian.com "appian" is invalid: spec.webapp.haExistingClaim: Required value: required when .spec.webapp.replicas is greater than 1
```

Reconciliation errors are represented by `ReconcileError` events of type `Warning`. If you see such an event, take the appropriate steps to resolve it as necessary.

#### Step 2: Check the operator

If you don't see a reconciliation error, it's likely that the operator itself isn't running properly.

To check the operator, run:

```
1
kubectl -n appian-operator get deployments,replicasets,pods
```

If everything is working properly, you should see something similar to the following:

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
NAME                                          READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/appian-operator-controllers   1/1     1            1           55m
deployment.apps/appian-operator-webhooks      1/1     1            1           55m

NAME                                                    DESIRED   CURRENT   READY   AGE
replicaset.apps/appian-operator-controllers-b9f7cc6fc   1         1         1       55m
replicaset.apps/appian-operator-webhooks-6f47f9d888     1         1         1       55m

NAME                                              READY   STATUS    RESTARTS   AGE
pod/appian-operator-controllers-b9f7cc6fc-d6p54   1/1     Running   0          55m
pod/appian-operator-webhooks-6f47f9d888-klzzg     1/1     Running   0          55m
```

#### Step 3: Check for operator Pods with bad status

If a Pod's status is `CrashLoopBackOff`, check its logs by running:

```
1
kubectl -n appian-operator logs <POD> --previous
```

If a Pod's status isn't `CrashLoopBackOff` or `Running`, check its events by running:

```
1
kubectl -n appian-operator describe pod <POD>
```

#### Step 4: Check for operator Pods that don't exist

If a Pod doesn't exist but its ReplicaSet does, check its ReplicaSet's events by running:

```
1
kubectl -n appian-operator describe replicaset <REPLICA_SET>
```

If a Pod and its ReplicaSet don't exist, check its Deployment's events by running:

```
1
kubectl -n appian-operator describe deployment <DEPLOYMENT>
```

### Site status stuck in Starting

If the status of your custom resource reaches `Starting` but never reaches `Ready`, the Appian operator has created your custom resource's corresponding secondary resources, but one or more components do not have a sufficient number of ready Pods.

#### Step 1: Inspect the resources

To troubleshoot the site, run:

```
1
kubectl -n <NAMESPACE> get statefulsets,deployments,replicasets,pods
```

If everything is working properly, you should see something similar to the following:

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
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
NAME                                                          READY   AGE
statefulset.apps/appian-data-server                           1/1     25m
statefulset.apps/appian-kafka                                 1/1     25m
statefulset.apps/appian-search-server                         1/1     25m
statefulset.apps/appian-service-manager-analytics00           1/1     25m
statefulset.apps/appian-service-manager-analytics01           1/1     25m
statefulset.apps/appian-service-manager-analytics02           1/1     25m
statefulset.apps/appian-service-manager-channels              1/1     25m
statefulset.apps/appian-service-manager-content               1/1     25m
statefulset.apps/appian-service-manager-download-stats        1/1     25m
statefulset.apps/appian-service-manager-execution00           1/1     25m
statefulset.apps/appian-service-manager-execution01           1/1     25m
statefulset.apps/appian-service-manager-execution02           1/1     25m
statefulset.apps/appian-service-manager-forums                1/1     25m
statefulset.apps/appian-service-manager-groups                1/1     25m
statefulset.apps/appian-service-manager-notifications         1/1     25m
statefulset.apps/appian-service-manager-notifications-email   1/1     25m
statefulset.apps/appian-service-manager-portal                1/1     25m
statefulset.apps/appian-service-manager-process-design        1/1     25m
statefulset.apps/appian-webapp                                1/1     25m
statefulset.apps/appian-zookeeper                             1/1     25m

NAME                                               READY   STATUS    RESTARTS   AGE
pod/appian-data-server-0                           1/1     Running   0          25m
pod/appian-kafka-0                                 1/1     Running   0          25m
pod/appian-search-server-0                         1/1     Running   0          25m
pod/appian-service-manager-analytics00-0           1/1     Running   0          25m
pod/appian-service-manager-analytics01-0           1/1     Running   0          25m
pod/appian-service-manager-analytics02-0           1/1     Running   0          25m
pod/appian-service-manager-channels-0              1/1     Running   0          25m
pod/appian-service-manager-content-0               1/1     Running   0          25m
pod/appian-service-manager-download-stats-0        1/1     Running   0          25m
pod/appian-service-manager-execution00-0           1/1     Running   0          25m
pod/appian-service-manager-execution01-0           1/1     Running   0          25m
pod/appian-service-manager-execution02-0           1/1     Running   0          25m
pod/appian-service-manager-forums-0                1/1     Running   0          25m
pod/appian-service-manager-groups-0                1/1     Running   0          25m
pod/appian-service-manager-notifications-0         1/1     Running   0          25m
pod/appian-service-manager-notifications-email-0   1/1     Running   0          25m
pod/appian-service-manager-portal-0                1/1     Running   0          25m
pod/appian-service-manager-process-design-0        1/1     Running   0          25m
pod/appian-webapp-0                                1/1     Running   0          25m
pod/appian-zookeeper-0                             1/1     Running   0          25m
```

For Search Server, Zookeeper, Kafka, Data Server, each engine, and Webapp, you should see a single [StatefulSet](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/). For each, you should also see a single Pod per replica. If you specified multiple Service Manager / engine or Webapp replicas, only the Pod for the first will be created initially. The rest will be created sequentially as they become ready.

If you enabled Apache Web Server (httpd), you should see a single [Deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) and [ReplicaSet](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/), but one or more Pods depending on how many replicas you specified.

#### Step 2: Check for Pods with bad status

If a Pod's status is `CrashLoopBackOff`, check its logs by running:

```
1
kubectl -n <NAMESPACE> logs <POD> --previous
```

If a Pod's status is `Running` but its `READY` column displays `0/1`, run:

```
1
kubectl -n <NAMESPACE> logs <POD>
```

If a Pod's status isn't `CrashLoopBackOff` or `Running`, check its events by running:

```
1
kubectl -n <NAMESPACE> describe pod <POD>
```

#### Step 3: Check for Pods that don't exist

For Apache Web Server (httpd), if a Pod doesn't exist but its ReplicaSet does, check its ReplicaSet's events by running: `kubectl -n <NAMESPACE> describe replicaset <REPLICA_SET>`. If a Pod and its ReplicaSet don't exist, check its Deployment's events by running:

```
1
kubectl -n <NAMESPACE> describe deployment <DEPLOYMENT>
```

For Zookeeper, Kafka, Search Server, Data Server, Service Manager, and Webapp, if a Pod doesn't exist, check its StatefulSet's events by running:

```
1
kubectl -n <NAMESPACE> describe statefulset <STATEFUL_SET>
```

### Troubleshooting multiple components

Appian components have dependencies on one another. If two components are having issues and one component (the downstream component) depends on the other (the upstream component), it's likely that the issues with the downstream component are due to the issues with the upstream component.

_When troubleshooting multiple components, always troubleshoot upstream components first, as they will impact downstream components._

The following table depicts downstream components for each upstream component:

| Upstream Component | Downstream Components |
| --- | --- |
| Zookeeper | Kafka, Data Server, Service Manager, Webapp |
| Kafka | Data Server, Service Manager, Webapp |
| Search Server | Webapp |
| Data Server | Webapp |
| Service Manager | Webapp |
| Webapp | Apache Web Server (httpd) |
| Apache Web Server (httpd) | N/A |

## Troubleshooting site shutdown

When an Appian custom resource is deleted, the Appian operator gracefully shuts down the site by shutting down its stateful components one by one.

Stateful components are shut down in the following order:

1.  Webapp
2.  Search Server
3.  Data Server
4.  Service Manager
5.  Kafka
6.  Zookeeper

Each stateful component aside from Service Manager should shut down within 30 seconds. Service Manager may take several minutes to shut down based on site usage. If the Service Manager does not shut down, follow the instructions in [Removing the Service Manager finalizer](#removing-the-service-manager-finalizer).

### Removing the Service Manager finalizer

Service Manager uses a [job](https://kubernetes.io/docs/concepts/workloads/controllers/job/) based shutdown approach to ensure consistent checkpoints. These jobs block Appian shutdown by way of a [finalizer](https://kubernetes.io/docs/concepts/overview/working-with-objects/finalizers/) named `crd.k8s.appian.com/checkpoint-engines`. Each job initiates a graceful shutdown of the corresponding Service Manager, which includes a checkpoint. Once all the jobs have completed the finalizer is removed and Appian shutdown proceeds.

Each job will attempt graceful shutdown six times before giving up. The status of the jobs can be checked by running the following command.

```
1
   kubectl -n <NAMESPACE> get jobs
```

If the jobs fail to shutdown Service Manager after six attempts then the finalizer must be manually removed.

**Caution:**  If Service Manager fails to shutdown gracefully and the finalizer has to be manually removed then it is unsafe to upgrade Appian. Appian must be restarted on the same version to ensure data integrity. After restarting on the same version perform a graceful shutdown before upgrading.

The finalizer can be manually removed by running the following commands:

1.  Edit the Appian resource.

    ```
    1
    kubectl -n <NAMESPACE> edit appians <APPIAN NAME>
    ```

2.  Locate the section of the custom resource containing the finalizers (this line is not defined in the spec but added by the operator).

    ```
    1
    2
      finalizers:
        - crd.k8s.appian.com/checkpoint-engines
    ```

3.  Delete the line containing the `crd.k8s.appian.com/checkpoint-engines` finalizer

4.  Save your changes.

After removing the finalizer the Service Manager pods should terminate. Shut down may take 5-30 minutes depending on their size. If they do not you will have to shut them down forcefully.

1.  Get the list of Service Manager pods.

    ```
    1
    kubectl get pods
    ```

2.  Exec into one of the Service Manager pods.

    ```
    1
    kubectl exec -it <SERVICE MANAGER POD NAME> -- bash
    ```

3.  Get the list of Java and k processes running in the pod.

    ```
    1
    ps -ef
    ```

    Example:

    ```
    1
    2
    3
    UID        PID  PPID  C STIME TTY          TIME CMD
    appian     144     1  6 12:11 ?        00:22:10 /usr/local/appian/ae/java/bin/java ...
    appian     617     1  6 12:11 ?        00:22:10 /usr/local/appian/ae/server/_bin/k/linux64/k ...
    ```

4.  Kill any Java or k processes.

    **Note:**  killing these processes should cause the pod to terminate and your exec shell session to be terminated.

    ```
    1
    kill -9 <PROCESS ID>
    ```

5.  Repeat for each remaining service manager pod.

This will delete all remaining Service Manager pods and allow Appian shutdown to continue.

## Troubleshooting Unready sites

If the status of your custom resource changes to `Unready` after reaching `Ready`, one or more components do not have a sufficient number of ready Pods. To troubleshoot, follow the instructions described in [Site status stuck in Starting](#site-status-stuck-in-starting).

## Generating a support bundle

After trying the above steps, if you are still having issues, you may try [generating a support bundle](support-bundle.html). The support bundle generation process will check common scenarios for issues.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...