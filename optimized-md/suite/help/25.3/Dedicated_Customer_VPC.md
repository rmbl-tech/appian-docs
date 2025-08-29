---
source_url: https://docs.appian.com/suite/help/25.3/Dedicated_Customer_VPC.html
original_path: Dedicated_Customer_VPC.html
version: "25.3"
title: "Dedicated Customer Virtual Private Cloud"
page_id: "Dedicated_Customer_VPC"
section: "Summary"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Dedicated Customer Virtual Private Cloud

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

**Note:**  The Dedicated Customer Virtual Private Cloud feature is only available to customers that are on the appropriate existing support plan. For more information, contact Appian Sales.

## Summary

You can choose to have your Appian Cloud environments hosted in a dedicated Virtual Private Cloud (VPC). This feature provides additional isolation and the ability to easily integrate with your self-managed or cloud external resources. This document provides details on the architecture for our dedicated Virtual Private Cloud configuration.

## Architecture

If you are on an appropriate existing support plan, you can choose to have your environments hosted in a dedicated VPC managed by us. No other customers' environments are hosted within this dedicated customer VPC.

A Transit Gateway is used to establish a connection between the dedicated VPC hosting your instances and the Appian Cloud VPC where infrastructure is maintained, including: load balancers, web servers, Appian Gateway servers, email servers, etc.

Application servers running in the dedicated VPC will have outbound Internet connectivity using the Appian gateway in the Appian Cloud VPC for any Web Services integration. You are responsible for the security and encryption configuration when integrating with systems outside Appian Cloud. If this is not required, outbound Internet traffic can be disabled and the connection between the instances in the dedicated VPC and the Appian Gateway can be removed.

The following diagram depicts a high-level overview of the architecture for Dedicated Customer VPC and its interactions with the Appian Cloud VPC.

![Dedicated Customer Architecture](images/dvpc-arch.png)

1.  You access the environment from your browsers or your mobile devices. All your data in transit to the Appian Web Tier is secured using industry-standard Transport Layer Security (TLS) encryption. The Appian Web Tier is behind a Load Balancing Tier which forwards the traffic to one of multiple web servers processing the user request. The Appian Web Tier is also protected using AWS security groups and only allows HTTPS traffic originating from the Load Balancing Tier.

2.  A connection is established between the Appian Cloud VPC and the dedicated VPC using a Transit Gateway connection. This allows traffic from the Web Tier in the Appian Cloud VPC to the application server running on your instances in the dedicated VPC. The communication between the servers is controlled using security groups. Security groups are default deny-all and configured with firewall rules to restrict access only from specific Appian Cloud services.

3.  Once the request is processed by the instances in the dedicated VPC, the security group will allow the response back for the TCP session created with the Appian Web Tier. Traffic sent back to the user will be encrypted in the same fashion as it was received.

4.  You can extend applications running on their Appian Cloud instance integrating with external systems, data repositories, and web services.

## Prerequisites

-   Be on an appropriate existing support plan.
-   Open a support case requesting Appian Support to move your environments to a Dedicated Customer Virtual Private Cloud.
-   When moving your environments to a dedicated customer Virtual Private Cloud, you will need to reconfigure your PrivateLink configurations for environments with preexisting PrivateLink connections. Follow the steps described in the [AWS PrivateLink Integration with Appian Cloud](Access_Customer_VPC_using_AWS_PrivateLink.html#setup) setup section.

## FAQ

### What are my responsibilities in this Architecture?

We will be responsible for maintaining and securing the dedicated VPC and Appian Cloud’s VPC. You will be responsible for implementing any required configuration to integrate with your self-managed or cloud external resources.

### Is High Availability supported in this Architecture?

Yes, the diagram above shows the solution for a single instance environment. High Availability configuration replicates to 3 availability zones within the same geographic region, delivering load balancing among environments and with RTO and RPO as described in [High Availability for Appian Cloud](High_Availability_for_Appian_Cloud.html)).

### Can I use Appian Portals with a dedicated VPC?

Yes, but the cloud resources required to support portals will be located in the Appian Cloud VPC, not in your dedicated VPC.

### How does Appian Cloud portability work with this architecture?

Similar to a regular migration. An archive of the entire Appian structure (engines, databases, attachments) is created and transferred via a shared AWS S3 bucket or via sFTP, and then deployed to another Appian installation. The only difference is that the archive will be transferred to the instances in the dedicated VPC.

### How is data protected in this Architecture?

Appian supports TLS 1.2 for end users connecting through a web browser. Data at rest is protected at the disk level using industry-standard algorithms (AES) at key lengths considered to be strong for that algorithm (256-bit).

### What AWS tenancy model will EC2 instances hosted on the Dedicated VPC have?

EC2 instances running on your Dedicated VPC will use the AWS default tenancy model. For more details see the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html).

### What regions support this architecture?

Any region supported in Appian Cloud.

### What will be downtime to migrate my existing environment to a Dedicated VPC?

A scheduled maintenance window is required to migrate a environment to this architecture. The downtime will be similar to a scheduled restart.

### Are all Appian Cloud exclusive features available in a Dedicated VPC?

Yes, environments in a Dedicated VPC will have the same Appian Cloud features as regular environments. Review [Cloud Exclusive Feature Support](https://docs.appian.com/suite/help/latest/Appian_Cloud_Availability.html#cloud-exclusive-feature-support).

### Are all Appian Cloud Integrations supported in a Dedicated VPC?

Yes, review [Appian Cloud Integration](https://docs.appian.com/suite/help/latest/Appian_Cloud_Integration.html).

### Will there be one dedicated VPC for each of my environments (including development, test, production)?

No, there will be only one dedicated VPC that will be shared by your different environments.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...