---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/setting-up-ai-copilot.html
original_path: cw-25.2.2.5/setting-up-ai-copilot.html
version: "25.3"
title: "Installing Procurement AI Copilot"
page_id: "cw-25.2.2.5/setting-up-ai-copilot"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Procurement AI Copilot

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

This page provides instructions for installing the Procurement AI Copilot and configuring the Azure OpenAI Integration.

Installing Procurement AI Copilot consists of five steps:

1.  [Download the software package](#step-1-download-software-package).
2.  [Deploy Procurement AI Copilot plug-ins to the Appian environment](#step-2-deploy-plug-ins).
3.  [Create the database objects in the business data source](#step-3-create-the-database-objects).
4.  [Import the Procurement AI Copilot application into the Appian environment](#step-4-import-the-application).
5.  [Configure The Procurement AI Copilot Application](#step-5-configure-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

## System requirements

-   Appian platform running version 24.3 or greater.
-   A supported [business data source](../System_Requirements.html#databases).
-   A supported [web browser](../System_Requirements.html#web-browsers).

## Step 1: Download software package

The first step in installing Procurement AI Copilot is to download the software package that contains the following files. These files will be used in the remaining set up steps.

-   **scripts/01.AiCopilot1.4.0.sql**: SQL script for creating the database objects needed for the CW application.
-   **AiCopilot1.4.0.zip**: Application package to import into Appian.
-   **AiCopilot1.4.0.properties**: Import customization file for configuring the application package.

To download the software package:

1.  In **MyAppian**, navigate to the [Support tab](https://forum.appian.com/suite/sites/myappian/page/support).
2.  At the top of the page, select **DOWNLOADS** and then **SOLUTIONS**.
3.  In the grid, click **Procurement AI Copilot 24.3.1.4.0**.
4.  Under **Downloads**, click **Procurement AI Copilot Components** and agree to the License Agreement.
5.  Click **Procurement AI Copilot Components** to download the ZIP file.
6.  Unzip `AiCopilot1.4.0.zip` to access the installation files.

## Step 2: Deploy plug-ins

Procurement AI Copilot relies on the following plug-ins to be deployed and configured in the target system before the application files can be imported.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console** and click **Plug-ins**.
3.  Click **ADD PLUG-INS**.
4.  Search for and click `Appian Solutions`.
5.  Click **DEPLOY**.
6.  Repeat the above steps, but search for and click:
    -   `Document Vector Database`
    -   `AI Knowledge Assistant`
    -   `Appian Connected Systems - GenAI Tool: Document Summarizer`
    -   `Appian Solutions Plugin`
    -   `Document Page Counter`

## Step 3: Create the database objects

To create the structure for the database tables, views, and other objects that are a part of the Procurement AI Copilot application, you will need to run a DDL script in your database.

To create the database objects:

-   In your database, run the `AiCopilot1.4.0.sql` DDL file that was downloaded in [Step 1](#step-1-download-software-package).

**Note:**  This DDL file is optimized for MariaDB. If you are using a different type of database, the DDL file may need to be modified.

## Step 4: Import the Application

The next step to install the Procurement AI Copilot application is to import the application files into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `AiCopilot1.4.0.zip` file that was downloaded in [Step 1](#step-1-download-software-package).
5.  Select **Include related import customization file** and click **UPLOAD**. Select the `properties` file that was downloaded in [Step 1](#step-1-download-software-package).
    -   **Note**: If you have credentials for any of the integrations, you may include them in the properties file.
6.  Click **INSPECT** in order to ensure that there will be no complications on import.
    -   **Note**: Inspection could take several minutes and may timeout, but import will continue in the background.
7.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but import will continue in the background.
8.  Review the import results.

**Note:**  If the business database is not called `Appian`, a warning will occur when inspecting/importing the data stores. After the import is complete, open each data store object and update the **Data Source** to fix this.

## Step 5: Configure The Application

After setting up your Azure OpenAI account, you will need to configure the application to use the API key and Resource Name.

1.  Register for a paid account with Azure OpenAI, if your organization does not already have one.
    -   **NOTE:** If possible, you may want to start with a free account for your dev and test environments, but you will likely reach the request limit fairly quickly.
2.  Create an Appian user that has system administrator privileges.
3.  Login as a system administrator and create a password.
4.  Navigate to the Admin console and select **Third-Party Credentials**.
    -   Click **CREATE** and complete form for Third Party Credentials.
    -   Enter a **Name** in the **Identity** section.
    -   Choose **Vector Document Database** for the plugin field.
    -   Under **Credentials**, click **Add Field** and enter _password_ as the Field Name.
    -   Enter the _password_ created in the previous step in the **Value** field.
    -   In the **Test Connection** section, enter the _true_ in the **Expression** field and click the **TEST CONNECTION** button.
    -   Once a successful connection has been confirmed, click **SAVE** to save the configuration.
    -   Make note of the **key value** as it will be used in the next step.
5.  Update `AS_AICP_TXT_CHATBOT_SECURITY_KEY` with the key value of the third party credentials.
6.  Update the `AS AICP CS Document Vector` database object.
    -   Paste your Azure Region in the **Azure Region** field.
    -   Paste your Azure API key in the **Azure API Key** field.
    -   Paste your `API Chat Completions Deployment ID` in the **API Chat Completions Deployment ID** field.
    -   Enter the _System Administrator username_ in the **Appian Username**.
    -   Click the **TEST CONNECTION** button and verify successful connection.
    -   Click **SAVE**.
7.  Update the `AS AICP CS Document Summarizer` database object. - Paste your Azure Region in the **Azure Region** field. - Paste your Azure API key in the **Azure API Key** field. - Paste your `API Embedding Deployment ID` in the **Deployment ID** field. - NOTE: The database password will be the same value as the password from the fourth step for **Third-Party Credentials**. - Click the **TEST CONNECTION** button and verify successful connection. - Click **SAVE**.

## Step 6: Configure the Procurement AI Copilot settings

Enable the three toggles on Procurement AI Copilot [Settings page](ai-copilot-overview.html#settings) for Contract Writing:

1.  **Procurement AI Copilot Chatbot** - allows users to interact with the Procurement AI Copilot chatbot module within Contract Writing.
2.  **Contract File: Document Chat** - allows users to chat with contract file documents in all solicitations and awards.
3.  **Contract File: Document Summarizer** - allows users to summarize contract file documents in all solicitations and awards.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...