---
source_url: https://docs.appian.com/suite/help/25.3/clm-25.2.1.0/ai-contract-assistant-setup.html
original_path: clm-25.2.1.0/ai-contract-assistant-setup.html
version: "25.3"
title: "AI Contract Assistant Setup Guide for Document Chat"
page_id: "clm-25.2.1.0/ai-contract-assistant-setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# AI Contract Assistant Setup Guide for Document Chat

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Contract Lifecycle Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Appian Contract Lifecycle Management (CLM) solution comes with a pre-built integration that allows you to ask questions about contract documents using AI.

This guide walks you through the set up required to use this integration.

## Set up AI Contract Assistant for document chat

After setting up your Azure OpenAI account, you will need to configure the CLM solution to use the API key and Resource Name.

1.  Register for a paid account with Azure OpenAI, if your organization does not already have one.
2.  While logged in as a system administrator, create an Appian user that has system administrator privileges, for example: `azure.vectordb`.
    1.  Log out.
    2.  Sign in as the user created in step 2 to create a permanent password for the user account.
3.  Log out and back in using your normal system administrator account.
4.  Navigate to the Admin console and select **Third-Party Credentials**.
    1.  Click **CREATE** and complete the form for Third-Party Credentials.
    2.  Enter “AzureVectorDatabase” as the **Name** in the **Identity** section .
    3.  Choose **Vector Document Database** for the plugin field.
    4.  Under **Credentials**, click **Add Field** and enter `password` as the Field Name.
    5.  Enter the permanent _password_ created in step 2(ii) in the **Value** field.
    6.  In the **Test Connection** section, enter _true_ in the **Expression** field and click the **TEST CONNECTION** button.
    7.  Once a successful connection has been confirmed, click **SAVE** to save the configuration.
    8.  Make note of the **key value** as it will be used in the next step.
5.  Update `CLM_TXT_AI_CHATBOT_SECURITY_KEY` with the key value of the third party credentials.
6.  Update the `CLM Document Vector DB Connected System` object.
    1.  Paste your Azure Region in the **Azure Region** field.
    2.  Paste your Azure API key in the **Azure API Key** field.
    3.  Paste your API Chat Completions Deployment ID in the **API Chat Completions Deployment ID** field.
    4.  Enter the system administrator username in the **Appian Username** field.
    5.  Enter the permanent password created in step 2.b. in the **Database Password** field.
    6.  Click the **TEST CONNECTION** button and verify successful connection.
    7.  Click **SAVE**.

## Turn on AI Contract Assistant feature toggle

Make sure the constant `CLM_FEATURE_TOGGLE_AI_KNOWLEDGE_ASSISTANT` is set to `True` in Appian Designer.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...