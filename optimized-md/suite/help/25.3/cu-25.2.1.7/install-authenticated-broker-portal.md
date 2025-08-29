---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/install-authenticated-broker-portal.html
original_path: cu-25.2.1.7/install-authenticated-broker-portal.html
version: "25.3"
title: "Installing the Authenticated Broker Portal"
page_id: "cu-25.2.1.7/install-authenticated-broker-portal"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing the Authenticated Broker Portal

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

This guide outlines the steps for downloading and installing the [Authenticated Broker Portal](cu-authenticated-broker-portal-overview.html) module and integrating it with your Connected Underwriting P&C 1.5 and higher Base application. The steps include:

-   [Downloading the application](#step-1-downloading-the-software-package)
-   [Creating database objects](#step-2-creating-database-objects)
-   [Importing the application](#step-3-importing-the-application)

### System prerequisites

-   Appian platform running version 24.1 or greater.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Underwriting P&C Base application v1.5 or higher, which includes the following application container:
    -   `Insurance Underwriting`

See [Verify Appian version and database type](installing-the-solution.html#verify-the-appian-version-and-database-type) to verify the Appian platform version and the Connected Underwriting P&C Base application version.

## Step 1: Downloading the software package

The first step in installing the Broker Portal module is to download the software package that contains the following files. These files will be used in the remaining setup steps.

-   `01.ConnectedUnderwritingAddOnBrokerPortalv1.0.0.sql`
-   `ConnectedUnderwritingAddOnBrokerPortalv1.0.0.zip`

To download the software package:

1.  In **MyAppian**, navigate to the **SUPPORT** tab.
2.  Select **DOWNLOADS > SOLUTIONS**.
3.  In the grid, click **Connected Underwriting P&C v1.5**.
4.  Under **Downloads > Add-ons**, click **Connected Underwriting AddOn Broker Portal v1.0.0** and agree to the License Agreement.
5.  Click **Connected Underwriting AddOn Broker Portal v1.0.0** to download the ZIP file.
6.  Unzip `ConnectedUnderwritingAddOnBrokerPortalv1.0.0 - Forum.zip` to access the software installation files.

## Step 2: Creating database objects

You need to run a DDL script in your database to create the structure for the database tables, views, and other objects that are a part of the Connected Underwriting P&C Authenticated Broker Portal module.

To create the database objects:

-   In your MariaDB business database, import and run the `01.ConnectedUnderwritingAddOnBrokerPortalv1.0.0.sql` file downloaded in [Step 1](#step-1-downloading-the-software-package).

## Step 3: Importing the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  In the target environment, log in as the deployment user.
5.  Navigate to the **Appian Designer**.
6.  Click **IMPORT**.
7.  Click **UPLOAD** and choose the application `ConnectedUnderwritingAddOnBrokerPortalv1.0.0.zip` file.
8.  Click **INSPECT** to ensure that there will be no complications on import.

    -   **Note**: The import may time out due to the file size. If this occurs, the import will continue in the background.
9.  Click **IMPORT**.

    -   **Note**: The import may time out due to file size. If this occurs, the import will continue in the background.
10.  Review the import results.

## Next steps

Now that you have installed the Authenticated Broker Portal module, follow the steps in [Setting Up the Authenticated Broker Portal module](cu-authenticated-broker-portal-overview.html) to set up your Authenticated Broker Portal with your Connected Underwriting P&C solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...