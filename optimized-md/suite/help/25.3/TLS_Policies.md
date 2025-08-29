---
source_url: https://docs.appian.com/suite/help/25.3/TLS_Policies.html
original_path: TLS_Policies.html
version: "25.3"
title: "TLS Policies for Inbound Web Access"
page_id: "TLS_Policies"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# TLS Policies for Inbound Web Access

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

Appian Cloud uses [Transport Layer Security](https://developer.mozilla.org/en-US/docs/Web/Security/Transport_Layer_Security) (TLS) to secure inbound web traffic.

This article outlines the different supported policies and options for enabling them.

## Supported policies

Appian Cloud supports four different policies across all areas of the platform:

|   | TLS 1.2 permissive | TLS 1.2 strict | TLS 1.3/1.2 permissive | TLS 1.3/1.2 strict |
| --- | --- | --- | --- | --- |
| Environment [dynamic content](Appian_Cloud_Content_Delivery.html#dynamic-content) (commercial regions) | ✓ (default) | ✓ |   |   |
| Environment [dynamic content](Appian_Cloud_Content_Delivery.html#dynamic-content) (GovCloud regions) |   |   | ✓ (default) | ✓ |
| [Static content delivery](Static_Content_Delivery_In_Appian_Cloud.html) (commercial regions) | < Appian 22.4 |   | Appian 22.4+ |   |
| [Static content delivery](Static_Content_Delivery_In_Appian_Cloud.html) (GovCloud regions) | < Appian 23.4 |   | Appian 23.4+ |   |
| [Portals](https://docs.appian.com/suite/help/latest/portals-home.html) | ✓ |   |   |   |

### TLS 1.2 permissive (default)

The permissive TLS 1.2 policy requires clients to access the environment using TLS 1.2. This policy supports the use of forward secrecy cipher suites for clients that support it, but can fall back to cipher suites without forward secrecy to support legacy clients.

### TLS 1.2 strict

This policy is similar to the permissive TLS 1.2 policy, but it only allows clients to access environments using cipher suites that support forward secrecy. Additionally, this policy disables cipher suites that include the CBC block cipher.

If supported, this policy can be enabled upon customer request by creating an Appian Support case.

### TLS 1.3/1.2 permissive

This policy supports TLS 1.3 with fallback to TLS 1.2. It includes support for the same cipher suites as the TLS 1.2 permissive policy.

### TLS 1.3/1.2 strict

This policy supports TLS 1.3 with fallback to TLS 1.2. It includes support for the the same cipher suites as the TLS 1.2 strict policy.

If supported, this policy can be enabled upon customer request by creating an Appian Support case.

## Supported cipher suites

The following table shows a side-by-side comparison of the cipher suites supported by each of Appian Cloud's TLS policies.

| OpenSSL cipher suite | TLS 1.2 permissive | TLS 1.2 strict | TLS 1.3/1.2 permissive | TLS 1.3/1.2 strict |
| --- | --- | --- | --- | --- |
| TLS\_AES\_128\_GCM\_SHA256 |   |   | ✓ | ✓ |
| TLS\_AES\_256\_GCM\_SHA384 |   |   | ✓ | ✓ |
| ECDHE-ECDSA-AES128-GCM-SHA256 | ✓ | ✓ | ✓ | ✓ |
| ECDHE-RSA-AES128-GCM-SHA256 | ✓ | ✓ | ✓ | ✓ |
| ECDHE-ECDSA-AES128-SHA256 | ✓ |   | ✓ |   |
| ECDHE-RSA-AES128-SHA256 | ✓ |   | ✓ |   |
| ECDHE-ECDSA-AES128-SHA | ✓ |   | ✓ |   |
| ECDHE-RSA-AES128-SHA | ✓ |   |   |   |
| ECDHE-ECDSA-AES256-GCM-SHA384 | ✓ | ✓ | ✓ | ✓ |
| ECDHE-RSA-AES256-GCM-SHA384 | ✓ | ✓ | ✓ | ✓ |
| ECDHE-ECDSA-AES256-SHA384 | ✓ |   | ✓ |   |
| ECDHE-RSA-AES256-SHA384 | ✓ |   | ✓ |   |
| ECDHE-RSA-AES256-SHA | ✓ |   |   |   |
| ECDHE-ECDSA-AES256-SHA | ✓ |   |   |   |
| AES128-GCM-SHA256 | ✓ |   | ✓ |   |
| AES128-SHA256 | ✓ |   | ✓ |   |
| AES128-SHA | ✓ |   |   |   |
| AES256-GCM-SHA384 | ✓ |   | ✓ |   |
| AES256-SHA256 | ✓ |   | ✓ |   |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...