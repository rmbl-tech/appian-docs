---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Inbound_Access_Over_VPN.html
original_path: Configuring_Inbound_Access_Over_VPN.html
version: "25.3"
title: "Configuring Inbound Access Over VPN"
page_id: "Configuring_Inbound_Access_Over_VPN"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Inbound Access Over VPN

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

For customers who require that only users and systems within their corporate network can access their Appian Cloud environments, Appian Cloud offers the ability to configure inbound web access only over an IPsec VPN tunnel. With this configuration, all users must first be on their corporate network before navigating to their Appian Cloud environments, as they will not be available over the public internet. This page outlines the steps required to set up an Appian Cloud environment with this configuration.

Appian Cloud also offers support for Inbound Dual Web Access, over both the public internet and a VPN. For more details, see [Configuring Inbound Dual Access](Configuring_Dual_Inbound_Access.html).

**Note:**  Appian Cloud environments running in a High Availability configuration will require additional configuration. If you set up static VPN tunnels, you need to set up the necessary network configuration on your infrastructure to forward web requests to a healthy web server. Web servers are accessible on the Appian Network interface IP addresses configured when setting up your VPN tunnel.

## Step 1: Set up an IPsec VPN tunnel

**Required role:** Network Administrator or Authorized Support Contact

Configure VPN tunnel(s) from your corporate network to your Appian Cloud environment. See [Appian Cloud VPN Integration](Cloud_VPN_Integration.html) for instructions.

## Step 2: Set up name resolution

**Required role:** DNS/Server administrator

Configure your DNS infrastructure with a DNS Address (A) record to resolve the fully qualified domain name (FQDN) of your Appian Cloud environment to an assigned private IP address. This configuration is required whether your site uses an Appian owned domain (appiancloud.com or appiancloud.us) or a custom domain.

## Step 3: Create a support case

**Required role:** Authorized support contact

Schedule a maintenance window for the environment by opening a new Support Case with Appian Support.

During the maintenance window, Appian Support will enable the environment to receive inbound web traffic over the VPN. Once the maintenance window has completed, the environment will only be accessible through the VPN.

## Example traffic flow for inbound traffic over VPN

The diagram below illustrates a sample traffic flow when end users and systems access an Appian Cloud environment over the VPN tunnel. This diagram assumes your DNS server contains a host record pointing to the private IP address assigned to the environment during the VPN tunnel configuration. End users will access the environment using its FQDN.

[![Inbound Web Access over VPN](images/vpn_https_access_to_appian_cloud.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img217)

[![](images/vpn_https_access_to_appian_cloud.png)](#_)

| Traffic Type | Flow Description |
| --- | --- |
| Inbound traffic over VPN |
1.  End users (or systems) on the corporate network make a request to your Appian Cloud environment.
2.  Your DNS server performs a lookup which resolves to the private IP address in the VPN tunnel.
3.  The request is directed to the VPN tunnel.
4.  The request is then routed to the application server. The response is sent back over the VPN tunnel.

 |
| Outbound traffic |

1.  All traffic originating from your environment to a resource in your network is forwarded over the IPsec VPN tunnel. Resources in your network might include a business datasource or an LDAP server.

 |

## Compare and deploy across connected environments with VPN only access

Given that inbound access to environments will be restricted to VPN, leveraging the [Compare and Deploy Across Connected Environments](Deploy_to_Target_Environments.html) feature will require additional configurations, as detailed below:

### Option 1 - Enable Connected Environments for Private Access

Enable Connected Environments for Private Access between your nominated environments. This is the recommended approach to enable Connected Environments when the environments are only accessed over VPN. For more details, see [Configuring Connected Environments for Private Access](Configuring_Connected_Environments_For_Private_Access_Sites.html).

### Option 2 - Configuring networking infrastructure on the customer side

#### Requirements

-   Your DNS servers should resolve the FQDNs of all connected environments to their corresponding private IP address (Appian Network interface IP addresses).
-   VPN configurations should allow forwarding traffic from source to target environments on both sides of the tunnel.
-   You should set up proper routing on your network to allow connectivity between environments.

#### Example traffic flow between connected environments

Given a connected system request from a Dev environment to a Test environment in Appian Cloud, the following 3 steps occur:

1.  When attempting to connect Test to Dev, the Test FQDN resolution from the Dev environment occurs on your DNS server over the Dev VPN tunnel.
2.  The DNS query returns the IP address of the Test environment to the Dev environment over the Dev VPN tunnel.
3.  The request is sent from the Dev environment over the Dev VPN tunnel to your network, and then rerouted over the Test VPN tunnel to the Test environment.

A visual explanation of this flow is shown below.

[![A Connected System Request over VPN](images/connected_systems_over_vpn.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img218)

[![](images/connected_systems_over_vpn.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...