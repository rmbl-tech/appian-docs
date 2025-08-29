---
source_url: https://docs.appian.com/suite/help/25.3/Get_Deployment_Results_API.html
original_path: Get_Deployment_Results_API.html
version: "25.3"
title: "Deployment API - Get Deployment Results"
page_id: "Get_Deployment_Results_API"
section: "Version 2"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deployment API - Get Deployment Results

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Version 2

### Overview

This endpoint uses the UUID of the deployment to retrieve information about a deployment. You can use this endpoint to retrieve the status, regardless of whether you are importing or exporting.

-   HTTP Request Method: `GET`
-   Endpoint: `/deployments/<uuid>`

You do not need to specify the Action-Type in the header.

### Request

When performing a `GET` request, you do not need a request body. However, you do need to specify the UUID of the deployment that you are querying for. This is done by adding a path parameter to the end of the URL, such as: `https://<domain>/suite/deployment-management/v2/deployments/<UUID>`

#### Request example

**Request**

```
1
GET /deployments/<uuid>
```

**cURL example**

When calling the API from a command line interface, you can use cURL to make a request. The cURL command with the deployment UUID looks like:

```
1
2
3
curl --location --request
GET 'https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/' \
--header 'appian-api-key: <API key>'
```

### Response

#### Successful import response

| Attribute | Value |
| --- | --- |
| summary | Overview of the number of database scripts and objects that were deployed. |
| summary.databaseScripts | The total number of database scripts included in the original deployment request. |
| summary.plugins | Overview of deployment results for the plug-ins included in the original deployment request.

If there are any errors deploying plug-ins, all plug-ins are skipped or reverted and the status of the deployment is **FAILED**. A summary is only present if plug-ins successfully deploy. |
| summary.plugins.total | The total number of plug-ins in the package. |
| summary.plugins.imported | The number of plug-ins in the package that successfully imported. |
| summary.plugins.skipped | The number of plug-ins in the package that were skipped because there were no changes. |
| summary.objects | Overview of deployment results for the objects included in the original deployment request, as part of the package (.zip). |
| summary.objects.total | The total number of objects in the package. |
| summary.objects.imported | The number of objects in the package that successfully imported. |
| summary.objects.failed | The number of objects in the package that failed to import due to problems. |
| summary.objects.skipped | The number of objects in the package that were skipped because there were no changes. |
| summary.adminConsoleSettings.total | The total number of Admin Console settings included. |
| summary.adminConsoleSettings.imported | The number of Admin Console settings that were successfully imported. |
| summary.adminConsoleSettings.failed | The number of Admin Console settings that failed to import due to problems. |
| summary.adminConsoleSettings.skipped | The number of Admin Console settings that were skipped because there were no changes. |
| deploymentLogUrl | The URL to use to retrieve the deployment log of this deployment. |
| status | Status of the deployment. These correspond to the [statuses](deployments-view.html#deployment-status) that appear on the [**Deploy** view](deployments-view.html) in Appian Designer.

Possible statuses: **IN\_PROGRESS**, **COMPLETED**, **COMPLETED\_WITH\_IMPORT\_ERRORS**, **COMPLETED\_WITH\_PUBLISH\_ERRORS**, **FAILED**, **PENDING\_REVIEW**, or **REJECTED**. |

#### Import response example

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
19
20
21
22
23
24
{
    "summary": {
        "databaseScripts": 0,
        "adminConsoleSettings": {
            "total": 7,
            "imported": 6,
            "failed": 0,
            "skipped": 1
        },
        "plugins": {
            "total": 3,
            "imported": 3,
            "skipped": 0
        },
        "objects": {
            "total": 22,
            "imported": 22,
            "failed": 0,
            "skipped": 0
        },
        "deploymentLogUrl": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/log/"
    },
    "status": "COMPLETED"
}
```

#### Successful export response

| Attribute | Value | Export type | Resource path |
| --- | --- | --- | --- |
| packageZip | The URL for retrieving the exported file (.zip). | Application / Package | /package-zip |
| dataSource | Name or UUID of the data source. | Package | n/a |
| databaseScripts | An array of any scripts included in the export. | Package | n/a |
| databaseScripts.filename | File name of each database script (.sql or .ddl). | Package | n/a |
| databaseScripts.orderId | Integer specifying the order the file should be executed in for import. | Package | n/a |
| databaseScripts.url | The URL for the exported databse script resource. | Package | /db-scripts/ |
| pluginsZip | The URL for the exported plug-ins resource. | Package | /plugins-zip |
| customizationFile | The URL for the exported import customization file resource. A resource for this attribute will only be returned if an import customization file is included in the package. Only the service account will be able to access the values specified in the file; any downloads from users will return a file with all sensitive values removed. | Package | /customization-file |
| customizationFileTemplate | The URL for the exported import customization file template resource. | Application / Package | /customization-file-template |
| deploymentLogUrl | The URL to use to retrieve the deployment log of this deployment. | Application / Package | /log |
| status | Status of the deployment. These correspond to the [statuses](deployments-view.html#deployment-status) that appear on the [**Deploy** view](deployments-view.html) in Appian Designer.

Possible statuses: **IN\_PROGRESS**, **COMPLETED**, **COMPLETED\_WITH\_EXPORT\_ERRORS**, and **FAILED**. | Application / Package | n/a |

#### Export response example

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
19
20
21
{
    "packageZip": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/package-zip/",
    "dataSource": "jdbc/AppianAnywhere",
    "databaseScripts": [
       {
         "fileName": "Create Tables.sql",
        "orderId": 1,
        "url": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/db-scripts/1/",
       },
       {
         "fileName": "Update Reference Data.sql",
        "orderId": 2,
        "url": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/db-scripts/2/",
       }
    ],
    "pluginsZip": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/plugins-zip/",
    "customizationFile": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/customization-file/",
    "customizationFileTemplate": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/customization-file-template/",
    "deploymentLogUrl": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/log/",
    "status": "COMPLETED"
}
```

All exported resources have the same [data retention](Appian_Administration_Console.html#data-retention) specified in the Admin console. After the retention period has passed, you will get a 404 error if you try to access the resource.

## Version 1

### Overview

This endpoint retrieves information about a deployment on an Appian environment, given the UUID of the deployment.

-   HTTP Request Method: `GET`
-   Endpoint: `/deployments/<uuid>`

### Request

When performing a `GET` request, you do not need a request body. However, you do need to specify the UUID of the deployment that you are querying for. This is done by adding a path parameter to the end of the URL, such as: `https://<domain>/suite/deployment-management/v1/deployments/<UUID>`

#### Request example

**Request**

```
1
GET /deployments/<uuid>
```

**cURL example**

When calling the API from a command line interface, you can use cURL to make a request. The cURL command with the deployment UUID looks like:

```
1
2
3
curl --location --request \
GET 'https://mysite.appiancloud.com/suite/deployment-management/v1/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/' \
--header 'appian-api-key: <API key>'
```

### Response

#### Successful response

| Attribute | Value |
| --- | --- |
| summary | Overview of the number of database scripts and objects that were deployed. |
| summary.databaseScripts | The total number of database scripts included in the original deployment request. |
| summary.plugins | Overview of deployment results for the plug-ins included in the original deployment request.

If there are any errors deploying plug-ins, all plug-ins are skipped and/or reverted and the status of the deployment is **FAILED**. A summary is only present if plug-ins successfully deploy. |
| summary.plugins.total | The total number of plug-ins in the package. |
| summary.plugins.imported | The number of plug-ins in the package that successfully imported. |
| summary.plugins.skipped | The number of plug-ins in the package that were skipped because there were no changes. |
| summary.objects | Overview of deployment results for the objects included in the original deployment request, as part of the package (.zip). |
| summary.objects.total | The total number of objects in the package. |
| summary.objects.imported | The number of objects in the package that successfully imported. |
| summary.objects.failed | The number of objects in the package that failed to import due to problems. |
| summary.objects.skipped | The number of objects in the package that were skipped because there were no changes. |
| summary.adminConsoleSettings.total | The total number of Admin Console settings included. |
| summary.adminConsoleSettings.imported | The number of Admin Console settings that were successfully imported. |
| summary.adminConsoleSettings.failed | The number of Admin Console settings that failed to import due to problems. |
| summary.adminConsoleSettings.skipped | The number of Admin Console settings that were skipped because there were no changes. |
| summary.deploymentLogUrl | The URL to use to retrieve the deployment log of this deployment.

If the status of the deployment is **FAILED** the deploymentUrl is still accessible as a top-level attribute rather than nested in the "summary". |
| status | Status of the deployment. These correspond to the [statuses](deployments-view.html#deployment-status) that appear on the [**Deploy** view](deployments-view.html) in Appian Designer.

Possible statuses: **IN\_PROGRESS**, **COMPLETED**, **COMPLETED\_WITH\_IMPORT\_ERRORS**, **COMPLETED\_WITH\_PUBLISH\_ERRORS**, **FAILED**, **PENDING\_REVIEW**, or **REJECTED**. |

#### Response example

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
19
20
21
22
23
24
{
    "summary": {
        "databaseScripts": 0,
        "adminConsoleSettings": {
            "total": 7,
            "imported": 6,
            "failed": 0,
            "skipped": 1
        },
        "plugins": {
            "total": 3,
            "imported": 3,
            "skipped": 0
        },
        "objects": {
            "total": 22,
            "imported": 22,
            "failed": 0,
            "skipped": 0
        },
        "deploymentLogUrl": "https://mysite.appiancloud.com/suite/deployment-management/v1/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/log/"
    },
    "status": "COMPLETED"
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...