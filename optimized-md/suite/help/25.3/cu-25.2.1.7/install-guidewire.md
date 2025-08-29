---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/install-guidewire.html
original_path: cu-25.2.1.7/install-guidewire.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Install Guidewire

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

The Guidewire Quoting 1.1 module ships as a separate module supported on Connected Underwriting P&C 24.1.1.5 and higher. This guide outlines the steps for downloading and installing the Guidewire Quoting module and integrating it with your Appian Connecting Underwriting P&C solution. The steps include:

-   [Downloading the software package](#step-1-downloading-the-software-package).
-   [Deploying plug-ins](#step-2-deploying-plug-ins).
-   [Importing the application](#step-3-importing-the-application).

### System Prerequisites

-   Appian platform running version 23.4 or greater.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).
-   Imported Connected Underwriting P&C Base application v1.5 and higher, which includes the following application container:
    -   `Insurance Underwriting`
-   A running Guidewire PolicyCenter cloud instance

See [Verify Appian version and database type](installing-the-solution.html#verify-the-appian-version-and-database-type) to verify the Appian platform version and the Connected Underwriting P&C Base application version.

## Step 1: Downloading the software package

The first step in installing the Guidewire Quoting module is downloading the `ConnectedUnderwritingAddOnGuidewireCreateQuotev1.1.0—Forum.zip` software package containing the following files.

-   `ConnectedUnderwritingAddOnGuidewireCreateQuotev1.1.0.zip`
-   `ConnectedUnderwritingAddOnGuidewireCreateQuotev1.1.0.properties`
-   `01.ConnectedUnderwritingAddOnGuidewireCreateQuotev1.1.0.sql`

These files will be used in the remaining setup steps.

To download the software package:

1.  In **MyAppian**, navigate to the **SUPPORT** tab.
2.  Select **DOWNLOADS > SOLUTIONS**.
3.  In the grid, click **Connected Underwriting P&C v1.5**.
4.  Under **Downloads > Add-ons**, click **Connected Underwriting AddOn Guidewire Create Quote v1.1.0** and agree to the License Agreement.
5.  Click **Connected Underwriting AddOn Guidewire Create Quote v1.1.0** to download the ZIP file.
6.  Unzip `ConnectedUnderwritingAddOnGuidewireCreateQuotev1.1.0 - Forum.zip` to access the software installation files.

## Step 2: Deploying plug-ins

The steps for deploying plug-ins differ depending on whether you have an Appian Cloud or a self-managed environment. Before importing the Guidewire Quoting module files, you must deploy and configure the Guidewire plug-in required for your environment in the target system. For more information about Appian’s Connected System for Guidewire InsuranceSuite, see [Guidewire Plugin documentation](https://community.appian.com/cfs-file/__key/appian-appmarket-files/a0649666_2D00_ad0f_2D00_4708_2D00_a853_2D00_4c79426b97db/Guidewire-Documentation-v1.0.0.pdf).

Follow the steps that match your environment setup to download the necessary plug-ins and deploy them to your environments.

### Appian Cloud environments

To deploy the plug-ins for an Appian Cloud environment:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Admin Console**.
3.  On the left side of the console, click **Plug-ins**.
4.  Click **ADD PLUG-INS**.
5.  Search for and click the `Guidewire` plugin.
6.  Click **DEPLOY**.

### Self-managed environments

To deploy the plug-ins for a self-managed environment:

1.  Download the following plug-ins directly from the [Appian AppMarket](https://community.appian.com/b/appmarket):
    -   [Guidewire](https://community.appian.com/b/appmarket/posts/guidewire)
2.  Follow the [Deploying Plug-ins](../Appian_Plug-ins.html#deploying-plug-ins) instructions above to deploy the plug-ins.

## Step 3: Importing the application

Next, you need to import the application into the target environment. To import the application files:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedUnderwritingAddOnGuidewireCreateQuotev1.1.0.zip` file.
5.  Click **INSPECT** to ensure that there will be no complications on import.

    -   Note: The inspection could take several minutes to complete and may time out. If this occurs, the import will continue in the background.
6.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size, but the import will continue in the background.
7.  Review the import results.

## Next steps

Now that you have installed the Guidewire Quoting module, follow the steps in [Setting Up Guidewire](setting-up-guidewire.html) to start using this functionality with Connected Underwriting P&C.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...