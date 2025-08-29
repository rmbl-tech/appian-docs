---
source_url: https://docs.appian.com/suite/help/25.3/clm-25.2.1.0/install.html
original_path: clm-25.2.1.0/install.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Contract Lifecycle Management Install Guide

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

Appian Contract Lifecycle Management (CLM) is built on the Appian low-code platform and helps you manage all of the key processes and checkpoints during the contract lifecycle. This guide walks you through installing CLM, which consists of four main steps.

-   [Introduction](#introduction)
    -   [System requirements](#system-requirements)
    -   [Enable custom properties](#enable-custom-properties)
    -   [Technical support](#technical-support)
-   [Step 1: Download the software package](#step-1-download-the-software-package)
-   [Step 2: Deploy plug-ins](#step-2-deploy-plug-ins)
    -   [Appian Cloud environments](#appian-cloud-environments)
    -   [Self-managed environments](#self-managed-environments)
-   [Step 3: Create database objects](#step-3-create-database-objects)
-   [Step 4: Import the application](#step-4-import-the-application)
-   [Next steps](#next-steps)

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

-   Appian version 25.2 [advanced or premium capability tier](../Appian_Tiers.html).
-   A supported version of a MariaDB database as a business data source.
-   A supported web browser.

**Note:**  Instructions below are tailored for MariaDB database. For use with other databases, the SQL scripts used in [Step 3: Creating database objects](#step-3-create-database-objects) will need to be modified.

### Enable custom properties

Before installing Contract Lifecycle Management, the following custom properties need to be enabled in the customer’s environments:

-   `appian.feature.solutions-api.enabled`
-   `appian.feature.solutions-api.cmStudio.enabled`
-   `appian.feature.ae.intelligent-search.records-smart-search`
-   `appian.feature.ae.designer-components.record-chat`

**Cloud customers** need to [submit a support case](https://forum.appian.com/suite/sites/myappian/page/support) to enable these custom properties in their environments. **Self-managed customers** need to enable these custom properties in their [custom properties file](../Custom_Configurations.html#custom-properties).

To do this:

1.  Open the custom properties file located at `<APPIAN_HOME>/conf/`.
2.  Set the value of each of the following properties to true. For example:
    1.  `appian.feature.solutions-api.enabled`\=true.
    2.  `appian.feature.solutions-api.cmStudio.enabled`\=true.
    3.  `appian.feature.ae.intelligent-search.records-smart-search`\=true
    4.  `appian.feature.ae.designer-components.record-chat`\=true

Once you've enabled these properties, restart the app server. For instructions on restarting the app server, see [Starting and Stopping Appian](../Starting_and_Stopping_Appian.html). While the server is restarting, go ahead and start your installation process.

### Technical support

Appian provides a number of services to ensure the success of your CLM solution. See the [Appian Solutions and Documentation Support Guide](../Appian_Solutions_and_Documentation_Support_Guide.html) for more information. For assistance with technical issues related to installing or setting up CLM, current customers can log into Appian Community and open support cases. All users of CLM can also email Appian Support at support@appian.com.

## Step 1: Download the software package

To install CLM, you'll need to download the software package that contains the following files you'll use in the remaining set up steps:

-   `01.ContractLifecycleManagementv1.0.0.sql`: SQL script for creating the database objects needed for the CLM application.
-   `ContractLifecycleManagementv1.0.0.zip`: Application package to import into Appian.
-   `ContractLifecycleManagement1.0.0.properties`: Import customization file for configuring the application package.

## Step 2: Deploy plug-ins

CLM relies on the following plug-ins to be deployed and configured in the target system before the application files can be imported:

-   `Advanced Document Templating`
-   `AI Knowledge Assistant`
-   `Appian Solutions Component Plugins`
-   `Appian Solutions Plugin`
-   `Content Tools`
-   `Document Vector Database`
-   `Dynamic Document Generator`
-   `PDF Tools`
-   `Text Utilities`

**Note:**  The steps for deploying plug-ins are different for an Appian Cloud or self-managed environment. Be sure to note which set of deployment steps you need for your environment.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the Admin Console.
3.  Click Plug-ins.
4.  Click ADD PLUG-INS.
5.  Search for and click `Appian Solutions Plugin`.
6.  Click DEPLOY.
7.  Repeat for each of the remaining plugins:
    -   `Advanced Document Templating`
    -   `AI Knowledge Assistant`
    -   `Appian Solutions Component Plugins`
    -   `Content Tools`
    -   `Document Vector Database`
    -   `Dynamic Document Generator`
    -   `PDF Tools`
    -   `Text Utilities`

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):
    -   [Advanced Document Templating](https://community.appian.com/b/appmarket/posts/advanced-document-templating)
    -   [AI Knowledge Assistant](https://community.appian.com/b/appmarket/posts/ai-knowledge-assistant)
    -   [Appian Solutions Component Plugins](https://community.appian.com/b/appmarket/posts/appian-solutions-component-plugins)
    -   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
    -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
    -   [Document Vector Database](https://community.appian.com/b/appmarket/posts/document-vector-database)
    -   [Dynamic Document Generator](https://community.appian.com/b/appmarket/posts/dynamic-document-generator)
    -   [PDF Tools](https://community.appian.com/b/appmarket/posts/pdf-tools)
    -   [Text Utilities](https://community.appian.com/b/appmarket/posts/text-utilities)
2.  Follow the steps in [Deploying plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) to deploy these plug-ins for self-managed environments.

## Step 3: Create database objects

To create the structure for the database tables, views, and other objects that are a part of CLM, you need to run the following DDL scripts in your database.

To create the database objects:

1.  In your MariaDB business database, import and run the following file downloaded in Step 1:

    -   `01.ContractLifecycleManagementv1.0.0.sql`

**Note:**  You can run this file again if needed. The individual script executions are tracked in CLM\_ScriptExecutionsHistory. This table should not be changed or altered in any way.

## Step 4: Import the application

Next, you need to import the application files into the target environment.

To import the CLM application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the zip file that was downloaded in [Step 1](#step-1-download-the-software-package).
5.  Select **Include related import customization file** and click **UPLOAD**. Select the properties file that was downloaded in [Step 1](#step-1-download-the-software-package).
    -   **NOTE**: If you have credentials for any of the integrations, you may include them in the properties file.
6.  Click **INSPECT** in order to ensure that there will be no complications on import.
7.  Click **IMPORT**.
8.  Review the import results.

## Next steps

Now that CLM is installed and the database is set up, you need to complete these setup steps to get the application up and running.

1.  Configure the solution for your organization's needs:
    -   The [CLM Setup Guide](setup.html) outlines the steps you will need to take to modify the solution to work with your organization's requirements.
2.  Configure integrations:
    -   [Microsoft 365](microsoft365-integration.html)
    -   [Azure OpenAI](openAI-integration.html)
    -   [Docusign](docusign-integration.html)
    -   [AI Contract Assistant for Document Chat](ai-contract-assistant-setup.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...