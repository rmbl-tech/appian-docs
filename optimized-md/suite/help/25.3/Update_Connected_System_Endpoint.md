---
source_url: https://docs.appian.com/suite/help/25.3/Update_Connected_System_Endpoint.html
original_path: Update_Connected_System_Endpoint.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Update Connected System Endpoint

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This endpoint updates a connected system's properties in an Appian environment. With this endpoint, you can integrate with a secrets management tool to update credentials or make other changes to the connected system object without needing to sign in to Appian.

-   Header: `Content-Type: application/json`
-   HTTP Request Method: `PATCH`
-   Endpoint: `/connected-system-management/v1/connected-systems/<UUID>`

## Workflow

Complete the following steps to update a connected system's properties using this endpoint.

1.  In Appian, navigate to the connected system object.
2.  In the Connected System Properties, click **Copy UUID to clipboard**.

    [![connected system properties with UUID highlighted](images/connected-system-uuid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1055)

    [![](images/connected-system-uuid.png)](#_)

3.  Invoke the endpoint using the copied UUID.

**Note:**  Connected system UUIDs are also available in the import customization file generated when you export the application.

## Request

Each `PATCH` request’s body must include a JSON object (`application/json` content type). The JSON object is a list of key-value pairs, each a connected system property and its new value. Only the properties included as parameters are updated.

### JSON object parameters

The parameters you can pass to the endpoint vary depending on the type of connected system you are updating.

The properties you can update with this endpoint are the same as those that can be set in the [import customization file](Managing_Import_Customization_Files.html). See the individual connected system pages for the list of the allowed parameters.

-   [Amazon Machine Learning](amazon-machine-learning.html#automating-property-updates)
-   [Blue Prism](blue-prism-connected-system.html#automating-property-updates)
-   [Custom JDBC](custom-jdbc-connected-system.html#automating-property-updates)
-   [Data Source](data-source-connected-systems.html#automating-property-updates)
-   [DocuSign](docusign-connected-system.html#automating-property-updates)
-   [Google Cloud Natural Language](google-cloud-natural-language.html#automating-property-updates)
-   [Google Cloud Translate](google-cloud-translate.html#automating-property-updates)
-   [Google Cloud Vision](google-cloud-vision.html#automating-property-updates)
-   [Google Drive](google-drive-connected-system.html#automating-property-updates)
-   [Google reCAPTCHA](google_reCAPTCHA.html#automating-property-updates)
-   [HTTP](http-connected-system.html#automating-property-updates)
-   [Microsoft Azure LUIS](microsoft-azure-luis-connected-system.html#automating-property-updates)
-   [Microsoft Dynamics 365](microsoft-dynamics-365-crm-connected-system.html#automating-property-updates)
-   [OpenAPI](openapi-connected-system.html#automating-property-updates)
-   [Salesforce](salesforce-connected-system.html#automating-property-updates)
-   [SharePoint](sharepoint-connected-system.html#automating-property-updates)

### Request example

The following example shows a username and password update for an HTTP connected system using Basic authentication.

**Request**

```
1
PATCH /connected-system-management/v1/connected-systems/<UUID>
```

**JSON object example**

```
1
2
3
4
{
 "username": "system.read.svc",
 "password": "46hvase5ru6dsa",
}
```

**cURL example**

If you’re calling the API from a command line interface, you can use cURL to make a request. The cURL command with the above JSON object and its corresponding files looks like:

```
1
2
3
4
5
6
7
8
curl --location --request \
PATCH 'https://mysite.appiancloud.com/suite/connected-system-management/v1/connected-systems/<UUID>' \
--header 'appian-api-key: <API key>' \
--header 'Action-Type: import' \
--form json='{
    "username": "system.read.svc",
    "password": "46hvase5ru6dsa",
   }' \
```

## Response

### Successful response

| Attribute | Value |
| --- | --- |
| resource | The connected system object that was updated |
| message | A string indicating that the update succeeded |

### Response example

```
1
2
3
4
{
 "resource": "/suite/connected-system-management/v1/connected-systems/_a-0000eb95-35b3-8000-9fa4-011c43211c48_7519",
 "message": "Success"
}
```

## Errors

The following table describes errors you may encounter when using this endpoint.

| Error code | HTTP status code | Description | Example |
| --- | --- | --- | --- |
| APNX-1-4504-004 | 400 | One or more fields referenced in the request body are invalid | For an HTTP connected system using API Key authentication, attempting to update the non-existent `username` field results in this error |
| APNX-1-4504-011 | 400 | The provided UUID does not match a connected system object | For a connected system with a UUID of `_a-0000eb95-35b3-8000-9fa4-011c43211c48_7519`, using any other value in the request URL results in this error |
| APNX-1-4504-016 | 400 | The request body is empty or the JSON object is malformed | The following JSON object is malformed, so using it in the request body results in this error: `{"username": "system.read.svc, "password": 46hvase5ru6dsa}` |
| APNX-1-4187-000 | 401 | The provided credentials are invalid | An expired access token is included in the request resulting in this error |
| APNX-1-4188-003 | 401 | The service account associated with the provided access token or API key is not in the [service account system group](System_Groups.html#service-accounts) or the service account does not have [editor permission for the connected system object](Connected_System_Object.html#prodlink-security) | The connected system's security does not allow service accounts to edit the object |
| APNX-1-4504-017 | 415 | The request body's content type is invalid. The only supported content type is `application/json` | A request including a `Content-Type: form-data` header results in this error |
| APNX-1-4504-018 | 404 | An incorrect endpoint was specified or the request refers to an invalid connected system UUID | Making a request to an invalid endpoint, such as `/connected-system-mgmt/v1/connected-systems/<UUID>`, results in this error |
| APNX-1-4504-020 | 405 | The request was made with an invalid HTTP method. `PATCH` is the only method allowed with this endpoint | A request made with the `DELETE` method results in this error |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...