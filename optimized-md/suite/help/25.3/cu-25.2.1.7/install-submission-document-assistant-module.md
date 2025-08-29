---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/install-submission-document-assistant-module.html
original_path: cu-25.2.1.7/install-submission-document-assistant-module.html
version: "25.3"
title: "Installing AI Submission Document Assistant Module"
page_id: "cu-25.2.1.7/install-submission-document-assistant-module"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing AI Submission Document Assistant Module

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

The [AI Submission Document Assistant](cu-submission-document-assistant-module-overview.html) module ships as a separate extension supported on the Connected Underwriting (CU) P&C solution. Once installation and setup are complete, this module uses AI to generate a summary of each PDF document that is uploaded to a submission, allowing your underwriting team to quickly find the context they need without having to read the entire document top to bottom. Additionally, this modules allows your underwriting team to engage with an AI-powered chatbot, asking it questions about a submission document within the context of the submission record.

This guide outlines the steps for downloading and installing the AI Submission Document Assistant module before incorporating it with your CU P&C Base application. The steps include:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Creating database objects](#step-2-creating-database-objects).
3.  [Importing the application](#step-3-importing-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

This section details the minimum requirements your system must meet to run the AI Submission Document Assistant module.

-   Appian version 25.2 or greater.
-   A supported version of [business data source](../System_Requirements.html#databases) as a business data source.

    **Note:**  Instructions below are tailored for MariaDB and Oracle databases. For use with other databases, the SQL scripts used in [Step 2](#step-2-creating-database-objects) must be modified.

-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Underwriting P&C Base application version 1.7 or higher, which includes the following application container:
    -   `Insurance Underwriting`

## Step 1: Downloading the software package

The first step in installing the AI Submission Document Assistant module is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `ConnectedUnderwritingAddOnSubmissionDocumentAiv1.0.0.sql`
-   `ConnectedUnderwritingAddOnSubmissionDocumentAiv1.0.0.zip`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **CU P&C**.
4.  Under **Downloads**, click **CU P&C** and agree to the **License Agreement**.
5.  Click **AI Submission Document Assistant** to download the ZIP file.
6.  Unzip `ConnectedUnderwritingAddOnSubmissionDocumentAiv1.0.0 - Forum.zip` to access the installation files.

## Step 2: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of the AI Submission Document Assistant module in your MariaDB business database, you need to run the `ConnectedUnderwritingAddOnSubmissionDocumentAiv1.0.0.sql` DDL script downloaded in [Step 1](#step-1-downloading-the-software-package).

## Step 3: Importing the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedUnderwritingAddOnSubmissionDocumentAiv1.0.0.zip` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.

    -   **Note**: The import may time out due to the file size. If this occurs, the import will continue in the background.
7.  Review the import results to verify the following `ISU Add-on: Submission Document AI` application container was imported.

## Next steps

Now that you have installed the AI Submission Document Assistant module, follow the steps in [Setting Up AI Submission Document Assistant](setup-submission-document-assistant-module.html) to start using this functionality with your CU P&C solution.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...