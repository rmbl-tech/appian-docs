---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-setting-up-vm.html
original_path: gss-25.2.2.4/gss-setting-up-vm.html
version: "25.3"
title: "Setting up Vendor Management Integration"
page_id: "gss-25.2.2.4/gss-setting-up-vm"
section: "**Introduction**"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up Vendor Management Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Government Source Selection, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## **Introduction**

The integration between Vendor Management (VM) and Government Source Selection (GSS) connects the two solutions, providing contracting personnel, evaluators and vendors with more visibility into the entire solicitation process. When this integration is enabled, contracting officers can pull in vendors and their submitted documents in GSS from related opportunities provided the opportunity is unsealed. Vendors resubmitting proposals are flagged, while withdrawn vendors are removed from the evaluation.

Links between evaluations and opportunities in GSS and VM ensure easy navigation and visibility using the Solicitation PIID in GSS and the Opportunity ID in VM to identify related records.

**Caution:**  To use the VM integration, you must toggle the `AS_GSS_BOL_VENDOR_MANAGEMENT_INTEGRATION_TOGGLE` constant value to `true` in Appian Designer. Appian recommends keeping the **state and local government toggle** values the same in both solutions. Go to [Enable or disable state and local government toggle](sol-custom-suite-user-guide.html#business-logic) to learn more about enabling or disabling the SLG toggle.

### **System requirements**

This section details the minimum requirements your system must meet to set up the VM integration.

-   Appian version 25.1 or greater
-   Vendor Management 2.0.0 or greater
-   Government Source Selection 2.2.0 or greater

## **Set up Vendor Management integration**

To utilize this integration, you need to generate an API Key in the same environment you imported your VM solution. Note that if your GSS and VM solutions were imported into the same environment, you still need to generate an API key.

1.  In the target environment, sign in as the deployment user.
2.  Navigate to the **Admin Console** and select **Web API Authentication**.
3.  From the **API Key** tab, click **CREATE**.
4.  In the **Description** field, add a unique description for the API key.

    ![View and add vendor details from related opportunity.](images/set_up_vendor_management_integration.png)

5.  Click next to the **Service Account** field to create a new service account.
6.  Enter `gss.vm.service` in the **Username** field.
7.  In the **Groups** field, enter `AS VM Service Accounts for GSS Access` to add it to the appropriate group.

    ![Enter username and group.](images/set_up_vendor_management_integration_2.png)

8.  Click **CREATE** to apply the new service account to the API key.
9.  Click **CREATE** to create the new API key and copy and save it to use in the next section.
10.  Navigate to the environment where the Source Selection solution was imported.
11.  Go to **Appian Designer** > **Applications** and select **Source Selection**.
12.  Under **Object Type**, select **Connected System**.
13.  Select **AS GSS CS Vendor Management**.
14.  Find the **Value** field and click the **Clear** link next to it.
15.  Paste the **API key** you saved in **step 9** in the cleared **Value** field.
16.  In the **Base URL** field, enter the URL of the environment where Vendor Management was imported in the following format: `https://sample-url.com/suite/webapi/`
17.  Click **SAVE**.

     ![Update API key in the connected system.](images/set_up_vendor_management_integration_3.png)

18.  Set up [GSS integration in VM](../vm-25.2.2.3/setting-up-gss-integration.html).

## Configure document download service

Configuring the document download service enables GSS users to download vendor submission documents retrieved from VM.

To configure the document download service:

1.  Go to **Admin Console**.

    ![Go to Admin Console.](images/configure_document_download_service.png)

2.  Click **Web API Authentication** on the sidebar.
3.  Follow these [steps for creating an API key](../Appian_Administration_Console.html#api-keys).
    1.  Create a new service account named `gss.self.service`, and add it to the `AS GSS Service Accounts for Self Access` group.
    2.  Copy the API key. The value of the API key is not displayed after this step.
4.  Go to **Appian Designer** > **Source Selection**.
5.  Search for and open the `AS GSS CS Source Selection` connected system.
6.  In the **Base URL**, enter the current environment URL in the format: `https://your-environment-url/suite/webapi/`
7.  Paste the copied API key in the **Value** field and click **SAVE**.

    ![Update API key in the connected system.](images/configure_document_download_service_2.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...