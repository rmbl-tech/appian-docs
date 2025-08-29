---
source_url: https://docs.appian.com/suite/help/25.3/Deploy_Package_API.html
original_path: Deploy_Package_API.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deployment API - Deploy Package

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This endpoint executes a deployment on an Appian environment. You can specify the name and description of the deployment, as well as upload Admin Console settings, a deployment package, import customization file, plug-in file, and/or database scripts.

A deployment package is a single ZIP file that can contain a package, an application, multiple applications, or [multiple packages](Deploy_to_Target_Environments.html#manually-export-and-import-multiple-packages-across-applications).

-   HTTP Request Method: `POST`
-   Header: `Action-Type: import`
-   Endpoint: `/deployments`

**Tip:**  If the Action-Type header is not provided, the endpoint will automatically default to import. This means there is no meaningful difference between versions 1 and 2 of the endpoint.

## Request

When performing a `POST` request, you must define a request body using the `multipart/form-data` content type. Form data allows you to send key-value pairs and upload files, such as your deployment package.

Each `POST` request’s body must include a JSON object (`application/json` content type) and form parameters (uploaded files). The JSON object is a list of key-value pairs, as listed below.

### JSON object parameters

| Key | Value | Required |
| --- | --- | --- |
| name | Name of the deployment. This name will appear in the **Deploy** view in Appian Designer. | Yes |
| description | Description of the deployment. This description will appear in the **Deploy** view in Appian Designer. | No |
| adminConsoleSettingsFileName | File name of the Admin Console settings (.zip). | No\* |
| packageFileName | File name of the deployment package (.zip). | No\* |
| customizationFileName | File name of the import customization file (.properties). | No\* |
| pluginsFileName | File name of the plug-ins file (.zip). | No\* |
| dataSource | Name or UUID of the data source. If the data source is connected through the [Admin Console](Appian_Administration_Console.html#data-sources), use the value in the **Name** field. If the data source is connected through a [data source connected system](data-source-connected-systems.html), use the UUID of the connected system. | No\* |
| databaseScripts | Array of data. Each element of the array consists of an object with a file name and an order ID used for execution order of the scripts (see below). | No\* |
| databaseScripts.fileName | File name of each database script to be executed (.sql or .ddl). | No |
| dataScripts.orderId | The order in which each database script will be executed, starting at 1. | No |

-   A adminConsoleSettingsFileName, packageFileName, customizationFileName, pluginsFileName, or dataSource with accompanying databaseScripts _must_ be provided in order to create a valid deployment. Any combination of these can be deployed together but at least one must be present for the deployment to be successful.

### Request example

In addition to the JSON object below, the request should have the referenced files attached.

**Request**

```
1
POST /deployments
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
11
12
13
14
15
16
17
{
   "name": "Fraud Investigation Management Release 1.0",
   "description": "Base functionality to input and manage fraud cases",
   "adminConsoleSettingsFileName": "ACME Brand Standards.zip",
   "packageFileName": "Fraud Investigation Management.zip",
   "customizationFileName": "Fraud Investigation Management.properties",
   "pluginsFileName": "DEV Fraud Investigation Management Plug-ins.zip",
   "dataSource": "jdbc/AppianAnywhere",
   "databaseScripts": [
      {
         "fileName": "Create Tables.sql", "orderId": "1"
      },
      {
         "fileName": "Update Reference Data.sql", "orderId": "2"
      }
   ]
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
25
26
27
curl --location --request \
POST 'https://mysite.appiancloud.com/suite/deployment-management/v2/deployments' \
--header 'appian-api-key: <API key>' \
--header 'Action-Type: import' \
--form json='{
      "name": "Fraud Investigation Management Release 1.0",
      "description": "Base functionality to input and manage fraud cases",
      "packageFileName": "Fraud Investigation Management.zip",
      "customizationFileName": "Fraud Investigation Management.properties",
      "adminConsoleSettingsFileName": "ACME Brand Standards.zip",
      "pluginsFileName": "DEV Fraud Investigation Management Plug-ins.zip",
      "dataSource": "jdbc/AppianAnywhere",
      "databaseScripts": [
         {
            "fileName": "Create Tables.sql", "orderId": "1"
         },
         {
            "fileName": "Update Reference Data.sql", "orderId": "2"
         }
      ]
   }' \
--form packageFileName=@'/tmp/Fraud Investigation Management.zip' \
--form customizationFileName=@'Fraud Investigation Management.properties' \
--form adminConsoleSettingsFileName=@'ACME Brand Standards.zip' \
--form pluginsFileName=@'DEV Fraud Investigation Management Plug-ins.zip' \
--form databaseScript1=@'Create Tables.sql' \
--form databaseScript2=@'Update Reference Data.sql'
```

Each form parameter requires a key name. Key names do not need to match anything in the JSON object.

## Response

### Successful response

| Attribute | Value |
| --- | --- |
| uuid | UUID of the deployment. This can be used to [retrieve details](Get_Deployment_Results_API.html) of the deployment. |
| url | The URL to use to retrieve the details of the deployment. |
| status | Status of the deployment. These correspond to the [statuses](deployments-view.html#deployment-status) that appear on the [**Deploy** view](deployments-view.html) in Appian Designer.

Possible statuses: **IN\_PROGRESS**, **COMPLETED**, **COMPLETED\_WITH\_ERRORS**, **FAILED**, **PENDING\_REVIEW**, or **REJECTED**. |

### Response example

```
1
2
3
4
5
{
   "uuid": "d243b14c-3ba5-41c3-9f51-76da51beb8f5",
   "url": "https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/",
   "status": "IN_PROGRESS"
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...