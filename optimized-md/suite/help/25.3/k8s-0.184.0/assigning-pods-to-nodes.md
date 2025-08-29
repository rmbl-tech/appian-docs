---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/assigning-pods-to-nodes.html
original_path: k8s-0.184.0/assigning-pods-to-nodes.html
version: "25.3"
title: "Assigning Pods to Nodes"
page_id: "k8s-0.184.0/assigning-pods-to-nodes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Assigning Pods to Nodes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to assign pods to nodes in Appian on Kubernetes for self-managed customers—via both [nodeSelector](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodeselector)s and [affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity).

## nodeSelectors

[nodeSelector](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#nodeselector)s are the simplest recommended form of node selection constraints. Both the Appian operator Helm chart and Appian custom resource definition (CRD) support defining `nodeSelector`s for the Appian operator and Appian custom resources, respectively. `nodeSelector`s for the Appian operator's controllers and webhooks can be defined using the `controllers.nodeSelector` and `webhooks.nodeSelector` [Helm chart values](helm-chart-values.html), respectively. `nodeSelector`s for Appian custom resources can be defined using the [.spec.\[COMPONENT\].nodeSelector](crds.html#v1beta1component) fields.

## Affinity

`nodeSelector`s provide a very simple way to constrain pods to nodes with particular labels. [Affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) greatly expands the types of constraints you can express. Both the Appian operator Helm chart and Appian custom resource definition (CRD) support defining affinity for the Appian operator and Appian custom resources, respectively. Affinity for the Appian operator's controllers and webhooks can be defined using the `controllers.affinity` and `webhooks.affinity` [Helm chart values](helm-chart-values.html), respectively. Affinity for Appian custom resources can be defined using the [.spec.\[COMPONENT\].affinity](crds.html#v1beta1component) fields.

### Default inter-pod anti-affinity for Appian custom resources

When creating an Appian custom resource with more than one replica of a given component, it is best practice to configure the component with [inter-pod anti-affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity). This ensures that the component—in addition to running with multiple replicas—is both fault tolerant and highly available. At a minimum, the component's replicas should run on different [nodes](https://kubernetes.io/docs/reference/labels-annotations-taints/#kubernetesiohostname). Ideally, they should also run in different [zones](https://kubernetes.io/docs/reference/labels-annotations-taints/#topologykubernetesiozone).

The Appian operator configures inter-pod anti-affinity _by default_ for components in Appian custom resources that do not define it themselves, both for components with single and multiple replicas. These defaults are written back to Appian custom resources. If you define pod anti-affinity for a component to satisfy a requirement unrelated to the aforementioned fault tolerance and high availability, you must include the terms that would otherwise be defaulted by the operator:

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
affinity:
  podAntiAffinity:
    requiredDuringSchedulingIgnoredDuringExecution:
      # Require that replicas run on different nodes
      - labelSelector:
          matchLabels:
            app.kubernetes.io/name: appian
            app.kubernetes.io/instance: <APPIAN_CUSTOM_RESOURCE_NAME>
            app.kubernetes.io/component: <COMPONENT>
        topologyKey: kubernetes.io/hostname

    preferredDuringSchedulingIgnoredDuringExecution:
      # Prefer that replicas run in different zones
      - weight: 100
        podAffinityTerm:
          labelSelector:
            matchLabels:
              app.kubernetes.io/name: appian
              app.kubernetes.io/instance: <APPIAN_CUSTOM_RESOURCE_NAME>
              app.kubernetes.io/component: <COMPONENT>
          topologyKey: topology.kubernetes.io/zone
```

For example, you might want to configure Search Server so it isn't scheduled to the same nodes as the pods of some other application. The following configures Search Server so it isn't scheduled to nodes with pods in any namespace with the `app.kubernetes.io/name=my-app` label while still configuring best practice inter-pod anti-affinity:

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  searchServer:
    replicas: 3
    affinity:
      podAntiAffinity:
        requiredDuringSchedulingIgnoredDuringExecution:
          # Require that replicas don't run on nodes with pods in any namespace
          # with the app.kubernetes.io/name=my-app label
          - labelSelector:
              matchLabels:
                app.kubernetes.io/name: my-app
            namespaceSelector: {}
            topologyKey: kubernetes.io/hostname

          # Require that replicas run on different nodes
          - labelSelector:
              matchLabels:
                app.kubernetes.io/name: appian
                app.kubernetes.io/instance: appian
                app.kubernetes.io/component: search-server
            topologyKey: kubernetes.io/hostname

        preferredDuringSchedulingIgnoredDuringExecution:
          # Prefer that replicas run in different zones
          - weight: 100
            podAffinityTerm:
              labelSelector:
                matchLabels:
                  app.kubernetes.io/name: appian
                  app.kubernetes.io/instance: appian
                  app.kubernetes.io/component: search-server
              topologyKey: topology.kubernetes.io/zone
```

Similarly, to configure Search Server with multiple replicas to run on single node Kubernetes clusters such as [minikube](https://minikube.sigs.k8s.io/docs/start/) or [kind](https://kind.sigs.k8s.io/), you can set `.spec.searchServer.affinity.podAntiAffinity` to `{}`. Otherwise, the operator's default inter-pod anti-affinity terms will prevent all but one of its replicas from being scheduled.

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
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  searchServer:
    replicas: 3
    # Neither omitting affinity nor setting it to {} will do the trick
    affinity:
      podAntiAffinity: {}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...