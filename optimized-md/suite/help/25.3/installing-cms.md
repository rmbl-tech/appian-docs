---
source_url: https://docs.appian.com/suite/help/25.3/installing-cms.html
original_path: installing-cms.html
version: "25.3"
title: "Install Case Management Studio for Self-Managed Customers"
page_id: "installing-cms"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Install Case Management Studio for Self-Managed Customers

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

Case Management Studio is a suite of applications with pre-built functionality, including a case workspace, case, entity, task records, configurable workflows, conditional tasking, workflow visualization, auditing, and so much more.

Case Management Studio is built on the Appian low-code platform with a modular design, with both in-app and extendable design frameworks to ensure that it meets your needs. Case Management Studio ships with modules that include pre-built features that are easily configurable and allow you to quickly expand your app functionality.

Case Management Studio is available out-of-the-box with the Appian platform for Appian Cloud and self-managed customers. Case Management Studio comes pre-installed in new cloud sites with English (US) as the primary locale, and can be installed by Support upon request in existing cloud sites for first time installs. For Appian Cloud customers with Case Management Studio already installed, the steps on this page are not needed.

For self-managed customers, Case Management Studio must be installed using the following steps:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Deploying the application plug-ins](#step-2-deploying-plug-ins).
3.  [Creating the database objects](#step-3-creating-database-objects).
4.  [Importing the application](#step-4-importing-the-application).
5.  [Setting up groups](#step-5-setting-up-groups).

Before proceeding with the installation steps outlined in this guide, review the [System Requirements](#system-requirements) to ensure your system environment meets all minimum requirements.

## Before you begin

Before you being downloading and installing Case Management Studio, be sure to check the system requirements and verify your Appian version and database type. Self-managed customers also need to enable two custom properties and restart the app server.

### System requirements

This section details the minimum requirements your system must meet to run Case Management Studio.

-   Appian platform running version 25.2 or higher.
-   A supported version of [MariaDB](System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script used in [Step 3](#step-3-creating-database-objects) will need to be modified.
-   A supported [web browser](System_Requirements.html#web-browsers).

### Verify the Appian version and database type

Click **About Appian** from the navigation bar to check the platform version and database.

![screenshot showing how to get to the About Appian page](images/cm_platform_version.png)

![screenshot of the About Appian dialog](images/cp-install-about-appian.png)

### Enable custom properties

Before installing Case Management Studio, self-managed customers need to enable two custom properties in the [custom properties file](Custom_Configurations.html#custom-properties) before restarting the app server.

To do this:

1.  Open the **custom properties** file located at `<APPIAN_HOME>/conf/`.
2.  Set the value of the `appian.feature.ae.studio.control-panel` property to `true`.
    -   For example: `appian.feature.ae.studio.control-panel=true`.
3.  Set the value of the `appian.feature.ae.studio.control-panel.record-hierarchy-metadata` property to `true`.
    -   For example: `appian.feature.ae.studio.control-panel.record-hierarchy-metadata=true`.

Once you've enabled these properties, restart the app server. For instructions on restarting the app server, see [Starting and Stopping Appian](Starting_and_Stopping_Appian.html). While the server is restarting, go ahead and start your installation process.

### Step 1: Downloading the software package

To download the software package if the primary locale for your environment is not English (US):

1.  Open [MyAppian](https://forum.appian.com/suite/sites/myappian).
2.  Click **SUPPORT**.
3.  Click **DOWNLOADS**.
4.  Click **SOLUTIONS**.
5.  Under **Available Solutions**, select **Case Management Studio 2.0**.
6.  Under **Downloads**, click **Case Management Studio (Base)** and agree to the License Agreement.
7.  Select the appropriate primary locale for your environment.
8.  Click **Case Management Studio (Base)** to download and finish.
9.  Unzip the studio zip file to access the installation files.
10.  Continue on with [step 2](#step-2-deploying-plug-ins).

The first step in installing Case Management Studio is to download the **Case Management Studio (Base)** software package that contains the following files. These files will be used in the remaining setup steps.

-   `01.CaseManagementStudiov2.0.0sql`: SQL script for creating the database objects needed for the Appian Case Management Base application.
-   `CaseManagementStudiov2.0.0.zip`: Application package to import into Appian.
-   `CaseManagementStudiov2.0.0.properties`: Import customization file needed to set the nightly sync time.

To download the software package if the primary locale for your environment is English (US):

1.  In **MyAppian**, navigate to the **[Support tab](https://forum.appian.com/suite/sites/myappian/page/support)**.
2.  Select **DOWNLOADS** and then **SOLUTIONS**.
3.  In the grid, click **Appian Case Management Studio**.
4.  Under **Downloads**, click **Case Management Studio (Base)** and agree to the License Agreement.
5.  Click **Case Management Studio (Base)** to download the ZIP file.
6.  Unzip `CaseManagementStudiov2.0.0.zip` to access the installation files.

### Step 2: Deploying plug-ins

The steps for deploying plug-ins differ depending on whether you have an Appian Cloud or a self-managed environment. Before importing the Case Management Studio application files, you must deploy and configure the plug-ins required for your environment in the target system.

To download the necessary plug-ins and deploy them to your environments, follow the steps that match your environment setup.

#### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for and click **Appian Solutions**.
6.  Click **DEPLOY**.
7.  Repeat the above steps for each of the following plug-ins:

    -   `Appian Solutions Component Plugins`
    -   `Appian Solutions Plugin`
    -   `Content Tools`
    -   `Appian Regular Expression Functions`
    -   `Date and Time Utilities`

#### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):
    -   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
    -   [Appian Solutions Component Plugins](https://community.appian.com/b/appmarket/posts/appian-solutions-component-plugins)
    -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
    -   [Date and Time Utilities](https://community.appian.com/b/appmarket/posts/date-and-time-utilities)
    -   [Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
2.  Follow the [Deploying Plug-ins](Appian_Plug-ins.html#deploying-plug-ins) instructions above to deploy the plug-ins.

### Step 3: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of Case Management Studio, you need to run the following DDL scripts in your database.

To create the database objects:

1.  In your MariaDB business database, import and run the following file downloaded in [Step 1](#step-1-downloading-the-software-package):

    -   `01.CaseManagementStudiov2.0.0.sql`

### Step 4: Importing the application

Next, you need to import Case Management Studio into the target environment.

To import it:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `CaseManagementStudiov2.0.0` file downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click the **Include related import customization file** checkbox and click **UPLOAD**. Select the `CaseManagementStudiov2.0.0.properties` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
6.  Click **INSPECT** to ensure that there will be no complications on import.
    -   **Note**: The inspection could take several minutes to complete and may time out. If this occurs, the import will continue in the background.
7.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but the import will continue in the background.
8.  Review the import results to confirm the following Case Management Studio application containers were imported:
    -   `CMGT Case Management Studio Base (CMGT)`
    -   `CMGT Control Panel Generated Objects (CMGT)`

### Step 5: Setting up groups

Security in Case Management Studio is defined by two main role groups: Case Workers and Case Managers. Functionally, these groups have the same access rights to the Workspace site, with the expectation that you may alter group security to meet the needs of specific use cases.

To allow users to access the Case Management Studio Workspace site, complete the following steps:

1.  From Appian Designer, find the **CMGT Case Workers** or **CMGT Case Managers** group.
2.  Click **Add Members**.
3.  In the **Search** field, enter the usernames you want to select and add them to the **Users to Add** field.
4.  After locating all users, click **Add**.

Next, you need to set up business-level groups, which are used for assigning cases and tasks. Because the use case defines these groups, no business groups are shipped with the application.

To create new business groups, complete the following steps:

1.  From Appian Designer, locate and click the **CMGT Business Groups**.
2.  Click **New Group**.
    -   Enter a name for the new business group (For example, Finance).
    -   Add group members.
    -   Set group **Visibility** to **Public**.
3.  Click **Create**.
4.  Repeat these steps until you create all the necessary business groups.

Finally, as an _optional_ step, you can add users to the following security groups with access to the the Control Panel out-of-the-box.

-   CMGT Design Administrators
-   CMGT Case Managers

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...