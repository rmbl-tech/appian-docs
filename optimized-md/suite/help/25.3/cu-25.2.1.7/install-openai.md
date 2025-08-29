---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/install-openai.html
original_path: cu-25.2.1.7/install-openai.html
version: "25.3"
title: "Install OpenAI"
page_id: "cu-25.2.1.7/install-openai"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Install OpenAI

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Integrating Azure OpenAI with your Connected Underwriting P&C solution consists of three main steps:

-   [Registering for an Azure OpenAI account](#step-1-openai-account-registration)
-   [Downloading the software package](#step-2-downloading-the-software-package)
-   [Importing the OpenAI application](#step-3-importing-the-application)
-   [Incorporating OpenAI with your CU P&C solution](#step-4-incorporation-with-the-base-application)

This page provides instructions for installing the OpenAI Messaging Summary module in your CU P&C solution. Before installing, review the [System Prerequisites](#system-prerequisites) to ensure all minimum requirements are met.

### System Prerequisites

-   Appian platform running version 23.4 or greater.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note:** Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Insurance Underwriting Base application v1.3 imported, which includes the following application container:
    -   `Insurance Underwriting`
-   An OpenAI account and its related API Key
    -   **Note:** You may want to start with a free account for your dev and test environments, but you will likely reach the request limit fairly quickly.

## Step 1: OpenAI account registration

To configure this module with your CU P&C solution, register for an account with OpenAI and generate an API key.

1.  Register for a paid account with Azure OpenAI if your organization does not already have one
    -   **NOTE:** You may want to start with a free account for your dev and test environments, but you will likely reach the request limit fairly quickly.
2.  Generate an API key for the account.

## Step 2: Downloading the software package

The first step in installing the OpenAI Messaging Summary module is to download the `ConnectedUnderwritingAddOnMessagingOpenAiSummaryv1.1.0 - Forum.zip` software package containing the following files.

-   `ConnectedUnderwritingAddOnMessagingOpenAiSummaryv1.1.0.zip`
-   `ConnectedUnderwritingAddOnMessagingOpenAiSummaryv1.1.0.properties`
-   `01.ConnectedUnderwritingAddOnMessagingOpenAiSummaryv1.1.0.sql`

These files will be used in the remaining setup steps.

To download the software package:

1.  In **MyAppian**, navigate to the **SUPPORT** tab.
2.  Select **DOWNLOADS > SOLUTIONS**.
3.  In the grid, click **Connected Underwriting P&C v1.4**.
4.  Under **Downloads > Add-ons**, click **Connected Underwriting AddOn Messaging OpenAi Summary v1.1.0** and agree to the License Agreement.
5.  Click **Connected Underwriting AddOn Messaging OpenAi Summary v1.1.0** to download the ZIP file.
6.  Unzip `ConnectedUnderwritingAddOnMessagingOpenAiSummaryv1.1.0 - Forum.zip` to access the software installation files.

## Step 3: Importing the application

To import the application files:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose `ConnectedUnderwritingAddOnMessagingOpenAiSummaryv1.1.0.zip` file.
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.
    -   **Note:** The import may time out due to file size but will continue in the background.
7.  Review the import results.
8.  Navigate into the new **ISU Add-On: Messaging OpenAI Summary (ISU\_MAI)** application and open the `ISU_MAI_CS_AzureOpenAI` connected system.
9.  Update the **Resource Name** and **API Key** configurations in the connected system to enable access to the desired OpenAI resource:
    -   Paste your API key in the **API Key** field.
    -   If you use a pre-existing OpenAI account, it may be related to multiple organizations paying separately for requests. In this case, you should specify which organization these API requests will count against by populating the **Organization** field in RM.
10.  Click **TEST CONNECTION** to ensure the API Key works.
11.  Save your updates.

## Step 4: Incorporation with the base application

The incorporation steps in this section are required to integrate the OpenAI module into the Appian Connecting Underwriting base application.

To add the AI Summary capabilities to the Messaging Thread display:

1.  In the target environment, log in.
2.  Navigate to the **Appian Designer**.
3.  Navigate to **Insurance Underwriting (ISU)** application.
4.  Open the `ISU_MSG_COL_messagesDisplayForSelectedConversation` interface and add the following code to the start of the contents array in the second `a!cardLayout` (around line 188):

    ```
    1
    2
    3
    4
    5
    ISU_MAI_showOpenAiSummarizedMessage(
      messages: local!allMessages,
      i18nData: ri!i18nData,
      brandingMap: ri!brandingMap
    ),
    ```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...