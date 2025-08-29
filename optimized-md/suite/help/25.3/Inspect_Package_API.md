---
source_url: https://docs.appian.com/suite/help/25.3/Inspect_Package_API.html
original_path: Inspect_Package_API.html
version: "25.3"
title: "Deployment API - Inspect Package"
page_id: "Inspect_Package_API"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deployment API - Inspect Package

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  There is no difference in behavior between versions (v1 or v2) of this API.

## Overview

This endpoint runs an inspection for both Admin Console settings and packages. Appian will return any deployment errors or warnings for a given package and import customization file.

-   HTTP Request Method: `POST`
-   Endpoint: `/inspections`

## Request

When performing a `POST` request, you must define a request body using the `multipart/form-data` content type. Form data allows you to send key-value pairs and upload files, such as your package.

Each `POST` request’s body must include a JSON object (`application/json` content type) and form parameters (uploaded files). The JSON object is a list of key-value pairs, as listed below.

### JSON object parameters

-   `adminConsoleSettingsFileName` - File name of the file containing Admin Console settings (.zip).
-   `packageFileName` - File name of the deployment package (.zip).
-   `customizationFileName` - File name of the import customization file (.properties).

### Request example

In addition to the JSON object below, the request should have the referenced files attached.

**Request**

```
1
POST /inspections
```

**JSON object example**

```
1
2
3
4
5
{
   "adminConsoleSettingsFileName": "ACME Brand Standards.zip",
   "packageFileName": "Fraud Investigation Management.zip",
   "customizationFileName": "Fraud Investigation Management.properties"
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
curl --location --request \
POST 'https://mysite.appiancloud.com/suite/deployment-management/v2/inspections' \
--header 'appian-api-key: <API key>' \
--form 'json="{
      \"adminConsoleSettingsFileName\": \"ACME Brand Standards.zip\",
      \"packageFileName\": \"Fraud Investigation Management.zip\",
      \"customizationFileName\": \"Fraud Investigation Management.properties\"
   }"' \
--form 'adminConsole=@"ACME Brand Standards.zip" \
--form 'zipFile=@"Fraud Investigation Management.zip"' \
--form 'ICF=@"Fraud Investigation Management.properties"'
```

Each form parameter requires a key name, but these can be arbitrarily named and do not need to match anything in the JSON object. In this example, the key names `adminConsole`, `zipFile`, and `ICF` are used.

## Response

### Successful response

-   `uuid` - UUID of the inspection. This can be used to [retrieve details](Get_Inspection_Results_API.html) of the inspection.
-   `url` - The URL to use to retrieve the details of the inspection.

### Response example

```
1
2
3
4
{
   "uuid": "378271a6-ca0d-4466-bac9-385e4fcb951a",
   "url": "https://mysite.appiancloud.com/suite/deployment-management/v2/inspections/378271a6-ca0d-4466-bac9-385e4fcb951a/"
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...