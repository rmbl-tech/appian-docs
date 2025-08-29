---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/sol-custom-suite-install-guide.html
original_path: rm-24.4.2.2/sol-custom-suite-install-guide.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Solutions Hub Installation Guide

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The Solutions Hub comes pre-installed on your environments with any new solution offering or upgrade of an existing solution via Appian Cloud.

This page provides instructions for installing the Solutions Hub. Manual install is necessary if you:

-   Are an on-premise customer.
-   Want to receive the latest version and features of the Solutions Hub, but you haven't recently upgraded, or do not plan on upgrading, your Appian solution.
-   Want to install the Solutions Hub on another environment outside of your Cloud-provisioned environments.

### Technical support

Please call the dedicated solution help line for your region if at any point you need assistance or have questions:

-   US: +1 (703) 420-1311
-   AUS: +61 2850 34152
-   UK: +44 20 3929 3748

All Appian Solution customers can also email Appian Support at support@appian.com or log in to [Appian Community](https://community.appian.com/support) and open a support case to request assistance. Information on Solutions Support Services can be found [here](https://community.appian.com/support/p/solutions-support).

## System requirements

-   Appian 22.2 or later.
-   A supported [web browser](/suite/help/25.3/System_Requirements.html#web-browsers).

## Step 1: Download software package

To download the software package (as an existing Customer or Partner):

1.  Go to the **SUPPORT** tab on [My Appian](https://forum.appian.com/suite/sites/myappian/page/support).
2.  Click **DOWNLOADS**.
3.  Click **SOLUTIONS**.
4.  Find and open "Solutions Hub v22.2.1.2.X", where "X" refers to the latest hotfix increment on this version's branch. Be sure to stay up to date on the latest hotfix increment by regularly visiting this page.
5.  In **Downloads**, click the **Solutions Hub** installer link.
6.  Click **PROCEED** to agree to the license agreement.
7.  Click **Solutions Hub v22.2.1.2.X** to download the ZIP file.
8.  Unzip `SolutionsHubv1.2.X.zip` to access the software installation files.

Locate the following installation files, some of which will be used in later steps.

-   `appian-solutions-1.27.X.jar`
-   `SolutionsHubv1.2.X.zip`
-   `SolutionsHubv1.2.X-AdminConsole.zip`

## Step 2: Deploy Plug-ins

The Solutions Hub relies on the _latest_ version of the Appian Solutions Plug-in to be deployed in the target environment before the application can be imported. This plug-in is also a prerequisite for most Appian solutions, so it may already be installed on the target environment.

-   [Appian Solutions Plug-in](https://community.appian.com/b/appmarket/posts/appian-solutions) (v1.27.X+)

### Appian Cloud Environments

To deploy the plug-in for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for the plug-in by name. For example, `Appian Solutions Plug-in`. ![/search plugin](/suite/help/25.3/images/searching_appian_sol_plugin.png)
6.  Click on the plug-in name.
7.  Click **DEPLOY**. ![/WSCP installation personalization utilities](/suite/help/25.3/images/deploying_appian_sol_plugin.png)

### Self-Managed Environments

To deploy the plug-in for a self-managed environment:

1.  Retrieve the latest version of the Appian Solutions Plug-in from the [AppMarket](https://community.appian.com/b/appmarket/posts/appian-solutions-plug-in). Alternatively, you can also use the `appian-solutions-1.27.X.jar` file downloaded in [Step 1](#step-1-download-software-package).
2.  Follow the [Deploying Plug-ins](/suite/help/25.3/Appian_Plug-ins.html#deploying-plug-ins) instructions to deploy the plug-in file.

## Step 3: Import the application

Import the application into your target environment.

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the `SolutionsHubv1.2.X.zip` file that was downloaded in [Step 1](#step-1-download-software-package).
5.  Click **IMPORT PACKAGE**.

## Step 4: Set User Start Pages

By default, the start pages contained in the `SolutionsHubv1.2.X-AdminConsole.zip` file set the Solutions Hub site as the landing page and user start page for all Designers and System Administrators.

If you already have user start pages configured, we recommend skipping this step. If you have not already configured your user start pages, we recommend importing this file.

Follow the [Importing Admin Console Settings](/suite/help/25.3/Appian_Administration_Console.html#import) instructions to import this file.

## Next steps

After you finish installing the application, see the [User Guide](sol-custom-suite-user-guide.html) to learn how to use the Solutions Hub.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...