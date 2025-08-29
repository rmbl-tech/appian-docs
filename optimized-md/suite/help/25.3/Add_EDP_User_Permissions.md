---
source_url: https://docs.appian.com/suite/help/25.3/Add_EDP_User_Permissions.html
original_path: Add_EDP_User_Permissions.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add EDP User Permissions Endpoint

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This endpoint allows you to grant the database user access to tables or views without needing to sign in to Appian.

-   Header: `Content-Type: application/json`
-   HTTP request method: `PATCH`
-   Endpoint: `/cloud-database-management/v1/edp-permissions/add`

This endpoint is accessible only when [Enhanced Data Pipeline](Enhanced_Data_Pipeline_for_Appian_Cloud.html) is enabled.

This page describes how to make API calls to add permissions for an EDP database user and troubleshoot common errors.

## Usage

When the [Enhanced Data Pipeline (EDP)](Enhanced_Data_Pipeline_for_Appian_Cloud.html) is enabled for your instance, Appian Support creates a database user with read-only access to all tables and views in the schemas you specify. To ensure this user's access is limited to only required data, you can update its permissions by completing the following steps:

1.  Use the `removeAllEdpPermissions` [stored procedure](appian-cloud-database-administration.html#appianprocessremovealledppermissions) to reset the EDP database user's permissions.
2.  Use this endpoint to add just the permissions needed for the application using EDP.

If the database user's permissions need to change, you can use the [Remove EDP User Permissions endpoint](Remove_EDP_User_Permissions.html) to remove one or more of the permissions you've already granted.

## Request

Each `PATCH` request's body must include a JSON object with three key-value pairs identifying the update you want to make.

```
1
2
3
4
5
6
7
{
  "username": "<edp_database_user>",
  "schema": "<schema_name>",
  "tables": {
    "<table_name1>"
  }
}
```

### Request example

**Request**

```
1
PATCH https://mysite.appiancloud.com/suite/cloud-database-management/v1/edp-permissions/add
```

**JSON object example**

```
1
2
3
4
5
6
7
8
9
10
{
  "username": "appianReplicationViewer",
  "schema": "Appian",
    "tables": {
      "AT_CUSTOMER",
      "AT_CUSTOMER_EVENT_TYPE",
      "AT_ORDER",
      "AT_ORDER_EVENT_TYPE"
    }
}
```

**cURL example**

If you're calling the API from a command line interface, you can use cURL to make a request. The cURL command with the above JSON object and its corresponding files looks like:

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
curl --location --request \
PATCH 'https://mysite.appiancloud.com/suite/cloud-database-management/v1/edp-permissions/add' \
--header 'appian-api-key: <API key>' \
--header 'Action-Type: import' \
--form json='{
    "username": "appianReplicationViewer",
    "schema": "Appian",
    "tables": {
        "AT_CUSTOMER",
        "AT_CUSTOMER_EVENT_TYPE",
        "AT_ORDER",
        "AT_ORDER_EVENT_TYPE"
    }
   }' \
```

## Response

### Successful response

| Attribute | Value |
| --- | --- |
| resource | The database user that was updated |
| message | A string indicating that the update succeeded |

### Response example

```
1
2
3
4
{
  "resource": "/suite/cloud-database-management/v1/edp-permissions/add",
  "message": "Access to tables [<list of tables>] on schema [<schema name>] granted to user [<edp user>]"
}
```

### Partially successful response

| Attribute | Value |
| --- | --- |
| resource | The database user that was updated |
| message | A string indicating that the update was only partially successful |

### Response example

```
1
2
3
4
{
  "resource": "/suite/cloud-database-management/v1/edp-permissions/add",
  "message": "The following tables were not found in the provided schema: [<list of tables>]. The rest of the table permissions were updated successfully."
}
```

## Errors

The following table describes errors you may encounter when using this endpoint.

| Error code | HTTP status code | Description | Example |
| --- | --- | --- | --- |
| APNX-1-4179-015 | 400 | Invalid schema name | This error occurs when the value provided for the `schema` was not found in the database. |
| APNX-1-4179-016 | 400 | Invalid table name | This error occurs when one or more values provided for the `tables` were not found in the schema. |
| APNX-1-4179-017 | 400 | Permissions could not be updated | This error occurs when the requested change to user permissions could not be completed. |
| APNX-1-4187-018 | 400 | List of tables is formatted incorrectly | This error occurs when the list of tables is malformed. |
| APNX-1-4187-019 | 400 | Missing required parameter | This error occurs when the request body does not include a parameter required to complete the action. |
| APNX-1-4187-020 | 400 | No matching tables were found | This error occurs when none of the tables provided in the request are found in the schema. |
| APNX-1-4187-021 | 400 | User has full access | This error occurs when the user already has full access to the schema, so no action is taken. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...