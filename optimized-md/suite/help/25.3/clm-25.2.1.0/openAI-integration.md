---
source_url: https://docs.appian.com/suite/help/25.3/clm-25.2.1.0/openAI-integration.html
original_path: clm-25.2.1.0/openAI-integration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Azure OpenAI Integration Setup Guide

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

The Appian Contract Lifecycle Management (CLM) solution comes with an integration with Azure OpenAI that can be used to generate contract text from user instructions. To configure this integration with your CLM solution, you need to register for an account with Azure OpenAI and configure the connected system with your account credentials.

This page provides instructions for configuring the Azure OpenAI Integration in CLM.

## Configure application

After setting up your Azure OpenAI account, you will need to configure the application to use the API key and Resource Name.

To configure the application:

1.  Register for a paid account with Azure OpenAI, if your organization does not already have one.
2.  Generate necessary account information for your Azure OpenAI account. This includes the API key and Azure URL.
3.  Update `CLM ADB Azure OpenAI Connected System`.
    -   Paste your Azure URL in the **Base URL** field.
    -   Paste your API key in the **Value** field.
4.  Run a test request using the `CLM_ADB_INT_POST_AzureOpenAI_JsonModeCall` object.

## Turn on AI Document Builder feature toggle

Make sure the constant `CLM_FEATURE_TOGGLE_ADB_AI_DOCUMENT_BUILDER` is set to `True` in Appian Designer.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...