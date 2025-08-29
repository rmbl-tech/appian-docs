---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-installing-the-solution.html
original_path: cc-25.1.1.0/cc-installing-the-solution.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Connected Claims

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

Developed on the Appian low-code platform, Connected Claims is a pre-built application with a modular design that includes both in-app and extendable design frameworks to ensure that it meets your needs. The solution ships with pre-built functionality, including a claims workspace, claims, entity, task records, configurable workflows, conditional tasking, workflow visualization, auditing and reporting, and so much more. In addition, you can quickly expand the functionality of your Connected Claims solution with modules that include pre-built features that are easily configurable to meet your workflow needs.

It allows insurance professionals to streamline the claims management process from end-to-end for new and existing lines of business.

Installing Connected Claims consists of five main steps:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Deploying the application plug-ins](#step-2-deploying-plug-ins).
3.  [Creating the database objects](#step-3-creating-database-objects).
4.  [Importing the application](#step-4-importing-the-application).
5.  [Setting up groups](#step-5-setting-up-groups).

After completing these installation steps, see [extending your Connected Claims with modules](#step-6-extending-connected-claims) to learn how to incorporate one or more modules to extend your solution’s capabilities.

Before proceeding with the installation steps outlined in this guide, review the [System Requirements](#system-requirements) to ensure your system environment meets all minimum requirements. In addition, verify your Appian version and database type.

### System requirements

This section details the minimum requirements your system must meet to run the Connected Claims.

-   Appian platform running version 25.1 or higher.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script used in [Step 3](#step-3-creating-database-objects) will need to be modified.
-   A supported [web browser](../System_Requirements.html#web-browsers).

### Verify the Appian version and database type

Follow the steps in this section to verify the Appian platform version and database, and the CU Life Workbench Base application version.

1.  From the **Navigation** menu, click **About Appian**.
2.  Under **System Information**, verify the Appian Version is **25.1**.

    ![cc_about_appian_dialog](images/cc_about_appian_dialog.png)

3.  Under **DATA SOURCES**, verify that a supported version of MariaDB is a business data source.

### Enable custom properties

Before installing Connected Claims, self-managed customers need to enable two custom properties in the [custom properties file](../Custom_Configurations.html#custom-properties) before restarting the app server.

To do this:

1.  Open the **custom properties** file located at `<APPIAN_HOME>/conf/`.
2.  Set the value of the `appian.feature.solutions-api.enabled` property to `true`.

    -   For example: `appian.feature.solutions-api.enabled=true`.
3.  Set the value of the `appian.feature.solutions-api.acctudio.enabled` property to `true`.

    -   For example: `appian.feature.solutions-api.acctudio.enabled=true`.

Once you've enabled these properties, restart the app server. For instructions on restarting the app server, see [Starting and Stopping Appian](../Starting_and_Stopping_Appian.html). While the server is restarting, go ahead and start your installation process.

## Step 1: Downloading the software package

The first step in installing Connected Claims is to download the software package. There are two installation options for Connected Claims: the **Connected Claims (Base)** software package or the **ConnectedClaimsManagementIncorpNoLob** software package.

The **Connected Claims (Base)** software package option contains the following files, which will be used in the remaining setup steps:

-   `01.ConnectedClaimsManagementBasev1.0.0.sql`: SQL script for creating the database objects needed for the Appian Connected Claims Base application.
-   `ConnectedClaimsManagementBasev1.0.0.zip`: Application package to import into Appian.
-   `ConnectedClaimsManagementBasev1.0.0.properties`: Import customization file needed for the Base application.

Alternatively, you can download the **Connected Claims Management (Incorp No Lob)** software package option with the following add-on modules pre-incorporated:

-   `ConnectedClaimsManagementAddOnClaimChatAI`
-   `ConnectedClaimsManagementAddOnClaimUploadDocumentApi`
-   `ConnectedClaimsManagementAddOnOnCommentsSummaryAi`
-   `ConnectedClaimsManagementAddOnCreateClaimApi`
-   `ConnectedClaimsManagementAddOnDocumentsSummaryAi`
-   `ConnectedClaimsManagementAddOnSurveyTaskFramework`

This software package contains the following files:

-   `ConnectedClaimsManagementIncorpNoLobv1.0.0.zip`: Application package to import into Appian.
-   `ConnectedClaimsManagementIncorpNoLobv1.0.0.properties`: Import customization file needed for the Base application.
-   SQL script files for creating the database objects needed for the Appian Connected Claims Base application:
    -   `01.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
    -   `02.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
    -   `03.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
    -   `04.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
    -   `05.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
    -   `06.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
    -   `07.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`

To download the software package if the primary locale for your environment is English (US):

1.  In **MyAppian**, navigate to the **[Support tab](https://forum.appian.com/suite/sites/myappian/page/support)**.
2.  Select **DOWNLOADS** and then **SOLUTIONS**.
3.  In the grid, click **Appian Connected Claims**.
4.  Under **Downloads**, click **Connected Claims (Base)** or the **ConnectedClaimsManagementIncorpNoLob** based on your needs and agree to the License Agreement.
5.  Click **Connected Claims** to download the ZIP file.
6.  Unzip ZIP to access the installation files

## Step 2: Deploying plug-ins

The steps for deploying plug-ins differ depending on whether you have an Appian Cloud or a self-managed environment. Before importing the Connected Claims application files, you must deploy and configure the plug-ins required for your environment in the target system.

To download the necessary plug-ins and deploy them to your environments, follow the steps that match your environment setup.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for and click **Appian Solutions**.
6.  Click **DEPLOY**.
7.  Repeat **steps 4-6** for each of the following plug-ins:

    -   `Appian Solutions Component Plugins 1.3.0+`
    -   `Appian Solutions Plugin 1.39.1+`
    -   `Content Tools - 1.1.11+`
    -   `Appian Regular Expression Functions`
    -   `Date and Time Utilities`

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):

    -   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
    -   [Appian Solutions Component Plugins](https://community.appian.com/b/appmarket/posts/appian-solutions-component-plugins)
    -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
    -   [Date and Time Utilities](https://community.appian.com/b/appmarket/posts/date-and-time-utilities)
    -   [Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
2.  Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions above to deploy the plug-ins.

## Step 3: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of Connected Claims, you need to run the DDL scripts in your database that were included in the software package you downloaded in [Step 1](#step-1-downloading-the-software-package). Select [Option 1](#option-1-connected-claims-base-software-package) if you downloaded **Connected Claims (Base)**. Select [Option 2](#option-2-connectedclaimsmanagementincorpnolob-software-package) if you downloaded the **Connected Claims Management (Incorp No Lob)**.

### Option 1: Connected Claims (Base) software package

In your MariaDB business database, import and run the `01.ConnectedClaimsManagementBasev1.0.0.sql` files downloaded in [Step 1](#step-1-downloading-the-software-package) to create the database objects.

### Option 2: ConnectedClaimsManagementIncorpNoLob software package

In your MariaDB business database, import and run the DDL script files downloaded in [Step 1](#step-1-downloading-the-software-package) in sequential order to create the database objects:

-   `01.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
-   `02.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
-   `03.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
-   `04.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
-   `05.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
-   `06.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`
-   `07.ConnectedClaimsManagementIncorpNoLobv1.0.0.sql`

This DDL files are optimized for MariaDB. If you use a different database type, the DDL file may need to be modified.

### Step 4: Importing the application

Next, you need to import Connected Claims into the target environment.

To import it:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `ConnectedClaimsManagementBasev1.0.0` or `ConnectedClaimsManagementIncorpNoLobv1.0.0` application file downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click the **Include related import customization file** checkbox and click **UPLOAD**. Select the `ConnectedClaimsManagementBasev1.0.0.properties` or `ConnectedClaimsManagementIncorpNoLobv1.0.0.properties` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
6.  Click **INSPECT** to ensure that there will be no complications on import.
    -   **Note**: The inspection could take several minutes to complete and may time out. If this occurs, the import will continue in the background.
7.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but the import will continue in the background.
8.  Review the import results to confirm the following Connected Claims application containers were imported:
    -   `Connected Claims Management Base`
    -   `CCM Studio Generated Objects`

### Step 5: Setting up groups

Security in Connected Claims is defined by three main role groups: Claims Adjusters, Claims Examiners, and Claims Supervisors. Functionally, these groups have the same access rights to the Connected Claims application, with the expectation that you may alter group security to meet the needs of specific use cases.

To allow users to access the Connected Claims Workspace, complete the following steps:

1.  In **Appian Designer**, find the **CCM Claim Supervisors**, **CCM Claim Adjusters**, or **CCM Claim Examiners** group. **Note**: Users added to the **CCM Claim Supervisors** group will be granted access to both Connected Claims Workspace and Studio sites.
2.  Click **Add Members**.
3.  In the **Search** field, enter the usernames you want to select and add them to the **Users to Add** field.
4.  After locating all users, click **Add**.

Next, you need to set up business-level groups, which are used for assigning claims and tasks. While the application ships with all three of the above role groups as business groups, the user can further create and define new business groups pursuant to their needs.

To create new business groups, complete the following steps:

1.  From Appian Designer, locate and click the **CCM Business Groups** group.
2.  Click **New Group**.
    -   Enter a name for the new business group (For example, Finance).
    -   Add group members.
    -   Set group **Visibility** to **Public**.
3.  Click **Create**.
4.  Repeat these steps until you create all the necessary business groups.

## Step 6: Extending Connected Claims

Now that you've successfully installed Connected Claims, you can extend its feature capabilities by installing the following modules:

-   [AI Add-On Modules](cc-ai-modules-landing.html)
-   [LOB Supplement Add-On Modules](cc-lob-supplements-modules-landing.html)
-   [Productivity Add-On Modules](cc-productivity-modules-landing.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...