---
source_url: https://docs.appian.com/suite/help/25.3/salesforce-connected-system.html
original_path: salesforce-connected-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Salesforce

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Manage your customer information and interactions. Find, update, create, or delete records within your Salesforce instance.

Two forms of authentication are available for Salesforce: [Web Server OAuth](#web-server-oauth-authentication) (per user) and [Username-Password OAuth](#username-password-oauth-authentication) (single system login).

For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

## Web Server OAuth authentication

Each Appian user will be required to sign in to their Salesforce account to authenticate. You must provide users a way to authenticate using [OAuth 2.0](Oauth_connected_system.html#providing-users-a-way-to-authorize). See [Salesforce Web Server OAuth documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_understanding_web_server_oauth_flow.htm) for more details.

The Salesforce Web Server OAuth authentication has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Web Server OAuth**. |
| Instance URL\* | **Required**. Instance URL will be used for authorization. This URL is used to configure your integration object and when executing your operations. For example: `https://na59.salesforce.com` |
| Client Id\* | **Required**. In the Salesforce Setup portal, navigate to **App Manager**, and then find your App and select **View**. The Client Id will be listed on this page as "Consumer Key". See [Salesforce set up documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/quickstart_oauth.htm) for more details. |
| Client Secret\* | **Required/Sensitive**. In the Salesforce Setup portal, navigate to **App Manager**, and then find your App and select **View**. The Client Secret will be listed on this page as "Consumer Secret". See [Salesforce set up documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/quickstart_oauth.htm) for more details. |
| Scopes | **Required**. In the Salesforce Setup portal, navigate to **App Manager**, and then find your App and select **View**. The scopes will be listed on this page as "Selected OAuth Scopes". This connected system requires API and refresh token access. You must provide API access using either the api or full scope. See [Salesforce scope documentation](https://help.salesforce.com/articleView?id=remoteaccess_oauth_scopes.htm&type=5) for more details. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

Click **AUTHORIZE** to use the provided configuration information to authorize the designer in a new window. See [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html#parameters-set-in-the-other-system) for more details.

![screenshot of the Web Server OAuth method of authentication selected in a Salesforce connected system object](images/create_a_connected_system/sf_web_server_connected_system.png)

## Username-Password OAuth authentication

Provide a single Salesforce user's credentials to authenticate. All integrations will use a shared Salesforce username and password. Individual Appian users do not need their own Salesforce accounts. See [Salesforce Username-Password OAuth documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_understanding_username_password_oauth_flow.htm) for more details.

If you are using a record type to [sync your Salesforce data in Appian](about-data-sync.html), you should use the Username-Password OAuth Authentication in the Salesforce Connected System. **Test** your connection before syncing your data to identify and resolve any authentication issues beforehand.

The Salesforce Username-Password OAuth authentication has the following properties:

| Field | Description |
| --- | --- |
| Name | **Required**. The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Authentication | Set to **Username-Password OAuth**. |
| Instance URL\* | **Required**. Instance URL will be used for authorization. This URL is used to configure your integration object and when executing your operations. For example, `https://na59.salesforce.com` |
| Client Id\* | **Required**. In the Salesforce Setup portal, navigate to **App Manager**, and then find your App and select **View**. The Client Id will be listed on this page as "Consumer Key". See [Salesforce set up documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/quickstart_oauth.htm) for more details. |
| Client Secret\* | **Required/Sensitive**. In the Salesforce Setup portal, navigate to **App Manager**, and then find your App and select **View**. The Client Secret will be listed on this page as "Consumer Secret". See [Salesforce set up documentation](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/quickstart_oauth.htm) for more details. |
| Username\* | **Required**. The username used to sign into the provided Salesforce instance |
| Password\* | **Required/Sensitive**. The password used to sign into the provided Salesforce instance |
| Security Token\* | **Required/Sensitive**. This is an automatically-generated user security token from Salesforce. In the Salesforce personal settings for the user, select **Reset My Security Token** to generate a new security token. When authorizing, this security token will be appended to the password. See [Salesforce security token documentation](https://help.salesforce.com/articleView?id=user_security_token.htm&type=5) for more details. |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

![screenshot of the User-Password OAuth method of authentication selected in a Salesforce connected system object](images/create_a_connected_system/sf_username_password_connected_system.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

| Authentication Type | Available Properties |
| --- | --- |
| Username-Password OAuth | instanceURL, clientId, clientSecret, instanceUsername, instancePassword, securityToken |
| Web Server OAuth | instanceURL, clientId, clientSecret |

## Operations

| Name | Description | Type |
| --- | --- | --- |
| [Create SObject](#create-sobject) | Adds a new business object to Salesforce | WRITE |
| [Update SObject](#create-sobject) | Updates data for an existing business object in Salesforce | WRITE |
| [Delete SObject](#delete-sobject) | Removes a business object from Salesforce | WRITE |
| [SOQL Query](#soql-query) | Allows querying a Salesforce instance using the Salesforce Object Query Language (SOQL) | READ |
| [SOSL Search](#sosl-search) | Allows searching a Salesforce instance using the Salesforce Object Search Language (SOSL) | READ |
| [Describe SObject](#describe-sobject) | Provides introspection into the metadata of the given Salesforce objects | READ |
| [Describe All SObjects](#describe-all-sobjects) | Provides introspection into the objects available in the target Salesforce instance | READ |

### Create SObject

[Adds a new business object to Salesforce](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_create.htm)

Create SObject is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Create SObject operation selected in a Salesforce integration object](images/create_a_connected_system/sf_integration_create_sobject.png)

### Update SObject

[Updates data for an existing business object in Salesforce](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_update_fields.htm)

Update SObject is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Update SObject operation selected in a Salesforce integration object](images/create_a_connected_system/sf_integration_update_sobject.png)

### Delete SObject

[Removes a business object from Salesforce](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_delete_record.htm)

Delete SObject is a `WRITE` type Integration. To prevent the integration from making the same update twice, it can only be used in the _saveInto_ parameter of an interface component or in a Web API. See [Call an Integration](Call_an_Integration.html) for more information.

![screenshot of the Delete SObject operation selected in a Salesforce integration object](images/create_a_connected_system/sf_integration_delete_sobject.png)

### SOQL Query

[Allows querying a Salesforce instance](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_query.htm) using the [Salesforce Object Query Language (SOQL)](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_soql.htm)

When creating a Connected System that connects to a Salesforce instance, Appian offers the functionality to **Provide your own SOQL Query**. When providing your own SOQL, developers can run any SOQL query they wish. Be aware that doing so could allow developers to create insecure SOQL queries that lead to SOQL injection. To mitigate this risk, it is recommended that designers follow the [Salesforce SOQL developer best practices for SOQL injection](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/pages_security_tips_soql_injection.htm) when supplying their own queries.

![screenshot of the SOQL Query operation selected in a Salesforce integration object](images/create_a_connected_system/sf_integration_soql_query.png)

### SOSL Search

[Allows searching a Salesforce instance](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_search.htm) using the [Salesforce Object Search Language (SOSL)](https://developer.salesforce.com/docs/atlas.en-us.soql_sosl.meta/soql_sosl/sforce_api_calls_sosl.htm)

![screenshot of the SOSL Search operation selected in a Salesforce integration object](images/create_a_connected_system/sf_integration_sosl_search.png)

### Describe SObject

[Provides introspection into the metadata of the given Salesforce objects](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_sobject_describe.htm)

![screenshot of the Describe SObject operation selected in a Salesforce integration object](images/create_a_connected_system/sf_integration_describe_sobject.png)

### Describe All SObjects

[Provides introspection into the objects available in the target Salesforce instance](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/dome_describeGlobal.htm)

![screenshot of the Describe All SObjects operation selected in a Salesforce integration object](images/create_a_connected_system/sf_integration_describe_all_objects.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...