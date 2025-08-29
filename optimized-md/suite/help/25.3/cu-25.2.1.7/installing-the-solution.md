---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/installing-the-solution.html
original_path: cu-25.2.1.7/installing-the-solution.html
version: "25.3"
title: "Install Connected Underwriting P&C"
page_id: "cu-25.2.1.7/installing-the-solution"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Install Connected Underwriting P&C

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

The Appian Connected Underwriting P&C solution is an expertly developed application built on the Appian low-code platform. It allows insurance professionals to streamline the underwriting submission process for new and existing businesses.

Installing Connected Underwriting P&C consists of five main steps:

-   [Download the software package](#step-1-download-the-software-package).
-   [Deploy plug-ins](#step-2-deploy-plug-ins).
-   [Create database objects](#step-3-create-database-objects).
-   [Import the application](#step-4-import-the-application).
-   [Configure the email poller](#step-5-configure-the-email-poller).

This guide provides how-to instructions for installing the Connected Underwriting P&C solution. Before starting the installation process, review the [System Requirements](#system-requirements) to ensure all minimum requirements are met and verify [Appian version and database type](#verify-the-appian-version-and-database-type) and the Connected Underwriting P&C Base application version.

### System requirements

This section details the minimum requirements your system must meet to run CU P&C 1.7.

-   Appian platform running version 25.2 or greater.
-   A supported version of MariaDB as a business data source.
    -   **Note**: The instructions below are for MariaDB databases. For use with other databases, the SQL script used in **Step 3** for installing and upgrading will need to be modified.
-   A supported [web browser](../System_Requirements.html#web-browsers).

### Verify the Appian version and database type

Follow the steps in this section to verify the Appian platform and database version and the Connected Underwriting P&C Base application version.

1.  From the navigation menu, click **About Appian**.

    ![cu-installing_cu-about_appian.png](images/cu-installing_cu-about_appian.png)

2.  Under **System Information**, verify the Appian Version is **25.2**.

    ![cu-installing_cu-appian_version.png](images/cu-installing_cu-appian_version.png)

3.  Under **DATA SOURCES**, verify that a supported version of MariaDB is a business data source.
4.  From the navigation menu, go to **Appian Designer**.
5.  Enter `ISU_TXT_APP_VERSION` in the Search field and open the constant to verify the Connected Underwriting P&C Base application version.

    ![cu_verify_version_number.png](images/cu_verify_version_number.png)

#### Technical support

During the installation, if you experience any technical difficulty, log into Appian Community and open a support case. All users of Connected Underwriting P&C can also email Appian Support at support@appian.com.

## Step 1: Download the software package

The first step in installing Connected Underwriting P&C is downloading the software package containing the following files. You will use these files in the remaining setup steps.

-   **01.ConnectedUnderwritingv1.7.0.sql**: SQL script for creating the database objects needed for the Connected Underwriting P&C base application.
-   **ConnectedUnderwritingv1.7.0zip**: Application package to import into Appian.
-   **ConnectedUnderwritingv1.7.0.properties**: Import customization file for configuring the solution package.
-   **ConnectedUnderwritingv1.7.0-AdminConsole.zip**: Admin console package to import into Appian
-   **ConnectedUnderwritingv1.7.0-AdminConsole.properties**: Import customization file for configuring the Admin Console imports.

To download the software package:

1.  In **MyAppian**, navigate to the [Support tab](https://forum.appian.com/suite/sites/myappian/page/support).
2.  Select **DOWNLOADS**, then **SOLUTIONS**.
3.  Search for and click **Connected Underwriting v25.2.1.7.0**.
4.  Under **Downloads**, click **Connected Underwriting Installer** and agree to the License Agreement.
5.  Click **Connected Underwriting Installer** to download the ZIP file.
6.  Unzip **Connected Underwriting v25.2.1.7.0** to access the installation files.

## Step 2: Deploy plug-ins

Connected Underwriting P&C relies on the following plug-ins to be deployed and configured in the target system before you can import the application files.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  From the side menu, select **Plug-ins**.
    1.  Click **ADD PLUG-INS**.
    2.  Search for and click `Appian Solutions`.
        1.  Click **DEPLOY**.
    3.  Repeat the above steps, but search for and click the following:
        -   [Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
        -   [Microsoft PowerBI (App Owns Data)](https://community.appian.com/b/appmarket/posts/microsoft-powerbi-app-owns-data)
        -   [Microsoft PowerBI](https://community.appian.com/b/appmarket/posts/microsoft-powerbi-component-plug-in)
        -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
        -   [MSGraph Email Poller](https://community.appian.com/b/appmarket/posts/msgraph-email-poller)
        -   [PDF Tools](https://community.appian.com/b/appmarket/posts/pdf-tools)
        -   [PDF Utilities](https://community.appian.com/b/appmarket/posts/pdf-utilities)
        -   [Rich Text Editor Component](https://community.appian.com/b/appmarket/posts/rich-text-editor)

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins from the [Appian AppMarket](https://community.appian.com/b/appmarket):
    -   [Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
    -   [Microsoft PowerBI (App Owns Data)](https://community.appian.com/b/appmarket/posts/microsoft-powerbi-app-owns-data)
    -   [Microsoft PowerBI](https://community.appian.com/b/appmarket/posts/microsoft-powerbi-component-plug-in)
    -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
    -   [MSGraph Email Poller](https://community.appian.com/b/appmarket/posts/msgraph-email-poller)
    -   [PDF Tools](https://community.appian.com/b/appmarket/posts/pdf-tools)
    -   [PDF Utilities](https://community.appian.com/b/appmarket/posts/pdf-utilities)
    -   [Rich Text Editor Component](https://community.appian.com/b/appmarket/posts/rich-text-editor)
2.  Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy the plug-ins listed above.

## Step 3: Create database objects

You must run a DDL script in your database to create the structure for the tables, views, and other objects in the Connected Underwriting P&C base application.

To create the database objects:

-   In your MariaDB business database, import and run the `01.ConnectedUnderwritingv1.7.0.sql` DDL file downloaded in [Step 1](#step-1-download-the-software-package).

## Step 4: Import the application

Next, import the application files into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
    1.  Click **UPLOAD** and choose the **ConnectedUnderwritingv1.7.0.zip** file that was downloaded in [Step 1](#step-1-download-the-software-package).
    2.  Select **Include related import customization file** and click **UPLOAD**. Select the **ConnectedUnderwritingv1.7.0.properties** file downloaded in [Step 1](#step-1-download-the-software-package).
        -   **Note**: If you have credentials for any integrations, you may include them in the properties file.
    3.  Click **INSPECT** To ensure that there will be no complications on import.
        -   **Note**: The inspection could take several minutes and may time out. If this occurs, the import will continue in the background.
    4.  Click **IMPORT**.
        -   **Note**: The import may time out due to the file size. If this occurs, the import will continue in the background.
4.  Review the import results.

**Note:**  If the business database is not called **Appian**, a warning will occur when inspecting/importing the data stores. To fix this, open each data store object and update the **Data Source** after the import.

## Step 5: Configure the email poller

**Note:**  The email poller pulls files and emails directly from your Outlook inbox. It is important to ensure that best security practices, such as virus scanning, are correctly configured in Outlook before installing the plugin in your environment.

After following the setup steps to create an Outlook inbox and Azure application account, you must provide Appian with these credentials to allow the poller to run.

The Connected Underwriting P&C base application comes with Admin Console configs to allow for easy entry of these credentials. To fill them out, first import the Admin Console .zip file downloaded in **[step 1](#step-1-download-the-software-package)**:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Admin Console**.
3.  Click **IMPORT > UPLOAD** and choose the **ConnectedUnderwritingv1.7.0.AdminConsole.zip** file that was downloaded in [Step 1](#step-1-download-the-software-package).
    1.  Select **Include related import customization file** and click **UPLOAD**.
    2.  Select the **ConnectedUnderwritingv1.7.0.AdminConsole.properties** file that was downloaded in [Step 1](#step-1-download-the-software-package).
        -   **Note**: Poller credentials can be provided directly in the properties file or via the manual steps following this step. In either case, do not modify the default values for `customMailPollerTableName` and `customMailPollerDocTableName` unless you intend to modify the Appian Poller table names (not recommended).
    3.  Click **INSPECT** to ensure that there will be no complications on import.
    4.  Click **IMPORT** and review the import results and ensure there are no errors
4.  In the **Admin Console**, navigate to **Third-Party Credentials** and verify a new item labeled `isu-mail-poller-msgraph` exists.
    1.  Enter `isu-mail-poller-msgraph` and provide the **Azure secret**, **tenet**, and **applicationID** configured when enabling a polling inbox.
        -   **Note**: Do not modify `customMailPollerTableName` and `customMailPollerDocTableName` unless you intend to modify the Appian Poller table names, which is not recommended.
5.  Click **SAVE**.
6.  Once the Admin Console configurations are complete, use **Global Search** to find and open `ISU_EMAIL_POLLER_CONF_TEXT_MAILBOX`. Update this constant to match the full email address that will be polled (e.g., test@microsoft.com).
7.  Finally, use **Quick Search** to open the constant `ISU_EMAIL_POLLER_AND_PROCESSOR_ENUM_BOOL_RUN_EMAIL_POLL_AND_PROCESSOR_PM` and set it to `True`, if is not set already. Use this constant when you want to turn poller operations _on_ or _off_.

See [Configure the email poller](setting-up-the-solution.html#step-3-configure-the-email-poller) for more information.

### Next steps

Now that the solution is installed and the database is set up, you will want to set up and configure it before you begin using it. [How to Configure Connected Underwriting P&C](setting-up-the-solution.html) outlines the steps you will need to take to modify the solution to work with your organization's requirements.

Additional specifications, such as branding and timezone, can be set in the [Appian Admin Console](../Appian_Administration_Console.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...