---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-install-survey-and-question-module.html
original_path: cc-25.1.1.0/cc-install-survey-and-question-module.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing the Surveys and Questions Add-On Module

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

The [Surveys and Questions](cc-survey-and-question-module-overview.html) add-on module ships as a separate application supported with Connected Claims. Once installation and setup are complete, this add-on module enables admin users to create reusable questions, organize them into surveys, and assign those surveys as tasks within the claims workflows.

This guide outlines the steps for downloading and installing the Surveys and Questions add-on module before incorporating it with your Appian Connected Claims Base application. The steps include:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Creating database objects](#step-2-creating-database-objects).
3.  [Importing the application](#step-3-importing-the-application).

Before starting the installation process, review the [System Prerequisites](#system-prerequisites) to make sure all minimum requirements are met.

### System prerequisites

This section details the minimum requirements your system must meet to run the Surveys and Questions add-on module.

-   Appian version 25.1 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Claims Base application version 1.0 or higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`

## Step 1: Downloading the software package

The first step in installing the Surveys and Questions add-on module is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `01.ConnectedClaimsManagementAddOnSurveyTaskFrameworkv1.0.0.sql`
-   `ConnectedClaimsManagementAddOnSurveyTaskFrameworkv1.0.0.zip`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **Connected Claims**.
4.  Under **Downloads**, click **Survey and Question** and agree to the License Agreement.
5.  Click **Survey and Question** to download the ZIP file.
6.  Unzip `ConnectedClaimsManagementAddOnSurveyTaskFrameworkv1.0.0.zip` to access the installation files.

## Step 2: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of the Surveys and Questions add-on module, you need to import the `01.ConnectedClaimsManagementAddOnSurveyTaskFrameworkv1.0.0.sql` DDL script downloaded in [Step 1](#step-1-downloading-the-software-package).

To import the database script:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Cloud Database**.
3.  Click on the **Appian** database schema or the same database schema which holds the tables related to the Connected Claims Management Base application.
4.  Click **Import** in the top menu.
5.  Click **Choose File** and upload the database script for the application.
6.  Click the **Import** button at the bottom of the screen.

## Step 3: Importing the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedClaimsManagementAddOnSurveyTaskFrameworkv1.0.0.zip` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.
7.  Review the import results to verify the following `CCM Add-On: Surveys and Questions` application container was imported.

## Next steps

Now that you have installed the Surveys and Questions add-on module, follow these [setup steps](cc-setup-survey-and-question-module.html) to start using this functionality with Connected Claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...