---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/GAM-acquisition-central-setup.html
original_path: cw-25.2.2.5/GAM-acquisition-central-setup.html
version: "25.3"
title: "Setting up GAM Acquisition Central Integration"
page_id: "cw-25.2.2.5/GAM-acquisition-central-setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up GAM Acquisition Central Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Contract Writing, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The integration between Contract Writing (CW) and GAM Acquisition Central connects the two solutions, providing your procurement professionals with the tools they need to manage the entire vendor lifecycle with greater confidence and efficiency, directly from their CW solution.

## System Requirements

This section details the minimum requirements your system must meet to set up the GAM Acquisition Central integration.

-   Appian version 25.2 or greater
-   Contract Writing 2.5.0
-   GAM Acquisition Central 1.0.0

## Set up GAM Acquisition Central Integration

**Caution:**  Before processing with the integration setup, GAM Acquisition Central needs to be installed in the same environment as your Contract Writing solution. See [Installing GAM Acquisition Central](../gms-25.2.1.0/gms-installing-the-solution.html)

This integration requires you to generate an API key and add it to the proper connected system.

To generate an API key:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console** and select **Web API Authentication**.
3.  From the **API Key** tab, click **CREATE**.
4.  In the **Description** field, add a description for the API key, for example: `API Key to access vendor data from GAM Acquisition Central`.

To create a service account:

1.  Click the icon next to the **Service Account** field to create a new service account.
2.  Enter `gsm.gcw.integration` in the **Username** field.
3.  In the **Groups** field, enter `AS GSM Vendor API Access`.
4.  Click **CREATE** to apply the new service account to the API key.
5.  Click **CREATE** to create the new API key and copy and save it to use in the next section.

To configure the connected system:

1.  Navigate to the Contract Writing application. This should be in the same environment where you created the API key.
2.  Go to **Appian Designer > Applications** and select `AS GCW Full Application`
3.  Under **Object Type**, select **Connected System**.
4.  Select `AS GCW CS GAM Suite Management`.
5.  Paste the API key you saved in the previous step into the **Value** field.
    1.  Be sure to clear or overwrite the old value from the field.
6.  Keep the **Base URL** field empty.
7.  CLick **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...