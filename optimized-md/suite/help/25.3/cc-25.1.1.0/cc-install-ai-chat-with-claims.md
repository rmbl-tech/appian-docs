---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-install-ai-chat-with-claims.html
original_path: cc-25.1.1.0/cc-install-ai-chat-with-claims.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing AI Chat with Claims Add-On Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Introduction

The AI Chat with Claims add-on module ships as a separate application supported on Connected Claims. Once incorporated with Connected Claims, this module places the [Records Chat Component](../Records_Chat_Component.html) on the claim record summary so claims adjusters can ask AI questions about a claim.

This guide outlines the steps for downloading and installing the AI Chat with Claims add-on module to use it with your Appian Connected Claims Base application. The steps include:

-   [Download the software package](#step-1-download-the-software-package)
-   [Import the application](#step-2-import-the-application)

Before starting the installation process, review the [System Prerequisites](#system-prerequisites) to make sure all minimum requirements are met.

### System prerequisites

This section details the minimum requirements your system must meet to run the AI Chat with Claims module.

-   Appian platform running version 25.1 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).- Imported **Connected Claims Management Base Application** application version 1.0 and higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`

## Step 1: Download the software package

The first step in installing the AI Chat with Claims add-on module is to download the software package that contains the following files. These files will be used in the remaining setup steps.

-   `ConnectedClaimsManagementAddOnClaimChatAiv1.0.0.zip`
-   `ConnectedClaimsManagementAddOnClaimChatAiv1.0.0.properties`
-   `01.ConnectedClaimsManagementAddOnClaimChatAiv1.0.0.sql`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, click **Appian Connected Claims**.
4.  Under **Downloads**, click **Appian Connected Claims** and agree to the License Agreement.
5.  Click **CCM Add On: Claim Chat AI v1.0.0** to download and unzip the `ConnectedClaimsManagementAddOnClaimChatAiv1.0.0.zip` to access the installation files.

## Step 2: Import the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedClaimsManagementAddOnClaimChatAiv1.0.0.zip` file that was downloaded in [Step 1](#step-1-download-the-software-package).
5.  Click the **Include related import customization file** checkbox and click **UPLOAD**. Select the `ConnectedClaimsManagementAddOnClaimChatAiv1.0.0.properties` file that was downloaded in [Step 1](#step-1-download-the-software-package).
6.  Click **INSPECT** to ensure that there will be no complications on import.
    -   **Note**: Inspection could take several minutes and may time out. If this occurs, the import will continue in the background.
7.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size. If this occurs, the import will continue in the background.
8.  Review the import results to verify the following `CCM Add On: Claim Chat AI (CCM_CCAI)` application container was imported.

## Next steps

Now that you have installed the AI Chat with Claims module, follow the [setup steps](cc-setup-ai-chat-with-claims.html) to start using this functionality with Connected Claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...