---
source_url: https://docs.appian.com/suite/help/25.3/aok-faq.html
original_path: aok-faq.html
version: "25.3"
title: "FAQ: Preparing for Containerized Self-managed Appian in 2025"
page_id: "aok-faq"
section: "Upcoming changes"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# FAQ: Preparing for Containerized Self-managed Appian in 2025

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-bullhorn" aria-hidden="true"></i></td><td><b>Beginning with Appian 25.4</b>, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. Review the <a href="https://docs.appian.com/suite/help/24.4/Appian_Release_Notes.html#preparing-for-containerized-self-managed-appian-in-2025">24.4 release notes</a> and <a href="aok-faq.html">frequently asked questions</a> to learn more.</td></tr></tbody></table>

## Upcoming changes

### What's happening with self-managed deployments?

Starting with Appian 25.4, all new versions of Appian will require containers managed by Kubernetes to run in a self-managed environment. You won't be able to obtain Windows or Linux installers for Appian for 25.4 and its hotfixes. Appian 25.3 will be the last version that supports non-containerized deployment. Hotfixes for 25.3 will be published as both containerized and non-containerized deployments for its full support lifetime.

### If I'm running Appian in a self-managed deployment, do I have to migrate to Appian on Kubernetes by 25.4?

No. Self-managed environments running Appian 25.3 or earlier will receive hotfixes for that version's full support lifetime. However, you won't be able to upgrade your environment to 25.4 without migrating to AoK or Appian Cloud.

### Why is Appian doing this?

Appian is moving to Kubernetes infrastructure for Appian Cloud, and all future features for the platform are being built with that in mind. We want to have one path to success for our Cloud and Self-Managed customers. Kubernetes unlocks some of the features we are most excited to deliver, such as Autoscale for Processes and eventually for other Appian components.

### What can I do to prepare?

Share the Appian on Kubernetes documentation with DevOps, Platform, or Cluster administrators in your business to understand how best to stand up a vendor application running on Kubernetes. If you have additional questions, you can [submit them here](mailto:appian-k8s-2025@appian.com).

## Platform support

### Can I run Appian "on containers" or virtual machines (VMs) without Kubernetes?

No. Kubernetes and the Appian Operator are the only supported ways to run Appian in a containerized fashion.

### What platforms do you support for Appian on Kubernetes (AoK)?

Appian supports Red Hat Openshift, Azure AKS, Amazon EKS, Google GKE, ‘plain' or bare metal Kubernetes.

### What platforms are not supported for AoK?

Appian does not support Amazon Fargate or ECS, Google Cloud Platform Autopilot for GKE, or similar types of variations on managed Kubernetes.

### I'm an OpenShift customer. Is Appian Red Hat Certified and present in their official Catalog?

Not as of this writing, but the work is in progress and certification is expected to happen in early 2025.

### Do I have to use a Kubernetes Operator?

Yes. The Appian Operator exists to ensure the orderly startup, management, and shutdown of an Appian instance, and coordinates it all. To ensure a good experience, we use an Operator instead of ‘just' a Helm Chart.

### What do I have to bring myself?

-   A Kubernetes cluster running a [supported version](k8s-0.184.0/install-appian-on-k8s.html#kubernetes)
-   A relational database, new or old
    -   Drivers and [Kubernetes init containers](k8s-0.184.0/init-and-sidecar-containers.html#using-init-containers-to-add-jars-to-tomcats-classpath) if you're using Aurora MySQL, MySQL or IBM Db2
-   Domain name

## Scaling

### Does Appian on Kubernetes enable full "elastic scale?"

No, aside from the Operator itself and httpd, we don't have elasticity for other components of Appian.

What we do have: [Horizontal Pod Autoscaling](k8s-0.184.0/horizontal-pod-autoscaling.html) (scaling number of pods based on CPU usage) for the Apache Web Server (httpd), and [Vertical Pod Autoscaling](k8s-0.184.0/vertical-pod-autoscaler.html) (scaling resource allocation for pods based on usage) for the Appian Operator and its components themselves.

We plan on having this kind of scalability in the future. AoK will enable it down the road.

### Is Autoscale (new feature in 24.4) available for AoK?

No. While we do ultimately want to bring Autoscale to Appian on Kubernetes, it's not currently available.

## Cluster and resource sizing

### How should I plan for what resourcing your components need in my cluster?

[Suggestions are covered by our documentation](k8s-0.184.0/resource-requests-and-limits.html) but these are only a starting point, as your usage of Appian may influence which Appian components are used more than others.

## Staffing and Support

### Is Appian on Kubernetes fully supported?

Yes, Appian on Kubernetes is supported for production usage, and gets hotfixes and major versions just like any other deployment method.

### What kind of people or teams at my company will be the right people to talk to about this?

Your existing infrastructure team(s) will be able to help you start a conversation about (if you have) a Kubernetes cluster and what requirements surround deploying a new application onto it.

## Security

### Is Appian on Kubernetes safe and secure?

Yes. Appian on Kubernetes is held to the same standards as any other way of deploying that we provide. The container images that make up AoK are the same ones we use internally on our own cloud environments, and are scanned and hotfixed for CVEs regularly.

### Can Appian be restricted in my cluster in terms of networking and namespacing?

Yes, you have control over network interactions between Appian and anything outside your cluster or within it.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...