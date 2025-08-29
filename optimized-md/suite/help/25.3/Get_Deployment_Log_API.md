---
source_url: https://docs.appian.com/suite/help/25.3/Get_Deployment_Log_API.html
original_path: Get_Deployment_Log_API.html
version: "25.3"
title: "Deployment API - Get Deployment Log"
page_id: "Get_Deployment_Log_API"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deployment API - Get Deployment Log

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

This endpoint retrieves the deployment log, given the UUID of the deployment.

-   HTTP Request Method: `GET`
-   Endpoint: `/deployments/<uuid>/log`

## Request

When performing a `GET` request, you don’t need a request body. However, you do need to specify the UUID of the deployment you’re querying for. This is done by adding a path parameter to the end of the URL, such as: `https://<domain>/suite/deployment-management/v2/deployments/<UUID>/log`

### Request example

**Request**

```
1
GET /deployments/<uuid>/log
```

**cURL example**

If you’re calling the API from a command line interface, you can use cURL to make a request. The cURL command with the deployment UUID looks like:

```
1
2
3
curl --location --request
GET 'https://mysite.appiancloud.com/suite/deployment-management/v2/deployments/d243b14c-3ba5-41c3-9f51-76da51beb8f5/log/' \
--header 'appian-api-key: <API key>'
```

## Response

### Successful response

The [deployment log](resolve-deployment-issues.html) will be returned in text format.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...