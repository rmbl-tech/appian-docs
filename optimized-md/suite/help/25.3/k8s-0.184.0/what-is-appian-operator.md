---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/what-is-appian-operator.html
original_path: k8s-0.184.0/what-is-appian-operator.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# What is the Appian Operator?

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page is a quick introduction to the architecture behind Appian on Kubernetes for self-managed customers, specifically its use of the operator pattern.

We'll give context on what the operator pattern is, what the Appian operator itself is responsible for managing, and help build a mental model of what Appian on Kubernetes really looks like.

### What is an operator?

Kubernetes is built around declarative state. You tell the cluster what you expect to be there (the _desired state_), and the cluster constantly works its hardest to ensure what's actually there (the _actual state_) is always in alignment with what's desired. Of particular interest is Kubernetes' self-healing capabilities — if you ask for three replicas of a pod, not only will three replicas come up, but if one of them goes down, Kubernetes will recognize this discrepancy and work to get it up and running again. This constant work and rework to make sure the desired and actual states are in alignment is called _reconciliation_.

Kubernetes typically covers this through various built-in _controllers_. For example, clusters come with a Deployment Controller which reacts whenever a Deployment is created, updated, or deleted. This controller can be thought of as an infinite loop that is constantly checking the desired state (the Deployment manifests) and actual state of the cluster and reconciling the two.

When you're working on complex, stateful applications that require more logic than just the basic Kubernetes primitives like Pods and Deployments, you might find yourself wondering if you can write your _own_ controller that reacts to a _custom_ resource you define. This is essentially what an [operator](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/) is — by leveraging [custom resource definitions](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/), you can extend the Kubernetes API to add new types of resources for which you write your own controller for.

There are multiple frameworks available for creating your own operator. Appian uses [Kubebuilder](https://github.com/kubernetes-sigs/kubebuilder) to quickly scaffold our own custom resource and controller code.

### What does the Appian operator do?

Since Appian is such a complex, stateful application, it's not enough to simply throw its image(s) into a Pod spec and call it a day. There's a good amount of behind-the-scenes logic and coordination that goes into starting Appian.

The Appian operator is meant to handle that for you. Rather than going through this complicated installation process yourself, you can instead define a base configuration for your Appian installation via the Appian custom resource and let the operator handle all the dirty work for you.

[![Operator diagram](images/operator-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1594)

[![](images/operator-diagram.png)](#_)

Let's walk through how this works. When you install the Appian operator Helm chart, your cluster is given a new custom resource definition (or CRD) for Appian. This basically allows you to apply an Appian custom resource (or CR) that follows the spec laid out by the CRD, just like you can apply a Pod or a Deployment that follows the spec defined by the Kubernetes API. You can think of CRDs and CRs as analogous to classes and objects in object-oriented languages like Java — the CRD defines the spec, while a CR is an actual instance of that spec.

When you install the Appian operator Helm chart, your cluster is also given an Appian controller that knows how to respond to Appian CRs. Whenever you create an Appian CR, this controller will constantly work to make sure the desired state of the CR is in alignment with the actual state in the cluster. This constant reconciliation logic allows for better self-healing when things go wrong.

In addition to managing cluster state for you, the operator pattern allows Appian to expose lots of base configurations at the CRD level. When creating your CRD, you can specify all sorts of things such as custom properties, specific images, init containers, URLs, ingress, and anything else. The operator will take these configurations and apply them correctly to all the various Kubernetes resources it creates and manages.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...