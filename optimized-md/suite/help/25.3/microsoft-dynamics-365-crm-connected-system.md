---
source_url: https://docs.appian.com/suite/help/25.3/microsoft-dynamics-365-crm-connected-system.html
original_path: microsoft-dynamics-365-crm-connected-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Microsoft Dynamics 365

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Create, retrieve, update, and delete entity records in Dynamics Version 9 and Dynamics 365.

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Properties

Two forms of authentication are available for Dynamics: [Authorization Code](#authorization-code-authentication) (per user) and [Client Credentials](#client-credentials-authentication) (single system login).

### Authorization Code authentication

Each Appian user will be required to sign in to their Dynamics account to authenticate. You must provide users a way to authenticate using [OAuth 2.0](Oauth_connected_system.html#providing-users-a-way-to-authorize).

See [Dynamics OAuth 2.0 Code Grant Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-protocols-oauth-code) for more details.

The Dynamics Authorization Code authentication has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Authorization Code**. |
| Instance URL\* | **Required**. Instance URL will be used for authorization. This URL is used to configure your integration object and when executing your operations. For example `https://company-name.crm.dynamics.com` |
| Application (Client) ID\* | **Required**. In the Azure portal, navigate to **Azure Active Directory**, select [**App Registrations**](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), and then select your application. The Application (client) ID will be listed on this page. |
| Directory (Tenant) ID\* | **Required**. In the Azure portal, navigate to **Azure Active Directory**, select [**App Registrations**](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), and then select your application. The Directory (tenant) ID will be listed on this page. |
| Client Secret\* | **Required/Sensitive**. In the [App registrations](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview) page, select your application from the list, select **Certificates & secrets**, and then navigate to **Client secrets**. Add a new client secret and click **Add**. The generated key value is the Client Secret and must be copied before leaving this page. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

Click **AUTHORIZE** to use the provided configuration information to authorize the designer in a new window. See [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html#parameters-set-in-the-other-system) for more details.

![screenshot of the Authorization Code method of authentication selected in a Microsoft Dynamics 365 connected system object](images/create_a_connected_system/dynamics_authorization_code_cs.png)

### Client Credentials authentication

Provide a single Dynamics user's credentials to authenticate. All integrations will use a shared Dynamics service account. Individual Appian users do not need their own Dynamics accounts.

See [Dynamics OAuth 2.0 Client Credentials Flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow) for more details. Microsoft community also provides a helpful [Setup Guide](https://community.dynamics.com/blogs/post/?postid=92f21150-5627-4457-afa2-bb9e8ad786f8).

The Dynamics Client Credentials authentication has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Client Credentials**. |
| Instance URL\* | **Required**. Instance URL will be used for authorization. This URL is used to configure your integration object and when executing your operations. For example `https://company-name.crm.dynamics.com` |
| Application (Client) ID\* | **Required**. In the [Azure portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), navigate to **Azure Active Directory**, select **App Registrations**, and then select your application. The Application (client) ID will be listed on this page. |
| Directory (Tenant) ID\* | **Required**. In the [Azure portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), navigate to **Azure Active Directory**, select **App Registrations**, and then select your application. The Directory (tenant) ID will be listed on this page. |
| Client Secret\* | **Required/Sensitive**. From your application page in [Azure portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/ActiveDirectoryMenuBlade/RegisteredAppsPreview), select **Certificates & secrets**, and then navigate to **Client secrets**. Add a new client secret and click **Add**. The generated key value is the Client Secret and must be copied before leaving this page. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![screenshot of the Client Credentials method of authentication selected in a Microsoft Dynamics 365 connected system object](images/create_a_connected_system/dynamics_client_credentials_cs.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

-   `instanceUrl`
-   `applicationId`
-   `directoryId`
-   `clientSecret`

## Operations

| Name | Description | Type |
| --- | --- | --- |
| [Create an Entity Record](#create-an-entity-record) | Creates a new entity record in Dynamics | WRITE |
| [Retrieve an Entity Record](#retrieve-an-entity-record) | Retrieves the data for a given entity record from Dynamics | READ |
| [List Entity Records](#list-entity-records) | Retrieves a collection of entity records from Dynamics that match the given query | READ |
| [Update an Entity Record](#update-an-entity-record) | Updates an entity record in Dynamics | WRITE |
| [Delete an Entity Record](#delete-an-entity-record) | Deletes an entity record from Dynamics | WRITE |

### Create an Entity Record

Creates a new entity record in Dynamics.

The Create an Entity Record operation modifies data in Dynamics. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Create an Entity Record operation selected in a Microsoft Dynamics 365 integration object](images/create_a_connected_system/dynamics_create.png)

### Retrieve an Entity Record

Retrieves the data for a given entity record from Dynamics.

![screenshot of the Retrieve an Entity Record operation selected in a Microsoft Dynamics 365 integration object](images/create_a_connected_system/dynamics_retrieve.png)

### List Entity Records

Retrieves a collection of entity records from Dynamics that match the given query. See [Microsoft documentation](https://docs.microsoft.com/en-us/powerapps/developer/common-data-service/webapi/query-data-web-api) for ODATA examples.

![screenshot of the List Entity Records operation selected in a Microsoft Dynamics 365 integration object](images/create_a_connected_system/dynamics_list.png)

### Update an Entity Record

Updates an entity record in Dynamics.

The Update an Entity Record operation modifies data in Dynamics. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Update an Entity Record operation selected in a Microsoft Dynamics 365 integration object](images/create_a_connected_system/dynamics_update.png)

### Delete an Entity Record

Deletes an entity record from Dynamics.

The Delete an Entity Record operation modifies data in Dynamics. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Delete an Entity Record operation selected in a Microsoft Dynamics 365 integration object](images/create_a_connected_system/dynamics_delete.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...