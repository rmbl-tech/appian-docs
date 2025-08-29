---
source_url: https://docs.appian.com/suite/help/25.3/cw-25.2.2.5/installing-procurement-analytics-cw.html
original_path: cw-25.2.2.5/installing-procurement-analytics-cw.html
version: "25.3"
title: "Installing Appian Government Procurement Analytics"
page_id: "cw-25.2.2.5/installing-procurement-analytics-cw"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Appian Government Procurement Analytics

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

Installing Procurement Analytics (PA) consists of four main steps:

1.  [Downloading the software package](#step-1-downloading-software-package).
2.  [Deploying PA plug-ins to the Appian environment](#step-2-deploying-plug-ins).
3.  [Creating the database objects in the business data source](#step-3-creating-database-objects).
4.  [Importing the PA application into the Appian environment](#step-4-importing-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to ensure all minimum requirements are met.

## System requirements

-   Appian version 24.3 for PA 1.1.
-   Contract Writing 24.3.2.1
-   A supported version of a [MariaDB or Oracle database](../System_Requirements.html#databases) as a business data source.
    -   **Note**: If you are not using a compatible version of MariaDB or Oracle, you will need to upgrade to a compatible version before installing PA 1.1.
-   A supported [web browser](../System_Requirements.html#web-browsers).

## Step 1: Downloading software package

To install PA, you'll need to download the software package that contains the following files you'll use in the remaining setup steps.

-   **01.ProcurementAnalyticsv1.1.0.sql**: SQL script for creating the database objects needed for the PA application.
-   **ProcurementAnalyticsv1.1.0.zip**: Application package to import into Appian.

To download the software package:

1.  Go to the **SUPPORT** tab on [My Appian](https://forum.appian.com/suite/sites/myappian/page/support).
2.  Click the **DOWNLOADS** tab.
3.  Click **SOLUTIONS**.
4.  Find and open _Procurement Analytics v1.1.0_.
5.  In **Downloads**, click the **Procurement Analytics v1.1** link.
6.  Click **PROCEED** to agree to the License Agreement.
7.  Select your **Relational Database Management System (RDBMS)**, **Data Source**, and **Primary System Locale**, then click **CONTINUE**.
8.  Click the **Procurement Analytics v1.1** to download the ZIP file.
9.  Unzip the downloaded `ProcurementAnalyticsv1.1.0.zip` file to access the software installation files.

## Step 2: Deploying plug-ins

You must deploy the `Appian Solutions` and `Content Tools` plug-ins for the PA solution to work. The steps for deploying plug-ins differ for an Appian Cloud or self-managed environment. Be sure to note which deployment steps you need for your environment.

### Appian Cloud Environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for and click `Appian Solutions`.
6.  Click **DEPLOY**.
7.  Search for and click `Content Tools`.
8.  Click **DEPLOY**.

### Self-Managed Environments

To deploy the plug-ins for a self-managed environment:

-   Find the necessary plug-ins on the [AppMarket](https://community.appian.com/b/appmarket).
-   Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy.

## Step 3: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of the PA application, you will need to run a DDL script in your database.

To create the database objects:

-   In your database, run the `01.ProcurementAnalyticsv1.1.0.sql` DDL file downloaded in [Step 1](#step-1-downloading-software-package).

-   **Note:** This DDL file is optimized for MariaDB or Oracle databases. If you are using a different type of database, the DDL file may need to be modified.

## Step 4: Importing the application

The next step needed is installing the PA application by importing the application files into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `ProcurementAnalyticsv1.1.0.zip` downloaded in [Step 1](#step-1-downloading-software-package).
5.  Click **INSPECT**.
6.  Review the inspection results. If there are no issues, click **IMPORT PACKAGE**.
    -   **NOTE:** The import may time out due to file size, but the import will continue in the background.

**Note:**  If the business database is not called `Appian`, a warning will occur when importing the data stores. To fix this, after the import is complete, open each data store object and update the **Data Source** dropdown list.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...