---
source_url: https://docs.appian.com/suite/help/25.3/http-connected-system.html
original_path: http-connected-system.html
version: "25.3"
title: "HTTP Connected System"
page_id: "http-connected-system"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# HTTP Connected System

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

HTTP connected systems allow you to connect to various third-party systems easily by sharing base URL and authentication details across multiple integrations. You can also upload a logo image to visually identify the system.

This page provides details about HTTP connected system properties. For information that pertains to all connected systems, see [Connected System Object](Connected_System_Object.html).

If the system you are connecting to uses OpenAPI, you can use an [OpenAPI Connected System](openapi-connected-system.html) instead.

If you unable to connect to a connected system using an HTTP connected system, you have several options:

-   Check out the pre-built connected systems that connect to popular third-party systems.
    -   Some of these are included with Appian. See the options available under CONNECTED SYSTEM TYPES in the topics to the left.
    -   You can also download pre-built connected system plug-ins from the [App Market](https://community.appian.com/b/appmarket?tags=Connected%20System%20Plug-in%2C).
-   Java developers can build custom connected system plug-ins [using the SDK](connected-system-plug-in-landing.html).

## Properties

Each HTTP connected system has the following properties.

| Field | Description |
| --- | --- |
| Name | The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| UUID | The Appian-generated identifier of the connected system object. This UUID is needed when updating the object using the connected system management API. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the [Call Integration Smart Service](Call_Integration_Smart_Service.html)). If no document is selected a default logo will be used instead. |
| Base URL | A consistent prefix for the URLs of this connected system's integrations.

This value is included in [import customization files](Managing_Import_Customization_Files.html) so that you can specify a different value for each environment. |
| Authentication | The type of authentication to use for integrations that use this connected system.
-   [None](connected_system_authentication.html#none)
-   [API Key](connected_system_authentication.html#api-key-properties)
-   [AWS Signature Version 4](aws_signaturev4_authentication.html)
-   [Basic Authentication](connected_system_authentication.html#basic-authentication-properties)
-   [Google Service Account](google_service_account_authentication.html)
-   [OAuth 2.0 Authorization Code Grant](Oauth_connected_system.html)
-   [OAuth 2.0 Client Credentials Grant](oauth_client_credentials.html)
-   [OpenID Connect](connected_system_authentication.html#openid-connect-properties)

 |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when </strong>Data Source Shortcut</strong> is selected. |

![screenshot of an HTTP connected system object](images/http_cs.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

\*Custom header properties are incrementally labeled. `csCustomHeaders.1` is the property name of the first custom header.
| Authentication Type | Available Properties |
| --- | --- |
| API Key | baseUrl, apiKeyValue |
| Basic | baseUrl, username, password |
| Google Service Account | baseUrl, projectId, privateKeyId, privateKey, clientEmail, clientId, tokenUri, userEmail |
| OAuth 2.0: Authorization Code Grant | baseUrl, clientId, clientSecret, tokenUrl, authUrl |
| OAuth 2.0: Client Credentials Grant | baseUrl, clientId, clientSecret, tokenUrl |
| OAuth 2.0: SAML Bearer Assertion Flow | baseUrl, clientId, clientSecret, tokenUrl, refreshTokenUrl, csCustomHeaders.n\* |
| OpenID Connect | Properties are inherited from the environment's OIDC configuration. These values can be changed in the [Admin Console](OpenID_Connect_User_Authentication.html). |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...