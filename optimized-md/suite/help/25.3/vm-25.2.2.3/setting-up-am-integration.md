---
source_url: https://docs.appian.com/suite/help/25.3/vm-25.2.2.3/setting-up-am-integration.html
original_path: vm-25.2.2.3/setting-up-am-integration.html
version: "25.3"
title: "Setting up AM Integration"
page_id: "vm-25.2.2.3/setting-up-am-integration"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up AM Integration

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

The integration between Vendor Management and [Award Management](../am-25.2.2.3/appian-award-management-home.html) bridges the gap between the two solutions and provides vendors and contracting personnel with more visibility into the award process. When this integration is enabled, contracting officers can see award information directly in their VM environment.

**Caution:**  To use the AM integration, you must toggle the `AS_VM_BOL_AWARD_MANAGEMENT_INTEGRATION_TOGGLE` constant value to `true` in Designer. When you have both AM and Government Contract Writing (GCW) solutions, Appian recommends using either AM or GCW integration, but not both at the same time. If you are using the AM integration, make sure to toggle the `AS_VM_BOL_CONTRACT_WRITING_INTEGRATION_TOGGLE` constant value to `False` in Designer.

### System Requirements

This section details the minimum requirements your system must meet to set up the AM integration.

-   Appian version 24.4 or greater
-   Vendor Management 1.8.0 or greater
-   Award Management 2.2.0 or greater

## Set up Award Management Integration

To utilize this integration, you need to generate an API Key in the same environment you imported your Award Management application. Please note that if your Award Management application and Vendor Management application were imported into the same environment, you still need to generate an API key.

1.  In the target environment, sign in as the deployment user.
2.  Navigate to the **Admin Console** and select **Web API Authentication**.
3.  From the **API Key** tab, click **CREATE**.

    ![am_create_API_key.png](images/am_create_API_key.png)

4.  In the **Description** field, add a unique description for the API key.
5.  Click next to the **Service Account** field to create a new service account.
6.  Enter `amintegration` in the **Username** field.

    ![am_create_service_account.png](images/am_create_service_account.png)

7.  In the **Groups** field, enter `AS AM Service Accounts for VM Access` to add it to the appropriate group.
8.  Click **CREATE** to apply the new service account to the API key.
9.  Click **CREATE** to create the new API key and copy and save it to use in the next section.
10.  Navigate to the environment where the Vendor Management application was imported.
11.  Go to **Appian Designer** > **Applications** and select `AS VM Full Application`.
12.  Under **Object Type**, select **Connected System**.
13.  Select `AS VM CS Award Management`.
14.  Find the **Value** field and click the **Clear** link next to it.
15.  Paste the API key you saved in **step 9** in the cleared **Value** field.
16.  In the **Base URL** field, enter the URL of the environment where Award Management was imported in the following format: https://sample-url.com/suite/webapi/.
17.  Click **SAVE**.

     ![am_integration_properties.png](images/am_integration_properties.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...