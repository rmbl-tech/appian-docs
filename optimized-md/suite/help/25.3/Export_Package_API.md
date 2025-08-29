---
source_url: https://docs.appian.com/suite/help/25.3/Export_Package_API.html
original_path: Export_Package_API.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deployment API - Export Package

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

This endpoint executes an export on an Appian environment. To trigger the export, specify the type of export you want to perform (application or package) and the identifier for the corresponding deployment contents.

A deployment package is a single .zip file that can contain a package, an application, multiple applications, or [multiple packages](Deploy_to_Target_Environments.html#manually-export-and-import-multiple-packages-across-applications).

-   HTTP Request Method: `POST`
-   Header: `Action-Type: export`
-   Endpoint: `/deployments`

**Note:**  By default, the Action-Type in the header will be import if no type is specified.

## Request

When performing a `POST` request, you must define a request body using the `multipart/form-data` content type. Form data allows you to send a JSON object to configure the export.

Each `POST` request’s body must include a JSON object (`application/json` content type) and form parameters (uploaded files). The JSON object is a list of key-value pairs, as listed below.

### JSON object parameters

| Key | Value | Required | Array? |
| --- | --- | --- | --- |
| uuids | Array of the uuids specified for export. You can only specify multiple uuids when exporting applications. This parameter always expects an array, even for package exports. However, you can only specify a single UUID in the array when exporting packages.

When exporting a package, you can use the [application package details](Application_Package_Details_API.html) endpoint to retrieve the uuid for your package.

You cannot mix application and package uuids in a deployment. | Yes | Yes |
| exportType | Specifies the kind of export being performed of the types supported: package or application. | Yes | No |
| name | Name of the deployment. This name will appear in the **Deploy** view in Appian Designer. If you do not specify a name, Appian will generate one using `<siteName> - <packageName> - <date_timestamp>.zip` | No | No |
| description | Description of the deployment. This description will appear in the **Deploy** view in Appian Designer. | No | No |

### Request examples

**Request**

```
1
POST /deployments
```

**JSON object example**

**Package export example**

```
1
2
3
4
5
6
{
   "exportType": "package",
   "uuids": ["d243b14c-3ba5-41c3-9f51-76da51beb8f5"],
   "name": "CR-176543 Add reports dashboard",
   "description": "Updates the executive summary view."
}
```

**Application example**

```
1
2
3
4
5
6
{
   "exportType": "application",
   "uuids": ["378271a6-ca0d-4466-bac9-385e4fcb951a"],
   "name": "Fraud Investigation Management Release 1.0",
   "description": "Initial FIM release to production."
}
```

**cURL example**

If you’re calling the API from a command line interface, you can use cURL to make a request. The cURL command with the above JSON object and its corresponding files looks like:

**Package example**

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
curl --location --request \
POST 'https://mysite.appiancloud.com/suite/deployment-management/v2/deployments' \
--header 'appian-api-key: <API key>' \
--header 'Action-Type: export' \
--form json='{
      "name": "CR-176543 Add reports dashboard",
      "description": "Updates the executive summary view.",
      "uuids": ["d243b14c-3ba5-41c3-9f51-76da51beb8f5"],
      "exportType": "package"
}'
```

**Application example**

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
curl --location --request \
POST 'https://mysite.appiancloud.com/suite/deployment-management/v2/deployments' \
--header 'appian-api-key: <API key>' \
--header 'Action-Type: export' \
--form json='{
      "name": "Fraud Investigation Management Release 1.0",
      "description": "Initial FIM release to production.",
      "uuids": ["378271a6-ca0d-4466-bac9-385e4fcb951a"],
      "exportType": "application"
}'
```

## Response

### Successful response

| Attribute | Value |
| --- | --- |
| uuid | UUID of the deployment. This can be used to [retrieve details](Get_Deployment_Results_API.html) of the deployment. |
| url | The URL to use to retrieve the details of the deployment. |
| status | Status of the deployment. These correspond to the [statuses](deployments-view.html#deployment-status) that appear on the [**Deploy** view](deployments-view.html) in Appian Designer.

Possible statuses: **IN\_PROGRESS**, **COMPLETED**, **COMPLETED\_WITH\_ERRORS**, or **FAILED**. |

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