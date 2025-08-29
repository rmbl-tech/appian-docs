---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/health-check-k8s.html
original_path: k8s-0.184.0/health-check-k8s.html
version: "25.3"
title: "Health Check for Appian on Kubernetes"
page_id: "k8s-0.184.0/health-check-k8s"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Health Check for Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to ensure [Health Check](../health-check.html) runs properly for installations of Appian on Kubernetes.

## How to set up Health Check

### Create a ReadWriteMany persistent volume claim

Just like [server-based, distributed installations of Appian require shared logs for Health Check](../High_Availability_and_Distributed_Installations.html#shared-logs), installations of Appian on Kubernetes require [ReadWriteMany](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) storage for Health Check.

Create a ReadWriteMany [persistent volume claim](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims) in the same namespace as your Appian custom resource. For a list of in-tree volume plugins that support ReadWriteMany, see [Access Modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes). For a list of out-of-tree CSI volume plugins that do so, see [Drivers](https://kubernetes-csi.github.io/docs/drivers.html) (search for "Read/Write Multiple Pod").

**Note:**  A separate ReadWriteMany persistent volume claim must be created from the [ReadWriteMany persistent volume claim(s) created when setting up High Availability](high-availability.html#create-a-readwritemany-persistent-volume-claim).

### Configure your Appian custom resource

Ensuring Health Check runs properly for your installation of Appian on Kubernetes is as easy as setting the `.spec.webapp.healthCheckExistingClaim` field in your Appian custom resource:

```
1
2
3
4
5
6
7
8
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  webapp:
    # USER ACTION REQUIRED - Update to match the name of your ReadWriteMany persistent volume claim
    healthCheckExistingClaim: ""
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...