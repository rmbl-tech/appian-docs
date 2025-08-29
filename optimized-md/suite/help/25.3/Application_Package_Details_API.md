---
source_url: https://docs.appian.com/suite/help/25.3/Application_Package_Details_API.html
original_path: Application_Package_Details_API.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Application Package Details REST API

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  This API is only available for v2 of the endpoint.

## Overview

This endpoint uses the UUID of an application to retrieve data about any in-flight packages for the application.

-   HTTP Request Method: `GET`
-   Endpoint: `/applications/<UUID>/packages`

You can use this data to:

-   Link packages to change management systems.
-   Get identifiers for packages to use for a [deployment](Export_Package_API.html).

## Endpoint

While this API is not strictly a deployment API, it is most useful when used with the [deployment APIs](Deployment_Rest_API.html#version-2).

`https://<domain>/suite/deployment-management/v2/applications/<UUID>/packages`

Replace `<domain>` with your Appian site domain and replace `<UUID>` with the UUID of the application.

You can find the application UUID in the [application properties](application-settings.html#application-properties).

To use this endpoint to retrieve information from Appian, use a `GET` request.

**Note:**  Even though the package details endpoint uses the `/deployment-management` endpoint, access to the application package endpoint is not configurable using the infrastructure toggles in the Admin Console. This means that, as long as the service account has access to the application, the package data will be accessible at all times.

## Authentication

All requests are authenticated with an API key, which is linked to a service account. This is the same mechanism that Appian uses to secure Web API objects. The service account and API key can be created in the [Admin Console](Appian_Administration_Console.html#api-keys).

Once configured, there are [multiple ways](Web_API_Authentication.html#api-key-authentication) to use the API key to authenticate your request. For example, you can add it to the HTTP header with the key name:

`curl https://<domain>/suite/deployment-management/v2/applications/<UUID>/packages -H "appian-api-key: <API key>"`

When the application package endpoint is used to perform an external deployment, any API keys for the [Authenticate As service account](Deployment_Rest_API.html#authentication) will automatically grant access to package details for any application on the environment without the service account being added to the rolemap.

If you are not using the Authenticate As service account, the service account specified must have access to the application on the [application's rolemap](application-settings.html#prodlink-security) in order to return the package information.

**Tip:**  To ensure the response for these requests only have relevant data, be sure to [clean up packages](delete-deployment-packages.html#delete-a-prepared-package) promptly when they are no longer in use.

## Request example

```
1
GET /applications/d243b14c-3ba5-41c3-9f51-76da51beb8f5/packages
```

## cURL example

If you’re calling the API from a command line interface, you can use cURL to make a request. For package exports, the cURL command with the above JSON object and its corresponding files looks like:

```
1
2
3
curl --location --request \
GET https://mysite.appiancloud.com/suite/deployment-management/v2/applications/d243b14c-3ba5-41c3-9f51-76da51beb8f5/packages \
--header 'appian-api-key: <API key>'
```

## Response

**Successful response**

| Attribute | Value |
| --- | --- |
| totalPackageCount | Total number of packages in the application. Maximum limit of 100 returned since there can only be 100 packages per an application. |
| packages | An array of package metadata. Each object in the array contains the metadata for an individual package in the application. Packages are ordered based on their last modified timestamp, with the most recently modified at the top of the array. |
| packages.datasourceUuid | Name or UUID of the data source. If the data source is connected through the [Admin Console](Appian_Administration_Console.html#data-sources), use the value in the **Name** field. If the data source is connected through a [data source connected system](data-source-connected-systems.html), use the UUID of the connected system. |
| packages.objectCount | Number of design objects in the package. |
| packages.databaseScriptCount | Number of database scripts in the package. |
| packages.createdTimestamp | Timestamp for when the package was created. |
| packages.name | Name of the package. |
| packages.description | Description of the package. |
| packages.pluginCount | Number of plug-ins in the package. |
| packages.hasCustomizationFile | Boolean value that indicates whether an import customization file is specified in the package. Possible values are: `true`, `false`. |
| packages.uuid | The unique universal identifier (UUID) for the package. This is the UUID you will specify when triggering an external export of a package. |
| packages.ticketLink | The URL for the ticket specified in the [package UI](prepare-deployment-packages.html#package-properties). |
| packages.lastModifiedTimestamp | Timestamp when the package was last changed. |

### Example response

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
15
16
17
18
{
    "totalPackageCount": 1,
    "packages": [
{
            "datasourceUuid": "",
            "objectCount": 8,
            "databaseScriptCount": 0,
            "createdTimestamp": "2023-03-13T16: 54: 39.051Z",
            "name": "[VM-18533] Allows Users to Request Multiple Orders",
            "description": "- Update Order Record, - Update related action for Request to accept multiple requests even if one already exists for the record.",
            "pluginCount": 0,
            "hasCustomizationFile": false,
            "uuid": "f9c81c58-9e62-414e-9bd2-ceb2e812e251",
            "ticketLink": "https://issues.acmevehicles.com/browser/VM-18533",
            "lastModifiedTimestamp": "2023-03-13T16: 54: 39.136Z"
        }
    ]
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...