---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-magnum-add-on-module-installation.html
original_path: cl-24.3.1.2/cul-magnum-add-on-module-installation.html
version: "25.3"
title: "Installing Magnum Pure with CU Life"
page_id: "cl-24.3.1.2/cul-magnum-add-on-module-installation"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Magnum Pure with CU Life

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

To use the Swiss Re Magnum Pure add-on module with your CU Life Workbench you must first install it. This page walks you through the installation steps.

Before starting the installation process, review the [System Prerequisites](#system-prerequisites) to ensure all minimum requirements are met.

### System Prerequisites

-   Appian platform version 23.3 or greater.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported CU Life Workbench Base application version 1.2 or higher, which includes the following application containers:
    -   `Insurance Life Underwriting (ISL)`

See [Verify Appian version and database type](installing-cu-life.html#verify-the-appian-version-and-database-type) to verify the Appian platform version and the CU Life Workbench Base application version.

## Step 1: Import the application

To install the Magnum Pure add-on module and use it with your CU Life Workbench, you must import the application files into the target environment.

To import the application files:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `zip` file.
5.  Click **INSPECT** to ensure that there will be no complications on import.
6.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but the import will continue in the background.
7.  Review the import results.
8.  Navigate into the new **ISL Add-On: Magnum Decision (ISL\_MGD)** application and open the **ISL\_MGD\_CS\_Magnum** connected system.
9.  Update the **connected system URL** and **authentication configurations** to enable access to the desired Magnum environment.
10.  Click **SAVE**.

## Next steps

Now that you have installed the Swiss Re Magnum Pure add-on module, follow the steps in [Setting Up Magnum Pure](cul-magnum-add-on-module-setup.html) to start using this functionality with CU Life Workbench.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...