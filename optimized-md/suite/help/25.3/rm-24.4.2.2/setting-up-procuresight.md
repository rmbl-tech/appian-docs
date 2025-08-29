---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/setting-up-procuresight.html
original_path: rm-24.4.2.2/setting-up-procuresight.html
version: "25.3"
title: "Setting up ProcureSight Integration"
page_id: "rm-24.4.2.2/setting-up-procuresight"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up ProcureSight Integration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Requirements Management (RM) can integrate with [ProcureSight](procuresight-overview.html) to enable government users to gain insights from similar purchases made in the past. RM users with an agency-wide subscription to ProcureSight [Enterprise](https://docs.appian.com/suite/help/25.2/pspd-25.2.1.1/procuresight-enterprise-landing-page.html) or [Plus](https://docs.appian.com/suite/help/25.3/procuresight-plus-landing-page.html) benefit from seamless integration, directly embedding ProcureSight into the RM solution. This integration provides users full access to ProcureSight without needing separate sign-ins.

To configure this integration, you must create a [support case](https://forum.appian.com/suite/sites/myappian/page/support) with Appian Support to get the base URL and API key needed to configure the connected system and gain access to the ProcureSight backend data service. This page provides instructions for configuring the ProcureSight integration in your RM application.

**Note:**  The instructions on this page assume you have already requested and received the base URL and API Key. If you have not yet completed this prerequisite, contact Appian Support.

## Configure ProcureSight data service

The ProcureSight Data Service allows RM users to search for procurements from public data sources.

To configure the ProcureSight Data Service:

1.  Request the base **URL** and **API key** via a support case.
2.  Update the `AS_RM_PRO_CS_DataService` connected system with those values:
    1.  Enter the **Base URL**.
    2.  In the **Value** field, **Clear** to remove the existing value.
    3.  Paste the **API key** into the **Value** field.
    4.  Click **Save**.
3.  Test one of the ProcureSite integration objects to make sure the API key works:
    1.  Click an integration. For example, `AS_RM_PRO_INT_searchOpportunities`.
    2.  Click the **TEST REQUEST** button.
    3.  If the test results in an error and you need help troubleshooting, contact support.
4.  Navigate to the **Functionality** section of the [**Solutions Hub**](sol-custom-suite-user-guide.html) and turn on the toggle for **Enable/Disable ProcureSight Module**. This allows users to view ProcureSight features.
5.  Find the constant, `AS_RM_PRO_BOOL_RUN_NIGHTLY_DATA_REFRESH`, and set its value to `True` to allow the nightly sync of saved procurements.

## Configure document download service

The Configure Document Download Service allows RM users to download documents from procurements that appear in their search results.

**Note:**  The API key referenced here is different from the API key you need to request from support for the ProcureSight Data Service, follow the steps to create an API key and service account to properly configure this service.

To configure the Document Download Service:

1.  Go to **Admin Console**

    ![Requirements Management dropdown menu with Admin Console highlighted.](images/authenticate_sharepoint_edit_access.png)

2.  Click **Web API Authentication** on the sidebar.
3.  Follow these [steps for creating an API key](../Appian_Administration_Console.html#api-keys).
    -   Create a new service account with a descriptive name and add the service account to the `AS RM PRO Administrators` group.
    -   Copy the **API key**. The value of the API key is not displayed after this step.
4.  Go to **Appian Designer** > **Requirements Management Application**.
5.  Search for and open the `AS_RM_PRO_CS_AppianEnvironmentServiceAccount` connected system.
6.  Paste the copied **API key** in the **Value** field and click **SAVE**.

    ![Configuring AS_RM_PRO_CS_AppianEnvironmentServiceAccount connected system API key.](images/configure_document_download_service.png)

7.  Make sure users have the ability to download any documents attached to the procurement by navigating to the **Procurements** tab on the RM Site and searching for procurements.

See [ProcureSight Overview](procuresight-overview.html) to learn more.

## Configure ProcureSight document chat

To configure the ProcureSight document chat:

1.  Set up your **Azure OpenAI** account.
2.  Configure the application to use the API key and Resource Name.
3.  Register for a paid account with **Azure OpenAI**, if your organization does not already have one.

    **Tip:**  Consider starting with a free account for your development and test environments, though you may quickly reach the request limit.

4.  Create an **Appian user** that has system administrator privileges.
5.  Sign in as a system administrator and create a password.
6.  Navigate to the **Admin Console**.
7.  Select **Third-Party Credentials**.
    1.  Click **CREATE** and complete the **Third Party Credentials** form.
    2.  Enter a **Name** in the **Identity** section.
    3.  Choose **Vector Document Database** for the plugin field.
    4.  Click **Add Field** in the **Credentials** section.
    5.  Enter `password` as the **Field** Name.
    6.  Enter the password created in the previous step in the **Value** field.
    7.  Enter `true` in the **Expression** field in the **Test Connection** section.
    8.  Click **TEST CONNECTION**.
    9.  Click **SAVE** after a successful connection is confirmed.

        **Note:**  Note the key value to use it in the next step.

8.  Update `AS_RM_PRO_TXT_CHATBOT_SECURITY_KEY` with the key value of the third-party credentials.
9.  Update the `AS RM PRO CS Document Vector Database` database object.
    1.  Paste **Azure Region** in the **Azure Region** field.
    2.  Paste **Azure API key** in the **Azure API Key** field.
    3.  Paste **API Embedding Deployment ID** in the **API Embedding Deployment ID** field.
    4.  Paste **API Chat Completions Deployment ID** in the **API Chat Completions Deployment ID** field.
    5.  Create a **Database Name** and record it for a future step.
    6.  Enter the **System Administrator** username in the **Appian Username**.
    7.  Create a **Database Password** and record it for future use because the system does not display it again.
    8.  Click the **TEST** **CONNECTION** button and verify successful connection.
    9.  Click **SAVE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...