---
source_url: https://docs.appian.com/suite/help/25.3/google-drive-connected-system.html
original_path: google-drive-connected-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Google Drive

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Customers who wish to use Google services in Appian will need to bring their own Google Cloud credentials to do so.

## Overview

The Google Drive connected system allows you to easily manage files and folders in Google Drive using [OAuth 2.0 Authorization Code](https://developers.google.com/drive/api/v3/about-auth) (per user).

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

The Google Drive connected system has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Client ID\* | **Required**. This value is available in the downloaded credentials |
| Client Secret\* | **Required/Sensitive**. This value is available in the downloaded credentials |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

Click **AUTHORIZE** to use the provided configuration information to authorize the designer in a new window. See [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html#parameters-set-in-the-other-system) for more details.

![screenshot of a Google Drive connected system object](images/create_a_connected_system/google-drive-cs.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `clientId`
-   `clientSecret`

## Operations

| Name | Description | Type |
| --- | --- | --- |
| [Upload File](#upload-file) | Upload an Appian document to Google Drive | WRITE |
| [Create Folder](#create-folder) | Create a folder in Google Drive | WRITE |
| [Create Google Doc](#create-google-doc) | Create a Google Doc file in Google Drive from user input text | WRITE |
| [List Folder Contents](#list-folder-contents) | List files and folders within a Google Drive folder | READ |
| [Query Drive](#query-drive) | Search using specified query within Google Drive | READ |
| [Copy File](#copy-file) | Create a copy of the file and add it to a specified folder | WRITE |
| [Download File](#download-file) | Retrieve a file from Google Drive and download to Appian | WRITE |
| [Manage File Location](#manage-file-location) | Move a file between folders within Google Drive | WRITE |
| [Find File](#find-file) | List files and folders matching a full text search | READ |

### Upload File

Upload an Appian document to Google Drive.

Upload File is a `WRITE` type integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Upload File operation selected in an integration object](images/create_a_connected_system/drive-upload-file.png)

### Create Folder

Create a folder in Google Drive.

Create Folder is a `WRITE` type integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Create Folder operation selected in an integration object](images/create_a_connected_system/drive-create-folder.png)

### Create Google Doc

Create a Google Doc file in Google Drive from user input text.

Create Google Doc is a `WRITE` type integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of a Create Google Doc operation selected in an integration object](images/create_a_connected_system/drive-create-google-doc.png)

### List Folder Contents

List files and folders within a Google Drive folder.

Find File Metadata property names in [Google documentation](https://developers.google.com/drive/api/v3/reference/files#resource).

![screenshot of a List Folder Contents operation selected in an integration object](images/create_a_connected_system/drive-list-folder-contents.png)

### Query Drive

Search using specified query within Google Drive.

Find File Metadata property names in [Google documentation](https://developers.google.com/drive/api/v3/reference/files#resource).

![screenshot of a Query Drive operation selected in an integration object](images/create_a_connected_system/drive-query-drive.png)

### Copy File

Create a copy of the file and add it to a specified folder.

Copy File is a `WRITE` type integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of a Copy File operation selected in an integration object](images/create_a_connected_system/drive-copy-file.png)

### Download File

Retrieve a file from Google Drive and download to Appian.

Download File is a `WRITE` type integration. To prevent against duplicate document creation, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of a Download File operation selected in an integration object](images/create_a_connected_system/drive-get-file.png)

### Manage File Location

Move a file between folders within Google Drive.

Manage File Location is a `WRITE` type integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of a Manage File Location operation selected in an integration object](images/create_a_connected_system/drive-manage-file-location.png)

### Find File

List files and folders matching a full text search.

Find File Metadata property names in [Google documentation](https://developers.google.com/drive/api/v3/reference/files#resource).

![screenshot of a Find File operation selected in an integration object](images/create_a_connected_system/drive-find-file.png)

## How to generate new credentials for Google Drive

To generate new credentials:

1.  Create a Google Cloud Platform Project that has [Drive API](https://developers.google.com/drive/api/v3/enable-drive-api) services [enabled](https://console.cloud.google.com/apis/library/drive.googleapis.com).
2.  Set up the [OAuth Consent](https://console.cloud.google.com/apis/credentials/consent).
    -   Name: `Your Name`
    -   Add the following scopes:
        -   `../auth/drive`
        -   `../auth/drive.metadata`
        -   `../auth/drive.appdata`
    -   Authorized Domains: `<YOUR_ENVIRONMENT>.appiancloud.com`
3.  Create [Credentials](https://console.cloud.google.com/apis/credentials).
    -   OAuth 2.0 client IDs > Create a Client ID > Create OAuth client ID
    -   Application Type: Web Application
    -   Name: `<NAME>`
    -   Authorized JavaScript origins: `<leave empty>`
    -   Authorized redirect URIs: `https://<YOUR_ENVIRONMENT>.appiancloud.com/suite/oauth/callback`
4.  Download your credentials from **APIs & Services** > **Credentials**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...