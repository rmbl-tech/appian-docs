---
source_url: https://docs.appian.com/suite/help/25.3/High_Availability_for_Appian_Cloud.html
original_path: High_Availability_for_Appian_Cloud.html
version: "25.3"
title: "High Availability for Appian Cloud"
page_id: "High_Availability_for_Appian_Cloud"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# High Availability for Appian Cloud

 [![](images/appian-protect.png) Requires Appian Protect Professional Success Plan or higher](
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

**Note:**  This configuration is available for production environments provided to Appian Cloud customers that have purchased Professional or Signature Success Plans (including High Availability). This configuration can also be added to additional non-production environments for an additional fee.

## Overview

Appian Cloud offers the ability to run in a High Availability (HA) configuration with guaranteed Recovery Point Objective (RPO) and Recovery Time Objective (RTO). The Appian Cloud HA configuration reduces the risk that your Appian environment will have from unplanned downtime caused by a number of events such as a service failure (a software component of Appian fails), a hardware failure (the underlying infrastructure hosting Appian fails) or an availability zone failure (the data center hosting the Appian Cloud environment fails).

## Architecture

The Appian Cloud HA configuration is designed for resiliency and incorporates fault-tolerance in every layer of the architecture. An Appian Cloud HA environment is composed of three active nodes running in different availability zones within the same region. Data and transactions are continuously replicated across the active nodes to achieve redundancy and avoid single points of failure. The Appian Cloud [content delivery network (CDN)](Appian_Cloud_Content_Delivery.html) is a stateless, fault-tolerant service that delivers static content and forwards user requests to the healthy active nodes of the Appian Cloud environment.

![images:cloud_high_availability_architecture.png](images/cloud_high_availability_architecture.png)

In the event of a failure affecting one of the nodes, the Appian Cloud CDN will automatically stop forwarding user requests to the unhealthy node. Failover occurs automatically and requests are processed by the remaining healthy nodes.

## Service Level Agreements

An Appian Cloud HA environment offers an RPO of 1 minute and an RTO of 21 minutes for Professional Success Plan customers and 4 minutes for Signature Success Plan customers. This means that in the event of a system failure, your Appian environment will be restored and available to your users in less than 21 minutes or 4 minutes, depending on your Support level, having lost no more than the last 1 minute worth of data.

Appian Cloud HA is available across the globe. To see the specific regions the configuration is supported, please view the [Appian Cloud Availability Table](Appian_Cloud_Availability.html#appian-cloud-exclusive-feature-support).

## Prerequisites checklist

| Prerequisite | Description | Organizational Role |
| --- | --- | --- |
| Professional or Signature Success Plans (including High Availability) Order Form | This offering is available via Professional or Signature Success Plans (including High Availability. | Business relationship owner |
| Confirm VPN tunnel(s) connectivity details (Optional) | If your Appian Cloud environment requires VPN integration, fill out the Appian Cloud VPN worksheet for the additional nodes that will be created. See [Cloud VPN Integration](Cloud_VPN_Integration.html) for details. | Network administrator |

## Steps

Once the prerequisite has been completed, follow these steps to convert your Appian Cloud environment to HA configuration:

1.  Open a [Support case](https://forum.appian.com/suite/sites/support) with the request to enable this configuration in your Appian Cloud environment(s).
    -   If the environment requires VPN integration, please attach the VPN worksheet completed in the prerequisite steps to the support case
2.  Appian Support will schedule a maintenance window.
    -   If VPN integrations are required, it is recommended that HA conversion occurs over two maintenance windows. The first window will be used to create additional nodes with VPN configuration files. This allows Appian Support and the customer's networking team to set up and confirm VPN connectivity in the additional nodes without downtime of the overall environment. The second window will be used to fully enable those additional nodes so they may begin processing requests.
3.  After the maintenance window(s), your Appian Cloud environments will be configured in HA.

## Exceptions

Although based in Appian's secure, globally available cloud, certain capabilities are not highly available at this time.

These exceptions include the following:

-   Trainable [classification](ai-skills-intro.html) and [extraction](ai-skills-intro.html) skills
-   Appian RPA
-   Process insights

While these exceptions are not highly available, they can still be used in a high availability environment. Other HA features and services are independent of these exceptions and won't be impacted in the event of system outages impacting HA services. If an outage occurs, customers can contact Appian support for assistance according to their service level agreement.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...