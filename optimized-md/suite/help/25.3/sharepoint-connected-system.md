---
source_url: https://docs.appian.com/suite/help/25.3/sharepoint-connected-system.html
original_path: sharepoint-connected-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# SharePoint

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This article explains how to set up a SharePoint connected system to manage your documents and folders.

For instructions on how to integrate your SharePoint connected system with your Appian connected system, see [Integrating SharePoint with Appian's Connected System](Integrating_Sharepoint_with_Appian_CS.html).

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

Three forms of authentication are available for SharePoint: [authorization code](#sharepoint-authorization-code-authentication) (per user) and client credentials (single system login) using either [Azure ACS](#sharepoint-client-credentials-authentication) or [Entra ID](#sharepoint-client-credentials-entra-id-authentication).

### Authorization Code authentication

Each Appian user will be required to sign in to their SharePoint account to authenticate. You must provide users a way to authenticate using [OAuth 2.0](Oauth_connected_system.html#providing-users-a-way-to-authorize). See [SharePoint OAuth 2.0 Code Grant Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-protocols-oauth-code) for more details.

The SharePoint Authorization Code authentication has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Authorization Code**. |
| Redirect URL\* | Each connected system provides a callback URL that must be added to your SharePoint environment. In the SharePoint Setup portal, navigate to **App Manager**, and then find your App and select **Edit**. Add the callback URL in the field **Callback URL**. See [SharePoint set up documentation](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-auth-code-flow) for more details. |
| Instance URL\* | **Required**. Instance URL will be used for authorization. This URL is used to configure your integration object and when executing your operations. For example, `https://yourinstance.sharepoint.com` |
| Application (Client) ID\* | **Required**. In the [Azure portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), navigate to **Azure Active Directory**, select **App Registrations**, and then select your application. The Application (client) ID will be listed on this page. |
| Directory (Tenant) ID\* | **Required**. In the [Azure portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), navigate to **Azure Active Directory**, select **App Registrations**, and then select your application. The Directory (tenant) ID will be listed on this page. |
| Client Secret\* | **Required/Sensitive**. From your application page in [Azure portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), select **Certificates & secrets**, and then navigate to **Client secrets**. Add a new client secret and click **Add**. The generated key value is the Client Secret and must be copied before leaving this page. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

Click **AUTHORIZE** to use the provided configuration information to authorize the designer in a new window. See [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html#parameters-set-in-the-other-system) for more details.

![screenshot of a Sharepoint connected system object with the Authorization Code method of authentication selected](images/create_a_connected_system/sharepoint_authorization_code_cs.png)

### Client Credentials - Azure ACS authentication

Using Client Credentials, all integrations will use a shared SharePoint service account. Individual Appian users do not need their own SharePoint accounts.

To generate Client Credentials, see [Granting access using SharePoint App-Only](https://docs.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) in the Microsoft docs.

A few notes on the process:

1.  If you only need access to a particular SharePoint site, go to that site's URL to generate your Client ID and Client Secret. For example: `<siteName>.sharepoint.com/sites/<subsite>/_layouts/15/appinv.aspx`
2.  If you do not have tenant administrator permissions, you may need to use a different permission XML. For example:

    ```
    1
    2
    3
     <AppPermissionRequests AllowAppOnlyPolicy="true">
         <AppPermissionRequest Scope="http://sharepoint/content/sitecollection" Right="FullControl" />
     </AppPermissionRequests>
    ```

The SharePoint Client Credentials - Azure ACS authentication has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Client Credentials - Azure ACS**. |
| Instance URL\* | **Required** Instance URL will be used for authorization. This URL is used to configure your integration object and when executing your operations. For example, `https://yourinstance.sharepoint.com` |
| Application (Client) ID\* | **Required** To generate the Application (Client) ID, see [Granting access using SharePoint App-Only](https://docs.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) in the Microsoft docs. |
| Client Secret\* | **Required/Sensitive** To generate the Client Secret, see [Granting access using SharePoint App-Only](https://docs.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azureacs) in the Microsoft docs. |
| Directory (Tenant) ID\* | **Required** In the Azure portal, navigate to **Azure Active Directory**. Under **Manage**, select **Properties**. The tenant ID is shown in the **Directory ID** field. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![screenshot of a Sharepoint connected system object with the Client Credentials Azure ACS method of authentication selected](images/create_a_connected_system/sharepoint_client_credentials_cs.png)

### Client Credentials - Entra ID authentication

Using Client Credentials, all integrations will use a shared SharePoint service account. Individual Appian users do not need their own SharePoint accounts. If your application is configured with delegated permissions for the site, users will only have access to the site data they would see if signed in to SharePoint directly.

To generate Client Credentials, see [Granting access using Azure AD App-Only](https://docs.microsoft.com/en-us/sharepoint/dev/solution-guidance/security-apponly-azuread) in the Microsoft docs.

The SharePoint Client Credentials - Entra ID authentication has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Client Credentials - Entra ID**. |
| Instance URL\* | **Required** Instance URL will be used for authorization. This URL is used to configure your integration object and when executing your operations (for example, `https://yourinstance.sharepoint.com`). |
| Application (Client) ID\* | **Required** The unique identifier of the registered application. |
| Directory (Tenant) ID\* | **Required** The unique identifier of the Entra ID tenant. |
| Private Key\* | **Required** The RSA private key in PEM format. |
| Password\* | Password to unlock the private key if it's encrypted. |
| Thumbprint\* | **Required** The Azure-assigned identifier for the certificate. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

[![screenshot of a Sharepoint connected system object with the Client Credentials Entra ID method of authentication selected](images/create_a_connected_system/sharepoint_client_credentials_entra_id_cs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img356)

[![](images/create_a_connected_system/sharepoint_client_credentials_entra_id_cs.png)](#_)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

| Authentication Type | Available Properties |
| --- | --- |
| Authorization Code | instanceURL, applicationId, directoryId, clientSecret |
| Client Credentials - Azure ACS | instanceURL, applicationId, directoryId, clientSecret |
| Client Credentials - Entra ID | instanceURL, applicationId, directoryId, privateKey, password, thumbprint |

## Operations

| Name | Description | Type |
| --- | --- | --- |
| [Add Document](#add-document) | Upload files from Appian to SharePoint | WRITE |
| [Download Document](#download-document) | Retrieves the document from SharePoint and places into an Appian | WRITE |
| [Get Document Metadata](#get-document-metadata) | Retrieves metadata for a file | READ |
| [Update Document Metadata](#update-document-metadata) | Updates metadata for the specified file | WRITE |
| [Create Folder](#create-folder) | Creates a new folder in SharePoint | WRITE |
| [Get Folder Metadata](#get-folder-metadata) | Updates metadata for the specified folder | READ |
| [List Folder Contents](#list-folder-contents) | Lists a folder's contents | READ |
| [Update Folder Metadata](#update-folder-metadata) | Retrieves metadata for a folder | READ |
| [Execute Read Request](#execute-read-request) | Execute arbitrary read requests to SharePoint | READ |
| [Execute Write Request](#execute-write-request) | Execute arbitrary write requests to SharePoint | WRITE |

### Add Document

Upload a document from Appian to SharePoint.

The Add Document operation modifies data in SharePoint. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Add Document operation selected in an integration object](images/create_a_connected_system/sharepoint_add_document.png)

### Download Document

Retrieves the document from SharePoint and places into an Appian.

The Download Document operation downloads a file to Appian. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Download Document operation selected in an integration object](images/create_a_connected_system/sharepoint_download_file.png)

### Get Document Metadata

Retrieves metadata for a file.

![screenshot of the Get Document Metadata operation selected in an integration object.png](images/create_a_connected_system/sharepoint_get_document_metadata.png)

### Update Document Metadata

Updates metadata for the specified file. See [Updating Metadata](#updating-metadata-identifying-metadata-properties) for information on how to get the metadata properties from a **Get Document Metadata** request.

The Update Document Metadata operation modifies data in SharePoint. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Update Document Metadata operation selected in an integration object](images/create_a_connected_system/sharepoint_update_document_metadata.png)

### Create Folder

Creates a new folder in SharePoint.

The Create Folder operation modifies data in SharePoint. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Create Folder operation selected in an integration object](images/create_a_connected_system/sharepoint_create_folder.png)

### Get Folder Metadata

Retrieves metadata for a folder.

![screenshot of the Get Folder Metadata operation selected in an integration object](images/create_a_connected_system/sharepoint_get_folder_metadata.png)

### List Folder Contents

Lists a folder's contents.

![screenshot of the List Folder Contents operation selected in an integration object](images/create_a_connected_system/sharepoint_list_folder_contents.png)

### Update Folder Metadata

Updates metadata for the specified folder. See [Updating Metadata](#updating-metadata-identifying-metadata-properties) for information on how to get the metadata properties from a **Get Folder Metadata** request.

The Update Folder Metadata operation modifies data in SharePoint. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Update Folder Metadata operation selected in an integration object](images/create_a_connected_system/sharepoint_update_folder_metadata.png)

### Execute Read Request

Execute read requests to SharePoint using a relative path.

![screenshot of the Execute Read Request operation selected in an integration object](images/create_a_connected_system/sharepoint_execute_read_request.png)

### Execute Write Request

Execute write requests to SharePoint using a relative path and body.

The Execute Write Request operation modifies data in SharePoint. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Execute Write Request operation selected in an integration object](images/create_a_connected_system/sharepoint_execute_write_request.png)

## Updating Metadata: Identifying Metadata Properties

In order to update metadata for documents or folders, you will need to send the OData _type_, the name of the metadata field, and the updated value of the field. To get this information, you can send a [Get Document Metadata](#get-document-metadata) or [Get Folder Metadata](#get-folder-metadata) request.

### Getting the OData type

The OData _type_ is sent in the body as `{ "type": "<OData Type>" }`

Sometimes, you can use `SP.ListItem` for the OData type. However, if that doesn't work, send a get metadata request. The OData _type_ is listed under _ListItemAllFields_ > _\_\_metadata_ in the response.

In our case, it is `SP.Data.Shared_x0020_DocumentsItem`.

![screenshot of the Get Document Metadata result](images/create_a_connected_system/sharepoint_get_documet_metadata_type.png)

### Getting the metadata field name

If you send a request to update data and it does not update, but the request says it was successful, send a get metadata request and look for the metadata field in the response. The name of the field might be different than its display name.

For example, in our SharePoint environment, we have a metadata field called "Description."

![screenshot of the Description metadata field in Sharepoint](images/create_a_connected_system/sharepoint_update_documet_metadata_properties.png)

However, when we send a **Get Document Metadata** request, the name of the field is "Description0."

![screenshot of highlighted Description metadata field in a Get Document Metadata result](images/create_a_connected_system/sharepoint_update_documet_metadata_description.png)

### Creating the request body

When we use the information we received from the get metadata request above, our request body looks like this:

```
1
2
3
4
5
6
=a!toJson(
  { "__metadata":
  { "type": `"SP.Data.Shared_x0020_DocumentsItem"` },
  `"Description0"`:"Quarterly report 2019-Q4"
  }
)
```

### Providing the ETag value

If you need to prevent lost updates caused by multiple users making a request to update the same file, you should provide the ETag number. If you don't, when two or more requests are made at the same time, the last request to go through will overwrite the earlier requests. This could lead to one or more updates being lost because the last update won't include the information from the previous requests.

To get the ETag value, send a **Get Document Metadata** request. The body of the response contains the ETag number.

![screenshot of highlighted etag metadata field in a Get Document Metadata result ](images/create_a_connected_system/sharepoint_get_documet_metadata_response.png)

The dot notation we would use to get the ETag in the above response is `.result.d.ListItemAllFields.__metadata.etag`.

![screenshot of an expression rule that uses the etag metadata field](images/create_a_connected_system/sharepoint_get_documet_metadata_dot_notation.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...