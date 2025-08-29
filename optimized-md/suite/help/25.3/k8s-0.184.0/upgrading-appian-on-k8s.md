---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/upgrading-appian-on-k8s.html
original_path: k8s-0.184.0/upgrading-appian-on-k8s.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Upgrading Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The following describes how to upgrade to new versions of Appian on Kubernetes for self-managed customers. This includes upgrades to both the Appian operator and the Appian images.

## Download new artifacts

Download the new [Appian operator Helm chart](artifacts.html#appian-operator-helm-chart), pull the new [Appian operator and Appian container images](artifacts.html#appian-operator-and-appian-images), and [push the new images](artifacts.html#push-the-images-to-your-registry) to your organization's registry.

## Upgrading both the Appian operator and Appian images

To upgrade both the Appian operator and Appian images at the same time, you would:

1.  Follow the steps in [Upgrading the operator](#upgrading-the-operator).
2.  Follow the steps in [Upgrading Appian component images](#upgrading-the-appian-images).

## Upgrading the operator

**Caution:**  Starting with version 0.156.0, a new license file will be required to start the operator. For more information about requesting and importing the license file, see the [Installing Appian on Kubernetes](install-appian-on-k8s.html#request-licenses) page.

Upgrading the Appian operator is as simple as running `helm upgrade`:

```
1
2
3
helm --namespace appian-operator upgrade appian-operator appian-operator-<APPIAN_OPERATOR_VERSION>.tgz \
   --reset-then-reuse-values \
   --wait
```

**Note:**  If you have restricted the Appian operator's cluster-wide access and installed the operator's controllers in additional namespaces, repeat this step once for each namespace - substituting `--namespace appian-operator` with `--namespace <NAMESPACE>`.

If you have any trouble upgrading the operator, see [Troubleshooting Appian on Kubernetes](troubleshooting-appian-k8s.html).

## Upgrading the Appian images

The following steps will upgrade the component images of the Appian site including webapp, data-server, and other components. This is typically done when there are new features released.

1.  [Stop your Appian site](start-stop-appian-on-k8s.html#stopping-the-appian-site).
2.  Within the Appian CR, for each component, update the `.spec.[COMPONENT].image.tag` field to be the new version of the image.
3.  [Restart your Appian site](start-stop-appian-on-k8s.html#restarting-the-appian-site).

If you have any trouble upgrading Appian, see [Troubleshooting Appian on Kubernetes](troubleshooting-appian-k8s.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...