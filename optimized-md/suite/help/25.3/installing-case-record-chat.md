---
source_url: https://docs.appian.com/suite/help/25.3/installing-case-record-chat.html
original_path: installing-case-record-chat.html
version: "25.3"
title: "Install Case Record Chat Module"
page_id: "installing-case-record-chat"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Install Case Record Chat Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Case Record Chat ships as a separate module supported on Case Management Studio. Once incorporated with Case Management Studio, this module places the [Records Chat Component](Records_Chat_Component.html) on the case record summary so caseworkers can ask AI questions about a case.

This guide outlines the steps for downloading and installing the Case Record Chat module to use it with your Appian Case Management Studio Base application. The steps include:

-   [Download the software package](#step-1-download-the-software-package)
-   [Import the application](#step-2-import-the-application)

### System requirements

This section details the minimum requirements your system must meet to run the Case Record Chat module.

-   Appian platform running version 25.2 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported [web browser](System_Requirements.html#web-browsers).
-   Imported **Case Management Studio Base** application version 2.0 and higher, which includes the following application containers:
    -   `CMGT Case Management Studio Base (CMGT)`
    -   `CMGT Control Panel Generated Objects (CMGT)`

## Step 1: Download the software package

The first step in installing the Case Record Chat module is to download the software package that contains the following files. These files will be used in the remaining setup steps.

-   `CaseRecordChatModulev2.0.0.zip`
-   `CaseRecordChatModulev2.0.0.properties`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, click **Appian Case Management Studio 2.0**.
4.  Under **Downloads**, click **Case Record Chat** and agree to the License Agreement.
5.  Click **Case Record Chat v2.0.0** to download the ZIP file.
6.  Unzip `CaseRecordChatModulev2.0.0.zip` to access the installation files.

## Step 2: Import the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `CaseRecordChatModulev2.0.0.zip` file that was downloaded in [Step 1](#step-1-download-the-software-package).
5.  Click the **Include related import customization file** checkbox and click **UPLOAD**. Select the `properties` file that was downloaded in [Step 1](#step-1-download-the-software-package).
6.  Click **INSPECT** to ensure that there will be no complications on import.
    -   **Note**: Inspection could take several minutes and may time out. If this occurs, the import will continue in the background.
7.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size. If this occurs, the import will continue in the background.
8.  Review the import results to verify the following `CMGT Case Record Chat Module (CMGT_RC_AI)` application container was imported.

## Next steps

Now that you have installed the Case Record Chat module, follow the [setup steps](setup-case-record-chat.html) to incorporate this module and start using it with your Case Management Studio application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...