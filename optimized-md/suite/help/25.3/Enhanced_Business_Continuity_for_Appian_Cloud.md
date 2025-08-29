---
source_url: https://docs.appian.com/suite/help/25.3/Enhanced_Business_Continuity_for_Appian_Cloud.html
original_path: Enhanced_Business_Continuity_for_Appian_Cloud.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Enhanced Business Continuity for Appian Cloud

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

<table><tbody><tr><td><i class="bi bi-clouds" aria-hidden="true"></i></td><td><p>This page applies to Appian Cloud only. It may not reflect the differences with <a href="/suite/help/25.3/appian-government-cloud-overview.html">Appian Government Cloud</a>.</p></td></tr></tbody></table>

**Note:**  Enhanced Business Continuity is available for purchase only to customers that are on [Professional or Signature Success Plans](https://appian.com/support/resources/success-plans) and their environment is located in a [USA commercial, European commercial, or USA GovCloud region](#available-regions). This feature needs to be purchased separately from Professional or Signature Success Plans.

## Overview

When Enhanced Business Continuity is enabled, Appian stores backups of your Appian Cloud production environment in a secondary geographical region, within the USA or Europe, for disaster recovery purposes. This feature is in addition to the [standard Appian Cloud backup policy](Appian_Cloud_FAQ.html#how-is-data-stored-in-appian-cloud-backed-up?).

With this feature you have the ability to bring your production environment back online, with a guaranteed recovery point objective (RPO), in the event of a region-wide failure. In such an event, the environment will be restored using backups in the secondary region.

For example, if your environment is located in Northern Virginia, you can choose to store additional backups in the Ohio region or vice versa.

## Service level agreements

When Enhanced Business Continuity is enabled, you have a guaranteed recovery point objective (RPO) of 4 hours in the event of a region-wide failure where your environment is located.

There is no guaranteed RTO for this feature. Restoring service in the backup region often requires an action from the customer to re-establish their customer-specific network or security configurations. Customers with this feature are able to conduct a tabletop planning session with the Appian Cloud Support team to build their Enhanced Business Continuity runbook based on their specific site configurations. This runbook will include the sequence of actions required, owners for each action, and estimated time to complete. Following this planning session, you will be able to establish a target RTO that you can share with your stakeholders.

## Prerequisites

-   Your environment must be located in a [region where this feature is available](#available-regions).
-   You must be subscribed to [Professional or Signature Success Plans](https://appian.com/support/resources/success-plans).
-   You must have purchased Enhanced Business Continuity. This feature needs to be purchased separately from Professional or Signature Success Plans.
-   Your Appian Cloud environment must not use [Bring Your Own Key (BYOK)](Bring_Your_Own_Key.html#bring-your-own-key-for-advanced-or-enterprise-support-customers) since BYOK depends on region-specific resources hosted in the same region as your environment.
-   The following capabilities do not yet support Enhanced Business Continuity:
    -   Process Insights
    -   Portals
    -   AI Skills
    -   Autoscale Processes

## Available regions

Your environment must be located in a USA commercial, European commercial, or USA GovCloud region. See [Appian Cloud Exclusive Feature Support](Appian_Cloud_Availability.html#appian-cloud-exclusive-feature-support) for more information about these regions and the Appian Cloud features that they support.

### USA Commercial regions

For environments located in a USA commercial region, backups are stored in a different USA commercial region than where the main environment is located. The USA commercial regions are:

-   Northern Virginia
-   Ohio
-   Oregon
-   Northern California\*

\*High Availability customers cannot use Northern California as the backup region.

For improved recovery time, we recommend locating your main environment in Ohio, Oregon, or Northern California.

### European Commercial regions

For environments located in a European commercial region, backups are stored in a different European commercial region than where the main environment is located. The European commercial regions are:

-   Frankfurt
-   Zurich
-   Stockholm
-   Milan
-   Ireland
-   London
-   Paris

### USA GovCloud regions

For environments located in a USA GovCloud region, backups are stored in the region that the main environment is not in.

The USA GovCloud regions are:

-   GovCloud (US East)
-   GovCloud (US West)

For a full view of all Appian Cloud regions and other information, visit the [Appian Trust Center](https://appian.com/support/resources/trust/availability).

## Enable Enhanced Business Continuity

Before enabling Enhanced Business Continuity, ensure you've completed the necessary [prerequisites](#prerequisites).

To enable Enhanced Business Continuity for your Appian Cloud environment:

1.  Work with Appian Support via a [Support case](https://forum.appian.com/suite/sites/support/) to enable this configuration in your Appian Cloud environment.
2.  Provide the preferred [secondary backup region](#available-regions) to Appian Support via the Support case.
3.  Appian Support will enable Enhanced Business Continuity for your production environment.
4.  Conduct your planning session with Appian Support. In this session, you will:
    -   Define your protocols for invoking the Enhanced Business Continuity in the event of a region-wide failure.
    -   Create an environment-specific runbook for executing the recovery procedure.

## Recovery procedure

In the event of a region-wide failure where your environment is located, Appian Support will restore the environment in the secondary region where the backups are located.

When an environment is restored in the secondary region, integration points between the environment and any resources or services external to Appian Cloud will need to be updated if the integrations use region-specific resources.

Integration points which use region-specific resources include:

-   [VPN](Cloud_VPN_Integration.html) (including [Dynamic VPN Routing](Dynamic_VPN_Routing.html)).
-   [Private Link](AWS-PrivateLink_Integration.html).
-   Any resources allowed by IP address, for example the IP addresses listed in [KB-1582](https://community.appian.com/support/w/kb/971/kb-1582-how-to-whitelist-traffic-coming-from-appian-cloud-based-on-ips).

Appian Support will work with you to update the configurations for any integration points that are affected.

## FAQ

### Does Enhanced Business Continuity cover all of my Appian Cloud environments?

This feature is available for purchase on a per-environment basis.

### What is the difference between High Availability (HA) and Enhanced Business Continuity?

Appian Cloud HA reduces the risk of an unplanned outage due to a hardware failure or due to an incident affecting an entire AWS availability zone, however all data is still stored in the same geographical region. Enhanced Business Continuity stores additional backups in a secondary region, guaranteeing that you have the ability to restore service in the event of an extended region-wide failure.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...