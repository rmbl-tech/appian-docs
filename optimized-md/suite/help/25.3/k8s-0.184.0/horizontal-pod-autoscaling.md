---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/horizontal-pod-autoscaling.html
original_path: k8s-0.184.0/horizontal-pod-autoscaling.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Horizontal Pod Autoscaling (HPA)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes how to configure Horizontal Pod Autoscaling on Appian on Kubernetes for self-managed clients. It allows you to scale replicas of Apache Web Server (httpd) based on observed CPU usage.

## Horizontal Pod Autoscaler

The [Horizontal Pod Autoscaler (HPA)](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) automatically scales the number of pods in a replication Controller, Deployment, ReplicaSet, or StatefulSet based on observed CPU usage.

Appian on Kubernetes only supports autoscaling for Appian's Apache Web Server (httpd) as it is a stateless component. HPA cannot be configured for Appian's [stateful components](crds.html#v1beta1statefulcomponent): Search Server, Zookeeper, Kafka, Data Server, Service Manager, and Webapp.

HPA is configured via the [.spec.httpd.hpa](crds.html#v1beta1horizontalpodautoscalerconfig) fields on Appian custom resources. The following custom resource snippet defines an Appian site with autoscaling enabled for httpd:

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  httpd:
    # replicas: # Cannot be set when HPA is enabled

    hpa:
      # minReplicas: 1 # Defaults to 1
      maxReplicas: 5

      # The target average CPU utilization (represented as a percentage of
      # requested CPU) over all the pods
      # https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/#how-does-the-horizontal-pod-autoscaler-work
      targetCPUUtilizationPercentage: 80
```

## Using Different HPA Versions

The current stable version of the `HorizontalPodAutoscaler` Kubernetes object is in the `autoscaling/v1` API. It only includes support for autoscaling based on CPU usage. The beta version, which includes support for scaling on memory and custom metrics, can be found in `autoscaling/v2beta2`. See the [Kubernetes documentation](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/#api-object) for more information.

The schema of the `HorizontalPodAutoscaler` API object is different across its API versions. Right now, the Appian operator and Appian custom resource definition (CRD) only support creating `HorizontalPodAutoscaler` objects using the `autoscaling/v1` API version. If you want to take advantage of HPA's newer, beta features, you may manually create `HorizontalPodAutoscaler` objects using other API versions out-of-band.

Refer to the [Kubernetes documentation](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/#autoscaling-on-multiple-metrics-and-custom-metrics) for examples of how to create `HorizontalPodAutoscaler` objects using the `autoscaling/v2beta1` API version.

The following code snippet details how to point a `HorizontalPodAutoscaler` object at an Appian site's httpd Deployment using its [scaleTargetRef](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#horizontalpodautoscalerspec-v2-autoscaling) field:

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  # Enable httpd, but don't set its hpa field
  httpd: {...}
---
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    # The name of the httpd deployment is the name of the Appian custom resource
    # (appian) plus the name of the stateless component (httpd)
    name: appian-httpd
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...