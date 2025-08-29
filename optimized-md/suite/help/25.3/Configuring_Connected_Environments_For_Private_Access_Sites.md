---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Connected_Environments_For_Private_Access_Sites.html
original_path: Configuring_Connected_Environments_For_Private_Access_Sites.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Connected Environments for Private Access

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

## Overview

Appian Cloud environments that only allow Private Access (i.e. inbound access enabled only through [VPN](Configuring_Inbound_Access_Over_VPN.html) or [PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html)) require additional networking considerations in order to leverage Appian DevOps features such as [Compare and Deploy Across Connected Environments](Deploy_to_Target_Environments.html).

The Connected Environments for Private Access feature provides a simple-to-configure way to enable connectivity between two environments with Private Access. This is configured by enabling two way HTTPs traffic between your nominated environments. The HTTPs traffic between these environments will flow through the AWS internal network and will not traverse the public internet.

## Architecture

The diagram below shows how HTTPS traffic would flow between two environments with Connected Environments for Private Access enabled.

[![Inter-site Access Architecture](images/Configuring_Connected_Environments_For_Private_Access_Sites_Architecture.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img215)

[![](images/Configuring_Connected_Environments_For_Private_Access_Sites_Architecture.png)](#_)

## Prerequisites

Your elected environments must meet the following prerequisites to enable Connected Environments for Private Access:

-   Your environments must be running Appian 22.2 or above.
-   Your environments must be configured for Private Access [VPN](Configuring_Inbound_Access_Over_VPN.html) or [PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html).
-   Your environments must be hosted in the same AWS region.
-   Your environments must share the same compliance level (e.g. You cannot elect a non-PCI environment and a PCI environment to have Connected Environments).
-   Your environments must not be hosted in a [Dedicated Customer Virtual Private Cloud](Dedicated_Customer_VPC.html).

## Setup

Appian Support will work with you through the following configuration procedure.

| **Step** | **Description** | **Owner** |
| --- | --- | --- |
| Create a support case | Create a support case with Appian to enable Connected Environments for your Private Access environments. Provide a list of environments for which to enable Connected Environments. | Customer |
| Verify configurations and schedule maintenance window | Appian Support will verify the configurations and work with you to schedule maintenance windows for the affected environments. | Appian |
| Enable DevOps features | Configure DevOps features on your environments. | Customer |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...