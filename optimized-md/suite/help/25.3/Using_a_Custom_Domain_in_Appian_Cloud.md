---
source_url: https://docs.appian.com/suite/help/25.3/Using_a_Custom_Domain_in_Appian_Cloud.html
original_path: Using_a_Custom_Domain_in_Appian_Cloud.html
version: "25.3"
title: "Requesting a Custom Domain"
page_id: "Using_a_Custom_Domain_in_Appian_Cloud"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Requesting a Custom Domain

 [![](images/appian-protect.png) Requires Appian Protect Foundation Success Plan or higher](
                /suite/help/25.3/Appian_Protect.html
              )

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

**Note:**  Customers must be on the [Foundation, Professional, or Signature Success Plans](https://appian.com/support/resources/success-plans) to use custom domains.

## Overview

When Appian Cloud environments are created, they are assigned a subdomain under the `appiancloud.com` (commercial regions) or `appiancloud.us` (US GovCloud regions) domain. However, Appian Cloud customers can request to customize the Fully Qualified Domain Names (FQDN) of their environments to provide a personalized experience to end users.

This page outlines the steps required to change the FQDN of Appian Cloud environments to a custom domain.

## About Fully Qualified Domain Names (FQDN)

An FQDN consists of three parts:

-   **Subdomain**: The first segment of the FQDN delineated by a period.
-   **Domain**: The main part of a domain name which represents an organization or entity.
-   **Top-level domain (TLD)**: The last segment of a domain name, coming after the final period.

For example, in `prod-environment.apps.mycorp.org`, `prod-environment` is the subdomain, `apps.mycorp` is the domain, and `org` is the TLD.

### Valid FQDNs

Valid domains and subdomains:

-   Only use alphanumeric (A-Z, a-z, and 0-9, case-insensitive) and hyphen characters.
-   Use 1 to 63 characters.
-   Do not start with or end with a hyphen.

Valid TLDs:

-   Only use alphanumeric (A-Z, a-z, and 0-9, case-insensitive) characters.
-   Use 2 to 63 characters.

### FQDN configuration

Appian Cloud environments use 3 FQDNs. By default, these are:

|   | Commercial regions | US GovCloud regions |
| --- | --- | --- |
| Main FQDN | `ENVIRONMENT_NAME.appiancloud.com` | `ENVIRONMENT_NAME.appiancloud.us` |
| Static FQDN | `ENVIRONMENT_NAME.appiancloud-static.com` | `ENVIRONMENT_NAME.appiancloud-static.us` |
| Dynamic FQDN | `ENVIRONMENT_NAME.appiancloud-dynamic.com` | `ENVIRONMENT_NAME.appiancloud-dynamic.us` |

Only the main FQDN is visible to end users.

#### Example

Your company domain is `mycorp.org` and you have an environment called `production-acme` currently using the `appiancloud.com` domain, available at `production-acme.appiancloud.com`. You want to customize this environment to use `mycorp.org` so that end users can access the environment using the FQDN `production-acme.mycorp.org`.

| Old FQDN | New FQDN |
| --- | --- |
| `production-acme.appiancloud.com` | `production-acme.mycorp.org` |

You can also customize **all 3** FQDNs, if you so choose:

| Old FQDN | New FQDN |
| --- | --- |
| `production-acme.appiancloud.com` | `production-acme.mycorp.org` |
| `production-acme.appiancloud-static.com` | `production-acme.mycorp-static.org` |
| `production-acme.appiancloud-dynamic.com` | `production-acme.mycorp-dynamic.org` |

**Note:**  When customizing a domain, the static, dynamic, and main FQDNs must be unique. You can use any [valid FQDN configuration](#valid-fqdns) to customize the domain; each FQDN does not need to include the type, like static, dynamic, or main.

## Configuring custom domains

1.  Determine the FQDN(s) for the environments you wish to use a custom domain with.
2.  Use [Self-Service Certificate Management](Self_Service_Certificate_Management_for_Appian_Cloud.html#generating-a-certificate-signing-request) to generate a Certificate Signing Request (CSR) with the required information, including your organization details and the FQDNs of all of your environments.
3.  Use the generated CSR to obtain a set of signed, PEM-formatted certificate files from your organization's certificate authority. Do _not_ generate a separate key or reuse a previously provided CSR.

    **Note:**  To use portals in the environment, you must use a certificate signed by a public certificate authority; privately-signed certificates are not compatible with portals.

4.  Use [Self-Service Certificate Management](Self_Service_Certificate_Management_for_Appian_Cloud.html#uploading-issued-certificate-files) to provide Appian with the issued certificate files.
5.  Open a new support case with Appian Support to [deploy your certificate files](Self_Service_Certificate_Management_for_Appian_Cloud.html#deploying-certificates-for-public-web-access). Consult the documentation for [VPN only](Configuring_Inbound_Access_Over_VPN.html) or [dual access](Configuring_Dual_Inbound_Access.html) configurations if you are setting up your environment in one of these access options, as additional steps are required.

**Note:**  [Server Name Indication (SNI)](https://www.cloudflare.com/learning/ssl/what-is-sni) must be enabled by clients to access custom domain Appian Cloud environments.

## Certificate renewal

To renew your certificate, follow the renewal steps in [Self-Service Certificate Management](Self_Service_Certificate_Management_for_Appian_Cloud.html#renewing-certificates).

## Frequently asked questions

### Why does my Appian Cloud environment use three different domains?

The static and dynamic domains are used for background web requests to support features such as the [Document Viewer Component](Document_Viewer_Component.html) and [Component Plug-ins](component-plugins.html). These domains are needed for security purposes. Review the [Post Install Configurations](Post-Install_Configurations.html#configure-your-static-and-dynamic-content-urls) for more details.

### Do I have to change the subdomain portion of my environment's FQDN?

You do not need to change the subdomain portion of your environment's FQDN.

### What are the requirements surrounding the subdomain portion of the environment FQDN?

The subdomain portion of the environment FQDN must comply with the following requirements:

-   Subdomains should be representative of your organization.
-   Subdomains should be unique. That is, each subdomain must be different across environments.
-   Subdomains cannot be generic or include the word "appian" in their name.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...