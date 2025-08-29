---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/volumes-and-volume-mounts.html
original_path: k8s-0.184.0/volumes-and-volume-mounts.html
version: "25.3"
title: "Volumes and Volume Mounts"
page_id: "k8s-0.184.0/volumes-and-volume-mounts"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Volumes and Volume Mounts

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details volumes and volume mounts for Appian on Kubernetes for self-managed customers.

## Built-in Volumes

The Appian operator defines a core set of built-in volumes for each component's pod(s). The volumes below may be referenced by both [additional volume mounts](#additional-volumes-and-volume-mounts) and [init and sidecar containers](init-and-sidecar-containers.html).

### Zookeeper

| Name | [Type](https://kubernetes.io/docs/concepts/storage/volumes/#volume-types) | Details |
| --- | --- | --- |
| `storage` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent storage perceived to be rooted at `/usr/local/appian` |
| `tmp` | [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) | Ephemeral storage tied to the lifecycle of the pod. Useful for circumnavigating read-only file systems |

### Kafka

| Name | [Type](https://kubernetes.io/docs/concepts/storage/volumes/#volume-types) | Details |
| --- | --- | --- |
| `storage` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent storage perceived to be rooted at `/usr/local/appian` |
| `tmp` | [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) | Ephemeral storage tied to the lifecycle of the pod. Useful for circumnavigating read-only file systems |

### Search Server

| Name | [Type](https://kubernetes.io/docs/concepts/storage/volumes/#volume-types) | Details |
| --- | --- | --- |
| `storage` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent storage perceived to be rooted at `/usr/local/appian` |
| `tmp` | [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) | Ephemeral storage tied to the lifecycle of the pod. Useful for circumnavigating read-only file systems |

### Data Server

| Name | [Type](https://kubernetes.io/docs/concepts/storage/volumes/#volume-types) | Details |
| --- | --- | --- |
| `storage` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent storage perceived to be rooted at `/usr/local/appian` |
| `tmp` | [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) | Ephemeral storage tied to the lifecycle of the pod. Useful for circumnavigating read-only file systems |

### Service Manager

| Name | [Type](https://kubernetes.io/docs/concepts/storage/volumes/#volume-types) | Details |
| --- | --- | --- |
| `storage` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent storage perceived to be rooted at `/usr/local/appian` |
| `distributed` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent, distributed storage perceived to be rooted at `/usr/local/appian/ae`. Only available if [.spec.serviceManager.haExistingClaim](crds.html#v1beta1servicemanager) is specified |
| `tmp` | [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) | Ephemeral storage tied to the lifecycle of the pod. Useful for circumnavigating read-only file systems |

### Webapp

| Name | [Type](https://kubernetes.io/docs/concepts/storage/volumes/#volume-types) | Details |
| --- | --- | --- |
| `storage` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent storage perceived to be rooted at `/usr/local/appian` |
| `distributed` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent, distributed storage perceived to be rooted at `/usr/local/appian/ae`. Only available if [.spec.webapp.haExistingClaim](crds.html#v1beta1webapp) is specified |
| `tmp` | [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) | Ephemeral storage tied to the lifecycle of the pod. Useful for circumnavigating read-only file systems |

### RPA

| Name | [Type](https://kubernetes.io/docs/concepts/storage/volumes/#volume-types) | Details |
| --- | --- | --- |
| `storage` | [persistentVolumeClaim](https://kubernetes.io/docs/concepts/storage/volumes/#persistentvolumeclaim) | Persistent storage perceived to be rooted at `/` |
| `tmp` | [emptyDir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) | Ephemeral storage tied to the lifecycle of the pod. Useful for circumnavigating read-only file systems |

### Additional Volumes and Volume Mounts

The Appian operator and Appian custom resource definition (CRD) allow specifying additional [volumes and volume mounts](https://kubernetes.io/docs/concepts/storage/volumes/) for Appian pods and their containers via the [.spec.\[COMPONENT\].additionalVolumes](crds.html#v1beta1component) and [.spec.\[COMPONENT\].additionalVolumeMounts](crds.html#v1beta1component) fields on Appian custom resources. One use for additional volumes and volume mounts is to [customize application logging](customizing-application-logging.html).

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  webapp:
    additionalVolumes:
      - name: appian-log4j-properties
        configMap:
          name: appian-log4j-properties # The name of the config map
    additionalVolumeMounts:
      - name: appian-log4j-properties # The name of the volume
        subPath: appian_log4j.properties # The name of the key in the config map
        mountPath: /usr/local/appian/ae/deployment/web.war/WEB-INF/resources/appian_log4j.properties
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...