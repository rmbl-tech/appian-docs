---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/setting-up-azure-openai.html
original_path: rm-24.4.2.2/setting-up-azure-openai.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting up Azure OpenAI Integration

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

Appian Requirements Management comes with an integration with Azure OpenAI that can be used to generate message thread summaries. To configure this, you must register for an account with Azure OpenAI and configure the connected system with your account credentials. This page provides instructions for configuring the Azure OpenAI integration in Requirements Management.

## Configure application

**Note:**  Before installing RM 1.7 or later, you must install the Azure OpenAI Plugin.

After setting up your Azure OpenAI account, you must configure the application to use the API key.

1.  Register for a paid account with **Azure OpenAI**, if your organization does not already have one.

    **Note:**  Start with a free account for your dev and test environments, but expect to hit the request limit fairly quickly.

2.  Generate an **API key** for the account.
3.  Update `AS RM CS Azure Open AI`.

    -   Enter resource name in the **Your Resource Name** field.
    -   Paste your **API key** in the **API Key** field.
4.  Navigate to one of the integrations using this connected system.
    -   Select the `AS RM CS Azure Open AI` connected system.
    -   Click **DEPENDENTS**.
    -   Open an integration.
5.  Click **TEST REQUEST** to make sure the API Key works and the resource name is set up correctly.

    ![Appian Azure OpenAI integration testing interface for API key validation.](images/configure_application.png)

6.  Toggle the `AS_RM_BOL_RFI_OPEN_AI_GENERATION_TOGGLE` constant value to `True`. This enables the users to generate an RFI using AI.

    ![`AS_RM_BOL_RFI_OPEN_AI_GENERATION_TOGGLE` constant set to True for RFI generation.](images/configure_application_2.png)

7.  Toggle the `AS_RM_MSG_BOL_THREAD_SUMMARY_TOGGLE` constant value to `True`. The thread summary now updates each time a message is added to a thread.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...