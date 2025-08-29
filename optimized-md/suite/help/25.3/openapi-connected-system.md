---
source_url: https://docs.appian.com/suite/help/25.3/openapi-connected-system.html
original_path: openapi-connected-system.html
version: "25.3"
title: "OpenAPI Connected System"
page_id: "openapi-connected-system"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# OpenAPI Connected System

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

OpenAPI connected systems are [HTTP connected systems](http-connected-system.html) that leverage an OpenAPI document to inherit a base URL and authentication options. Additionally, they can use that OpenAPI document to display the list of included operations and generate integrations from them. These generated integrations will already include the path, rule inputs, query parameters, and HTTP headers specified by the OpenAPI document.

Appian automatically generates an expression for the URL with rule inputs for any path parameters. It also generates required headers and query parameters.

For more information about the Authentication types that may be available from the Authentication dropdown list, see [Authentication Types](connected_system_authentication.html)

## Properties

OpenAPI connected systems have the following properties:

| Field | Description |
| --- | --- |
| Name | The name of the connected system. Use a name that will uniquely identify this connection to the external system. |
| Description | Supplemental information about the connected system that is displayed in the objects grid of some Designer views and when selecting the system in an integration object. |
| System Logo | An image document used to visually represent the external system or service being connected to. The logo is displayed in the integration designer and in the Process Modeler on integrations that connect to this system (using the Call Integration Smart Service). If no document is selected a default logo will be used instead. |
| OpenAPI/Swagger Document | An OpenAPI documents (formerly known as a Swagger document) defines a standard interface to a RESTful API. They can be read by a human or computer to understand the capabilities of a web service without access to source code/documentation. By uploading these to your connected system, Appian can inherit base URLs, authentication details, and a list of operations. |
| Base URL | A consistent prefix for the URLs of this connected system's integrations. This value can be selected from the list of base URLs that are inherited from the attached OpenAPI document.

This value is included in [import customization files](Managing_Import_Customization_Files.html) so that you can specify a different value for each environment. |
| Authentication | The type of authentication that integrations leveraging this connected system will use. For authentication options, see [Authentication Types](connected_system_authentication.html). |
| Data Source Shortcut | Determines whether to show the connected system as a [data source shortcut](configure-record-data-source.html#create-data-source-shortcuts) in the record type configuration. |
| Shortcut Display Name | The name of the data source shortcut option. This property only appears when **Data Source Shortcut** is selected. |

![screemshot of an OpenAPI connected system object](images/create_a_connected_system/openapi_connected_system.png)

### Automating property updates

This object's properties can also be updated programmatically using the [Update Connected System endpoint](Update_Connected_System_Endpoint.html). This lets you change passwords, API keys, and other values without needing to sign in to Appian.

The following properties can be included in the JSON request body of the `PATCH /connected-system/<UUID>` call.

\*Custom header properties are incrementally labeled. `csCustomHeaders.1` is the property name of the first custom header.
| Authentication Type | Available Properties |
| --- | --- |
| API Key | baseUrl, apiKeyValue |
| AWS Signature v4 | baseUrl, accessKeyId, secretKey, awsRegion, securityToken |
| Basic | baseUrl, username, password |
| Google Service Account | baseUrl, projectId, privateKeyId, privateKey, clientEmail, clientId, tokenUri |
| OAuth 2.0: Authorization Code Grant | baseUrl, clientId, clientSecret, tokenUrl, authUrl |
| OAuth 2.0: Client Credentials Grant | baseUrl, clientId, clientSecret, tokenUrl |
| OAuth 2.0: SAML Bearer Assertion Flow | baseUrl, clientId, clientSecret, tokenUrl, refreshTokenUrl, csCustomHeaders._n_\* |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...