---
source_url: https://docs.appian.com/suite/help/25.3/AWS-PrivateLink_Integration.html
original_path: AWS-PrivateLink_Integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# AWS PrivateLink Integration

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

Customers of Appian Cloud can use [AWS PrivateLink](https://aws.amazon.com/privatelink/) to enable private communication between their Appian Cloud environments and AWS resources hosted on their private networks. PrivateLink can be used to integrate with your services such as business data sources or authentication systems through your own AWS Virtual Private Cloud (VPC). PrivateLink can also be used to expose an Appian Cloud environment to your VPC.

This integration option is an alternative to [VPN Tunnels](Cloud_VPN_Integration.html) for customers who have IT infrastructure running on AWS.

## Benefits

PrivateLink connectivity gives you several benefits, including, but not limited to:

-   **Enhanced security**: Traffic over PrivateLink is kept within the AWS network and does not traverse the public Internet.
-   **Simplified access to your resources**: Appian Cloud environments with multiple application servers (e.g. High-Availability) can use a single PrivateLink connection regardless of the number of nodes.
-   **Reduced network configuration complexity**: PrivateLink removes the need to rely on allowing a public IP on your network's edge firewalls. Additionally, you will not face conflicts with Appian's private network IP address spaces since connections through PrivateLink are performed through an endpoint service.

## Access your resources using AWS PrivateLink (Outbound PrivateLink)

This integration option allows an Appian Cloud environment to communicate with resources inside your managed VPC, where the operation is initiated by the Appian Cloud environment.

In this configuration, Appian Cloud acts as the service consumer and your VPC acts as the service provider. See [Outbound Access over PrivateLink](Access_Customer_VPC_using_AWS_PrivateLink.html) for more details.

## Access to your Appian Cloud environment from an AWS VPC (Inbound PrivateLink)

This integration option allows resources within your VPC to communicate directly with an Appian Cloud environment.

In this configuration, the Appian Cloud environment is the service provider and your VPC is the service consumer. See [Inbound Access over PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html) for more details.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...