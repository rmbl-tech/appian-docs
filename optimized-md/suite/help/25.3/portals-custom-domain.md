---
source_url: https://docs.appian.com/suite/help/25.3/portals-custom-domain.html
original_path: portals-custom-domain.html
version: "25.3"
title: "Configuring Custom Domains for Portals"
page_id: "portals-custom-domain"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Custom Domains for Portals

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

## Overview

By default, all portals have a fully-qualified domain name (FQDN) that uses the Appian environment name for the subdomain and `appianportals.com` for the domain. For example, if an environment is called `insurecorp`, the URLs for portals published from the environment will use `insurecorp.appianportals.com`.

This works well for many use cases. However, some organizations prefer to have more control over the URLs for their portals. That's where custom domains come in.

Using custom domains, you can configure your portal URLs to use domains that you define. So the above example could use `quote.insurecorp.com` instead of `insurecorp.appianportals.com`. Because you can have up to 10 custom portal domains per environment, you could have another portal at `claims.insurecorp.com`.

![example of a custom domain](images/custom_domain_example.png)

This page outlines how to configure one or more custom domains that portals in your environment can share.

## Choosing a fully-qualified domain name (FQDN)

A fully-qualified domain name (FQDN) is used to access the portals in your environment. It should consist of the following:

-   Subdomain: The first segment of the URL delineated by a period.
-   Domain: The main part of a domain name, which usually represents an organization or entity.
-   Top-level domain (TLD): The last segment of a domain name, which comes after the final period.

For example, in `quotes.home.insurecorp.com`, the subdomain is `quotes`, the domain is `insurance.insurecorp`, and the TLD is `com`.

![FQDN example](images/hostname_example.png)

When you choose an FQDN, make sure it meets the following criteria:

-   The FQDN must be different from the FQDN for the Appian environment.
    -   If you have a custom domain for your Appian environment, the domain can be the same as long as the subdomain is different. For example, you can use `mysites.insurecorp.com` for your Appian environment and `quotes.insurecorp.com` for your portals.
-   The FQDN must not contain the string `appian`.
-   The FQDN must include exactly one subdomain.
-   Domains:
    -   Only use alphanumeric (A-Z, a-z, and 0-9, case-insensitive), period, and hyphen characters.
    -   Use 1 to 63 characters.
    -   Do not start with or end with a hyphen.
-   Subdomains:
    -   Only use alphanumeric (A-Z, a-z, and 0-9, case-insensitive) and hyphen characters.
    -   Use 1 to 63 characters.
    -   Do not start with or end with a hyphen.
-   TLDs:
    -   Only use alphanumeric (A-Z, a-z, and 0-9, case-insensitive) characters.
    -   Use 2 to 63 characters.

## DNS and certificate requirements

Make sure the DNS infrastructure resolving your domains are publicly accessible. Otherwise, certificate signing will fail, and end users will be unable to access the portals. Additionally, if your Appian environment uses a custom domain, it must use a certificate signed by a public certificate authority.

If you have Certification Authority Authorization (CAA) records configured for your domains, make sure they list Amazon certificate authorities as authorized. Otherwise, certificate signing will fail.

Appian does not support wildcard certificates, meaning the certificate must not use wildcard characters in the FQDN.

## Configure custom domains for your portals

You can configure up to ten custom domains per environment that your portals can share. Appian Support will work with you to create a certificate and configure your environment to have access to the domains.

Once configured, each portal published from the environment is able to use one custom domain from among the domains configured on your environment. If you have more than one custom domain, you can configure which domain to use for each portal from the [portal object](portal-object.html#configurations) in Appian Designer.

To configure custom domains for your portals:

1.  Open a support case with Appian Support. Include all FQDNs you would like your portals to use and request a certificate for the FQDNs.
    -   Appian Support will create a single certificate for all of your Portals FQDNs. Note that if you want to add or change FQDNs later Appian Support will need to create a new certificate with all existing FQDNs plus the new FQDN(s).
    -   Appian Support will provide you with two canonical name (CNAME) records per domain. One will be used to validate the certificate with AWS Certificate Manager and the other will be used to resolve the portal's FQDN to Appian's infrastructure.
2.  Create the provided CNAME records in your DNS infrastructure.
3.  Update the support case to indicate that you have created the records.
    -   Appian Support will configure your environment to use the custom domains and schedule a maintenance window to restart the environment. After the environment restarts, the published portals in the environment will automatically republish. During this, the portals will update to use one of the custom domains. Following this maintenance window, you will be able to change the domain used by each portal individually.
4.  If you provided multiple domains, update individual portals to use the preferred custom domain from the [portal object](portal-object.html#configurations) in Appian Designer.
    -   Alternatively, you may change this configuration by [deploying the portal to a target environment](portals-manage-portals.html#deploying-portals) and providing an [import customziation file](portals-manage-portals.html#import-customization-files-for-portals).

**Note:**  [Server Name Indication (SNI)](https://www.cloudflare.com/learning/ssl/what-is-sni) must be enabled to access a portal that is configured to use a custom domain.

SNI is generally enabled by default, except for some older browsers, operating systems, and HTTP clients which may not support it.

## Certificates and renewal

The certificate is created and hosted in [AWS Certificate Manager](https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html) (ACM). It is signed by an Amazon certificate authority, and the private key cannot be exported from AWS.

Because the certificate is created and hosted in ACM, it will be [automatically renewed](https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html) if the following conditions are met:

-   The DNS records used to validate the certificate remain in place.
-   The certificate is in use when it is nearing expiration and ready to be renewed.
-   If you have a CAA record configured for your domain, it lists Amazon certificate authorities as authorized.

If the certificate expires due to one of the criteria not being met, open a support case with Appian Support to create a new certificate.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...