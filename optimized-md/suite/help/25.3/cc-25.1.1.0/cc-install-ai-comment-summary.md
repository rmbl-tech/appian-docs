---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-install-ai-comment-summary.html
original_path: cc-25.1.1.0/cc-install-ai-comment-summary.html
version: "25.3"
title: "Installing AI Claim Comment Summary Add-On Module"
page_id: "cc-25.1.1.0/cc-install-ai-comment-summary"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing AI Claim Comment Summary Add-On Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Introduction

The [AI Claim Comment Summary](cc-ai-comment-summary-module_overview.html)add-on module ships as a separate application supported with Connected Claims. Once installation and setup are complete, this module allows your case workers to analyze and process case comments then generate a single summary of all the comments for the case utilizing private AI.

This guide outlines the steps for downloading and installing the AI Claim Comment Summary add-on module before incorporating it with your Appian Connected Claims Base application. The steps include:

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

The first step in installing the AI Claim Comment Summary add -on module is to download the software package that contains the following files, which you will use in the remaining setup steps.

-   `01.ConnectedClaimsManagementAddOnCommentsSummaryAiv1.0.0.sql`
-   `ConnectedClaimsManagementAddOnCommentsSummaryAiv1.0.0.zip`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  Search for and open **Appian Connected Claims**.
4.  Under **Downloads**, click **Appian Connected Claims** and agree to the License Agreement.
5.  Click **CCM Add On: Comments Summary AI v1.0.0** to download the `ConnectedClaimsManagementAddOnCommentsSummaryAiv1.0.0.zip` file.
6.  Unzip `ConnectedClaimsManagementAddOnCommentsSummaryAiv1.0.0.zip` to access the installation files.

## Step 2: Importing the application

to create the structure for the database tables, views, and other objects that are a part of the AI Claim Comment Summary add-on module in your MariaDB business database. Then import the application files into the target environment.

To import the database script:

1.  In the target environment, log in as the deployment user
2.  Navigate to the **Cloud Database**.
3.  Click on the **Appian** database schema or, otherwise, the same database schema which holds the tables related to the **Connected Claims Base** application.
4.  Click **Import** in the top menu.
5.  Click **Choose File** and upload the `01.ConnectedClaimsManagementAddOnCommentsSummaryAiv1.0.0.sql` DDL script for the application.
6.  Click the **Import** button at the bottom of the screen.

To import the application files:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**, then **UPLOAD** to choose the application zip file.
4.  Click **INSPECT** to ensure that there will be no complications on import.
5.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but the import will continue in the background.
6.  Review the import results and verify the `CCM Add On: Comments Summary AI (CCM_CSAI)` application container was imported.

## Next steps

Now that you have installed the AI Claim Comment Summary add-on module, follow the steps in [Setting Up AI Claim Comment Summary](cc-setup-ai-claim-comments-summary.html) to start using this functionality with Connected Claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...