---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/exposing-appian-on-k8s.html
original_path: k8s-0.184.0/exposing-appian-on-k8s.html
version: "25.3"
title: "Exposing Appian Outside Kubernetes"
page_id: "k8s-0.184.0/exposing-appian-on-k8s"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Exposing Appian Outside Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page details how to expose Appian sites outside of Kubernetes for self-managed customers. Specifically, it allows you to expose the Webapp component or Apache Web Server (httpd) component (if enabled) so that Appian can send and receive web traffic. It should be used in conjunction with [Restricting Traffic](restricting-traffic.html) as a security measure.

**Tip:**  If you've enabled [network policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/) via the [.spec.networkPolicies.enabled](crds.html#v1beta1networkpolicyconfig) field on Appian custom resources, make sure to also refer to the [Restricting Traffic](restricting-traffic.html) page.

## Ingress

The Appian operator and Appian custom resource definition (CRD) support enabling and configuring [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/) for Appian sites via the [.spec.ingress](crds.html#v1beta1ingress) field on Appian custom resources.

To enable Ingress for a given site, set `.spec.ingress.enabled` to `true`. To set annotations on the created Ingress resource, define `.spec.ingress.annotations`.

An [Ingress controller](https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/) is responsible for fulfilling the Ingress. Appian sites in Kubernetes should work with a variety of Ingress controllers provided both the Ingress resource and controller are properly configured. The subsection below details how to configure Ingress via Appian custom resources for NGINX.

### NGINX Ingress

Like many Ingress controllers, [NGINX Ingress](https://kubernetes.github.io/ingress-nginx/) supports specifying annotations on Ingress resources to customize their behavior.

All Appian sites exposed via NGINX Ingress require the following annotations:

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
# Enables large file uploads in Appian by disabling client request body size
# checks
# https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-max-body-size
nginx.ingress.kubernetes.io/proxy-body-size: "0"

# Enables operations in Appian with delayed responses, such as application
# import inspection in Appian Designer, by increasing the timeout for reading a
# response from the proxied server
# https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#custom-timeouts
nginx.ingress.kubernetes.io/proxy-read-timeout: "300"
```

Appian sites with Apache Web Server (httpd) disabled (the default) also require the following annotations:

```
1
2
3
4
5
# Enables redirects from / to /<APPLICATION_CONTEXT> where <APPLICATION_CONTEXT>
# is defined by .spec.webapp.applicationContext - defaulting to suite if
# undefined
# https://kubernetes.github.io/ingress-nginx/examples/rewrite/
nginx.ingress.kubernetes.io/app-root: /suite
```

Appian sites with Apache Web Server (httpd) disabled (the default) and multiple Webapp replicas also require the following annotations:

```
1
2
3
4
5
# Enables cookie-based session affinity and disables rebalancing sessions to new
# servers
# https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#session-affinity
nginx.ingress.kubernetes.io/affinity: cookie
nginx.ingress.kubernetes.io/affinity-mode: persistent
```

Finally, Appian sites with Apache Web Server (httpd) enabled also require the following annotations:

```
1
2
3
4
5
6
# Suppresses an issue where Apache Web Server (httpd) returns temporary
# redirects to http:// by setting the text that should be changed in the
# Location and Refresh header fields of a proxied server response
# https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/#proxy-redirect
nginx.ingress.kubernetes.io/proxy-redirect-from: http://
nginx.ingress.kubernetes.io/proxy-redirect-to: https://
```

Additional annotations may be required depending on your specific use case. For a full list of annotations supported by NGINX Ingress, refer to its [documentation](https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/annotations/).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...