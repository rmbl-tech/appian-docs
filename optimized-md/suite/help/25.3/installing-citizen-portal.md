---
source_url: https://docs.appian.com/suite/help/25.3/installing-citizen-portal.html
original_path: installing-citizen-portal.html
version: "25.3"
title: "Installing the Public Portal Module"
page_id: "installing-citizen-portal"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing the Public Portal Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

This guide outlines the steps for downloading and installing the Public Portal module before incorporating it with Case Management Studio. The steps include:

-   [Downloading the software package](#step-1-download-the-software-package).
-   [Creating database objects](#step-2-create-database-objects).
-   [Importing the application](#step-3-import-the-application).

### System requirements

This section details the minimum requirements your system must meet to run the Public Portal module.

-   Appian platform running version 25.2 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](System_Requirements.html#databases) as a business data source.
-   A supported [web browser](System_Requirements.html#web-browsers).
-   Imported **Case Management Studio Base** application version 2.0 or higher, which includes the following application containers:
    -   `CMGT Case Management Studio Base (CMGT)`
    -   `CMGT Control Panel Generated Objects (CMGT)`

## Step 1: Download the software package

The first step in installing the Public Portal module is to download the software package that contains the following files. These files will be used in the remaining setup steps.

-   `01.PortalModulev2.0.0.sql`
-   `PortalModulev2.0.0.zip`
-   `PortalModulev2.0.0.properties`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** and then **SOLUTIONS**.
3.  In the grid, click **Case Management Studio 2.0**.
4.  Under **Downloads**, click **Public Portal** and agree to the License Agreement.
5.  Click **Public Portal** to download the ZIP file.
6.  Unzip `PortalModulev2.0.0.zip` to access the installation files.

## Step 2: Create database objects

To create the database tables that are a part of the Public Portal module, you need to run the `01.PortalModulev2.0.0.sql` file downloaded in [Step 1](#step-1-download-the-software-package).

## Step 3: Import the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `PortalModulev2.0.0.zip` file downloaded in [Step 1](#step-1-download-the-software-package).
5.  Click the **Include related import customization file** checkbox and click **UPLOAD**. Select the `PortalModulev2.0.0.properties` file downloaded in [Step 1](#step-1-download-the-software-package).
6.  Click **INSPECT** to ensure that there will be no complications on import.
    -   **Note**: Inspection could take several minutes and may time out, but import will continue in the background.
7.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but the import will continue in the background.
8.  Review the import results to verify the following `CMGT Portal Module (CMGT)` application container was imported.

## Next steps

Now that you have installed the Public Portal module, follow the steps in [Setting Up the Public Portal module](setting-up-citizen-portal.html) to set up your Public Portal with your Case Management Studio application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...