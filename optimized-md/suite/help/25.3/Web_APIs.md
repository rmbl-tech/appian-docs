---
source_url: https://docs.appian.com/suite/help/25.3/Web_APIs.html
original_path: Web_APIs.html
version: "25.3"
title: "Web APIs"
page_id: "Web_APIs"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Web APIs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page provides detailed design information about the web API object and its configuration options.

-   To learn the basic steps involved with creating an API, see [Creating Web APIs](Designing_Web_APIs.html).
-   For a real-world example of how to build and test web APIs in Appian, see the [Web API Tutorial](Web_API_Tutorial.html).
-   To learn about web API authentication, see [Web API Authentication](Web_API_Authentication.html).

## Overview

Web APIs provide a way to expose Appian data and services to outside systems.

Web APIs are created much like expression rules. However, there are two main differences between them:

-   Web APIs include an end point that can be called by other systems.
-   Instead of using rule inputs, you can pass values to the web API using query parameters, headers, a body, or any combination of the three.

[![images/web_api_desinger.png](images/web_api_desinger.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img793)

[![](images/web_api_desinger.png)](#_)

## Invoking a web API

### Authentication

To learn about web API authentication, see [Web API Authentication](Web_API_Authentication.html).

### Cross-origin requests

HTTP requests made by one website to another are said to be "cross-origin" because the origin (the url) of the first website is different than the origin of the other site.

By default, web browsers block requests of this nature for security reasons. However, you may want certain websites to allow requests from other websites. You can allow other sites to access a website using a standard called _Cross-Origin Resource Sharing_ (CORS).

To configure CORS in Appian, you must add any sites you wish to expose data or services to in the [allowed origins](Appian_Administration_Console.html#origins) list in the Admin Console.

For `POST`, `PUT`, `DELETE`, and `PATCH` web APIs, adding a website to the allowed origins list will also exempt that website from Appian's built-in cross-site request forgery (CSRF) protection.

### HTTP headers

HTTP headers allow you to pass additional information with the response. Appian will automatically send several response headers, including `Content-Length`, `Date`, `Server`, and more. You can pass any additional headers as needed.

When a document is returned in the body, two headers are automatically added: `Content-Type`, and `Content-Disposition`.

The generated `Content-Type` header returns the type of the document. For example, if a GIF file is returned, the value of `Content-Type` is `image/gif`.

The generated `Content-Disposition` header holds a value of `inline`, indicating that the document will be viewed inline in the browser, rather than being downloaded as an attachment for local viewing. This `Content-Disposition` header also contains the filename of the returned document.

You can override these headers by manually setting them in the `headers` parameter of `a!httpResponse()`.

**Note:**  Appian Cloud does not guarantee that request headers will maintain their original casing when returned in the response. See the [Appian Cloud FAQ](Appian_Cloud_FAQ.html#why-are-http-headers-sent-to-appian-changing-case) for more details.

### HTTP methods

When creating or editing a web API, you can select from one of the following HTTP methods: `GET`, `POST`, `PUT`, `DELETE`, and `PATCH`.

The HTTP methods `OPTIONS` and `HEAD` are automatically handled by the system based on the web APIs that exist in the system for a given **Endpoint**.

-   `HEAD` requests will execute the web API for the `GET` method for the **Endpoint** and return the result, minus the response body.
-   `OPTIONS` requests will return a list of methods for which web APIs exist for a given **Endpoint**.

For example, let's say you have two web APIs with the **Endpoint** field set to _customer_, one for `GET` and one for `POST`, and you make an `OPTIONS` request to `https://www.example.com/suite/webapi/customer`, the response will looks something like this:

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
HTTP/1.1 200 OK
Date: Tue, 19 Apr 2016 15:27:22 GMT
Server: Apache
Pragma: No-cache
Cache-Control: no-cache
Expires: Thu, 01 Jan 1970 00:00:00 GMT
X-Frame-Options: SAMEORIGIN
Allow: GET, POST, OPTIONS
Content-Length: 0
Keep-Alive: timeout=20, max=100
Connection: Keep-Alive
Content-Type: text/plain
```

**Note:**  The `Allow` header contains entries for both `GET` and `POST`.

Only web APIs for the `POST`, `PUT`, `DELETE`, and `PATCH` methods may execute smart services.

Web APIs for the `GET` method will not execute any smart services included in their expression. Attempting to do so will result in the following error message: `Smart Services cannot be executed in Web APIs that have a method of "GET."`

Additionally, web APIs with the `POST`, `PUT`, or `PATCH` method can be used to [upload a document to Appian](passing-a-web-api-document-into-a-process-model.html) and download a document from Appian a binary request body. The size of this document is limited to 75 MB.

### HTTP status codes

There are several factors that affect what HTTP status code a web API returns.

| **Status Code** | **Condition** |
| --- | --- |
| 404 | There is no web API with the specified endpoint and HTTP method. |
| 404 | The user is not in the viewer role or higher for the web API. |
| 500 | There was an error evaluating the web API's expression. |
| 500 | The result of the expression evaluation was not an HTTP Response object. |

You can also specify the status code to return if an error occurs. This allows you to do things like return a `404` code if data that does not exist is requested.

## Security

**Note:**  A user must have at least **Viewer** permissions to a web API in order to execute it.

The [security](object-security.html) role map of a web API controls which users can see or modify it and its properties.

If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups pre-populate the role map when you create a web API.

If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any web API you create. System administrators can always access a web API, regardless of object-level permissions.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a web API's security role map:

| **Actions** | **Administrator** | **Editor** | **Viewer** |
| --- | --- | --- | --- |
| Execute the web API\* | Yes | Yes | Yes |
| View the web API definition | Yes | Yes | Yes |
| View the security | Yes | Yes | Yes |
| Update the web API definition | Yes | Yes | No |
| Update the security | Yes | No | No |
| Delete the web API | Yes | No | No |

\*The Administrator **user** may view, edit, and delete web APIs but may not execute them. This includes testing them inside the web API object.

## Design guidance

While editing your web APIs, you may encounter design guidance.

Appian [design guidance](appian-recommendations.html) reinforces best practice design patterns that should be implemented in your objects. Design guidance for web APIs is prompted while editing the web API or when a [precedent](Trace_Relationships_for_Impact_Analysis.html) of the web API is updated.

When a recommendation or warning is triggered, you'll see an indicator icon in the header (A) and next to the corresponding line in the expression editor (B).

Click on the icon in the header to learn more about the suggested guidance (C) and how it can be addressed.

If a recommendation is not applicable to your use case, you can **Dismiss** (D) that individual recommendation for that web API. Learn more about [recommendation dismissal](appian-recommendations.html#recommendation-dismissal). Warnings cannot be dismissed and should always be addressed to avoid complications when the logic in the object is executed.

[![images/appian_guidance_web_api_designer_annotated.png](images/appian_guidance_web_api_designer_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img794)

[![](images/appian_guidance_web_api_designer_annotated.png)](#_)

Web API guidance is also visible outside of web APIs on the [Health Dashboard](monitoring_view.html#health-dashboard).

See [design guidance](appian-recommendations.html#expression-design-guidance) for the full list of possible guidance.

## HTTP request/response logging guidelines

You can enable request/response logging on web APIs to more easily troubleshoot when web APIs fails.

When enabled, Appian enforces a number of safeguards to prevent storing any sensitive data:

| Safeguard | Description |
| --- | --- |
| **Administrator-only access** | The `APPIAN_HOME/logs/perflogs/http-requests-and-responses/` subdirectory and the `web_api_req_resp_activity.log` log are only accessible by system administrators. This prevents any privilege escalations for developers who shouldn't be able to see certain integrations. |
| **Credentials** | Credentials sent in the HTTP request will be masked. This includes API key authentication, Oauth 2.0 client credentials authentication, and basic authentication. |
| **HTTP request body** | Appian will only log the first 100,000 characters of the HTTP request body. Anything beyond that will be truncated. Additionally, any binary files sent in the request body will be replaced with the string `"<binary>"`. |
| **Log rollover policy** | The log files roll over based on time and size. No HTTP request/response log will ever last more than 7 days. The cumulative size of all rollver over HTTP request/response logs will never exceed 100 MB. To learn more about the log rollover policy, see the [Logging page](managing-log-files.html). |

However, you should not enable request/response logging if there is sensitive data in HTTP requests or responses. If there is sensitive data, like credit card numbers, in the request body, HTTP headers, or query parameters, it will be stored as plain text.

To enable HTTP request/response logging for web APIs:

1.  In your application, go to the **BUILD** view.
2.  Select the web API. The **Web API Properties** dialog appears.
3.  Under **HTTP Request/Response Logging**, select the checkbox **Enable HTTP request/response logging for this web API object**.

    ![images/integration_relative_path.png](images/web_api_request_response_logging.png)

4.  Click **OK**.

## Versions

Each time you modify and save a web API, a new version is created. All objects that use the web API will use the latest version. All versions are accessible to developers who can view the web API, and a web API can be reverted back to a previous version at any time.

For information on how to manage object versions, see [Managing Object Versions](Managing_Object_Versions.html).

**Note:**  Web APIs do not support deleting versions.

## Logging

If there is an error executing the expression associated with a web API, the error message appears in `logs/design_errors.csv` rather than in the standard application server error log.

When using WebAPIs, query paramaters are logged. As industry best practice, you should not pass any sensitive information in query parameters.

See also: [Web API Performance Logs](Logging.html#prodlink-web-api-performance-logs) and [Web API Metrics Logs](Logging.html#web-api-metrics-logs)

## Share web API documentation with OpenAPI

The [OpenAPI Specification](https://swagger.io/specification/) defines a standard which allows both humans and computers to discover and understand the web APIs available to them. These files can even be consumed in order to automatically configure the client being used to call Appian.

### Generate an OpenAPI definition

To generate an OpenAPI definition for your web APIs:

1.  In the **Applications** view, select the application containing your web APIs.
2.  Click **EXPORT** > **OpenAPI Definition**.

    **Note:**  This will only be enabled when you have exactly one application selected, and it contains at least one web API.

    ![images: web_api_desinger.png](images/exportopenapidefinition.png)

3.  Review the list of APIs to export.

    ![images: web_api_desinger.png](images/generate-openapi-from-webapis.png)

4.  Click **EXPORT**.

This will export a JSON file that uses OpenAPI version 3.0.1. The OpenAPI definition includes: the file name and description, the environment's **base URL**, and the available **authentication options**. For each endpoint, it specifies the **method**, **path**, and **description**.

### Set default test values

You can also include **HTTP headers**, **query parameters**, **path parameters**, and an example **request body** in your OpenAPI definition by setting default test values.

To set default test values:

1.  In your application, go to the **Build** view.
2.  Select your web API to open it.
3.  In the **Test Inputs** pane, add your query parameters, headers, and path parameters.

    For example:

    ![images: web_api_desinger.png](images/webapitestpane.png)

4.  Click **Set as default test values**.
5.  Click **SAVE**.

## Troubleshooting

### Question marks (?) in HTTP response from web API

If the HTTP response that is sent from the web API contains special characters, these characters may display as question marks (?) in the response body.

If these characters display correctly in the Test Results of the web API object after you click **TEST REQUEST**, you may be able to fix them in the response by modifying the _header_ parameter in the [a!httpResponse()](fnc_system_a_httpresponse.html) function of the web API expression. See this [Knowledge Base](https://community.appian.com/support/w/kb/1306/kb-1851-web-apis-return-special-characters-as-question-marks) article for more information.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...