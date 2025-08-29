---
source_url: https://docs.appian.com/suite/help/25.3/Latency_Based_Routing_In_Appian_Cloud.html
original_path: Latency_Based_Routing_In_Appian_Cloud.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Latency-Based Routing in Appian Cloud

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

Latency-based routing dynamically routes user requests to the geographic region nearest to them, improving the responsiveness of Appian Cloud environments. This helps speed up common requests and makes the overall user experience better for the majority of end users, even if their Appian environment or portal is hosted in a different region than where they are located.

This page discusses how latency-based routing works in Appian Cloud.

**Tip:**  Process Mining does not use latency-based routing.

## Latency-based routing in Appian Cloud

Latency-based routing routes end user requests involving dynamic web content to the geographic region available in Appian Cloud with the lowest latency. Dynamic web content is web content that changes to personalize the experience based on the user who is interacting with a system, as opposed to static content, which displays the same content for all users.

Requests that require accessing data stored in a customer's environment are routed to the specific region the Appian Cloud environment is hosted in.

All traffic continues to use end-to-end encryption using industry-standard Transport Layer Security (TLS) encryption.

Latency-based routing is enabled by default in all [supported regions where the service is offered](Appian_Cloud_Availability.html).

![Latency-based routing diagram](images/latency-based_routing.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...