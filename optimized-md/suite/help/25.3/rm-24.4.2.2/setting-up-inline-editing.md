---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/setting-up-inline-editing.html
original_path: rm-24.4.2.2/setting-up-inline-editing.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Inline Editing for SharePoint

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

RM can be integrated with SharePoint. To enable and utilize this integration, you must set up your Microsoft Azure environment, create an API key for the connected system object, and configure the application to turn on inline editing. Inline editing allows end users to open documents in SharePoint and collaborate with team members until documents are complete.

This page provides instructions for setting up [Microsoft Azure](#set-up-microsoft-azure) and [SharePoint folders](#set-up-sharepoint-folders), [configuring the RM solution](#configure-rm-solution), [migrating](#upgrade-from-rm-21-or-earlier) documents from older RM versions, and performing [post-deployment configurations](#post-deployment-configurations).

## Set up Microsoft Azure

To use inline editing, the solution needs a location in your Microsoft Azure environment to store the documents when editing them.

To set up a location in Microsoft Azure:

1.  Access your [Azure environment](https://portal.azure.com/) and [register an application](https://learn.microsoft.com/en-us/power-apps/developer/data-platform/walkthrough-register-app-azure-active-directory#public-client-app-registration).
    -   Copy the **Application (client) ID** and the **Directory (tenant) ID** of the registered application.
2.  Add [API permissions](https://learn.microsoft.com/en-us/power-apps/developer/data-platform/walkthrough-register-app-azure-active-directory#public-client-app-registration) to the registered application.
    -   Add the **Files.ReadWrite.All** permission to the **Microsoft Graph** API.
    -   Add the **Sites.FullControl.All** permission to the **SharePoint** API.
3.  Add a [client secret](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app?tabs=client-secret%2Cexpose-a-web-api#add-credentials) to the registered application.
    -   Copy the client secret **Value**.
4.  Add a [certificate](https://learn.microsoft.com/en-us/entra/identity-platform/quickstart-register-app?tabs=certificate%2Cexpose-a-web-api#add-credentials) to the registered application:
    1.  Use a private certificate authority (CA) signed certificate.
    2.  Open the certificate in a text editor.
        -   If it begins with `-----BEGIN RSA PRIVATE KEY-----`, save it as `my-certificate.pem` (private key certificate).
        -   If it begins with `-----BEGIN ENCRYPTED PRIVATE KEY-----`, decrypt the private key:
            1.  Install [Apache OpenSSL](https://www.apachelounge.com/download/).
            2.  Open **Terminal** (Mac) or **Command Prompt** (Windows) and navigate to the **OpenSSL** bin directory.
            3.  Run the following command to decrypt the key: `openssl rsa -in my-certificate.pem`
            4.  Save the decrypted certificate as `my-certificate.pem` (private key certificate).
    3.  Create a copy of `my-certificate.pem`.
    4.  Remove the content from `-----BEGIN RSA PRIVATE KEY-----` to `-----END RSA PRIVATE KEY-----` in the copy.
    5.  Save the copy as `my-certificatepub.pem` (public key certificate) and add it to the registered application.
    6.  Copy the certificate **Thumbprint**.

## Set up SharePoint folders

After setting up the Azure environment, set up folders in SharePoint to store the documents for RM to open in-line editing.

1.  Create a [communication site](https://support.microsoft.com/en-us/office/create-a-communication-site-in-sharepoint-7fb44b20-a72f-4d2c-9173-fc8f59ba50eb) in **SharePoint**, then find and copy the [site ID](https://learn.microsoft.com/en-us/graph/api/site-get?view=graph-rest-1.0&tabs=http).
2.  Create the following four [document drives](https://support.microsoft.com/en-us/office/create-a-document-library-in-sharepoint-306728fe-0325-4b28-b60d-f902e1d75939) in the **SharePoint** site, then find and copy the [document drive IDs](https://docs.microsoft.com/en-us/graph/api/drive-get?view=graph-rest-1.0&tabs=http).
    -   `Documents`
    -   `Contract Files`
    -   `Documents Archive`
    -   `Contract Files Archive`
3.  Create a [folder](https://support.microsoft.com/en-us/office/create-a-folder-in-a-document-library-3d6a8c11-2490-4d6b-8837-f25649a69c56) named `Requirements Management` in each of the four document drives, then find and copy the [folder IDs](https://docs.microsoft.com/en-us/graph/api/resources/drive?view=graph-rest-1.0).

    ![SharePoint: Requirements Management site, document drives, and created folder.](images/setup_sharepoint_folders.png)

4.  Go to **Cloud Database**.

    ![Appian menu showing Cloud Database selected.](images/setup_sharepoint_folders_4.png)

5.  Expand **Appian** > **Tables**. Search for and open the `AS_RM_SHAREPOINT_DRIVE` table.

    ![Appian Tables: Select AS_RM_SHAREPOINT_DRIVE table.](images/setup_sharepoint_folders_3.png)

6.  Paste the **SharePoint drive**, **folder**, and **site IDs** copied in steps 1, 2, and 3 in the `DRIVE_ID`, `PARENT_FOLDER_ID`, and `SITE_ID` columns, respectively.

    ![SharePoint site, drive, and folder IDs in `AS_RM_SHAREPOINT_DRIVE` table.](images/setup_sharepoint_folders_2.png)

7.  Go to **Appian Designer** > **Requirements Management Application**.

    ![Appian Designer highlighted in Requirements Management dropdown.](images/setup_sharepoint_folders_7.png)

8.  Search for and open the `AS_RM_SharepointDrive_SYNCEDRECORD` record.

    ![Search results for AS_RM_SharepointDrive_SYNCEDRECORD in Appian Designer.](images/setup_sharepoint_folders_5.png)

9.  Click **Sync Options** on the sidebar to navigate to the **Sync Options** page.
10.  Click **START FULL SYNC** to sync the **SharePoint drive values** updated in step 6.

     ![AS_RM_SharepointDrive_SYNCEDRECORD Sync Options for data sync.](images/setup_sharepoint_folders_6.png)

## Configure RM solution

The RM solution must be configured to integrate and work with SharePoint.

### Enable SharePoint integration

To enable SharePoint integration:

1.  Go to **Appian Designer** > **Requirements Management Application**.
2.  Search for and open the `AS_GAM_BOL_OFFICE_365` constant.
3.  Select **True** using the **Value** radio button and click **SAVE** to use SharePoint. The default value is `False`.

    ![`AS_GAM_BOL_OFFICE_365 constant properties showing 'True' selected for SharePoint integration.`](images/configure_rm_solution_3.png)

### Authorize SharePoint integration

To integrate RM with SharePoint using Microsoft Graph API:

1.  Search for and open the `AS GAM CS Microsoft Graph` connected system.
2.  Paste the **Client ID** and **Token Request Endpoint** fields with the **Application (client) ID** and **Directory (tenant) ID**, respectively, copied in the [Microsoft Azure setup](#set-up-microsoft-azure).
3.  Paste the **Client Secret** copied in the [Microsoft Azure setup](#set-up-microsoft-azure).
4.  Click **Authorize** to confirm successful authorization.
5.  Click **SAVE**.

![Microsoft Graph connected system configured, showing authorization success.](images/configure_rm_solution_5.png)

### Authorize SharePoint API

To integrate RM with SharePoint using SharePoint API:

1.  Search for and open the `AS RM CS SharePoint` connected system.
2.  Select **Client Credentials - Entra ID** using the **Authentication** dropdown.
3.  Enter your **SharePoint URL** in the **Instance URL** field.
4.  Paste the **Application (Client) ID** and **Directory (Tenant) ID** in the respective fields, copied in the [Microsoft Azure setup](#set-up-microsoft-azure).
5.  Open the `my-certificate.pem` file created in the [Microsoft Azure setup](#set-up-microsoft-azure), then copy and paste the certificate content from `-----BEGIN RSA PRIVATE KEY-----` to `-----END RSA PRIVATE KEY-----` into the **Private Key** field.
6.  Enter the password of the certificate in the **Password** field.
7.  Paste the **Thumbprint** copied in the [Microsoft Azure setup](#set-up-microsoft-azure).
8.  Click **TEST CONNECTION** to validate if the connected system properties are successful.
9.  Click **SAVE**.

![SharePoint Connected System properties: API configuration and successful connection.](images/configure_rm_solution_2.png)

### Authenticate SharePoint update access

To enable users to update documents in SharePoint:

1.  Go to **Admin Console**

    ![Navigate to the Admin Console](images/authenticate_sharepoint_edit_access.png)

2.  Click **Web API Authentication** on the sidebar.
3.  Follow these [steps for creating an API key](../Appian_Administration_Console.html#api-keys).
    -   Create a new service account with a descriptive name and add the service account to the `AS GAM Appian Administrators` group.
    -   Copy the API key. The value of the API key is not displayed after this step.
4.  Go to **Appian Designer** > **Requirements Management Application**.
5.  Search for and open the `AS_RM_CS_AppianServiceAccount` connected system.
6.  Paste the copied **API key** in the **Value** field and click **SAVE**.

    ![AS_RM_CS_AppianServiceAccount connected system properties: API Key value field.](images/authenticate_sharepoint_edit_access_2.png)

**Note:**  If you are using RM 2.2 or later, skip to [Post-deployment configurations](#post-deployment-configurations). Otherwise, continue with the following steps.

## Upgrade from RM 2.1 or earlier

**Caution:**  This section applies only to users using inline editing and upgrading from RM 2.1 or earlier to a later version.

RM 2.2 introduced a new SharePoint integration method, requiring data migration. If you upgraded from RM 2.1 or earlier, a manual migration is required.

### Enable SharePoint migration process

To enable SharePoint migration process:

1.  Go to **Appian Designer** > **Requirements Management Application**.
2.  Search for and open the `AS_RM_BOL_SP_MIGRATION_PROCESS` constant.
3.  Select **True** using the **Value** radio button and click **SAVE** to enable the migration process. The default value is `False`.

    ![`AS_RM_BOL_SP_MIGRATION_PROCESS` constant properties with Value set to True.](images/turn_on_sharepoint_migration_process.png)

### Migrate copied documents

To migrate _copied_ requirements' documents from RM 2.1 or earlier to RM 2.2:

1.  Search for and open the `AS RM Finalize Copied SharePoint Documents` process model.

    ![Appian Designer search for 'AS RM Finalize Copied SharePoint Documents' process model.](images/migrate_copied_documents.png)

2.  Click **File** and select **Start Process for Debugging** to initiate the process model.

    ![Appian Process Modeler: Selecting 'Start Process for Debugging' from File menu.](images/migrate_copied_documents_2.png)

3.  Go to **Monitor** to confirm the process is successfully completed. Click Refresh icon to update the latest process status.

    ![Appian Process Activity: AS RM Finalize Copied SharePoint Documents process.](images/migrate_copied_documents_3.png)

4.  Go to **Cloud Database**.
5.  Expand **Appian** > **Tables**. Search for and open the `AS_RM_MIGR_COPIED_DOCS` table.

    ![Appian Cloud Database: Tables expanded, search for AS_RM_MIGR_COPIED_DOCS.](images/migrate_copied_documents_5.png)

    The `REQUIREMENT_DOCUMENT_ID` and `OFFICE_365_DOCUMENT_ID` columns display the list of documents in the download process.

    The `IS_DOC_DOWNLOADED` column displays the status of the document download where:

    -   `1` is success.
    -   `0` is failed.
    -   `NULL` is in progress.

    ![AS_RM_MIGR_COPIED_DOCS` table showing document download status.](images/migrate_copied_documents_6.png)

6.  Search for and open the `AS_RM_COPIED_DOC_MIGR_LOG` to view the document download integration log.

### Migrate documents to folders

To create folders and migrate RM 2.1 or earlier documents into them:

1.  Search for and open the `AS RM MIGR SP Folders & Docs Wrapper` process model.
2.  Click **File** and select **Start Process for Debugging** to initiate the process model.
3.  Go to **Monitor** to confirm the process is successfully completed. Click Refresh icon to update the latest process status.
4.  Go to **Cloud Database**.
5.  Expand **Appian** > **Tables**. Search for and open the `AS_RM_REQT_SP_MIGR_STATUS` table.

    The `REQUIREMENT ID` column displays the list of folders in the creation process.

    The `IS_DOC_FOLDER_CREATED` and `IS_CONTR_FOLDER_CREATED` columns display the status of `Documents` and `Contract Files` drives' creation, respectively, where:

    -   `1` is success.
    -   `0` is failed.
    -   `NULL` is in progress.

    ![`AS_RM_REQT_SP_MIGR_STATUS` table: folder creation status (Documents, Contract Files).](images/migrate_documents_to_folders.png)

6.  Search for and open the `AS_RM_REQT_DOC_MIGR_STATUS` table.

    The `IS_MIGRATED`, `IS_ACCESS_REVOKED`, and `IS_FINALIZED` columns display the status of document migration, edit access revocation, and latest version synchronization, respectively, where:

    -   `1` is success.
    -   `0` is failed.
    -   `NULL` is in progress.

    ![Open AS_RM_REQT_DOC_MIGR_STATUS table](images/migrate_documents_to_folders_2.png)

7.  Search for and open `AS_RM_DOC_MIGR_TXN_LOG` to view the migration integration log.

## Post-deployment configurations

To enable email notifications for failed SharePoint integration:

1.  Go to **Appian Designer** > **Requirements Management Application**.
2.  Search for and open the `AS_RM_BOL_SEND_EMAIL_FOR_FAILED_SP_DOCS_INTEGRATION` constant.
3.  Select **True** using the **Value** radio button and click **SAVE**. The default value is `False`.

To enable document archiving from the working drives to the archive drives:

1.  Search for and open the `AS_RM_BOL_SP_ARCHIVE_PROCESS` constant.
2.  Select **True** using the **Value** radio button and click **SAVE**. The default value is `False`.

To enable auto-finalizing documents when the updating session expires:

1.  Search for and open the `AS_RM_BOL_ENABLE_AUTO_FINALIZE_SP_DOCS` constant.
2.  Select **True** using the **Value** radio button and click **SAVE**. The default value is `False`.

To customize the document updating session's expiration duration:

1.  Search for and open the `AS_RM_SHAREPOINT_LINK_EXPIRATION_IN_MINUTES` constant.
2.  Enter the session expiration duration in the **Value** field (in minutes). The default value is `2880` minutes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...