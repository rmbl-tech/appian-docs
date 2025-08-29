---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/self-managed-rpa-on-kubernetes.html
original_path: rpa-9.17/self-managed-rpa-on-kubernetes.html
version: "25.3"
title: "Self-managed RPA on Kubernetes"
page_id: "rpa-9.17/self-managed-rpa-on-kubernetes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Self-managed RPA on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

As a self-managed customer, you can fully control Appian RPA thanks to the flexibility of Kubernetes, whether in the cloud or on-premises and with or [without internet connectivity](#using-appian-rpa-in-offline-environments). This strategy lets users with strict security policies satisfy their requirements and still enjoy RPA's benefits.

To learn more about Appian on Kubernetes, see the [Appian on Kubernetes](../k8s-0.184.0/appian-on-k8s-home.html) page.

## Requirements

There are some specific prerequisites for running Appian RPA on Kubernetes. It's important to review these requirements to ensure your infrastructure is primed for a seamless integration.

-   You must have your own storage solution to securely store and manage your data. This gives you the flexibility to meet your specific security and capacity needs.
-   Appian RPA on Kubernetes exclusively supports MariaDB.
-   Appian RPA on Kubernetes does not currently support HA deployments.

## Configuration and deployment

Appian RPA on Kubernetes is easily configured and deployed as part of Appian on Kubernetes. See the detailed installation instructions in the [Installing Appian on Kubernetes](../k8s-0.184.0/install-appian-on-k8s.html) documentation.

You can set up your own self-signed CA certificates on the webhooks used by Appian RPA on Kubernetes. For complete information, see the detailed steps in the [Self-Signed Certificates](../k8s-0.184.0/certs.html) documentation.

## Using Appian RPA in offline environments

Appian RPA supports integration with a local Maven repository, making it perfectly suited for secure, self-managed environments without internet access. By linking to your on-premise Maven repository, you ensure that your Appian RPA setup remains within your network's boundaries, enhancing security and control over your data and dependencies.

## See also

See [RPA Setup for Appian on Kubernetes](../k8s-0.184.0/rpa-setup-on-k8s.html) to learn how to set up RPA for Appian on Kubernetes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...