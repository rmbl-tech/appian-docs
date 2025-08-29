---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-case-record-chat-install.html
original_path: cl-24.3.1.2/cul-case-record-chat-install.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Case Record Chat

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The [Case Record Chat](cul-case-record-chat-module_overview.html) add-on ships as a separate module supported on the Connected Underwriting (CU) Life Workbench. Once installation and setup are complete, this module allows underwriters to quickly obtain additional case information by asking an AI chatbot questions about the case within the context of the case record.

This guide outlines the steps for downloading and installing the Case Record Chat add-on module to use with your CU Life Workbench Base application. The steps include:

1.  [Download the software package](#step-1-download-the-software-package).
2.  [Create database objects](#step-2-create-database-objects).
3.  [Import the application](#step-3-import-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

This section details the minimum requirements your system must meet to run the Case Record Chat add-on module.

-   Appian version 24.3 or greater.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported CU Life Workbench Base application version 1.2 or higher, which includes the following application containers:
    -   `Insurance Life Underwriting (ISL)`

## Step 1: Download the software package

The first step in installing the Case Record Chat add-on is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `01.ConnectedUnderwritingAddOncaseRecordAiChatv1.0.0.sql`
-   `ConnectedUnderwritingAddOncaseRecordAiChatv1.0.0.zip`

To download the software package:

1.  In [My Appian](https://forum.appian.com/suite/sites/myappian/page/support), navigate to the **Support** tab.
2.  Click **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **Connected Underwriting Life Workbench**.
4.  Under **Downloads**, click **Case Record Chat** and agree to the License Agreement.
5.  Click **Case Record Chat** to download the ZIP file.
6.  Unzip `ConnectedUnderwritingAddOnCaseRecordAiChatv1.0.0 - Forum` to access the installation files.

## Step 2: Create database objects

To create the structure for the database tables, views, and other objects that are a part of the Case Record Chat add-on in your MariaDB business database, you need to run the `01.ConnectedUnderwritingAddOnCaseRecordAiChatv1.0.0.sql` DDL script downloaded in [Step 1](#step-1-download-the-software-package).

## Step 3: Import the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedUnderwritingAddOnCaseRecordAiChatv1.0.0.zip` file that was downloaded in [Step 1](#step-1-download-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.
7.  Review the import results.

## Next steps

Now that you have installed the Case Record Chat add-on, follow the steps in [Setting Up Case Record Chat](cul-case-record-chat-setup.html) to start using this functionality with CU Life Workbench.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...