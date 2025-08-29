---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-install-upload-claim-doc-api.html
original_path: cc-25.1.1.0/cc-install-upload-claim-doc-api.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Installing Upload Claim Document API Add-On Module

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

The Upload Claim Document API add-on module ships as a separate application supported on Connected Claims. Once incorporated with Connected Claims, this module…

This guide outlines the steps for downloading and installing the Upload Claim Document add-on module to use it with your Appian Connected Claims Base application. The steps include:

-   [Download the software package](#step-1-download-the-software-package)
-   [Import the application](#step-2-import-the-application)

Before starting the installation process, review the [System Prerequisites](#system-prerequisites) to make sure all minimum requirements are met.

### System prerequisites

This section details the minimum requirements your system must meet to run the Upload Claim Document API add-on module.

-   Appian platform running version 25.1 or greater.
-   An Appian Cloud environment with the advanced or premium platform tiers.
-   A supported version of [MariaDB](../System_Requirements.html#databases) as a business data source.
    -   **Note**: Instructions below are for MariaDB databases. For use with other databases, the SQL script.
-   A supported [web browser](../System_Requirements.html#web-browsers).- Imported **Connected Claims Management Base Application** application version 1.0 and higher, which includes the following application containers:
    -   `Connected Claims Management Base (CCM)`
    -   `CCM Studio Generated Objects`

## Step 1: Download the software package

The first step in installing the Upload Claim Document API add-on module is to download the software package that contains the following files. These files will be used in the remaining setup steps.

-   `ConnectedClaimsManagementAddOnClaimUploadDocumentApiv1.0.0.zip`
-   `01.ConnectedClaimsManagementAddOnClaimUploadDocumentApiv1.0.0.sql`

To download the software package:

1.  In **[My Appian](https://forum.appian.com/suite/sites/myappian/page/support)**, navigate to the **Support** tab.
2.  Select **DOWNLOADS** > **SOLUTIONS**.
3.  In the grid, click **Appian Connected Claims**.
4.  Under **Downloads**, click **Appian Connected Claims** and agree to the License Agreement.
5.  Click **CCM Add-On: Claim Upload Document API v1.0.0** to download and unzip the `ConnectedClaimsManagementAddOnClaimUploadDocumentApiv1.0.0.zip` to access the installation files.

## Step 2: Import the application

Next, you need to import the application into the target environment.

To import the application:

1.  In the target environment, log in as the deployment user.
2.  Navigate to the **Appian Designer**.
3.  Click **IMPORT**.
4.  Click **UPLOAD** and choose the application `ConnectedClaimsManagementAddOnClaimUploadDocumentApiv1.0.0.zip` file that was downloaded in [Step 1](#step-1-download-the-software-package).
5.  Click **INSPECT** to ensure that there will be no complications on import.
    -   **Note**: Inspection could take several minutes and may time out. If this occurs, the import will continue in the background.
6.  Click **IMPORT**.
    -   **Note**: The import may time out due to file size. If this occurs, the import will continue in the background.
7.  Review the import results to verify the `CCM Add-On: Claim Upload Document API (CCM_API_CUD)` application container was imported.

## Next steps

Now that you have installed the Upload Claim Document API add-on module , follow the [setup steps](cc-setup-upload-claim-document-via-api.html) to start using this functionality with Connected Claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...