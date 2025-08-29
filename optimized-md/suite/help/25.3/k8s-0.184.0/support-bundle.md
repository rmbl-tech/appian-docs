---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/support-bundle.html
original_path: k8s-0.184.0/support-bundle.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Support Bundle for Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The page details how to generate a support bundle for both the Appian operator and any sites managed by the operator. When possible, the decision to generate a support bundle should be made in consultation with Appian Support.

## What is a support bundle?

A support bundle is an archive containing information gathered from a self-managed customer's Kubernetes cluster that can be analyzed to troubleshoot issues with either the Appian operator or sites in that cluster. The information collected and analyzed includes but is not limited to:

-   Operator logs
-   Site container logs that went to stdout
-   ConfigMaps created and/or managed by the operator
-   The existence of certain Secrets that are required by either the operator or sites
-   Various cluster-level resources such as CustomResourceDefinitions, Namespaces, and ClusterRoles

**Note:**  The support bundle will not contain any data from Secrets; it will contain information on whether certain Secrets exist with certain keys. Data from specific ConfigMaps will be collected and included in the support bundle.

## Installing the support bundle plugin for kubectl

Generation of a support bundle is handled by a kubectl plugin. The plugin runs entirely on the client side, meaning nothing is installed to the Kubernetes cluster. This means the plugin must be installed by the user generating the support bundle.

### Installing with Krew

The easiest way to install the plugin is via [Krew](https://krew.sigs.k8s.io/). Start by [installing Krew](https://krew.sigs.k8s.io/docs/user-guide/setup/install/).

Once Krew has been installed you can install the support-bundle plugin:

```
1
kubectl krew install support-bundle
```

### Installing the plugin directly

1.  [Download](https://github.com/replicatedhq/troubleshoot/releases) the plugin. Make sure you download the collect executable (**not** the preflight executable).
2.  Unarchive the downloaded file and move it to somewhere on your `PATH`. The file must be named `kubectl-support_bundle` after being moved as well as being executable. For example, assuming `$HOME/bin` is on your `PATH`:

    ```
    1
    2
    3
    tar -xzvf collect_linux_arm64.tar.gz collect
    mv collect $HOME/bin/kubectl-support_bundle
    chmod 700 $HOME/bin/kubectl-support_bundle
    ```

## Generating a support bundle

Generating a support bundle for either the Appian operator or a site simply involves running the plugin.

### Generating a support bundle for the Appian operator

Assuming you installed the operator to the `appian-operator` namespace:

```
1
kubectl support-bundle --namespace appian-operator --load-cluster-specs --output appian-operator-$(date +%Y%m%d%H%M%S)
```

This will generate a file named something similar to `appian-operator-20230725120000.tar.gz`.

### Generating a support bundle for a site

The following example assumes your site is running in the namespace `my-site-namespace`. Adjust the `--namespace` flag to use your actual site namespace.

```
1
kubectl support-bundle --namespace my-site-namespace --load-cluster-specs --output my-site-$(date +%Y%m%d%H%M%S)
```

This will generate a file named something similar to `my-site-20230725120000.tar.gz`.

## Data redaction for a support bundle

Some of the data collected by the support-bundle plugin is automatically redacted. Sensitive information like passwords will be redacted during generation of the support bundle.

**Caution:**  The redaction process is thorough but it can miss sensitive information. It is the customer's responsibility to review the data contained in the generated support bundle, particularly logs, and perform any additional redaction _before_ sending the support bundle to Appian.

## Support bundle self-help

When a support bundle is generated some checks for common problems are run and the results are displayed. Depending on the issue you might be able to resolve it.

-   Webhooks certificate issues: Refer to the documentation on [certificates](certs.html)
-   NetworkPolicy issues: Refer to the documentation on [restricting traffic](restricting-traffic.html)
-   Issues with secrets: Ensure the secret exists and the configuration for the operator or the site is set to use the correct secret

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...