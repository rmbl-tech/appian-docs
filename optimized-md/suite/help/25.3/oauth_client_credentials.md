---
source_url: https://docs.appian.com/suite/help/25.3/oauth_client_credentials.html
original_path: oauth_client_credentials.html
version: "25.3"
title: "OAuth 2.0: Client Credentials Grant"
page_id: "oauth_client_credentials"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# OAuth 2.0: Client Credentials Grant

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides detailed information about how Appian can connect to systems that use the OAuth 2.0 Client Credentials grant. You can configure these integrations using [HTTP](http-connected-system.html), [OpenAPI](openapi-connected-system.html), [custom JDBC](custom-jdbc-connected-system.html), and [data source](data-source-connected-systems.html) connected systems.

-   To learn about connected system objects, see [Connected System Object](Connected_System_Object.html).
-   To learn about the Authorization Code Grant, see [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html).
-   To learn about how the OAuth 2.0 Client Credentials Grant can be used to invoke an Appian web API, see [Web API Authentication](Web_API_Authentication.html#oauth-20-client-credentials-grant)

## Token request sequence

The OAuth 2.0 framework is defined by the [IETF RFC 6749](https://www.rfc-editor.org/rfc/rfc6749.txt) standard.

**Note:**  Appian supports the authorization code and client credentials grant types.

Unlike the Authorization Code grant, the Client Credentials grant is used when access is being requested on behalf of an application, not a user. As a result, configuring authentication with Client Credentials has fewer steps.

This standard lays out the sequence of steps involved with the Authorization Code grant. There are three main roles in this sequence:

-   **Client**: The system initiating the resource request. In this case, Appian.
-   **Authorization Server**: The server that is ensuring that the application requesting resources has the proper permissions.
-   **Resource Server**: The server that holds the desired resources.

The following sequence diagram describes the steps involved in a successful authorization, with a resource returned to the client.

![diagram of the client credentials sequence](images/client_credentials_sequence_diagram.png)

The first part of the authorization process involves the client sending a token request to the authorization server. The authorization server determines whether the credentials are valid, as well as whether the application has granted the permissions being requested. If it has, the authorization server returns an access token to the client.

This access token will allow the client to request whatever resources were approved by the application.

### Access token expiration

Once the connected system has an access token, future requests will be granted until (1) the external application revokes permission, or (2) the access token expires.

Appian considers an access token to be revoked or expired when it's used to call an integration and the integration returns a status code of `401`, `403`, or `404`. At that point, Appian will automatically call the Token Request Endpoint to fetch another access token with the credentials from the connected system. If that call is successful, Appian will use the new access token to automatically retry the integration call.

## Important design considerations

There are several important design considerations when using the client credentials flow.

**Note:**  It is very important to review and understand the requirements in the third-party system for a successful OAuth connection.

### Registration in the third-party system

In order for Appian to successfully connect to the desired resources, you will have to register the connection in the third-party system. This is typically done under a third party system's Developer UI. The terminology varies, but registration usually requires creating an application or project in that system.

When registering an app or project in a third-party system a couple of things need to be considered:

-   **Access to the third-party application or project**: Because the OAuth 2.0 application or project in the third-party system will contain a client secret, essentially the password for the OAuth connection, an appropriate user should be selected to register the application or project.
-   **Determine where scope should be defined**: A registered application's scope may need to be configured in Appian or in the registered application. Be sure to refer to the other system's documentation to know where to define scope.

### Authorization configuration

The following information is used to request an OAuth token from a third-party system. Refer to the third-party's documentation to learn what is needed for your use case.

| Field | Description |
| --- | --- |
| Client ID\* | **Required/Sensitive**. ID provided by the third-party system during the registration process. |
| Client Secret\* | **Required/Sensitive**. The password provided by the third-party system during the registration process. This field is masked to prevent unauthorized users from seeing and should be treated as a password. |
| Include scope parameter | When selected, you can set the **Scope** field to request that system-specific permissions are assigned to the requested token. If the system you are connecting to does not require or implement scopes, clear this checkbox. |
| Scope | Defines what resources need to be accessed from the resource server. Depending on what system Appian is connecting to, permissions may be configured in the developer UI rather than using a scope. In these cases, a default scope value may be specified in their documentation. |
| Token Request Endpoint\* | **Required**. The endpoint that provided the access token for the specified resources. This value can typically be found in the third-party's documentation. |
| Additional Parameters\* | Some third-party systems require clients to include one or more custom parameters when authenticating. These parameters and their values can typically be found in the system's documentation. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...