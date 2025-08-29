---
source_url: https://docs.appian.com/suite/help/25.3/Update_Enhanced_Data_Pipeline_Credential_Endpoint.html
original_path: Update_Enhanced_Data_Pipeline_Credential_Endpoint.html
version: "25.3"
title: "Update Enhanced Data Pipeline Credential Endpoint"
page_id: "Update_Enhanced_Data_Pipeline_Credential_Endpoint"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Update Enhanced Data Pipeline Credential Endpoint

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The [Cloud Database Management REST API](Cloud_Database_Management_REST_API.html) allows you to manage various aspects of the Appian-provided Cloud database without the need to sign in and manually update those values.

To support this API, the following endpoint allows you to integrate with a secrets management tool to update user credentials for the [Enhanced Data Pipeline (EDP)](Enhanced_Data_Pipeline_for_Appian_Cloud.html) without needing to sign in to Appian:

-   Header: `Content-Type: application/json`
-   HTTP request method: `PATCH`
-   Endpoint: `/cloud-database-management/v1/edp-credentials/<edp-username>`

This endpoint is accessible only when [Enhanced Data Pipeline](Enhanced_Data_Pipeline_for_Appian_Cloud.html) is enabled.

This page describes how to make API calls to update an EDP user credential and troubleshoot common errors.

## Request

Each `PATCH` request’s body must include a JSON object. The JSON object is a key-value pair of the `password` property and its new value.

A password must be between 7 and 80 characters long and include both letters and numbers. It cannot be the same as your most recent password.

### Request example

**Request**

```
1
PATCH https://mysite.appiancloud.com/suite/cloud-database-management/v1/edp-credentials/<edp-username>
```

**JSON object example**

```
1
2
3
{
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
curl --location --request \
PATCH 'https://mysite.appiancloud.com/suite/cloud-database-management/v1/edp-credentials/<edp-username>' \
--header 'appian-api-key: <API key>' \
--header 'Action-Type: import' \
--form json='{
    "password": "46hvase5ru6dsa",
   }' \
```

## Response

### Successful response

| Attribute | Value |
| --- | --- |
| resource | The Enhanced Data Pipeline user that was updated |
| message | A string indicating that the update succeeded |

### Response example

```
1
2
3
4
{
    "resource": "/suite/cloud-database-management/v1/edp-credentials/edpUser",
    "message": "User password successfully updated."
}
```

## Errors

The following table describes errors you may encounter when using this endpoint.

| Error code | HTTP status code | Description | Example |
| --- | --- | --- | --- |
| APNX-1-4179-010 | 400 | The `password` property is not provided in the request body. This is the only property that can be updated using this API endpoint. | Attempting to update a non-existent `passwords` property results in this error. |
| APNX-1-4179-014 | 400 | The provided username does not exist. Usernames are case-sensitive and use camel-case. | For a user with the username `edpUser`, using any other value, such as `EdpUser`, in the request URL results in this error. |
| APNX-1-4179-013 | 400 | A password must have 7 to 80 characters and contain both letters and numbers. It cannot be the same as your most recent password. | A simple password containing only numbers, such as `12345678`, results in this error. |
| APNX-1-4187-000 | 401 | The provided credential for the endpoint is invalid. | This error occurs when an expired access token or an invalid API key is included in the request. |
| APNX-1-4188-003 | 401 | The service account associated with the provided access token or API key is not in the [**Database Administrators** system group](User_Roles.html#database-administrator-role). | The service account does not have the permission to update a database user credential. |
| APNX-1-0000-001 | 403 | You must have the Enhanced Data Pipeline feature enabled on your site to use this endpoint. | Enhanced Data Pipeline is not enabled. |
| APNX-1-4179-011 | 405 | The request was made with an invalid HTTP method. `PATCH` is the only method allowed with this endpoint. | A request made with the `POST` method results in this error. |
| APNX-1-4179-008 | 415 | The request body's content type is invalid. The only supported content type is `application/json`. | A request including a `Content-Type: form-data` header results in this error. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...