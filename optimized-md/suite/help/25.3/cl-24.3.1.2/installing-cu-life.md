---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/installing-cu-life.html
original_path: cl-24.3.1.2/installing-cu-life.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Connected Underwriting Life Workbench

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Built on the Appian Low-Code platform, the Connected Underwriting (CU) Life Workbench is a pre-built, configurable application that enables insurers to speed up the underwriting process and enhance customer experience by decreasing quoting time and integrating various data sources to create a 360-view.

Installing the Connected Underwriting Life Workbench (CU Life Workbench) consists of four main steps:

1.  [Download the software package](#step-1-download-software-package).
2.  [Deploy CU Life Workbench plug-ins to the Appian environment](#step-2-deploy-plug-ins).
3.  [Create the database objects in the business data source](#step-3-create-database-objects).
4.  [Import the CU Life Workbench application into the Appian environment](#step-4-import-the-application).

This guide provides how-to instructions for installing the CU Life Workbench. Before starting the installation process, review the [System Requirements](#system-requirements) to ensure all minimum requirements are met and [verify the Appian version and database type](#verify-the-appian-version-and-database-type) and the CU Life Workbench Base application version.

## System requirements

-   Appian version 24.3 or later for CU Life Workbench 1.2.0.
    -   **Note**: We recommend using Appian HIPAA Cloud to protect and safeguard any user health data.
-   A supported version of a [MariaDB database](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are tailored for MariaDB databases. The SQL scripts used in **[Step 3](#step-3-create-database-objects)** will need to be modified for use with other databases.
-   A supported [web browser](../System_Requirements.html#web-browsers).

### Verify the Appian version and database type

Follow the steps in this section to verify the Appian platform version and database, and the CU Life Workbench Base application version.

1.  From the navigation menu, click **About Appian**.
2.  Under **System Information**, verify the Appian Version is **24.3**.

    ![cul-installing_cul-appian_version](images/cul-installing_cul-appian_version.png)

3.  Under **DATA SOURCES**, verify that a supported version of MariaDB is a business data source.
4.  From the navigation menu, go to **Appian Designer**.
5.  Enter `ISL_VRS_INSURANCE_LIFE_UNDERWRITING` in the Search field and open the constant to verify the CU Life Workbench Base application version.

    ![cu_verify_version_number](images/cu_verify_version_number.png)

#### Technical support

During the installation, if you experience any technical difficulty, log into [Appian Community](https://community.appian.com) and open a support case. All users of CU Life Workbench can also email Appian Support at support@appian.com.

## Step 1: Download software package

To install CU Life Workbench, you will need to download the software package that contains the following files you'll use in the remaining setup steps.

-   **01.ConnectedLifeUnderwritingv1.2.0.sql**: SQL script for creating the database objects needed for the Connected Underwriting Life application.
-   **ConnectedLifeUnderwritingv1.2.0.zip**: Application package to import into Appian.
-   **ConnectedLifeUnderwritingv1.2.0-AdminConsole.zip**: Admin console package to import into Appian.

To download the software package:

1.  Go to the **SUPPORT** tab on [My Appian](https://forum.appian.com/suite/sites/myappian/page/support).
2.  Click the **DOWNLOADS** tab.
3.  Click **SOLUTIONS**.
4.  Find and open **Connected Underwriting Life Workbench v1.2.0**.
5.  In **Downloads**, click the **Connected Life Underwriting Installer** link.
6.  Click **PROCEED** to agree to the License Agreement.
7.  Click **Connected Life Underwriting Installer** to download the ZIP file.
8.  Unzip `ConnectedLifeUnderwritingv1.2.0 - Forum.zip` to access the software installation files.

## Step 2: Deploy plug-ins

The CU Life Workbench relies on the following plug-ins to be deployed and configured in the target system before you can import the application files.

-   `Appian Solutions`
-   `Rich Text`
-   `Appian Solutions Component Plugins`

The steps for deploying plug-ins differ for an Appian Cloud or self-managed environment. Be sure to note which deployment steps you need for your environment.

### Appian Cloud Environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for and click `Appian Solutions`.
6.  Click **DEPLOY**.
7.  Search for and click `Rich Text`.
8.  Click **DEPLOY**.

### Self-Managed Environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins from the [Appian AppMarket](https://community.appian.com/b/appmarket):
    -   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
    -   [Rich Text Editor)](https://community.appian.com/b/appmarket/posts/rich-text-editor)
2.  Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy the plug-ins listed above.

## Step 3: Create database objects

You will need to run a DDL script in your database to create the structure for the database tables, views, and other objects that are a part of the CU Life Workbench.

To create the database objects:

-   In your database, run the `ConnectedLifeUnderwritingv1.2.0.sql` DDL file downloaded in [Step 1](#step-1-download-software-package).

-   **Note:** This DDL file is optimized for MariaDB. If you use a different database type, the DDL file may need to be modified.

## Step 4: Import the application

The next step needed is installing the CU Life Workbench by importing the application files into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `ConnectedLifeUnderwritingv1.2.0.zip` file downloaded in [Step 1](#step-1-download-software-package).
5.  Click **INSPECT**.
6.  Review the inspection results. If there are no issues, click **IMPORT PACKAGE**.
    -   **NOTE:** The import may time out due to file size, but the import will continue in the background.

**Note:**  A warning will occur when importing the data stores if the business database is not called `Appian`. To fix this, after the import is complete, go into each record object and manually change the source table to the appropriate database schema.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...