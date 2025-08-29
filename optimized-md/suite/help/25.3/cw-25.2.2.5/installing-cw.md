---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/installing-cw.html
original_path: cw-25.2.2.5/installing-cw.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Contract Writing

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

Appian Government Contract Writing is built on the Appian low-code platform and helps you and your contracting professionals manage and streamline your procurement writing process. This guide provides guidance for installing the solution.

Installing Contract Writing consists of five main steps, including:

1.  [Downloading the software package](#step-1-download-software-package).
2.  [Deploying CW plug-ins to the Appian environment](#step-2-deploy-plug-ins).
3.  [Creating the database objects in the business data source](#step-3-create-the-database-objects).
4.  [Importing the CW application into the Appian environment](#step-4-import-the-application).
5.  [Running Reconciliation and Migration](#step-5-run-reconciliation-and-migration)

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

-   Appian platform running version 25.2 or greater.
-   A supported [business data source](../System_Requirements.html#databases).
-   A supported [web browser](../System_Requirements.html#web-browsers).

### Version-specific upgrade considerations

Certain versions of CW require the running of process models to maintain data integrity and backward compatibility for new features.

Depending on which version of CW you’re upgrading from, you’ll need to make sure you install specific earlier versions of CW in sequential order before making the jump to 2.5.

**Note:**  If you are upgrading from 2.1 or later, you can skip this section and proceed directly with upgrading to 2.5.

#### Upgrading from 1.6

If you are upgrading from CW 1.6:

-   Install 1.7
-   Then [2.1](https://docs.appian.com/suite/help/24.4/cw-24.3.2.1/installing-cw.html)
-   [Install GAM Acquisition Central](../gms-25.2.1.0/gms-installing-the-solution.html)
-   Then proceed with installing 2.5

    **Caution:**  **GAM Acquisition Central** must be installed before this step.

-   Run Reconciliation and Migration process from the **Contract Writing Vendor Data Reconciliation and Migration** site.
    -   See [Step 5](#step-5-run-reconciliation-and-migration) for more information and troubleshooting scenarios.
-   After successful completion, CW 2.5 will be ready to use.

#### Upgrading from any version from 1.7 to 2.0

If you are upgrading from CW 1.7, 1.8, 1.9 or 2.0:

-   Install [2.1](https://docs.appian.com/suite/help/24.4/cw-24.3.2.1/installing-cw.html)
-   [Install GAM Acquisition Central](../gms-25.2.1.0/gms-installing-the-solution.html)
-   Then proceed with installing 2.5

    **Caution:**  **GAM Acquisition Central** must be installed before this step.

-   Run Reconciliation and Migration process from the **Contract Writing Vendor Data Reconciliation and Migration** site.
    -   See [Step 5](#step-5-run-reconciliation-and-migration) for more information and troubleshooting scenarios.
-   After successful completion, CW 2.5 will be ready to use.

#### Troubleshooting

It is possible that certain data stores referencing older CDTs will not publish correctly immediately after upgrade. This can take up to 24 hours in some instances. You may run into errors with process models if you try to install the next version of CW before these CDTs have had a chance to catch up.

For example, you might install 1.7 and then try installing 2.1 and encounter errors with process models due to this discrepancy.

If this happens, you can try waiting 24 hours for the issue to resolve itself or you can restart the application server before proceeding with the next installation of CW.

### Technical support

Current customers can log into Appian Community and open support cases. All users of Contract Writing can also email Appian Support at support@appian.com.

## Step 1: Download software package

**Caution:**  If you are upgrading from a version earlier than 2.1, please review the [Version-specific upgrade considerations](#version-specific-upgrade-considerations) before proceeding with the install.

**Caution:**  [GAM Acquisition Central](../gms-25.2.1.0/gms-installing-the-solution.html) must be installed before this step.

The first step in installing Contract Writing is to download the software package that contains the following files. These files will be used in the remaining set up steps.

-   **scripts/01.ContractWritingv2.5.0.sql**: SQL script for creating the database objects needed for the CW application.
-   **ContractWritingv2.5.0.zip**: Application package to import into Appian.
-   **ContractWritingv2.5.0.properties**: Import customization file for configuring the application package.

To download the software package:

1.  In **MyAppian**, navigate to the [Support tab](https://forum.appian.com/suite/sites/myappian/page/support).
2.  At the top of the page, select **DOWNLOADS** and then **SOLUTIONS**.
3.  In the grid, click **Contract Writing 25.2.2.5**.
4.  Under **Downloads**, click **Contract Writing Components** and agree to the License Agreement.
5.  Click **Contract Writing Components** to download the ZIP file.
6.  Unzip `ContractWritingv2.5.0.zip` to access the installation files.

## Step 2: Deploy plug-ins

Contract Writing relies on the following plug-ins to be deployed and configured in the target system before the application files can be imported. The steps for deploying plug-ins differ depending on whether you have an Appian Cloud or a self-managed environment.

To download the necessary plug-ins and deploy them to your environments, follow the steps that match your environment setup.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console** and click **Plug-ins**.
3.  Click **ADD PLUG-INS**.
4.  Search for and click **Appian Solutions Plugin**.
5.  Click **DEPLOY**.
6.  Repeat the above steps, but search for and click:
    -   `Content tools`
    -   `Document page counter`
    -   `HTML to PDF Conversion`
    -   `PDF tools`
    -   `PDF Utilities`
    -   `Rich Text Editor Component`
    -   `Zip Utility`
    -   `Advanced Document Templating`

### Self-Managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):
    -   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
    -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
    -   [Document page counter](https://community.appian.com/b/appmarket/posts/document-page-counter)
    -   [HTML to PDF Conversion](https://community.appian.com/b/appmarket/posts/html-to-pdf)
    -   [PDF Tools](https://community.appian.com/b/appmarket/posts/pdf-tools)
    -   [PDF Utilities](https://community.appian.com/b/appmarket/posts/pdf-utilities)
    -   [Rich Text Editor Component](https://community.appian.com/b/appmarket/posts/rich-text-editor)
    -   [Zip utility](https://community.appian.com/b/appmarket/posts/zip-utility)
    -   [Advanced Document Templating](https://community.appian.com/b/appmarket/posts/advanced-document-templating)
2.  Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy.

## Step 3: Create the database objects

To create the structure for the database tables, views, and other objects that are a part of the CW application, you will need to run a DDL script in your database.

To create the database objects:

-   In your database, run the `ContractWritingv2.5.0.sql` DDL file that was downloaded in [Step 1](#step-1-download-software-package).

**Note:**  This DDL file is optimized for MariaDB. If you are using a different type of database, the DDL file may need to be modified.

## Step 4: Import the Application

The next step to install the Contract Writing application is to import the application files into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `ContractWritingv2.5.0.zip` file that was downloaded in [Step 1](#step-1-download-software-package).
5.  Select **Include related import customization file** and click **UPLOAD**. Select the `properties` file that was downloaded in [Step 1](#step-1-download-software-package).
    -   **Note**: If you have credentials for any of the integrations, you may include them in the properties file.
6.  Click **INSPECT** in order to ensure that there will be no complications on import.
    -   **Note**: Inspection could take several minutes and may timeout, but import will continue in the background.
7.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but import will continue in the background.
8.  Review the import results.

**Note:**  If the business database is not called `Appian`, a warning will occur when inspecting/importing the data stores. After the import is complete, open each data store object and update the **Data Source** to fix this.

## Step 5: Run Reconciliation and Migration

The final step is to run data reconciliation and migration for the GAM Acquisition Central integration.

**Caution:**  Before running data reconciliation and migration, make sure vendors have values for all required fields and there are no duplicate entries. This will ensure you avoid any errors when the process runs.

To run this process:

1.  Navigate to the **Contract Writing Vendor Data Reconciliation and Migration** site.
2.  Click **START** to run the process.
3.  Upon successful completion, CW 2.5 is ready to use.

See [GAM Acquisition Central Integration Setup](GAM-acquisition-central-setup.html) to finish setting up the integration.

### Troubleshooting tips

If you encounter errors while running the reconciliation and migration process, you will need check the process instance, fix any issues, and re-run the process.

#### Common errors

The following table outlines the two most common types of errors you might encounter and what they mean.

| Error Type | Message | Description |
| --- | --- | --- |
| Data error | "There are some incorrect values passed to the vendor data. Please correct them and try again." |
Consult the process instance to determine the cause. After you've fixed all issues, re-run the process. Common reasons for this error are missing values in required fields or duplicate entries.

 |
| Authentication failure | "Authentication failed. Please contact your system administrator or try again later." |

**Reason 1:** When the user performing the action does not have the required access to run the process for reconciliation or migration.

**Reason 2:** An incorrect API key is configured in the connected system object `AS GCW CS GAM Suite Management`.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...