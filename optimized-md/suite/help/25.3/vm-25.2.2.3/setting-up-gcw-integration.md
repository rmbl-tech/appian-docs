---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/setting-up-gcw-integration.html
original_path: vm-25.2.2.3/setting-up-gcw-integration.html
version: "25.3"
title: "Setting up GCW Integration"
page_id: "vm-25.2.2.3/setting-up-gcw-integration"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up GCW Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Vendor Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The integration between Vendor Management (VM) and [Government Contract Writing](../cw-25.2.2.5/contract-writing-overview.html) (GCW) connects the two solutions, providing vendors and contracting personnel with more visibility into the entire solicitation process. When this integration is enabled, contracting officers can see solicitation information directly in their VM environment.

**Caution:**  To use the GCW integration, you must toggle the `AS_VM_BOL_CONTRACT_WRITING_INTEGRATION_TOGGLE` constant value to `true` in Designer. When you have both Award Management (AM) and GCW solutions, Appian recommends using either AM or GCW integration, but not both at the same time. If you are using the GCW integration, make sure to toggle the `AS_VM_BOL_AWARD_MANAGEMENT_INTEGRATION_TOGGLE` constant value to `False` in Designer.

### System Requirements

This section details the minimum requirements your system must meet to set up the GCW integration.

-   Appian version 24.4 or greater
-   Vendor Management 1.9.0 or greater
-   Contract Writing 2.2.0 or greater

## Set up Contract Writing integration

To utilize this integration, you need to generate an API Key in the same environment you imported your GCW application. Please note that if your GCW and VM applications were imported into the same environment, you still need to generate an API key.

1.  In the target environment, sign in as the deployment user.
2.  Navigate to the **Admin Console** and select **Web API Authentication**.
3.  From the **API Key** tab, click **CREATE**.

    ![vm_gcw_integration_setup_createapi.png](images/vm_gcw_integration_setup_createapi.png)

4.  In the **Description** field, add a unique description for the API key.
5.  Click next to the **Service Account** field to create a new service account.
6.  Enter `cwvmintegration` in the **Username** field.

    ![vm_gcw_integration_setup_createservice.png](images/vm_gcw_integration_setup_createservice.png)

7.  In the **Groups** field, enter `AS GCW Service Accounts for VM Access` to add it to the appropriate group.
8.  Click **CREATE** to apply the new service account to the API key.
9.  Click **CREATE** to create the new API key and copy and save it to use in the next section.
10.  Navigate to the environment where the Vendor Management application was imported.
11.  Go to **Appian Designer** > **Applications** and select `AS VM Full Application`.
12.  Under **Object Type**, select **Connected System**.
13.  Select `AS VM CS Contract Writing`.
14.  Find the **Value** field and click the **Clear** link next to it.
15.  Paste the API key you saved in **step 9** in the cleared **Value** field.
16.  In the **Base URL** field, enter the URL of the environment where Contract Writing was imported in the following format: https://sample-url.com/suite/webapi/.
17.  Click **SAVE**.

     ![vm_gcw_integration_setup_systemproperties.png](images/vm_gcw_integration_setup_systemproperties.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...