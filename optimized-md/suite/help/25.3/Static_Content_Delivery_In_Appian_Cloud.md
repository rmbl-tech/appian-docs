---
source_url: https://docs.appian.com/suite/help/25.3/Static_Content_Delivery_In_Appian_Cloud.html
original_path: Static_Content_Delivery_In_Appian_Cloud.html
version: "25.3"
title: "Static Content Delivery in Appian Cloud"
page_id: "Static_Content_Delivery_In_Appian_Cloud"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Static Content Delivery in Appian Cloud

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

Static content delivery serves static content to users from the geographic region in Appian Cloud with the lowest latency, improving the responsiveness of Appian Cloud environments. This helps speed up common requests and optimizes the overall user experience no matter where in the world they are connecting from.

This page discusses how static content delivery works in Appian Cloud as well as which endpoints to allow to ensure that Appian static content loads correctly.

**Tip:**  Appian Portals and Process Mining do not use static content delivery.

## Static content delivery in Appian Cloud

Appian Cloud's static content delivery service enables optimal delivery of web assets, such as images, JavaScript, and CSS, to the end users of Appian customer environments. This is achieved by serving static content to users from the geographic region [available](Appian_Cloud_Availability.html) in Appian Cloud with the lowest latency.

All traffic continues to use end-to-end encryption using industry-standard Transport Layer Security (TLS) encryption.

Static content delivery is enabled by default in all Appian Cloud environments.

![Static Content Delivery Diagram](images/static_content_delivery.png)

## Endpoints to add to your network allowlist

Confirm with your network team that the applicable static content delivery endpoints are added to your network allowlist to ensure that Appian static content will load correctly:

-   For Appian Cloud environments in a GovCloud region:
    -   If the environment uses Appian 23.4 or above, add the `web-assets.appian-cdn-gov.com` and `web-assets-gov.appiancloud.com` endpoints.
    -   If the environment uses Appian 23.3 or below, add the `web-assets-gov.appiancloud.com` endpoint.
-   For Appian Cloud environments in all other regions:
    -   If the environment uses Appian 22.4 or above, add the `web-assets.appian-cdn.com` and `web-assets.appiancloud.com` endpoints.
    -   If the environment uses Appian 22.3 or below, add the `web-assets.appiancloud.com` endpoint.

Note that these endpoints are only used for publicly accessible environments. They do not apply to environments accesed over [VPN](Cloud_VPN_Integration.html), [PrivateLink](AWS-PrivateLink_Integration.html), or [Dual Access](Configuring_Dual_Inbound_Access.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...