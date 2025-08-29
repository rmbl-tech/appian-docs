---
source_url: https://docs.appian.com/suite/help/25.3/Dynamic_VPN_Routing.html
original_path: Dynamic_VPN_Routing.html
version: "25.3"
title: "Dynamic VPN Routing"
page_id: "Dynamic_VPN_Routing"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Dynamic VPN Routing

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

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>Customers must be on the <a href="https://appian.com/support/resources/success-plans">Foundation, Professional, or Signature Success Plans</a> to connect to resources in a self-managed network or in a private cloud environment.</td></tr></tbody></table>

## Overview

Dynamic VPN routing allows customers to connect their production Appian Cloud environments to their resources in a secure and reliable manner. With this feature, traffic through IPSec VPN tunnels can be rerouted automatically to a secondary path as soon as a node or a connection failure is detected. Dynamic VPNs use Border Gateway Protocol (BGP) to exchange routing information and reachability between Appian Cloud and customer networks.

## Benefits

Dynamically-routed VPNs have several benefits, including:

-   **Enhanced VPN resiliency**: Different from static VPN tunnels, dynamic VPN tunnels allow both sides to detect failures and route traffic around network failures. This minimizes the impact of service disruption between Appian Cloud and the customer network when a VPN tunnel or a node failure occurs.
-   **Reduced complexity of VPN integrations**: Instead of setting up two static VPN tunnels per Application Server node to implement failover, Appian Cloud environments configured with High Availability (HA) will require only two dynamic VPN tunnels per environment (regardless of the number of nodes in cluster) to avoid single points of failure in the connectivity between Appian Cloud and the customer network.
-   **Simplified name resolution and address space**: When an Appian Cloud environment is accessed over VPN, customers connect to a single private endpoint provided by Appian Cloud and configure their DNS infrastructure to resolve to a single IP address.

## Architecture

When dynamic VPN routing is enabled, customers can "peer" their BGP-capable VPN device with their Appian Cloud environments. Once BGP peering is established between both sides, Appian Cloud will inform the availability of the Appian private network (or prefixes) through BGP messages within the IPSec tunnels. Similarly, customer VPN devices will advertise the private IP prefixes where the customer resources can be reached by their Appian Cloud environment.

With this feature, Appian Cloud environments are configured with a pair of Site-to-Site IPSec VPN tunnels in an Active-Passive setup. Appian Cloud provides two Appian Gateways, each with a public IP address that will be used by the customer to configure the tunnels in their VPN gateways. BGP sessions run inside both of the VPN tunnels and BGP peers are configured in their respective Autonomous Systems.

### Outbound traffic

The diagram below shows an example setup of an integration with a self-managed resource through dynamic VPNs. Application server traffic originated in the Appian Cloud environment and destined to a customer’s resource is routed over the active VPN tunnel. The exact configuration depends on the architecture of each customer network.

![images:Dynamic-VPN0.png](images/Dynamic-VPN0.png)

When the primary VPN tunnel is down or the remote Customer VPN Gateway is unreachable, BGP detects the failure in the network path and recovers automatically by rerouting traffic to the second VPN tunnel.

![images:Dynamic-VPN1.png](images/Dynamic-VPN1.png)

The same setup applies for Appian Cloud environments configured with [High-Availability](High_Availability_for_Appian_Cloud.html). A pair of dynamic VPN tunnels is required to route outbound traffic originating from each application server in the Appian Cloud environment. With Appian Cloud HA, Appian Gateways are located in separate Availability Zones to recover from an outage of an Availability Zone.

### Inbound traffic

Customers who wish to access their environments over VPNs can also use Dynamic VPN routing. With this configuration, customers are assigned a single HTTPS private endpoint accessible from both the active and the standby tunnel for each Appian Cloud environment regardless of its number of nodes. The HTTPS private endpoint will be part of the prefix advertised by Appian Cloud through BGP.

In the example below, the Appian Cloud environment is accessed using the custom name _my-instance.acme.org._ Customers configure their DNS infrastructure to resolve their custom Appian Cloud environment name to the Private HTTPS Endpoint. End user requests are routed over the active VPN tunnel and processed by the web server running on the Appian Cloud environment. The exact configuration depends on the architecture of each customer network.

![images:Dynamic-VPN2.png](images/Dynamic-VPN2.png)

If the active tunnel goes down, end users requests to the Private HTTPS endpoint will be rerouted by the Customer VPN gateway to the second tunnel. The same setup applies for Appian Cloud environments configured with [High Availability](High_Availability_for_Appian_Cloud.html).

For more information on inbound traffic over VPN, refer to [Configuring Inbound Traffic over VPN](Configuring_Inbound_Access_Over_VPN.html) and [Configuring Dual Inbound Access](Configuring_Dual_Inbound_Access.html).

## Prerequisites

The table below lists the tasks that the customer needs to perform and the typical role in your organization to be involved in this process. Roles may vary depending on your organization.

| Prerequisite | Description | Role in customer organization |
| --- | --- | --- |
| **Ensure customer VPN device compatibility** | Customer VPN device must be able to establish Border Gateway Protocol (BGP) peering and bind tunnels to logical interfaces (route-based VPN). Refer to the vendor documentation of your VPN device to ensure that it supports these capabilities. | Networking department |
| **Customize the Appian Cloud environment domain (Optional)** | Appian Cloud environments with inbound web traffic over dynamic VPNs are required to have custom domains. This is only required when your environment is accessed over the VPN tunnel. See [Request a Custom Domain](Using_a_Custom_Domain_in_Appian_Cloud.html). | Networking Department |

## Procedure

Once all prerequisites have been met, create a support case and submit the [VPN Worksheet](https://forum.appian.com/suite/doc/867990) to Appian Support. To enable this feature, Appian Support will coordinate with the customer one or more Maintenance Windows if needed.

### Configuration Considerations

#### Allowed IP address ranges

Allowed Private Network Address spaces may vary based on the region of your Appian Cloud environment(s). Typically, network spaces in the 192.\* range are unrestricted, while certain subnets within the 172.16.0.0/12 and 10.0.0.0/8 ranges are restricted. The Automatic Private IP Addressing (APIPA) address range, 169.254.0.0/16, is restricted as well. Contact Appian Support to verify the restricted spaces for your specific Appian Cloud environment(s) if you would like to use subnets in these ranges. When configuring your private network space participating in the VPN tunnel, we recommend to narrow down your subnets as much as possible (see [IP address range restrictions](#ip-address-range-restrictions)).

The **Allow List** of IP address ranges that are generally available for your use can be found below:

-   10.0.0.0/16
-   10.2.0.0/15
-   10.4.0.0/14
-   10.8.0.0/13
-   10.16.0.0/16
-   10.17.0.0/16
-   10.19.0.0/16
-   10.21.0.0/16
-   10.23.0.0/16
-   10.25.0.0/16
-   10.27.0.0/16
-   10.29.0.0/16
-   10.31.0.0/16
-   10.96.0.0/14
-   10.101.0.0/16
-   10.102.0.0/15
-   10.104.0.0/13
-   10.112.0.0/12
-   10.128.0.0/14
-   10.132.0.0/16
-   10.136.0.0/13
-   10.144.0.0/12
-   10.160.0.0/11
-   10.192.0.0/10
-   172.16.0.0/16
-   172.31.2.0/23
-   172.31.4.0/22
-   172.31.8.0/21
-   172.31.16.0/20
-   172.31.32.0/19
-   172.31.64.0/18
-   172.31.128.0/17
-   192.168.0.0/16

#### Alternative VPN configurations

If you have configurations that include private IP addresses that fall outside Appian Cloud's allowed IP ranges, then you must implement one of the following alternatives:

-   Implement a Network Address Translation (NAT) on your network to expose your private subnets in a different range.
-   Assign new IP addresses (public or private) to your systems so that the new IP addresses don't conflict.
-   Opt for [AWS PrivateLink integration](AWS-PrivateLink_Integration.html) instead of VPN.

#### IP address range restrictions

When configuring what traffic should go over your VPN tunnels, use specific IP addresses with a /32 Classless Inter-Domain Routing (CIDR) notation in your VPN configurations as much as possible. Note that specifying IP address or CIDR ranges larger than a /24 is not supported. You may specify multiple /24 ranges if necessary.

#### VPN encryption configurations

The following combinations of encryption configurations are supported for your VPN tunnels.

| Encryption algorithm | Authentication algorithm | DH Group |
| --- | --- | --- |
| AES128-CBC | SHA2-256 or SHA2-384 or SHA2-512 | DH15 or DH16 or DH17 or DH18 or DH19 or DH20 or DH21 |
| AES256-CBC | SHA2-256 or SHA2-384 or SHA2-512 | DH20 or DH21 |
| AES128-GCM | N/A | DH15 or DH16 or DH17 or DH18 or DH19 or DH20 or DH21 |
| AES256-GCM | N/A | DH20 or DH21 |

The supported encryption configurations are set to ensure the security of your VPN tunnels. Other encryption configurations are deprecated and will be removed in a future release.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...