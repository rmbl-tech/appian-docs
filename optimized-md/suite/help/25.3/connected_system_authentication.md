---
source_url: https://docs.appian.com/suite/help/25.3/connected_system_authentication.html
original_path: connected_system_authentication.html
version: "25.3"
title: "Authentication Types"
page_id: "connected_system_authentication"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Authentication Types

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

[HTTP](http-connected-system.html) and [OpenAPI](openapi-connected-system.html) connected systems allow you to manage authentication details for various third-party integrations in one place. This page details the authentication options available from the **Authentication** dropdown list in these connected systems.

[![images/connected_sys_authentication.png](images/connected_sys_authentication.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img354)

[![](images/connected_sys_authentication.png)](#_)

All fields marked **Sensitive** will never be logged as part of [HTTP request/response logging for integrations](Integration_Object.html#prodlink-logging) or exported in an [import customization file](Managing_Import_Customization_Files.html).

If you need to connect to a system that uses an authentication type that isn't listed here, check out the [App Market](https://community.appian.com/b/appmarket?tags=Connected%20System%20Plug-in%2C) for pre-built connected system plug-ins that you may be able to use. Java developers can also create custom connected systems for other authentication types [using the SDK](connected-system-plug-in-landing.html).

## None

No specific authentication will be applied. You can provide custom authentication values in the integration's URL, parameters, or headers as required by the external system. Client certificate/mutual SSL authentication can be enabled by uploading [client certificates](Appian_Administration_Console.html#client-certificates) in the Admin Console. Services that use self-signed or internal SSL certificates can be enabled by uploading [trusted server certificates](Appian_Administration_Console.html#trusted-server-certificates) in the Admin Console.

## API key properties

Although API keys can be configured directly in the integration headers or parameters, the only way to securely configure an API key for an integration is by using the connected system object. The following properties are available for configuration when API key is selected as the authentication type:

| Field | Description |
| --- | --- |
| Send As | **Required**. This field specifies whether the API key should be sent as an HTTP header or a query parameter. |
| Header/Parameter Name\* | **Required**. The key identifier of the API key. |
| Value\* | **Required/Sensitive**. The key value of the API key. This value is masked to prevent unauthorized users from seeing and should be treated as a password. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

## AWS Signature Version 4

To see the configurable properties for this authentication type, see [AWS Signature Version 4 Authentication](aws_signaturev4_authentication.html)

## Basic authentication properties

The following properties are available for configuration when Basic Authentication is selected as the authentication type:

| Field | Description |
| --- | --- |
| Username\* | **Sensitive**. The username to use for authentication. |
| Password\* | **Sensitive**. The password to use for authentication. |
| Send credentials preemptively instead of waiting for a 401 authentication challenge | Determines whether or not authentication credentials are sent only after a 401 Not Authorized response or, when selected, before the system has challenged. |

\* _This value is included in an import customization file so that you can specify a different value for each environment. **Sensitive** values will not be exported in the import customization file and must be added manually. **Required** fields must have a value upon import or else import will fail. For more information on import/export behavior, see the [Connected Systems Object](Connected_System_Object.html#import-customization-file) page._

## Google Service Account properties

To see the configurable properties for this authentication type, see [Google Service Account Authentication](google_service_account_authentication.html).

## OAuth 2.0: Authorization Code Grant properties

To see the configurable properties for this authentication type, see [OAuth 2.0: Authorization Code Grant](Oauth_connected_system.html).

## OAuth 2.0: Client Credentials Grant properties

To see the configurable properties for this authentication type, see [OAuth 2.0: Client Credentials Grant](oauth_client_credentials.html).

## OAuth 2.0: SAML Bearer Assertion as Authorization Grant properties

To see the configurable properties for this authentication type, see [OAuth 2.0: SAML Bearer Assertion Flow](oauth_saml_bearer_assertion_flow.html).

## OpenID Connect properties

To see the configurable properties for this authentication type, see [OpenID Connect](OpenID_Connect.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...