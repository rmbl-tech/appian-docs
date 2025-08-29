---
source_url: https://docs.appian.com/suite/help/25.3/gms-25.2.1.0/gms-installing-the-solution.html
original_path: gms-25.2.1.0/gms-installing-the-solution.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing the GAM Acquisition Central

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Government Acquisition Management Suite, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Installing the GAM Acquisition Central consists of four main steps:

1.  [Download the software package](#step-1-download-software-package).
2.  [Deploy the GAM Acquisition Central plug-ins to the Appian environment](#step-2-deploy-plug-ins).
3.  [Create the database objects in the business data source](#step-3-create-database-objects).
4.  [Import the GAM Acquisition Central application into the Appian environment](#step-4-import-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

## System requirements

-   Appian running version 25.2 for GAM Acquisition Central 1.0.
-   A supported [business data source](../System_Requirements.html#databases). **Note**: Instructions below are tailored for MariaDB and Oracle databases. For use with other databases, the SQL scripts used in [Step 3](#step-3-create-database-objects) will need to be modified.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   A supported [business data source](../System_Requirements.html#databases).

## Step 1: Download software package

The first step in installing the GAM Acquisition Central is to download the software package that contains the following files. These files will be used in the remaining setup steps.

-   **`01.GamSuiteModulev1.0.0.sql`**: SQL script for creating the database objects needed for the GAM Acquisition Central application.
-   **`GamSuiteModulev1.0.0.zip`**: Application package to import into Appian.
-   **`GamSuiteModulev1.0.0.properties`**: Import customization file for configuring the application package.

To download the software package:

1.  In **MyAppian**, navigate to the [downloads tab](https://forum.appian.com/suite/sites/myappian/page/support) for the application.
2.  At the top of the page, select **DOWNLOADS** and then **SOLUTIONS**.
3.  In the grid, click **GAM Acquisition Central**.
4.  Under Downloads, click **Download GSM v25.2.1.0** and agree to the License Agreement.
5.  Click **Download GSM v25.2.1.0** to download the ZIP file.
6.  Unzip `GamSuiteModulev1.0.0 - Forum.zip` to access the installation files.

## Step 2: Deploy plug-ins

For the GAM Acquisition Central application to work, you must deploy the following plug-ins:

-   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
-   [Appian Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
-   [Rich Text Editor Component](https://community.appian.com/b/appmarket/posts/rich-text-editor)
-   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)

The steps for deploying plug-ins are different depending on if you have an Appian Cloud or a self-managed environment.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console** and click **Plug-ins**.
3.  Click **ADD NEW PLUG-INS**.
4.  Search for plug-in names.
5.  Click **DEPLOY**.

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

-   Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy the latest plug-in files from the App Market.

## Step 3: Create database objects

To create the structure for the database tables, views, and other objects that are part of the GAM Acquisition Central application, you need to run the `01.GamSuiteModulev1.0.0.sql` DDL file that was downloaded in [Step 1](#step-1-download-software-package).

**Note:**  This DDL file is optimized for MariaDB and Oracle. If you are using a different type of database, the DDL file may need to be modified. Included in the scripts is Best in Class (BIC) contracts data that is used in the BIC contract recommendation feature.

## Step 4: Import the application

The final step to install the GAM Acquisition Central is to import the application files into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `GamSuiteModulev1.0.0.zip` file that was downloaded in [Step 1](#step-1-download-software-package).
5.  Select **Include related import customization file** and click **UPLOAD**. Select the `GamSuiteModulev1.0.0.properties` file that was downloaded in [Step 1](#step-1-download-software-package).
6.  Click **INSPECT**.
7.  Review the inspection results. If there are no issues, click **IMPORT PACKAGE**.

    -   **Note:** The import may time out due to file size, but the import will continue in the background.

**Note:**  If the business database is not called `Appian`, a warning will occur when importing the data stores. To fix this, after the import is complete, open each data store object and update the **Data Source** dropdown list.

## Next steps

Now that the application is installed and the database is set up, you will need to take to migrate your existing vendor data, compare the data to ensure accuracy and consistency, and reconcile any differences.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...