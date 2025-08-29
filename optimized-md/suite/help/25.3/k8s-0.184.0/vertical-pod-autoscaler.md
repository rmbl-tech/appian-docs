---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/vertical-pod-autoscaler.html
original_path: k8s-0.184.0/vertical-pod-autoscaler.html
version: "25.3"
title: "Vertical Pod Autoscaling (VPA)"
page_id: "k8s-0.184.0/vertical-pod-autoscaler"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Vertical Pod Autoscaling (VPA)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

[Vertical Pod Autoscaler (VPA)](https://github.com/kubernetes/autoscaler/tree/master/vertical-pod-autoscaler) frees users from the necessity of setting up-to-date resource limits and requests for the containers in their pods. When configured, it will set the requests automatically based on usage and allow proper scheduling onto nodes so that an appropriate resource amount is available for each pod. It will also maintain ratios between limits and requests that were specified in the initial container configuration.

It can both down-scale pods that are over-requesting resources, and also up-scale pods that are under-requesting resources based on their usage over time. This page details how to enable and configure VPA for the Appian operator's controllers.

By default, VPA is disabled for the Appian operator's controllers. To enable it, set the [.controllers.vpa.enabled](helm-chart-values.html) Helm chart value to `true`:

```
1
2
3
controllers:
  vpa:
    enabled: true
```

The configuration of the VPA resource can be tuned using various Helm chart values under `.controllers.vpa`. For a detailed reference of all configuration options, please refer to the [Helm chart values documentation](helm-chart-values.html).

**Note:**  Updating and restarting the Appian operator doesn't affect the Appian instances that are managed by it. Site restarts are not needed to update the Appian operator.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...