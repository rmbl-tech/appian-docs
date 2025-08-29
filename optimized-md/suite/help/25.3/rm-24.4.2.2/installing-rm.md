---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/installing-rm.html
original_path: rm-24.4.2.2/installing-rm.html
version: "25.3"
title: "Installing Requirements Management"
page_id: "rm-24.4.2.2/installing-rm"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Requirements Management

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

Installing Requirements Management (RM) consists of five main steps and a sixth step for upgrading from RM 1.5 or earlier:

1.  [Download the software package](#step-1-download-software-package).
2.  [Deploy RM plug-ins to the Appian environment](#step-2-deploy-plug-ins).
3.  [Create the database objects in the business data source](#step-3-create-database-objects).
4.  [Import the RM application into the Appian environment](#step-4-import-the-application).
5.  [Install hotfixes for your RM solution version](#step-5-install-hotfixes).
6.  [Upgrade from RM 1.5 or earlier](#step-6-upgrade-from-rm-15-or-earlier).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

## System requirements

-   Appian running version 24.4 for RM 2.2.
-   A supported [business data source](../System_Requirements.html#databases).

    **Note:**  Instructions below are tailored for MariaDB and Oracle databases. For use with other databases, the SQL scripts used in [Step 3](#step-3-create-database-objects) must be modified.

-   A supported [web browser](../System_Requirements.html#web-browsers).

## Step 1: Download software package

The first step in installing RM is to download the software package that contains the following files. These files are used in the remaining setup steps.

-   `RequirementsManagementv2.2.0.sql`: SQL script for creating the database objects needed for the RM application.
-   `RequirementsManagementv2.2.0.zip`: Application package to import into Appian.
-   `RequirementsManagementv2.2.0.properties`: Import customization file for configuring the application package.
-   `LogMessage.jar`: Plug-in package for log message.

To download the software package:

1.  Go to [MyAppian > SUPPORT > DOWNLOADS](https://forum.appian.com/suite/sites/myappian/page/support) to navigate to the DOWNLOADS tab.
2.  Select the **SOLUTIONS** tile to navigate to the Available Solutions page.

    ![MyAppian Support > Downloads page, Solutions tile selected.](images/step_1_download_software_package.png)

3.  Click **Requirements Management v24.4.2.2** to navigate to the **Requirement Management v24.4.2.2 Summary** tab.
4.  Click **Requirements Management v2.2.0** in the **Downloads** section to navigate to the **License Agreement** page.
5.  Click **PROCEED** to accept the terms and conditions and navigate to the **Configure custom application attributes** page.
6.  Select your **Relational Database Management System** (RDBMS) using the radio buttons.
7.  Enter **Data source**.
8.  Select your **Primary System Locale** using the dropdown.
9.  Click **CONTINUE** to navigate to the **Download File** page.
10.  Click **Requirements Management v2.2.0** to download the ZIP file.
11.  Unzip `Requirements Management v2.2.0.zip` to access the installation files.

## Step 2: Deploy plug-ins

You must deploy the following plug-ins for the RM solution to work:

-   `AI Knowledge Assistant`
-   `Appian Solutions`
-   `Appian Solutions Component Plugins`
-   `AzureOpenAI`
-   `Content Tools`
-   `Date and Time Utilities`
-   `Document Page Counter`
-   `Document Vector Database`
-   `Dynamic Document Generator`
-   `Excel Tools`
-   `GenAI Tool-Document Summarizer`
-   `Log Message`
-   `OpenAI`
-   `Regular Expression Functions`
-   `Rich Text`

The steps for deploying plug-ins are different depending on if you have an Appian Cloud or a self-managed environment.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  Sign in as the deployment user in the target environment.
2.  Navigate to the **Admin Console** and click **Plug-ins**.
3.  Click **ADD NEW PLUG-INS**.
4.  Search for and click `AI Knowledge Assistant`.
5.  Click **DEPLOY**.
6.  Repeat **steps 4 and 5** for each of the following plug-ins:

    -   `Appian Solutions`
    -   `Appian Solutions Component Plugins`
    -   `AzureOpenAI`
    -   `Content Tools`
    -   `Date and Time Utilities`
    -   `Document Page Counter`
    -   `Document Vector Database`
    -   `Dynamic Document Generator`
    -   `Excel Tools`
    -   `GenAI Tool-Document Summarizer`
    -   `OpenAI`
    -   `Regular Expression Functions`
    -   `Rich Text`
7.  Directly upload the `Log Message` plug-in.

    **Note:**  The `LogMessage.jar` plug-in is downloaded as part of the [software package](#step-1-download-software-package).

    1.  Sign in as a deployment user in the target environment.
    2.  Navigate to the **Admin Console**.
    3.  Click **Plug-ins**.
    4.  Click **ADD NEW PLUG-INS**.
    5.  Select the **Direct Upload** tab.
    6.  Click **Upload** and select the `LogMessage.jar` file downloaded in [Step 1](installing-rm.html#step-1-download-software-package).
    7.  Click **DEPLOY** to deploy the `Log Message` plug-in.

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):

    -   [Appian Solutions](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
    -   [Appian Solutions Component Plugins](https://community.appian.com/b/appmarket/posts/appian-solutions-component-plugins)
    -   [AzureOpenAI](https://community.appian.com/b/appmarket/posts/azureopenai)
    -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
    -   [Date and Time Utilities](https://community.appian.com/b/appmarket/posts/date-and-time-utilities)
    -   [Document Page Counter](https://community.appian.com/b/appmarket/posts/document-page-counter)
    -   [Document Vector Database](https://community.appian.com/b/appmarket/posts/document-vector-database)
    -   [Dynamic Document Generator](https://community.appian.com/b/appmarket/posts/dynamic-document-generator)
    -   [Excel Tools](https://community.appian.com/b/appmarket/posts/excel-tools)
    -   [GenAI Tool-Document Summarizer](https://community.appian.com/b/appmarket/posts/genai-tool---document-summarizer)
    -   [OpenAI](https://community.appian.com/b/appmarket/posts/openai)
    -   [Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
    -   [Rich Text](https://community.appian.com/b/appmarket/posts/rich-text-editor)

    **Note:**  The `LogMessage.jar` plug-in is downloaded as part of the [software package](#step-1-download-software-package).

2.  Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy the plug-ins.

## Step 3: Create database objects

When installing in a new environment, run the `RequirementsManagementv2.2.0.sql` DDL file downloaded in [Step 1](#step-1-download-software-package) to create the structure for the database tables, views, and other objects that are part of the RM application.

When upgrading from a previous RM version, read the `readme.txt` file in the package for instructions related to DB migration scripts.

**Note:**  This DDL file is optimized for MariaDB and Oracle. If you are using a different type of database, the DDL file needs modification. Included in the scripts is Best in Class (BIC) contracts data that is used in the BIC contract recommendation feature.

## Step 4: Import the application

The final step to install the RM application is to import the application files into the target environment.

**Caution:**  If you have not already done so, you must update the **User** record type to the latest version before importing the application. See [Update a Legacy Record Type](../update-a-record-type.html#updating-a-legacy-record-type) for more information.

To import the application:

1.  Sign in as the deployment user in the target environment.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `RequirementsManagementv2.2.0.zip` file downloaded in [Step 1](#step-1-download-software-package).
5.  Select **Include related import customization file** using the checkbox.
6.  Click **UPLOAD** and choose the `RequirementsManagementv2.2.0.properties` file downloaded in [Step 1](#step-1-download-software-package).
7.  Click **INSPECT** to review the inspection results.
8.  Click **IMPORT PACKAGE** if there are no issues in the inspection results.

    **Note:**  The import may time out due to file size, but the import still runs in the background. appian-style-tip If the business database is not called `Appian`, a warning occurs when importing the data stores. To fix this, after the import is complete, open each data store object and update the **Data Source** dropdown list.

## Step 5: Install hotfixes

After you finish installing RM, check for any relevant hotfixes, and if applicable, apply the latest hotfix version by performing the following steps:

1.  Go to [MyAppian > SUPPORT > DOWNLOADS](https://forum.appian.com/suite/sites/myappian/page/support) to navigate to the **DOWNLOADS** tab.
2.  Select the **SOLUTIONS** tile to navigate to the **Available Solutions** page.
3.  Click **Requirements Management v24.4.2.2** to navigate to the Requirement Management v24.4.2.2 Summary tab.
4.  Click the **Hotfix** link in the **Downloads** section to navigate to the License Agreement page.
5.  Click **PROCEED** to accept the terms and conditions and navigate to the Configure custom application attributes page.
6.  Select your **Relational Database Management System** (RDBMS) using the radio buttons.
7.  Enter **Data source**.
8.  Select your **Primary System Locale** using the dropdown.
9.  Click **CONTINUE** to navigate to the Download File page.
10.  Click the hotfix file name to download it.
11.  Unzip the hotfix package to access the software installation files.
12.  Repeat [Step 3](#step-3-create-database-objects) and [Step 4](#step-4-import-the-application).

## Step 6: Upgrade from RM 1.5 or earlier

Requirements Management 1.6 introduced a new way to manage document folders, which requires a migration of the existing data. If you are upgrading from Requirements Management 1.5 or earlier, you must run manual migration.

**Note:**  Complete all deployment steps for RM 2.2 before migrating your existing data. After you have completed all deployment steps, follow the steps below for the manual data migration.

### Manual data migration

1.  Go to Appian Designer and start the `AS RM ZZZ 1.6 Upgrade Data Migration` process model after the successful deployment of RM 2.2.
2.  Check that `AS RM ZZZ 1.6 Upgrade Data Migration` is completed without errors to verify that the migration was successful.

## Next steps

After installing the application and setting up the database, configure RM to work with your organizations' needs. The following steps assist you to further customize the RM application:

-   [Set up inline editing](setting-up-inline-editing.html).
-   [Set up Azure OpenAI integration](setting-up-azure-openai.html).
-   [Set up ProcureSight integration](setting-up-procuresight.html).
-   [Install Procurement AI Copilot](installing-ai-copilot-rm.html)
-   **Configure and Create a New Requirements Management Process:**
    -   [Configuring dropdown lists](modifying-dropdown.html).
    -   [Configuring UI text](sol-custom-suite-user-guide.html#text).
    -   [Configuring document templates](document-templates.html).
    -   [Importing reference data](migrating-data.html).
    -   [Creating requirement checklists](configuring-checklists.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...