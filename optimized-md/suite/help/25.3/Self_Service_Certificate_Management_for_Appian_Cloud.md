---
source_url: https://docs.appian.com/suite/help/25.3/Self_Service_Certificate_Management_for_Appian_Cloud.html
original_path: Self_Service_Certificate_Management_for_Appian_Cloud.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Self-Service Certificate Management

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

## Overview

Certificates are required for customers wanting to use [custom domains](Using_a_Custom_Domain_in_Appian_Cloud.html) for their Appian Cloud environments. Self-service certificate management allows you to create, view and take action on the certificates relating to your environments through Cloud Resources in [MyAppian](https://forum.appian.com/suite/sites/myappian/page/health). This page outlines the different features available through self-service certificate management, including:

-   Viewing certificate information.
-   Creating new certificate signing requests.
-   Validating and uploading certificate files issued from a certificate authority.

[![Self-service certificate management](images/certificate_management.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img221)

[![](images/certificate_management.png)](#_)

## Prerequisites to manage certificates

-   You need a [MyAppian](https://forum.appian.com/suite/sites/myappian) account.
-   You need to be a support contact for your organization. (A support contact has the ability to create Appian Support cases.)

## Viewing certificates

Self-service certificate management allows you to easily view information relating to all the certificates deployed for your environments. You can quickly see:

-   Which certificates are active.
-   How long a certificate has left before it expires.
-   If any certificates are near expiration or have expired.

[![Certificate summary](images/certificate_management_view_certificate.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img222)

[![](images/certificate_management_view_certificate.png)](#_)

## Generating a certificate signing request

Appian Cloud customers can request to customize environment URLs to provide a personalized experience to end users. Once you have decided on the environments that you wish to use a custom domain for, the first step towards using your custom domain is to generate a certificate signing request (CSR).

**Tip:**  A CSR contains the information that a certificate authority will use to issue your certificate files. This includes details about your organization and the URLs you want covered by your certificate.

Here's what you'll need to know ahead of time:

-   Your organization information (at a minimum, the organization name and location).
-   The Appian Cloud environments you wish to use a custom domain with.
-   The new domain you wish to use.
-   How you intend to access your environments: through the public internet, through a VPN or both.

**Caution:**  You must use a domain that your organization owns. You **cannot** use an Appian owned domain (including `appian.com`, `appiancloud.com` `appiancloud.us`, and any other domains that contain the word `appian`).

To generate a new certificate signing request:

1.  In MyAppian, on the [Health](https://forum.appian.com/suite/sites/myappian/page/health) page go to the **CLOUD RESOURCES** tab and click **CERTIFICATES**.
2.  Click **NEW SIGNING REQUEST**.
3.  Follow the steps in the wizard and provide the required information. Click **GENERATE** after reviewing the entered details.

**Caution:**  You must enter all your Appian Cloud environments in the Additional Environments step. The CSR should cover all your environments in the Subject Alternative (SAN) field including their respective static and dynamic Fully Qualified Domain Name (FQDN).

1.  Save the returned certificate signing request definition into a file. This definition will also be available from the **Certificate Summary** page corresponding to this certificate signing request.

Provide this certificate signing request to your relevant Certificate Authority or administrator to obtain a set of issued certificate files.

## Uploading issued certificate files

Once you have obtained issued certificate files from your certificate authority, the next step is to upload your files for deployment. The certificate files required are:

-   A PEM-formatted **signed certificate** file. This should consist of one certificate definition.
-   A PEM-formatted **chain of trust** file. This should consist of one or more certificate definitions, terminating with a root certificate authority certificate.

**Tip:**  A PEM formatted certificate is a Base64 encoded string with distinct headers and footers. Each certificate definition begins with `-----BEGIN CERTIFICATE-----` and ends with `-----END CERTIFICATE-----`.

To upload certificate files:

1.  In MyAppian, on the [Health](https://forum.appian.com/suite/sites/myappian/page/health) page go to the **CLOUD RESOURCES** tab and click **CERTIFICATES**.
2.  Select the certificate that you wish to upload certificate files for.
3.  Click on **Upload Files**. Files can only be uploaded for certificates with a status of "_Pending File Upload_".
4.  Attach your certificate files to the form and click **Upload**.
5.  Appian will then perform a series of validations to ensure your certificate can be deployed to our infrastructure. Depending on the configuration of your certificates, you could receive one or more validation messages, which are divided into two types. These also determine whether your files have been uploaded or not.
    -   Error level validation messages indicate a problem with your issued certificate files, preventing them from being deployable in Appian Cloud. You **must** get a new set of issued certificate files from your certificate authority with the problems addressed before you are able to deploy.
    -   Warning level validation messages will not prevent your files from being uploaded, however they may indicate a misconfiguration that you may not have intended.
6.  Once your files have been uploaded, open a support case with **Appian Support** to coordinate deployment of your certificate files.

**Caution:**  The certificate issued by your Certificate Authority should list the FQDNs of all your Appian environments in the Subject Alternative (SAN) field. You can only use a single certificate that covers all your Appian environments.

## Deploying certificates for public web access

The following steps are required to deploy a certificate:

1.  Open a [new support case](https://forum.appian.com/suite/sites/myappian/page/support) with Appian Support to deploy your certificate files. Appian Support will provide you with the required DNS name for use in the next step.
2.  Set up name resolution in your DNS infrastructure.
    -   Appian uses a load balancer that will serve as an entry point for incoming web requests to your environments.
    -   Create the required CNAME records in your DNS servers which map each environment FQDN to the corresponding public load balancer DNS name.
3.  Update your firewall configuration if you have rules that would block traffic to any FQDNs listed on the certificate.
4.  Confirm that each FQDN listed on the certificate resolves to the intended CNAME record when querying your DNS servers. If this is not configured properly, the environment will not be accessible following the next step.
5.  Schedule a maintenance window with Appian Support to rename each environment listed on the certificate. Appian support will restart the affected environments and enable public web traffic to reach your environment.

**Note:**  This step is only required for new or updated domains. For certificate renewals where the domain of your environments is not changing, no downtime is required.

## Renewing certificates

When a certificate is close to expiration, Appian Support will notify you.

To renew the certificate:

1.  In MyAppian, on the [Health](https://forum.appian.com/suite/sites/myappian/page/health) page go to the **CLOUD RESOURCES** tab and click **CERTIFICATES**.
2.  Select the certificate that is close to expiration and click on **RENEW REQUEST**.

    [![Certificate Renewal](images/certificate_management_renew_certificate.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img223)

    [![](images/certificate_management_renew_certificate.png)](#_)

3.  Follow the steps in the wizard and provide the required information.

**Caution:**  Renewing the request through this functionality will generate a new CSR, which you **must** do because you cannot reuse a previously provided CSR. This is consistent with best security practices because generating a new CSR creates a new unique pair of public and private keys for the renewed certificate.

Additionally, you **must** enter all your Appian Cloud environments in the Additional Environments step. The CSR should cover all your environments in the Subject Alternative (SAN) field including their respective static and dynamic FQDNs.

1.  After the new certificate is signed by your certificate authority, follow the steps to [upload the issued certificate files](#uploading-issued-certificate-files).

After Appian Support receives the renewed certificate, they will deploy the certificates for the respective environments. This action does not require any downtime.

After the new certificates are deployed to Appian Cloud load balancers, you may need to update your DNS infrastructure to resolve your environment(s) FQDN(s) to a different DNS name provided by Appian Support.

## Frequently asked questions

### How do I change the subdomain of my environments?

You currently cannot change the subdomain portion of the FQDN assigned when the environment was created through self-service certificate management. Please open a [new support case](https://forum.appian.com/suite/sites/myappian/page/support) with Appian Support if you need to change these.

### I have a wildcard certificate for my domain already. Am I able to use this?

Wildcard certificates are not allowed in Appian Cloud. Attempting to upload one will result in a validation error.

### Why don't I get the private key associated with my certificate signing request?

The private key for CSRs generated for Appian Cloud use are stored securely for use within Appian Cloud only. Private keys are not required to obtain issued certificate files. Key management is a critical component to keeping certificate signing trusted and secure.

### How do I customize the domains used for the static and dynamic FQDNs?

The static and dynamic domains are automatically generated based on the requested custom domain that you provide. If you need these to be different to the domains that are generated, please open a [new support case](https://forum.appian.com/suite/sites/myappian/page/support) with Appian Support.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...