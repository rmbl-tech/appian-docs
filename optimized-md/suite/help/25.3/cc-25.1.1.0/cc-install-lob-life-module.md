---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-install-lob-life-module.html
original_path: cc-25.1.1.0/cc-install-lob-life-module.html
version: "25.3"
title: "Installing LOB Life Add-On Module"
page_id: "cc-25.1.1.0/cc-install-lob-life-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing LOB Life Add-On Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Claims, which must be purchased separately from the Appian base platform. This content was written for Appian 25.1 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The [Life LOB](cc-lob-life-module-overview.html) add-on module ships as a separate self-contained application that can be incorporated with your Connected Claims Base application. Once installation and setup are complete, this module allows your organization to rapidly deploy a line of business-specific records that enable your teams to configure life insurance products in Studio.

This guide outlines the steps for downloading and installing the Life LOB add-on module before incorporating it with your Connected Claims Base application.

These steps include:

-   [Downloading the software package](#step-1-downloading-the-software-package).
-   [Importing the application](#step-2-importing-the-application).

Before starting the installation process, review the [System Prerequisites](#system-prerequisites) to make sure all minimum requirements are met.

### System prerequisites

-   Appian platform running version 25.1 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported **Connected Claims Management Base Application** application version 1.0 and higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`

## Step 1: Downloading the software package

The first step in installing the Life LOB add-on module is to download the software package that contains the following files, which you will use in the remaining setup steps.

-   `01.ConnectedClaimsManagementAddOnCategoryLifev1.0.0.sql`
-   `ConnectedClaimsManagementAddOnCategoryLifev1.0.0.zip`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  Search for and open **Appian Connected Claims**.
4.  Under **Downloads**, click **Appian Connected Claims** and agree to the License Agreement.
5.  Click **CCM Add-On: LOB Life** to download the `ConnectedClaimsManagementAddOnCategoryLifev1.0.0.zip` file.
6.  Unzip `ConnectedClaimsManagementAddOnCategoryLifev1.0.0.zip` to access the installation files.

## Step 2: Importing the application

Next, you need to import the application files into the target environment.

To import the application files:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**, then **UPLOAD** to choose the application zip file.
4.  Click **INSPECT** to ensure that there will be no complications on import.
5.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but the import will continue in the background.
6.  Review the import results and verify the application container was imported.

## Next steps

Now that you have installed the Life LOB add-on module, follow the steps in [Setting Up the Life LOB](cc-setup-lob-life-module.html) to start using this functionality with Connected Claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...