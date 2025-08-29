---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/email.html
original_path: k8s-0.184.0/email.html
version: "25.3"
title: "Email setup for Appian on Kubernetes"
page_id: "k8s-0.184.0/email"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Email setup for Appian on Kubernetes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page shows how to set up inbound and outbound email in Appian on Kubernetes for self-managed customers.

## Email Configuration

Appian does not include an email server for inbound/outbound email, but it can be configured to [send and receive email](../Mail_Server_Setup.html) via external email servers by properties set in `custom.properties` and `passwords.properties`. Appian on Kubernetes supports specifying these properties in the [.spec.customProperties](crds.html#v1beta1appianspec) and [.spec.webapp.passwordsPropertiesSecretName](crds.html#v1beta1webapp) fields, respectively, on Appian custom resources. The latter field represents the name of a Kubernetes [Secret](https://kubernetes.io/docs/concepts/configuration/secret/).

To configure Appian to send and receive email, do the following.

1.  Create a file on your machine named `passwords.properties` with the appropriate content as instructed by the [product documentation](../Mail_Server_Setup.html).

2.  Create a Secret containing `passwords.properties` using the following command.

    ```
    1
    kubectl -n <NAMESPACE> create secret generic passwords-properties --from-file=passwords.properties
    ```

3.  Set the `.spec.customProperties` and `.spec.webapp.passwordsPropertiesSecretName` fields on your site’s Appian custom resource:

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
    11
    12
    13
    14
    15
    16
    17
    18
    19
    20
    apiVersion: crd.k8s.appian.com/v1beta1
    kind: Appian
    metadata:
       name: appian
    spec:
       # The properties below serve only as examples. For a full list of
       # email-related properties, refer to the product documentation
       # at Mail_Server_Setup.html
       customProperties:
          conf.mailhandler.mail.smtp.host: mail.example.com
          conf.mailhandler.mail.smtp.auth: "true"
          conf.mailhandler.mail.user: username

          conf.suite.ANONYMOUS_ACCESS: "true"
          conf.mailhandler.poller.EmailHandlerBean.mailServer: mail.example.com
          conf.mailhandler.poller.EmailHandlerBean.userName: username

       # Use the name of the Kubernetes secret created earlier
       webapp:
          passwordsPropertiesSecretName: passwords-properties
    ```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...