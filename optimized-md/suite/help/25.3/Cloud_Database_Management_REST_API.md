---
source_url: https://docs.appian.com/suite/help/25.3/Cloud_Database_Management_REST_API.html
original_path: Cloud_Database_Management_REST_API.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Cloud Database Management REST API

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Cloud Database Management REST API provides programmatic access to the [Appian-provided Cloud database](appian-cloud-database-administration.html) so you can automate configuration steps as part of your DevOps process.

With this API, you can manage [Enhanced Data Pipeline (EDP)](Enhanced_Data_Pipeline_for_Appian_Cloud.html) access to the cloud database without needing to sign in and manually update those values. The API consists of three endpoints:

-   [Update EDP user credentials](Update_Enhanced_Data_Pipeline_Credential_Endpoint.html)
-   [Add user permissions](Add_EDP_User_Permissions.html)
-   [Remove user permissions](Remove_EDP_User_Permissions.html)

This page explains how to make API calls and authenticate requests.

## Base URL

The API's base URL is unique to your Appian environment. It is formatted as `https://<environment hostname>/suite`. For example, if your hostname is `mysite.appiancloud.com`, the base URL would be `https://mysite.appiancloud.com/suite`.

## Authentication

You authenticate client requests to the API with an [API key](#using-an-api-key) or an [OAuth token](#using-an-oauth-token).

To use either of these authentication methods, your administrator must first configure the method in the [Admin Console](Appian_Administration_Console.html#web-api-authentication).

**Note:**  To update a user password, the Service Account associated with the access token or API key must be a member of the [**Database Administrators** system group](User_Roles.html#database-administrator-role).

### Using an API key

To use an API key to authenticate requests, set the `appian-api-key` header with the API key as the header value.

```
1
2
3
curl --location --request \
PATCH 'https://mysite.appiancloud.com/suite/cloud-database-management/v1/edp-credentials/<edp-username>' \
--header 'appian-api-key: <API key>' \
```

### Using an OAuth token

To authenticate requests with an OAuth token, set the `Authorization` header with the `Bearer` prefix and token as the header value.

```
1
2
3
curl --location --request \
PATCH 'https://mysite.appiancloud.com/suite/cloud-database-management/v1/edp-permissions/add' \
--header 'Bearer <token>' \
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...