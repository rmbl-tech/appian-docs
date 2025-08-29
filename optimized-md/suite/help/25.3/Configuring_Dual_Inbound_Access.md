---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Dual_Inbound_Access.html
original_path: Configuring_Dual_Inbound_Access.html
version: "25.3"
title: "Configuring Inbound Dual Access"
page_id: "Configuring_Dual_Inbound_Access"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Inbound Dual Access

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

For customers who require that their Appian Cloud environments are accessed over a private connection, such as VPN tunnel or AWS PrivateLink, and through the public Internet at the same time, Appian Cloud offers the ability to configure a dual access configuration. This page outlines the steps required to set up an Appian Cloud environment with this configuration.

Appian Cloud also offers the ability to configure inbound web access only over an IPsec VPN tunnel or PrivateLink connection. For more details, see [Configuring Inbound Access over VPN](Configuring_Inbound_Access_Over_VPN.html) or [Access an Appian Cloud Environment Using AWS PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html).

**Note:**  Appian Cloud environments running in a high availability configuration will require additional configuration. If you set up static VPN tunnels, you need to set up the necessary network configuration on your infrastructure to forward web requests to a healthy web server. Web servers are accessible on the Appian Network interface IP addresses configured when setting up your VPN tunnel.

## Step 1: Set up a private connection

**Required role:** Network Administrator or Authorized support contact

Configure one of the following:

-   VPN tunnel(s) from your corporate network to your Appian Cloud environment. See [Appian Cloud VPN Integration](Cloud_VPN_Integration.html) for instructions.
-   AWS PrivateLink Connection from your corporate network to your Appian Cloud environment. See [Configuring Inbound Access over AWS PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html) for instructions.

## Step 2: Set up name resolution

**Required role:** DNS/Server administrator

Update your DNS infrastructure to resolve the fully qualified domain name (FQDN) of your Appian Cloud environment to one of two values based on the source of the DNS query:

-   For DNS queries originating over the public Internet:
    -   For sites using Appian owned domains such as appiancloud.com or appiancloud.us, no changes are required. Appian provisions the required publicly resolvable DNS records automatically.
    -   For sites using custom domains, you should configure a DNS Canonical Name (CNAME) record pointing to the Appian Cloud public infrastructure DNS name that Appian Support provided you with during custom domain setup.
-   For DNS queries originating from within your corporate network, you should configure a DNS Address (A) record in your internal DNS infrastructure pointing to your inbound private connection's IP address.
    -   For PrivateLink connections, this will be the private IP address associated with the interface VPC endpoint. See [Configuring Inbound Access over AWS PrivateLink](Access_Appian_Cloud_instance_using_AWS_PrivateLink.html#setup) for more details.
    -   For VPN connections, this will be the assigned private IP address of the VPN tunnel.

## Step 3: Create a support case

**Required role:** Authorized support contact

Schedule a maintenance window for the environment by opening a new Support Case with Appian Support.

During the maintenance window, Appian Support will enable the environment to receive inbound HTTPS traffic over the public Internet and your private connection. Once the maintenance window has completed, the environment will be accessible through both methods.

## Example traffic flow for inbound web traffic over public Internet and VPN

The diagram below illustrates a sample traffic flow when end users and systems access an Appian Cloud environment over the public Internet and the VPN tunnel at the same time. This diagram assumes a publicly resolvable DNS record has been configured by Appian or the customer such that traffic originating from the public Internet resolves to Appian Cloud's public infrastructure. It also assumes a private DNS record has been configured in the customer's DNS infrastructure such that traffic originating from the customer network will resolve to the private connection's IP address. End users will access the environment using its FQDN.

[![Inbound Dual HTTPS access](images/dual_inbound_web_access.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img216)

[![](images/dual_inbound_web_access.png)](#_)

| Traffic Type | Site Domain Type | Flow Description |
| --- | --- | --- |
| Inbound traffic over the public Internet (blue arrows) | Appian Owned |
1.  End users make a request to your environment running on the Appian owned domain. Appian's public-facing DNS infrastructure resolves to Appian Cloud's public [content delivery network (CDN)](Appian_Cloud_Content_Delivery.html).
2.  The request is routed over the Internet and is received by the CDN, which forwards traffic to your environment.
3.  The request is processed by the application server of your environment and returned over the same path.

 |
| Inbound traffic over the public Internet (blue arrows) | Custom |

1.  End users make a request to your environment running on your custom domain. Your public-facing DNS infrastructure resolves to a CNAME record pointing to Appian Cloud's public [content delivery network (CDN)](Appian_Cloud_Content_Delivery.html).
2.  The request is routed over the Internet and is received by the CDN, which forwards traffic to your environment.
3.  The request is processed by the application server of your environment and returned over the same path.

 |
| Inbound traffic over private connections (red arrows) | Appian Owned and Custom |

1.  End users (or systems) located in your corporate network make a request to your environment. Your private DNS infrastructure performs a lookup which resolves to the private IP address of the interface VPC endpoint or VPN tunnel.
2.  The request is routed over to the private connection.
3.  The request is forwarded to the application server. The response is sent back through the same private connection.

 |
| Outbound traffic (green steps) | Appian Owned and Custom |

1.  All traffic originating from your environment to a resource in your network is forwarded over a private connection (IPsec VPN tunnel or AWS PrivateLink connection). Resources in your network might include a business datasource or an LDAP server.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...