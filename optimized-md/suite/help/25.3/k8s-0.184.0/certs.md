---
source_url: https://docs.appian.com/suite/help/25.3/k8s-0.184.0/certs.html
original_path: k8s-0.184.0/certs.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Self-Signed Certificates

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes how self-managed customers can set up their own self-signed CA certificates on the webhooks used by Appian on Kubernetes. Note that the recommended and simplest option of configuring certificates is through using [cert-manager](install-appian-on-k8s.html#1-install-the-appian-operator)

The Appian operator includes webhooks for the following purposes:

-   Enforce custom defaults: [mutating admission webhook](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/#mutatingadmissionwebhook).
-   Validate incoming requests: [validating admission webhooks](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/#validatingadmissionwebhook).
-   Perform conversions between different versions of the CRD: [conversion webhook](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definition-versioning/#webhook-conversion).

The webhooks require passing in an external CA certificate. Our example below provides details on how to create a self-signed certificate using our preferred option cert-manager. Alternatively, a self-signed certificate can be generated manually and provided directly into the `caBundle` field.

## Using cert-manager

Do the following steps to install and utilize cert-manager to store and inject the certificates into the Appian operator.

1.  [Install cert-manager](https://cert-manager.io/docs/installation/).

2.  Create an Issuer in the `appian-operator` namespace. Create a yaml file with the following contents:

    ```
    1
    2
    3
    4
    5
    6
    7
     apiVersion: cert-manager.io/v1
     kind: Issuer
     metadata:
       name: appian-operator-webhooks-selfsigned
       namespace: appian-operator
     spec:
       selfSigned: {}
    ```

3.  Apply the issuer file.

    ```
    1
    kubectl apply -f <PATH TO ISSUER .YAML FILE>
    ```

4.  Create a certificate in the `appian-operator` namespace using the Issuer created in the previous step. Note that we specify a secret name of `appian-operator-webhooks-certificate`. We will use that secret name in the next step. Also note the DNS name of the Issuer. Create another yaml file with the following contents:

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
     apiVersion: cert-manager.io/v1
     kind: Certificate
     metadata:
       name: appian-operator-webhooks
       namespace: appian-operator
     spec:
       issuerRef:
         kind: Issuer
         name: appian-operator-webhooks-selfsigned
       dnsNames:
         - appian-operator-webhooks.appian-operator.svc
       secretName: appian-operator-webhooks-certificate
    ```

5.  Apply the certificate file.

    ```
    1
    kubectl apply -f <PATH TO CERTIFICATE .YAML FILE>
    ```

6.  Proceed to [Helm installation](install-appian-on-k8s.html#1-install-the-appian-operator).

## Configure `caBundle` field directly

As an alternative to cert-manager you can use a self-signed certificate for `appian-operator-webhooks.<namespace>.svc`. Add your CA bundle to `webhooks.caBundle` when you run `helm install` or `helm upgrade` using `--set` or `--values` options.

For this example we will use [mkcert](https://github.com/FiloSottile/mkcert) to generate a self-signed certificate.

1.  Make a self-signed certificate valid for `appian-operator-webhooks.appian-operator.svc`.

    ```
    1
    2
    3
     mkcert -cert-file appian-operator-webhooks.crt \
       -key-file appian-operator-webhooks.key \
       appian-operator-webhooks.appian-operator.svc
    ```

2.  Create a Kubernetes secret in the `appian-operator` namespace containing the public certificate and the private key generated in the previous step.

    ```
    1
    2
    3
    4
     kubectl create secret tls -n appian-operator \
       appian-operator-webhooks-certificate \
       --cert appian-operator-webhooks.crt \
       --key appian-operator-webhooks.key
    ```

3.  Install the Appian operator Helm chart. Make sure to specify the appropriate values to set the webhooks’ secret to the secret created in the previous step. If you changed the secret name in the previous step, use that name here instead of `appian-operator-webhooks-certificate`. We will also specify the content of the client CA bundle for the webhooks using the Base64 encoded content of the certificate generated in the previous step.

    ```
    1
    2
    3
    4
    5
     helm --namespace appian-operator install appian-operator appian-operator-<APPIAN_OPERATOR_VERSION>.tgz \
       --set image.repository=<REGISTRY_HOSTNAME>/appian/appian-operator:<APPIAN_OPERATOR_VERSION> \
       --set webhooks.secret=appian-operator-webhooks-certificate \
       --set webhooks.caBundle="$(cat appian-operator-webhooks.crt | base64 --wrap=0)" \
       --wait
    ```

    Append to the above any additional Helm options you would use.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...