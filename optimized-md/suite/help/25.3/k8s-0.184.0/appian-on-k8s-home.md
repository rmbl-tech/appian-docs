---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/appian-on-k8s-home.html
original_path: k8s-0.184.0/appian-on-k8s-home.html
version: "25.3"
title: "Appian on Kubernetes"
page_id: "k8s-0.184.0/appian-on-k8s-home"
section: "Why use Kubernetes?"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Appian on Kubernetes: Manage Your Deployments with Confidence

Learn about Kubernetes: what it is, the value it provides for your Appian deployments, and Appian-specific components (for example, the Appian Operator) that ensure your applications are available to users and run quickly.

Appian on Kubernetes allows self-managed customers to host Appian as a containerized application running on Kubernetes.

## Why use Kubernetes?

Appian runs using [various components](../Enterprise_Architecture_Overview.html#appian-architecture): application server, search server, data server, and others. On a typical Appian install you'd configure and run these components separately on a given machine:

[![Manage components separately with local installation](images/sm-management.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1590)

[![](images/sm-management.png)](#_)

But there's an easier way. Appian on Kubernetes instead orchestrates running all the various components as [pods](https://kubernetes.io/docs/concepts/workloads/pods/), managed by a singular Appian custom resource:

[![Manage component in one place with Appian on Kubernetes](images/aok-management.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1591)

[![](images/aok-management.png)](#_)

Appian on Kubernetes provides a great deal of resilience. For example, if one Appian component running on a pod goes down, Kubernetes will spin another up to quickly replace it. Replicas of pods can be scaled up to meet demand. Additionally, Appian on Kubernetes can be set up so that if the CPU load of the Apache web server component spikes due to traffic, it can automatically scale up replicas to meet the increased demand.

**Note:**  Appian does not support Kubernetes clusters using Windows Server nodes. The control plane must be on Linux.

## Architecture

Appian on Kubernetes implements the [operator pattern](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/) to orchestrate standing up and maintaining all the Appian components. You can tell Appian to start or stop, and the Appian operator will gracefully start or stop the Appian components in the correct order. The operator runs constantly to correct the state of components if any fall outside their specification. Appian also runs using a single configuration ([custom resource definition (CRD)](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/)) for all the components. The resulting site is easy to self-host and configure.

For more on how Appian works with the Appian operator, see [What is the Appian Operator?](what-is-appian-operator.html)

The following diagram shows high-level concepts and relationships in an Appian on Kubernetes deployment. This diagram displays the [high availability configuration](high-availability.html), so basic pods are shown in multiple replicas.

**Tip:**  New to Appian? Learn more about the [Appian enterprise architecture](../Enterprise_Architecture_Overview.html), components of which are referenced below.

New to Kubernetes? Learn more about [foundational concepts](https://kubernetes.io/docs/concepts/overview/) like pods, containers, and name spaces.

[![Appian on Kubernetes diagram (highly available)](images/ha-concept-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1592)

[![](images/ha-concept-diagram.png)](#_)

| Item | Concept | What does it do? | More information |
| --- | --- | --- | --- |
| 1 | [Appian Operator](what-is-appian-operator.html) | Coordinates the behind-the-scenes logic to start Appian and ensure it's running properly. | \- |
| 2 | [Custom Resource Definition](crds.html) | Specifications file for the desired state of your Appian instance. The operator uses this file to ensure Appian runs as expected. | \- |
| 3 | [Web Server](../Enterprise_Architecture_Overview.html#web-server) (Optional) | Handles client requests before passing traffic to the application server. | [Learn more](../Configuring_Apache_Web_Server_with_Appian.html) |
| 4 | [Search Server](resource-requests-and-limits.html#search-server) | Aggregates data from the rest of the application to support features like tracking historical performance, viewing recent user activity, and analyzing design-time impacts/dependencies. | [Learn more](../Search_Server.html) |
| 5 | [Data Service](resource-requests-and-limits.html#data-server) | A fault-tolerant distributed service that stores application data and metadata, consisting of several components. | [Learn more](../Configuring_the_Data_Server.html) |
| 6 | [Kafka](resource-requests-and-limits.html#kafka) | Used with Zookeeper to relay data between different components of Appian's architecture. | [Learn more](../Enterprise_Architecture_Overview.html#internal-messaging-service) |
| 7 | [Zookeeper](resource-requests-and-limits.html#zookeeper) | Used with Kafka to relay data between different components of Appian's architecture. | [Learn more](../Enterprise_Architecture_Overview.html#internal-messaging-service) |
| 8 | [Web App](resource-requests-and-limits.html#webapp) | Hosts the Appian web application. | [Learn more](../Enterprise_Architecture_Overview.html#webmobile-client) |
| 9 | [Service Manager](resource-requests-and-limits.html#service-manager) | Ensures high availability of the [Appian engines](../Enterprise_Architecture_Overview.html#appian-engines). | \- |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...