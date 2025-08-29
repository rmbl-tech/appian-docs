---
source_url: https://docs.appian.com/suite/help/25.3/Cloud_Environment_Visualization.html
original_path: Cloud_Environment_Visualization.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Cloud Environment Visualization

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

The Cloud Environment Visualization is a feature of [Cloud Resources](Cloud_Insights.html) that visualizes the static VPN and AWS PrivateLink connections from your Appian Cloud instances to your external resources. Interact with the visualizations to gain further insight into configurations of your connections and keep yourself up-to-date by viewing the visualizations at a regular basis for any connectivity changes.

## Visualization breakdown

The visualization is organized into columns that are labeled for each component of a connection. Each connection type, Static VPN tunnel and AWS PrivateLink, is toggleable with checkboxes; only Instances are shared between the types.

![Example Visualization](images/Cloud_Environment_Visualization.png)

### Shared components

#### Instances

The name of a cloud instance is shown directly above it and the status is indicated by its color. An instance that is active is green and one that is under maintenance is blue/yellow/red (starting/stopping/stopped).

![Instance](images/Cloud_Environment_Visualization_Instance.png)

### Static VPN tunnel components

#### Network interfaces

Network interfaces are abstractions of your instances in any VPN connections. Above each icon is the IP address that you may utilize to refer to your instance within your own network. [DNS based VPN configurations](Cloud_VPN_Integration.html#dns-based-vpn-routing), namely your DNS Server IPs and the regular expression that determines domains that should use those DNS Servers, are shown in the tooltip.

![Network Interface](images/Cloud_Environment_Visualization_Network_Interface.gif)

#### Appian gateways

Appian Gateways represents the gateways that Appian uses to send and receive traffic to/from your gateways. The public IP address of each Appian gateway is shown directly above it.

![Appian Gateways](images/Cloud_Environment_Visualization_Appian_Gateway.png)

#### Customer gateways

Customer Gateways represent the gateways that you use to route incoming/outgoing traffic to/from the Appian gateway. These gateways are also labeled by the associated public IP addresses.

![Customer Gateways](images/Cloud_Environment_Visualization_Customer_Gateway.png)

#### Configured subnets

Configured Subnets represent the CIDR ranges that will be the endpoints for your configured VPN connections. The name of the VPN connection is shown above it, and the subnets are shown in the tooltip.

![Configured Subnets](images/Cloud_Environment_Visualization_Configured_Subnets.gif)

### AWS PrivateLink components

#### VPC endpoints

VPC Endpoints represent the Amazon Web Service (AWS) endpoints which send requests from your Appian Cloud environments to your own AWS network via [AWS PrivateLink](AWS-PrivateLink_Integration.html). The tooltip will provide you with the VPC Endpoint ID within Appian Cloud and a DNS Entry you may use to refer to this endpoint from within your Appian Cloud Environment.

**Note:** This tooltip will currently not display any additional hostnames which you have requested Appian to expose your endpoint to (with [Appian controlled DNS](AWS-PrivateLink_Integration.html#option-2-:-appian-controlled-hostname-resolution)).

![VPC Endpoint](images/Cloud_Environment_Visualization_VPC_Endpoint.gif)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...