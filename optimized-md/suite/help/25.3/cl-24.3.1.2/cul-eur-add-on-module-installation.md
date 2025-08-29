---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-eur-add-on-module-installation.html
original_path: cl-24.3.1.2/cul-eur-add-on-module-installation.html
version: "25.3"
title: "Installing End-User Reporting"
page_id: "cl-24.3.1.2/cul-eur-add-on-module-installation"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing End-User Reporting

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

Installing the End-User Reporting add-on module with your CU Life Workbench consists of two steps, including:

-   [Importing the application](#step-1-importing-the-application)
-   [Deploying plug-ins](#step-2-deploying-plug-ins)

Before starting the installation process, review the [System Prerequisites](#system-prerequisites) to ensure all minimum requirements are met.

### System Prerequisites

-   Appian platform version 23.3 or greater.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases for use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported CU Life Workbench Base application version 1.2 or higher, which includes the following application containers:
    -   `Insurance Life Underwriting (ISL)`

See [Verify Appian version and database type](installing-cu-life.html#verify-the-appian-version-and-database-type) to verify the Appian platform version and the CU Life Workbench Base application version.

## Step 1: Importing the application

To install the End-User Reporting add-on module and use it with your CU Life Workbench, you must import the application files into the target environment.

To import the application files:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `zip` file.
5.  Click **INSPECT** to ensure that there will be no complications on import.
    -   **Note**: If the End-User Reporting add-on module was installed in your environment prior to installing the module to your CU Life Workbench, there may be some conflicts with any objects modified in the Solutions End-User Reporting application. Objects specific to the CU Life Workbench End-User Reporting add-on module should be imported to override the existing versions of those objects in the environment.
6.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but import will continue in the background.
7.  Review the import results.
8.  Click **SAVE**.

## Step 2: Deploying plug-ins

The steps for deploying plug-ins differ depending on whether you have an Appian Cloud or a self-managed environment. Before importing the End-User Reporting module, you must deploy and configure the following plug-ins required for your environment in the target system.

-   `Appian Solutions Plugin`
-   `Content Tools`
-   `Regular Expression Functions`
-   `Zip File Utilities`
-   `Advanced Document Templating`
-   `Text Cache`
-   `Date and Time Utilities - 1.3.0+`

To download the necessary plug-ins for the End-User Reporting module and deploy them to your environments, follow the steps that match your environment setup.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for and click the `Appian Solutions Plugin` plugin.
6.  Click **DEPLOY**.
7.  Repeat the above steps for each of the following plug-ins:

    -   `Content Tools`
    -   `Regular Expression Functions`
    -   `Zip File Utilities`
    -   `Advanced Document Templating`
    -   `Text Cache`
    -   `Date and Time Utilities - 1.3.0+`

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):
    -   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in)
    -   [Content Tools](https://community.appian.com/b/appmarket/posts/content-tools)
    -   [Regular Expression Functions](https://community.appian.com/b/appmarket/posts/regular-expression-functions)
    -   [Zip File Utilities](https://community.appian.com/b/appmarket/posts/zip-file-utilities)
    -   [Advanced Document Templating](https://community.appian.com/b/appmarket/posts/advanced-document-templating)
    -   [Text Cache](https://community.appian.com/b/appmarket/posts/text-cache)
    -   [Date and Time Utilities - 1.3.0+](https://community.appian.com/b/appmarket/posts/date-and-time-utilities)
2.  Follow these [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy each plug-in listed.

## Next steps

Now that you have installed the End-User Reporting add-on module, follow the steps in [Setting Up End-User Reporting](cul-eur-add-on-module-setup.html) to start using this functionality with CU Life Workbench.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...