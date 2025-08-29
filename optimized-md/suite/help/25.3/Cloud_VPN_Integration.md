---
source_url: https://docs.appian.com/suite/help/25.3/Cloud_VPN_Integration.html
original_path: Cloud_VPN_Integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# VPN Integration

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

**Tip:**  You can use the Self Service VPN feature if you are configuring your first VPN tunnel in your Appian Cloud environment. See [Self Service VPN](Cloud_Self_Service_VPN.html).

IPsec VPN connections can be configured to allow your Appian Cloud environments to access resources in your private network. Each Appian Cloud environment can have multiple VPN tunnels enabled to securely integrate with resources in different segments of your network. This enables the use of Appian Smart Services such as "Query Database" or "Web Service" to connect to resources located on your private network. VPN tunnels can also be used to secure connection to business data sources through the Admin Console, as well as integrate with corporate authentication systems (e.g. Active Directory).

Appian Cloud supports both Static and Dynamic Routing using IPsec VPN tunnels. For more specifics on dynamic VPN routing, [visit our documentation on it](Dynamic_VPN_Routing.html).

## Failover / resiliency

Appian Cloud environments can have a pair of VPN tunnels configured as active/passive to failover between two (2) customer VPN gateways. Failover to the passive tunnel will be attempted upon failure of a ping test against a single IP address within your private network. This IP address must be reachable and ping must be enabled from both of your VPN gateways. We strongly recommend that you implement failover for your production environments. In order to simplify failover and reduce setup complexity, we recommend the use of [Dynamic VPN Routing](Dynamic_VPN_Routing.html).

Static VPN tunnels are associated with a single Appian Cloud environment. This means that a typical static VPN integration on a [High Availability](High_Availability_for_Appian_Cloud.html) environment will require 3 VPN tunnels. With failover, this would result in 6 VPN tunnels. In order to have a more robust setup for High Availability environments, we recommend the use of [Dynamic VPN Routing](Dynamic_VPN_Routing.html).

Static VPN failover expects both sides of the connection to be automatic. Please make sure that your passive tunnel is configured to automatically start if the active tunnel becomes unavailable.

## Using the VPN tunnel

In order to use the VPN tunnel to connect to a resource on a private network, refer to the resource using its Fully Qualified Domain Name (FQDN) in any location where Appian allows the use of a URL for a resource, such as the Call Web Service or the Query Database smart services.

## Inbound traffic

By default, Appian Cloud environments receive all web inbound traffic through the public Internet. Upon request, Appian can configure Appian Cloud environments to require web traffic to go through a VPN tunnel. With this configuration, the environment will not be accessible over the Internet and all users must first be on their corporate network before navigating to their Appian Cloud environments. See [Configuring Inbound Access over VPN](Configuring_Inbound_Access_Over_VPN.html) for details.

Alternatively, you can also request your Appian Cloud environments to be configured in dual mode in which their environments receive inbound web traffic over the Internet and the VPN tunnel. See [Configuring Inbound Dual Access](Configuring_Dual_Inbound_Access.html) for details on how to set up your environments in dual mode.

_Both of these custom configurations require additional network hops for web traffic to enter Appian Cloud. You should take into consideration and carefully evaluate performance, as well as compatibility with mobile devices, if you wish to enable either of them._

## Outbound traffic

Traffic addressed to a host within your corporate domain and for which the DNS lookup (from the corporate DNS servers if provided, otherwise the Internet) returns a private IP address (RFC 1918) is sent over the VPN tunnel. Appian Technical Support can configure traffic to certain public IP addresses to also be sent over the VPN tunnel if requested. All other traffic will be sent over the Internet.

**Note:**  This is applicable even if an Appian Cloud environment is configured to require all inbound traffic to go through the VPN tunnel.

## Your network VPN considerations

Appian Cloud static VPNs use policy based VPNs, your device should be configured to support that. If the VPN gateway goes down, Appian cannot connect to resources located on your network. We strongly recommend that you take this into account when designing your Appian applications. For example, build the appropriate error handling and recovery mechanisms within your process models.

The VPN tunnels are set up so that either side can initiate the connection. We may disconnect the Appian Cloud environment during scheduled maintenance windows.

## High level examples

### IP address based VPN routing

In the example below, you may integrate with the resources in your Private Network over a VPN tunnel by specifying the IP addresses within your Appian Environment. Please note that in this case, your Private Network Address space must be in our [allowed ranges](#allowed-ip-address-ranges). ![Static VPN Diagram Generic](images/Static_VPN_Diagram_Generic.png)

### DNS-based VPN routing

DNS-based VPN routing allows you to reference your resources by specifying their FQDNs. We will conduct a DNS lookup on these FQDNs based on your specified DNS servers. You can use the [Self Service VPN](Cloud_Self_Service_VPN.html) feature to add, modify, or remove DNS configurations.

**Note:**  When using DNS-based VPN Routing with [Dynamic VPN Routing](Dynamic_VPN_Routing.html), the resolved IP addresses must be in Appian's [allowed ranges](#allowed-ip-address-ranges).

![Static VPN Diagram DNS](images/Static_VPN_Diagram_DNS.png)

## Supported vendors

You may use any vendors that support IPsec VPN tunnels. Cloud providers who offer managed VPN instances can also be utilized as long as they support IPsec VPN tunnels. View the [FAQ](#faq) section for more specific examples of cloud provider integrations.

## Setup

To set up a VPN connection between your Appian Cloud environment(s) and your private network, download the [Appian Cloud VPN worksheet](https://forum.appian.com/suite/doc/11409).

Complete the sections in marked in yellow on the form and submit it to Appian Technical Support, creating a new case for your organization.

### Allowed IP address ranges

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

### Alternative VPN configurations

If you are using IP-based VPN routing and have configurations that include private IP addresses that fall outside Appian Cloud's allowed IP ranges, then you must implement one of the following alternatives:

-   Switch to use [DNS configurations](#dns-based-vpn-routing), only if you are using Static VPN routing.
-   Implement a Network Address Translation (NAT) on your network to expose your private subnets in a different range.
-   Assign new IP addresses (public or private) to your systems so that the new IP addresses don't conflict.
-   Opt for [AWS PrivateLink integration](AWS-PrivateLink_Integration.html) instead of VPN.

### IP address range restrictions

When configuring what traffic should go over your VPN tunnels, use specific IP addresses with a /32 CIDR notation in your VPN configurations as much as possible. Note that specifying IP address or Classless Inter-Domain Routing (CIDR) ranges larger than a /24 is not supported. You may specify multiple /24 ranges if necessary.

### VPN encryption configurations

The following combinations of encryption configurations are supported for your VPN tunnels.

| Encryption algorithm | Authentication algorithm | DH Group |
| --- | --- | --- |
| AES128-CBC | SHA2-256 or SHA2-384 or SHA2-512 | DH15 or DH16 or DH17 or DH18 or DH19 or DH20 or DH21 |
| AES256-CBC | SHA2-256 or SHA2-384 or SHA2-512 | DH20 or DH21 |
| AES128-GCM | N/A | DH15 or DH16 or DH17 or DH18 or DH19 or DH20 or DH21 |
| AES256-GCM | N/A | DH20 or DH21 |

The supported encryption configurations are set to ensure the security of your VPN tunnels. Other encryption configurations are deprecated and will be removed in a future release.

### Internet Key Exchange

Internet Key Exchange (IKE) version 1 is a deprecated IKE protocol for use with Appian Cloud VPN. This deprecation is in line with the Internet Engineering Task Force's (IETF) published [deprecation announcement](https://www.rfc-editor.org/rfc/rfc9395), and the US National Institute for Standards and Technology (NIST) recommendation against the use of IKEv1.

Support for IKEv1 protocol will eventually be removed. If your Appian Cloud VPN tunnel is currently using IKEv1, you should make plans to update your configurations to use IKEv2 in the future.

## FAQ

### Can I utilize VPN connections to connect to my Amazon Web Services (AWS) VPC?

Yes, AWS provides connection options that are compatible with Appian Cloud VPN integration. Specifically, reference the AWS documentation on [Site-to-site VPN Routing](https://docs.aws.amazon.com/vpn/latest/s2svpn/VPNRoutingTypes.html).

### Can Appian VPN be utilized with AWS Transit Gateway?

Yes, you can create a VPN attachment to your Transit Gateway hosted on your AWS account. You can then use the resulting Site-to-Site VPN connection resource to establish a tunnel to your Appian Cloud environment. Please reference the AWS public documentation on [VPN attachments to Transit Gateway](https://docs.aws.amazon.com/vpn/latest/s2svpn/create-tgw-vpn-attachment.html) for more details.

### Does Appian Cloud use AWS Site-to-Site VPN?

No, Appian Cloud uses a third party software VPN appliance (LibreSwan) to establish a VPN connection to your remote network.

### Why is there a restriction for Appian IP addresses to be included in the 172.30.0.0/24 and 172.31.0.0/24 subnets?

In order to ensure that IP addresses do not conflict with other Appian internal resources, the two subnets have been allocated for VPN configurations.

Contact Appian Support if there are any concerns or conflicts associated with those subnets.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...