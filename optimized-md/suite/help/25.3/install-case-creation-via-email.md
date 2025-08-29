---
source_url: https://docs.appian.com/suite/help/25.3/install-case-creation-via-email.html
original_path: install-case-creation-via-email.html
version: "25.3"
title: "Installing Case Creation via Email Module"
page_id: "install-case-creation-via-email"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Case Creation via Email Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  At this time, the Case Creation via Email module is not compatible with Case Management Studio 2.0.

## Introduction

The [Case Creation via Email](cms-case-creation-via-email-overview.html) module ships as a separate module supported on Case Management Studio. Once installation and setup are complete, this module allows the system to ingest emails from a shared email inbox, where those emails can be triaged into cases by a case manager.

This guide outlines the steps for downloading and installing the Case Creation via Email module before incorporating it with your Appian Case Management Studio Base application. The steps include:

1.  [Downloading the software package](#step-1-downloading-the-software-package).
2.  [Deploying the plug-ins](#step-2-deploying-the-plug-ins).
3.  [Creating database objects](#step-3-creating-database-objects).
4.  [Importing the application](#step-4-importing-the-application).

Before starting the installation process, review the [System Requirements](#system-requirements) to make sure all minimum requirements are met.

### System requirements

This section details the minimum requirements your system must meet to run the Case Creation via Email module.

-   Appian version 24.3 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](System_Requirements.html#databases) as a business data source.
-   A supported [web browser](System_Requirements.html#web-browsers).
-   Imported Case Management Studio Base application version 1.6 or higher, which includes the following application containers:
    -   `CMGT Case Management Studio Base (CMGT)`
    -   `CMGT Studio Module (CMGT_WFL)`
    -   `CMGT Studio Generated Objects (CMGT)`

## Step 1: Downloading the software package

The first step in installing the Case Creation via Email module is to download the software package that contains the following files, which you will use in the remaining set-up steps.

-   `01.CaseCreationViaEmailv1.0.0.sql`
-   `CaseCreationViaEmailv1.0.0-AdminConsole.zip`
-   `CaseCreationViaEmailv1.0.0-AdminConsole.properties`
-   `CaseCreationViaEmailv1.0.0.zip`
-   `CaseCreationViaEmailv1.0.0.properties`

Note that both of the Admin Console files will not be used until [Setting Up Case Creation via Email](setup-case-creation-via-email.html).

To download the software package:

1.  In [My Appian](https://forum.appian.com/suite/sites/myappian/page/support), navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, find and click **Case Management Studio**.
4.  Under **Downloads**, click **Case Creation via Email** and agree to the License Agreement.
5.  Click **Case Creation via Email** to download the ZIP file.
6.  Unzip `CaseCreationviaEmailv1.0.0.zip` to access the installation files.

## Step 2: Deploying the plug-ins

The steps for deploying plug-ins differ depending on whether you have an Appian Cloud or a self-managed environment. Before importing the Case Creation via Email module files, you must deploy and configure the plug-ins required for your environment in the target system. To download the necessary plug-ins and deploy them to your environments, follow the steps that match your environment setup.

### Appian Cloud Environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for and click **MSGraph Email Poller**.
6.  Click **DEPLOY**.
7.  Repeat the above steps for the **Regular Expression Functions**.

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):

    -   [MSGraph Email Poller](https://community.appian.com/b/appmarket/posts/msgraph-email-poller)
    -   [Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
2.  Follow the [Deploying Plug-ins](https://docs.appian.com/suite/help/24.3/Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy the plug-ins.

## Step 3: Creating database objects

To create the structure for the database tables, views, and other objects that are a part of the Case Creation via Email module in your MariaDB business database, you need to run the `01.CaseCreationviaEmailv1.0.0.sql` DDL script downloaded in [Step 1](#step-1-downloading-the-software-package).

## Step 4: Importing the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `CaseCreationviaEmailv1.0.0.zip` file that was downloaded in [Step 1](#step-1-downloading-the-software-package).
5.  Click the **Include related import customization file** checkbox and click **UPLOAD**. Select the `CaseCreationviaEmailv1.0.0.properties`file downloaded in [Step 1](#step-1-downloading-the-software-package).
6.  Click **INSPECT** to ensure that there will be no complications on import.
7.  Click **IMPORT**.
8.  Review the import results to verify the following `CMGT Add-On - Case Creation via Email (CMGT_EML_TRI)` application container was imported.

## Next steps

Now that you have installed the Case Creation via Email module, follow the steps in [Setting Up Case Creation via Email](setup-case-creation-via-email.html) to incorporate this module and start using it with your Case Management Studio application.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...