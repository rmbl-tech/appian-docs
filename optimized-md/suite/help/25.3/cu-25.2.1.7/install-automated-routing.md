---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/install-automated-routing.html
original_path: cu-25.2.1.7/install-automated-routing.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Install Automated Routing

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

The [Automated Routing](cu-automated-routing-overview.html) module ships as a separate module supported on Connected Underwriting (CU) P&C. Once installation and setup are complete, this module allows underwriting managers to create rules that automate submissions assignments and routing to teams based on the submission type.

This guide outlines the steps for downloading and installing the Automated Routing module to use with your Connected Underwriting P&C Base application. The steps include:

1.  [Downloading the software package](#step-1-download-the-software-package).
2.  [Creating database objects](#step-2-create-database-objects).
3.  [Importing the application](#step-3-import-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

This section details the minimum requirements your system must meet to run the Automated Routing module.

-   Appian version 24.2 or greater.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Underwriting P&C Base application version 1.6 or higher, which includes the following application container:
    -   `Insurance Underwriting`

## Step 1: Download the software package

The first step in installing the Automated Routing module is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `01.ConnectedUnderwritingAddOnAutoAssignmentv1.0.0.sql`
-   `ConnectedUnderwritingAddOnAutoAssignmentv1.0.0.zip`

To download the software package:

1.  In [My Appian](https://forum.appian.com/suite/sites/myappian/page/support), navigate to the **Support** tab.
2.  Click **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **Connected Underwriting P&C**.
4.  Under **Downloads**, click **Automated Routing** and agree to the License Agreement.
5.  Click **Automated Routing** to download the ZIP file.
6.  Unzip `ConnectedUnderwritingAddOnAutoAssignmentv1.0.0.zip` to access the installation files.

## Step 2: Create database objects

To create the structure for the database tables, views, and other objects that are a part of the Automated Routing module in your MariaDB business database, you need to run the `01.ConnectedUnderwritingAddOnAutoAssignmentv1.0.0.sql` DDL script downloaded in [Step 1](#step-1-download-the-software-package).

## Step 3: Import the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedUnderwritingAddOnAutoAssignmentv1.0.0.zip` file that was downloaded in [Step 1](#step-1-download-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.
7.  Review the import results.

## Next steps

Now that you have installed the Automated Routing module, follow the steps in [Setting Up Automated Routing](setting-up-automated-routing.html) to start using this functionality with Connected Underwriting P&C.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...