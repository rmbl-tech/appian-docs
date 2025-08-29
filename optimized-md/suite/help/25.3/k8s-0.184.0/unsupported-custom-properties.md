---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/unsupported-custom-properties.html
original_path: k8s-0.184.0/unsupported-custom-properties.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Unsupported Custom Properties

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes which [Custom Properties](../Custom_Configurations.html#custom-properties) are managed by the Appian operator, or not supported in Kubernetes. It applies to self-managed customers using Appian on Kubernetes.

For details on how to update custom properties on a running Appian site, see [Changes to Custom Properties](start-stop-appian-on-k8s.html#changes-to-custom-properties).

## Unsupported Custom Properties

In Kubernetes various Appian pods run in their own containers where Appian is installed at `/usr/local/appian/ae` in those container images. The directories are fixed to the configured locations and cannot be changed. As a result, the following list of custom properties that are not supported in Kubernetes.

-   `conf.suite.AE_LOGS`
-   `conf.suite.BASE_PATH`
-   `resources.appian.process.application.PM_STORE_ROOT_PATH`

## Custom properties managed by the Appian operator

The following custom properties are not managed through `.spec.customProperties`. They are instead internally managed and calculated by the Appian operator based on the [.spec.webapp](crds.html#v1beta1webapp) properties in the CR. This mapping is shown below.

-   `conf.suite.SCHEME` -> `.spec.webapp.url`
-   `conf.suite.SERVER_AND_PORT` -> `.spec.webapp.url`
-   `conf.suite.STATIC_SERVER_AND_PORT` -> `.spec.webapp.staticUrl`
-   `conf.suite.DYNAMIC_SERVER_AND_PORT` -> `.spec.webapp.dynamicUrl`
-   `conf.suite.APPLICATION_CONTEXT` -> `.spec.webapp.applicationContext`
-   `conf.data.APPIAN_DATA_SOURCE` -> `.spec.webapp.dataSources.primary.name`
-   `conf.data.datasources` -> `.spec.webapp.dataSources.business[*].name`

Note that these custom properties will show up under `conf.*` in config map containing `custom.properties` created by the operator.

**Note:**  If any of these custom properties are configured in the Appian CR under `.spec.customProperties`, they will be removed by the Appian operator.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...