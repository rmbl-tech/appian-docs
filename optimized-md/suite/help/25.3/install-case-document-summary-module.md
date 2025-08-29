---
source_url: https://docs.appian.com/suite/help/25.3/install-case-document-summary-module.html
original_path: install-case-document-summary-module.html
version: "25.3"
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

## Introduction

The [Case Document Summary](cms-case-document-summary-overview.html) module ships as a separate module supported on Case Management Studio. Once installation and setup are complete, this module uses AI to generate a summary of each PDF document that is uploaded to a case, allowing case workers to quickly scan a few bullet points without having to read the entire document top to bottom.

This guide outlines the steps for downloading and installing the Case Document Summary module before incorporating it with your Appian Case Management Studio Base application. The steps include:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Creating database objects](#step-2-creating-database-objects).
3.  [Importing the application](#step-3-importing-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

This section details the minimum requirements your system must meet to run the Case Document Summary module.

-   Appian version 25.2 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](System_Requirements.html#databases) as a business data source.
-   A supported [web browser](System_Requirements.html#web-browsers).
-   Imported Case Management Studio Base application version 2.0 or higher, which includes the following application containers:
    -   `CMGT Case Management Studio Base (CMGT)`

    -   `CMGT Control Panel Generated Objects (CMGT)`

## Step 1: Downloading the software package

The first step in installing the Case Document Summary module is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `01.CaseDocumentSummaryv2.0.0.sql`
-   `CaseDocumentSummaryv2.0.0.zip`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **Case Management Studio 2.0**.
4.  Under **Downloads**, click **Case Document Summary** and agree to the License Agreement.
5.  Click **Case Document Summary** to download the ZIP file.
6.  Unzip `CaseDocumentSummaryv2.0.0.zip` to access the installation files.

## Step 2: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of the Demo Data module in your MariaDB business database, you need to run the `01.CaseDocumentSummaryv2.0.0.sql` DDL script downloaded in [Step 1](#step-1-downloading-the-software-package).

## Step 3: Importing the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `CaseDocumentSummaryv2.0.0.zip` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.
7.  Review the import results to verify the following `CMGT Add On: Case Document Summary (CMGT_DC_AI)` application container was imported.

## Next steps

Now that you have installed the Case Document Summary module, follow the steps in [Setting Up Case Document Summary](setup-case-document-summary.html) to incorporate this module and start using it with your Case Management Studio application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...