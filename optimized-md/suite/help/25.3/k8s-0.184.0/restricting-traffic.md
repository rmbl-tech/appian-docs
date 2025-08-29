---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/restricting-traffic.html
original_path: k8s-0.184.0/restricting-traffic.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Restricting Traffic in Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

In Kubernetes, [network policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/) allow restricting traffic flow at the IP address or port level. By default, pods are [non-isolated](https://kubernetes.io/docs/concepts/services-networking/network-policies/#isolated-and-non-isolated-pods); they accept traffic from any source. The Appian operator supports conditionally restricting inbound traffic to site pods on a site-by-site basis via [NetworkPolicy](https://kubernetes.io/docs/concepts/services-networking/network-policies/) resources. This page details how to configure Appian custom resources to restrict traffic to/from Appian sites. It is aimed at self-managed customers running Appian on Kubernetes.

**Note:**  Enforcement of network policies is implemented by [network plugins](https://kubernetes.io/docs/concepts/extend-kubernetes/compute-storage-net/network-plugins/). To use network policies, you must use a network plugin that supports NetworkPolicy resources such as [Calico](https://www.projectcalico.org/). Creating a NetworkPolicy resource without a controller that implements it will have no effect.

## Restricting inbound traffic

To restrict inbound traffic to a given site's pods, set the [.spec.networkPolicies.enabled](crds.html#v1beta1networkpolicyconfig) field to `true` on the site's Appian custom resource:

```
1
2
3
4
5
6
7
apiVersion: crd.k8s.appian.com/v1beta1
kind: Appian
metadata:
  name: appian
spec:
  networkPolicies:
    enabled: true
```

This will instruct the operator to create a variety of NetworkPolicy resources that target the site's pods.

-   First it will create a default, deny-all ingress traffic NetworkPolicy that targets all of the site's pods.
-   Then it creates a NetworkPolicy for each component that allows ingress traffic from other components or from other replicas of the same component to specific ports.

This is done only as needed to restrict inbound traffic as much as possible. The exact specification of each component-specific NetworkPolicy depends on the topology of the site.

## Adding network policy ingress rules

Let's say that you've followed the section above to restrict inbound traffic to Appian for security purposes, but also need to allow traffic from specific non-Appian pods or IP blocks.

This situation is common when [exposing Appian outside of Kubernetes](exposing-appian-on-k8s.html). In this case, traffic needs to be allowed to Appian's Webapp pods or its Apache Web Server (httpd) pods (if enabled).

The Appian operator and Appian custom resource definition support adding network policy ingress rules to the component-specific NetworkPolicy resources described above on a site-by-site basis via the [.spec.\[COMPONENT\].additionalNetworkPolicyIngressRules](crds.html#v1beta1component) fields on Appian custom resources. If httpd is disabled (the default), ingress traffic routes directly to Webapp, so the `.spec.webapp.additionalNetworkPolicyIngressRules` field should be used. Otherwise, ingress traffic routes to httpd, so the `.spec.httpd.additionalNetworkPolicyIngressRules` field should be used. Additionally, if RPA is enabled and inbound traffic has been restricted, then `.spec.rpa.additionalNetworkPolicyIngressRules` should be used.

Each field accepts a list of [networkingv1.NetworkPolicyIngressRule](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.33/#networkpolicyingressrule-v1-networking-k8s-io) objects. The specification of each object's `from` field depends on how Appian is exposed outside of Kubernetes. The specification of each object's `ports` fields depends on whether or not httpd is enabled and, if disabled, how [.spec.service.protocol](crds.html#v1beta1service) is set.

## Running RPA in a restricted environment

RPA requires unrestricted access to the internet by default, with RPA reaching out to Maven repositories on the internet when it checks for 3rd party dependencies (JARs) for each robotic task execution. (See the [RPA Repository Management](../rpa-9.17/manage-repositories.html) page for more information.)

Alternatively, you can configure RPA to work in `"offline"` mode in order to prevent RPA from connecting to the public internet. RPA will be fully functional in `"offline"` mode; however, this may increase the export size for any Java-dependent Robotic Tasks.

To restrict RPA from communicating with the public internet, set the value for `.spec.rpa.properties.rpa.artifact.resolution` to `"offline"`. If the custom property is omitted, the default is `"online"`.

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
  rpa:
    properties:
      rpa.artifact.resolution: "offline"
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...