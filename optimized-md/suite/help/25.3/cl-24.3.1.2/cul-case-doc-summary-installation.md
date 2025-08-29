---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-case-doc-summary-installation.html
original_path: cl-24.3.1.2/cul-case-doc-summary-installation.html
version: "25.3"
title: "Installing Case Document Summary Module"
page_id: "cl-24.3.1.2/cul-case-doc-summary-installation"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Case Document Summary Module

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

The [Case Document Summary](cul-case-doc-summary-overview.html) add-on module ships as a separate extension supported on the CU Life Workbench. Once installation and setup are complete, this add-on module uses AI to generate a summary of each PDF document that is uploaded to a case, allowing your underwriting team to quickly find the context they need without having to read the entire document top to bottom.

This guide outlines the steps for downloading and installing the Case Document Summary add-on module, including:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Creating database objects](#step-2-creating-database-objects).
3.  [Importing the application](#step-3-importing-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

This section details the minimum requirements your system must meet to run the Case Document Summary add-on module.

-   Appian version 24.3 or greater.
-   A supported version of [business data source](../System_Requirements.html#databases) as a business data source.

    **Note:**  Instructions below are tailored for MariaDB and Oracle databases. For use with other databases, the SQL scripts used in [Step 2](#step-2-creating-database-objects) must be modified.

-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported CU Life Workbench Base application version 1.2 or higher, which includes the following application containers:
    -   `Insurance Life Underwriting (ISL)`

See [Verify Appian version and database type](installing-cu-life.html#verify-the-appian-version-and-database-type) to verify the Appian platform version and the CU Life Workbench Base application version.

## Step 1: Downloading the software package

The first step in installing the Case Document Summary add-on module is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `01.ConnectedLifeUnderwritingAddOnCaseDocumentSummaryv1.0.0.sql`
-   `ConnectedLifeUnderwritingAddOnCaseDocumentSummaryv1.0.0.zip`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **CU Life Workbench**.
4.  Under **Downloads**, click **CU Life Workbench** and agree to the License Agreement.
5.  Click **Case Document Summary** to download the ZIP file.
6.  Unzip `ConnectedLifeUnderwritingAddOnCaseDocumentSummaryv1.0.0 - Forum.zip` to access the installation files.

## Step 2: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of the Demo Data add-on module in your MariaDB business database, you need to run the `01.ConnectedLifeUnderwritingAddOnCaseDocumentSummaryv1.0.0.sql` DDL script downloaded in [Step 1](#step-1-downloading-the-software-package).

## Step 3: Importing the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedLifeUnderwritingAddOnCaseDocumentSummaryv1.0.0.zip` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.
7.  Review the import results to verify the following `ISL Add-On: Case Document Summary (ISL_DOC_AI)` application container was imported.

## Next steps

Now that you have installed the Case Document Summary add-on module, follow the steps in [Setting Up Case Document Summary](cul-case-doc-summary-setup.html) to start using this functionality with CU Life Workbench.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...