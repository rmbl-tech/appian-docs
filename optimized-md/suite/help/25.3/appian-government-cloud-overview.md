---
source_url: https://docs.appian.com/suite/help/25.3/appian-government-cloud-overview.html
original_path: appian-government-cloud-overview.html
version: "25.3"
title: "Appian Government Cloud (AGC) Overview"
page_id: "appian-government-cloud-overview"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Government Cloud (AGC) Overview

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  This content applies solely to Appian Government Cloud, which must be purchased separately from the Appian base platform.

## Introduction

Appian Government Cloud (AGC) is an unclassified platform-as-a-service cloud service offering that has a **FedRAMP High and DoD provisional authorization at Impact Level 5 (IL5)** to host federal agencies higher sensitivity workloads.

AGC accelerates the timeline to go-live and achieve Authorization to Operate because it has already cleared many of the authorization processes to make sure the applications and underlying infrastructure are secure. This means federal agency customers can focus on their mission, knowing that Appian has done the heavy lifting by pre-authorizing a significant portion of the system.

## What it is

AGC resides in a Virtual Private Cloud (VPC) within AWS GovCloud utilizing Federal Information Processing Standards (FIPS) validated GovCloud endpoints.

The AGC accreditation boundary consists of management services (powered by SMX Cloud Assured Managed Services) and the customer's Appian instances in AWS GovCloud. It is a three-tier application made up of redundant web servers, application servers, and databases. The AGC architecture is segmented within separate, non-routable by default VPCs. The AGC customer environments are built in single-tenant accounts.

AGC runs on AWS GovCloud (US-West) and delivers dedicated, single tenant environments (development, test, and production) to each customer. It follows a private cloud deployment model where cloud services and infrastructure are dedicated solely to a specific organization or agency.

## How it works

We provide the Appian platform and the managed services needed to meet the requirements of FedRAMP High and IL5.

AGC includes the following services:

-   High availability for the production environment.
-   1 hour recovery time objective (RTO) and 1 hour recovery point objective (RPO) service levels.
-   24x7x365 support for priority 1 and 2 cases.
-   Dedicated VPCs.

Combine AGC with your Secure Cloud Computing Architecture (SCCA)/Trusted Internet Connection (TIC), identity provider for DoD Personal Identity Verification Card (PIV)/ Common Access Card (CAC) integration, and your DoD cybersecurity service provider (CSSP) (if required), and you're off and running with your Appian development team to deliver on your mission.

Federal Civilian customers are responsible for working with AGC to connect via an agency Trusted Internet Connection (TIC).

DoD customers are responsible for the Secure Cloud Computing Architecture (SCCA), which has the following four components:

-   Boundary Cloud Access Point (BCAP).
-   Virtual Datacenter Security Stack (VDSS).
-   Virtual Datacenter Managed Services (VDMS).
-   Trusted Cloud Credential Manager (TCCM).

Appian meets many of the federal cloud networking functional requirements, but there are shared and customer responsibilities that are detailed in the system security plan (SSP).

Built on top of the Appian Government Cloud management plane (1), each customer gets its own AWS GovCloud account, for which Appian environments (2) are created, (dev/test/prod) each in their own VPC (3). Each VPC is connected through your provided SCCA/TIC (4) to the DoD Information Network (DoDIN)/agency network (5).

[![diagram of how AGC works](images/agc-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1723)

[![](images/agc-diagram.png)](#_)

## AGC Virtual Data Center Security Stack (VDSS)

The AGC Virtual Datacenter Security Stack (VDSS) enables mission owners to use AGC to connect to the DoD Boundary Cloud Access Point (BCAP). AGC customers have the option to use the AGC VDSS service to meet the requirement for connecting to the Boundary Cloud Access Point (BCAP). This provides an alternative to bringing their own Secure Cloud Computing Architecture (SCCA) connection.

AGC VDSS is designed to enforce security boundaries and provide inspection capabilities for AGC customer environments operating at DoD Cloud Computing Security Requirements Guide (SRG) Impact Levels 4 (IL4) and 5 (IL5). AGC VDSS meets DoD cybersecurity, compliance, and operational monitoring standards while providing mission owners with secure access to Appian’s Software-as-a-Service (SaaS)/Platform-as-a-Service (PaaS) capabilities.

[![diagram of how AGC virtual datacenter security stack works](images/agc-vdss-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1724)

[![](images/agc-vdss-diagram.png)](#_)

VDSS secures inbound and outbound traffic to and from Appian-managed IL4 and IL5 environments in authorized cloud infrastructure. It provides core boundary protection functions, such as firewall enforcement, intrusion detection/prevention, DNS filtering, traffic decryption, and centralized security event logging. VDSS integrates with AGC architecture to support mission partners, enable security operations, and meet Risk Management Framework (RMF) control inheritance requirements.

## Learn more

To learn more about AGC, see the [Appian Government Cloud Security and Availability whitepaper](https://assets.appian.com/uploads/wp-appian-government-cloud-security-and-availability_EN.pdf).

## Support and questions

If you need assistance, contact our dedicated [Appian Government Cloud support team](https://community.appian.com/support/#agc-support).

For more information about AGC, email [agc@appian.com](mailto:agc@appian.com).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...