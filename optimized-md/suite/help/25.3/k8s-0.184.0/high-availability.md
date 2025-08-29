---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/high-availability.html
original_path: k8s-0.184.0/high-availability.html
version: "25.3"
title: "High Availability"
page_id: "k8s-0.184.0/high-availability"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# High Availability

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to configure [High Availability](../High_Availability_and_Distributed_Installations.html) for installations of Appian on Kubernetes.

## What is high availability?

Highly available installations of Appian are robust to certain classes of hardware and infrastructure failure. For an installation of Appian on Kubernetes to be considered highly available, each of its components must run more than one replica, spread across different failure domains, such as nodes and zones, so that the unexpected loss of one pod, node, or zone does not take out all replicas of the component. Replicas in a highly available installation may be spread across failure domains as long as there is low (less than 10ms) network latency between replicas.

Here is an example diagram of a high availability configuration of Appian on Kubernetes:

[![Appian on Kubernetes - highly available](images/aok-ha-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1593)

[![](images/aok-ha-diagram.png)](#_)

## How to set up high availability

### Create a ReadWriteMany persistent volume claim

Just like [server-based, highly available installations of Appian require shared file storage](../How_to_Set_Up_High_Availability_Installations.html#requirements), highly available installations of Appian on Kubernetes require [ReadWriteMany](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) storage.

Create a ReadWriteMany [persistent volume claim](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims) in the same namespace as your Appian custom resource. For a list of in-tree volume plugins that support ReadWriteMany, see [Access Modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes). For a list of out-of-tree CSI volume plugins that do so, see [Drivers](https://kubernetes-csi.github.io/docs/drivers.html) (search for "Read/Write Multiple Pod").

**Note:**  A separate ReadWriteMany persistent volume claim must be created from the [ReadWriteMany persistent volume claim created when setting up Health Check](health-check-k8s.html#create-a-readwritemany-persistent-volume-claim).

### Configure your Appian custom resource

For most uses cases, configuring high availability for your installation of Appian on Kubernetes is as easy as setting the `replicas`, `podDisruptionBudget`, and `haExistingClaim` fields in your Appian custom resource:

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
44
45
46
47
48
49
50
51
52
53
54
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  zookeeper:
    # https://docs.appian.com/suite/help/latest/High_Availability_and_Distributed_Installations.html#exactly-three-(3)-instances-of-search-server,-data-service,-and-the-internal-messaging-service
    replicas: 3
    podDisruptionBudget:
      minAvailable: 2

  kafka:
    # https://docs.appian.com/suite/help/latest/High_Availability_and_Distributed_Installations.html#exactly-three-(3)-instances-of-search-server,-data-service,-and-the-internal-messaging-service
    replicas: 3
    podDisruptionBudget:
      minAvailable: 2

  searchServer:
    # https://docs.appian.com/suite/help/latest/High_Availability_and_Distributed_Installations.html#exactly-three-(3)-instances-of-search-server,-data-service,-and-the-internal-messaging-service
    replicas: 3
    podDisruptionBudget:
      minAvailable: 2

  dataServer:
    # https://docs.appian.com/suite/help/latest/High_Availability_and_Distributed_Installations.html#exactly-three-(3)-instances-of-search-server,-data-service,-and-the-internal-messaging-service
    replicas: 3
    podDisruptionBudget:
      minAvailable: 2

  serviceManager:
    # Or greater to meet increased demand
    # https://docs.appian.com/suite/help/latest/High_Availability_and_Distributed_Installations.html#at-least-two-(2)-instances-of-the-application-server-and-appian-engines
    # https://docs.appian.com/suite/help/latest/Scaling_Appian.html#add-application-servers
    replicas: 3
    podDisruptionBudget:
      # Or greater, a percentage, or maxUnavailable (as long as at least 1 replica is always available)
      # https://kubernetes.io/docs/tasks/run-application/configure-pdb/#specifying-a-poddisruptionbudget
      minAvailable: 1

    # USER ACTION REQUIRED - Update to match the name of your ReadWriteMany persistent volume claim
    haExistingClaim: ""

  webapp:
    # Or greater to meet increased demand
    # https://docs.appian.com/suite/help/latest/High_Availability_and_Distributed_Installations.html#at-least-two-(2)-instances-of-the-application-server-and-appian-engines
    # https://docs.appian.com/suite/help/latest/Scaling_Appian.html#add-engine-replicas
    replicas: 3
    podDisruptionBudget:
      # Or greater, a percentage, or maxUnavailable (as long as at least 1 replica is always available)
      # https://kubernetes.io/docs/tasks/run-application/configure-pdb/#specifying-a-poddisruptionbudget
      minAvailable: 1

    # USER ACTION REQUIRED - Update to match the name of your ReadWriteMany persistent volume claim
    haExistingClaim: ""
```

For this configuration, the Appian operator will set the `replicas` field of each component's [stateful set](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/) to `3` and configure its `affinity` field with default inter-pod anti-affinity terms such that the component's replica pods run on different [nodes](https://kubernetes.io/docs/reference/labels-annotations-taints/#kubernetesiohostname) and, if possible, in different [zones](https://kubernetes.io/docs/reference/labels-annotations-taints/#topologykubernetesiozone). It will also create [pod disruption budgets](https://kubernetes.io/docs/concepts/workloads/pods/disruptions/#pod-disruption-budgets) for each component to protect against certain types of [voluntary disruptions](https://kubernetes.io/docs/concepts/workloads/pods/disruptions/#voluntary-and-involuntary-disruptions).

**Note:**  If you define your own pod anti-affinity for a component, you must include the terms that would otherwise be defaulted by the operator. For more information, see [Default inter-pod anti-affinity for Appian custom resources](assigning-pods-to-nodes.html#default-inter-pod-anti-affinity-for-appian-custom-resources).

## Topology changes

The Appian operator's validating admission webhooks disallow most live, topology-related changes to Appian custom resources. The only allowed, live, topology-related changes are:

-   [Changing the number of real-time stores for each Data Server replica](../Configuring_the_Data_Server.html) (`.spec.dataServer.topology.rtsCount`). _Updating this field requires restarting both Data Server's and Webapp's pods._
-   [Changing the number of Webapp replicas](../Scaling_Appian.html#add-application-servers) (`.spec.webapp.replicas`). _Updating this field is disallowed both before Appian has started and when `.spec.webapp.haExistingClaim` hasn't already been set._

Other topology-related changes are only allowed when deleting and recreating Appian custom resources:

-   [Increasing the number of shards of the process analytics and process execution engines](../Scaling_Appian.html#add-execution-and-analytics-shards) (`.spec.serviceManager.topology.analyticsExecShardCount`).
-   [Changing the number of Service Manager / engine replicas](../Scaling_Appian.html#add-engine-replicas) (`.spec.serviceManager.replicas` / `.spec.serviceManager.engineOverrides.<ENGINE>.replicas`). _Updating this field is disallowed when `.spec.serviceManager.haExistingClaim` wasn't previously set._
-   [Changing the number of Webapp replicas](../Scaling_Appian.html#add-application-servers) (`.spec.webapp.replicas`). _Updating this field is disallowed when `.spec.webapp.haExistingClaim` wasn't previously set._

**Note:**  Other topology-related changes are only allowed when deleting and recreating Appian custom resources _and require manual data manipulation and actions as documented in [Converting a standalone environment to HA](../How_to_Set_Up_High_Availability_Installations.html#converting-a-standalone-environment-to-ha) and [Converting an HA environment to standalone](../How_to_Set_Up_High_Availability_Installations.html#converting-an-ha-environment-to-standalone)._ Documentation on performing these operations for installations of Appian on Kubernetes will be made available at a later time.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...