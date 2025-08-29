---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/install-insuremo-excel-rater-module.html
original_path: cu-25.2.1.7/install-insuremo-excel-rater-module.html
version: "25.3"
title: "Installing InsureMO Excel Rater Module"
page_id: "cu-25.2.1.7/install-insuremo-excel-rater-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing InsureMO Excel Rater Module

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

With the InsureMO Excel Rater module, your underwriting team can quickly process new submissions and deliver timely rate updates for commercial properties. This module integration solves the problem most underwriting teams face of an inefficient and slow quoting process, impacting their ability to deliver timely rate updates and process new submissions. The InsureMO Excel Rater module enables your team to call rating models via InsureMO's Excel-to-API rating engine, request premium calculations and recalculations based on real-time rating logic, then display the calculated premium directly on the Submission in your CU P&C solution.

This guide outlines the steps for downloading and installing the InsureMO Excel Rater module before incorporating it with your CU P&C Base application. These steps include:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Creating database objects](#step-2-creating-database-objects).
3.  [Importing the application](#step-3-importing-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

This section details the minimum requirements your system must meet to run the InsureMO Excel Rater module.

-   Appian version 25.2 or greater.
-   A supported version of [business data source](../System_Requirements.html#databases) as a business data source.

    **Note:**  Instructions below are tailored for MariaDB and Oracle databases. For use with other databases, the SQL scripts used in [Step 2](#step-2-creating-database-objects) must be modified.

-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Underwriting P&C Base application version 1.7 or higher, which includes the following application container:
    -   `Insurance Underwriting`

## Step 1: Downloading the software package

The first step in installing the InsureMO Excel Rater module is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `ConnectedUnderwritingAddOnInsuremoExcelRaterv1.0.0.sql`
-   `ConnectedUnderwritingAddOnInsuremoExcelRaterv1.0.0.zip`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **CU P&C**.
4.  Under **Downloads**, click **CU P&C** and agree to the **License Agreement**.
5.  Click **InsureMO Excel Rater** to download the ZIP file.
6.  Unzip `ConnectedUnderwritingAddOnInsuremoExcelRaterv1.0.0.zip` to access the installation files.

## Step 2: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of the InsureMO Excel Rater module in your MariaDB business database, you need to run the `ConnectedUnderwritingAddOnInsuremoExcelRaterv1.0.0.sql` database script downloaded in [Step 1](#step-1-downloading-the-software-package).

## Step 3: Importing the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedUnderwritingAddOnInsuremoExcelRaterv1.0.0.zip` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.

    -   **Note**: The import may time out due to the file size. If this occurs, the import will continue in the background.
7.  Review the import results to verify the following `ISU Add-On: Insuremo Excel Rater` application container was imported.

## Next steps

Now that you have installed the InsureMO Excel Rater module, follow the steps in [Setting Up InsureMO Excel Rater](setup-insuremo-excel-rater-module.html) to start using this functionality with your CU P&C solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...