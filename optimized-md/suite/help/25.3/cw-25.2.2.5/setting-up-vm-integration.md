---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/setting-up-vm-integration.html
original_path: cw-25.2.2.5/setting-up-vm-integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up VM Integration

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

The integration between Contract Writing (CW) and [Vendor Management](../vm-25.2.2.3/appian-vendor-management.html) (VM) connects the two solutions, providing contracting personnel and vendors with more visibility into the entire solicitation process. When this integration is enabled, contracting officers can post an amendment update for the solicitation to the opportunity in VM and view a link between the opportunity and solicitation directly in their CW environment.

**Caution:**  To use the VM integration, you must toggle the `AS_CW_BOL_VENDOR_MANAGEMENT_INTEGRATION_TOGGLE` constant value to `true` in Designer.

### System Requirements

This section details the minimum requirements your system must meet to set up the VM integration.

-   Appian version 24.4 or greater
-   Contract Writing 2.2.0 or greater
-   Vendor Management 1.9.0 or greater

## Set up Vendor Management integration

To use this integration, you need to generate an API Key in the same environment you imported your VM application. Please note that if your CW and VM applications were imported into the same environment, you still need to generate an API key.

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console** and select **Web API Authentication**.
3.  From the **API Key** tab, click **CREATE**.

    ![vm_integration_setup_createapi_cw.png](images/vm_integration_setup_createapi_cw.png)

4.  In the **Description** field, add a unique description for the API key.
5.  Click the icon next to the **Service Account** field to create a new service account.
6.  Enter `cwvmintegration` in the **Username** field.

    ![vm_integration_setup_createservice_cw.png](images/vm_integration_setup_createservice_cw.png)

7.  In the **Groups** field, enter `AS VM Service Accounts for CW Access` to add it to the appropriate group.
8.  Click **CREATE** to apply the new service account to the API key.
9.  Click **CREATE** to create the new API key and copy and save it to use in the next section.
10.  Navigate to the environment where the Contract Writing application was imported.
11.  Go to **Appian Designer** > **Applications** and select `AS GCW Full Application`.
12.  Under **Object Type**, select **Connected System**.
13.  Select `AS GCW CS Vendor Management`.
14.  Find the **Value** field and click the **Clear** link next to it.
15.  Paste the API key you saved in **step 9** in the cleared **Value** field.
16.  In the **Base URL** field, enter the URL of the environment where Contract Writing was imported in the following format: https://sample-url.com/suite/webapi/.
17.  Click **SAVE**.

     ![vm_integration_setup_systemproperties_cw.png](images/vm_integration_setup_systemproperties_cw.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...