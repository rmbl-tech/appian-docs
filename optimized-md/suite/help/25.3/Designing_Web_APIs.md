---
source_url: https://docs.appian.com/suite/help/25.3/Designing_Web_APIs.html
original_path: Designing_Web_APIs.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating Web APIs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page illustrates the basic steps involved with creating web APIs along with examples of a GET & POST request to a web API.

-   To learn about web APIs and their configuration options, see [Web APIs](Web_APIs.html).
-   For a real-world example of how to build and test web APIs in Appian, see the [Web API Tutorial](Web_API_Tutorial.html).
-   To learn about web API authentication, see [Web API Authentication](Web_API_Authentication.html).

## Creating a web API

Appian makes it easy to create your web APIs by providing you with a series of templates to help you get started.

Selecting one of the templates will populate your web API with an example expression and test inputs, and convert it to use the proper HTTP method for that expression. If you already have your web API expression in mind, you can also create a web API from scratch.

### Create a web API using a template

To create a web API using a template:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Web API**.
3.  In the **Create Web API** dialog, choose **Select a template** and select from one of the available templates.
4.  Configure the following properties. Depending on your selected template, you may have more properties available than what is listed below.

    | Property | Description |
    | --- | --- |
    | **Template** | The name of the selected template. |
    | **Name** | The name of your web API. This name is only visible to Appian developers. |
    | **Description** | A short description about your web API. |
    | **HTTP Method** | The [HTTP method](Web_APIs.html#http-methods) for your selected template. |
    | **Endpoint** | The endpoint for the web API. This is used as part of the web API's URL to identify it and will be seen by end users and in log files for network devices and servers. |

    **Note:**  The combination of the HTTP method and endpoint must be unique across all web APIs in the system.

5.  Click **CREATE**.
6.  In the **Review Web API Security** dialog, configure the [security role map](Web_APIs.html#prodlink-security) for the web API.
7.  Click **SAVE**. The web API object is opened in a new tab or window.

In the generated web API, you'll notice that the template expression returns an HTTP Response object, built with [a!httpResponse()](fnc_system_a_httpresponse.html). All web APIs must return an HTTP Response.

### Create a web API from scratch

To create a web API from scratch:

1.  In your application, go to the **Build** view.
2.  Click **NEW** > **Web API**.
3.  In the **Create Web API** dialog, choose **Create from scratch**.
4.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of your web API. This name is only visible to Appian developers. |
    | **Description** | A short description about your web API. |
    | **HTTP Method** | The [HTTP method](Web_APIs.html#http-methods) for your web API. Options include: `GET`, `POST`, `PUT`, `DELETE`, and `PATCH`. |
    | **Endpoint** | The endpoint for the web API. This is used as part of the web API's URL to identify it and will be seen by end users and in log files for network devices and servers. |

5.  Click **CREATE**.
6.  In the **Review Web API Security** dialog, configure the [security role map](Web_APIs.html#prodlink-security) for the web API.
7.  Click **SAVE**. The blank web API opens in a new tab or window.

## Executing a smart service

Web APIs that use the `POST`, `PUT`, `DELETE`, or `PATCH` HTTP methods are able to execute a [smart service](Smart_Services.html).

Every smart service that can run inside a web API has an `onSuccess` and an `onFailure` parameter that expects an HTTP response defined using `a!httpResponse()`:

-   When the smart service executes successfully, the HTTP response defined in the `onSuccess` parameter is returned.
-   When the smart service encounters an error and is unable to execute, the HTTP response defined in the `onError` parameter is returned.

The example below uses the [Write to Data Store Entity smart service](Write_to_Data_Store_Entity_Smart_Service.html). When the write is successful, the web API results in an HTTP response with a 200 status code and a body containing the JSON-encoded data that was written to the data store.

When the write is unsuccessful, the web API results in an HTTP response with a status code of 500 and a body containing a JSON-encoded error message.

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
28
29
a!writeToDataStoreEntity(
  dataStoreEntity: cons!EMPLOYEE_ENTITY,
  valueToStore: type!Employee(
    firstName: http!request.queryParameters.firstName,
    lastName: http!request.queryParameters.laseName,
    department: http!request.queryParameters.department,
    title: http!request.queryParameters.title
  ),
  onSuccess: a!httpResponse(
    statusCode: 200,
    headers: {
      a!httpHeader(name: "Content-Type", value: "application/json")
    },
    body: a!toJson(
      fv!storedValues
    )
  ),
  onError: a!httpResponse(
    statusCode: 500,
    headers: {
      a!httpHeader(name: "Content-Type", value: "application/json")
    },
    body: a!toJson(
      {
        error: "There was an error writing to the data store"
      }
    )
  )
)
```

## Accessing the HTTP request

Data from the incoming HTTP request is exposed to the expression in the variable `http!request`.

This variable is a dictionary that contains the following fields:

| Field | Type | Description |
| --- | --- | --- |
| url | Text | The URL of the incoming request, including protocol, hostname, port, path, and query parameters |
| pathSegments | Variant (List of Text) | A list of text where each item in the list corresponds to a segment of the URL from the incoming request separated by forward slashes: `/`. The first item in the list will be the section of the URL that immediately follows the endpoint.

Because this list is wrapped in a Variant, `count(http!request.pathSegments)` will always return 1. To get around this, designers can cast the field to a List of Text: `count(cast(typeof({""}),http!request.pathSegments))`.

Indexing into pathSegments on the other hand, still works as it would for any list: `index(http!request.pathSegments, 1, null)`. |
| queryParameters | Dictionary | A dictionary where the keys are the names of the query parameters from the request and the values are the values of those parameters |
| headers | Dictionary | A dictionary where the keys are the names of the headers from the request and the values are the values of those headers. HTTP headers which contain sensitive information are not included in the dictionary. This includes headers with keys like `Authorization` or `appian-api-key`. |
| body | Text | The body of the incoming request |
| formData | Dictionary | An alternate representation of the request body that is a dictionary where the keys are the names of the fields from the body of the request and the values are the values of those fields. This is only available when the incoming request contains a `Content-Type` header with a value of `application/x-www-form-urlencoded` and the contents of the request body can be parsed as that content type. |

## Examples

### GET requests

If a user makes a `GET` request to `https://www.example.com/suite/webapi/customer?customerId=5` the value of `http!request` will be the following:

| Field | Value |
| --- | --- |
| url | `https://www.example.com/suite/webapi/customer?customerId=5` |
| pathSegments | `{}` |
| queryParameters | `{customerId: "5"}` |
| headers | `{}` |
| body | `""` |

In the above example, you can extract the value of the customer ID from the request using the expression `http!request.queryParameters.customerId`.

| Expression | Value |
| --- | --- |
| `http!request.queryParameters.customerId` | `"5"` |

However, if the user instead makes a `GET` request to `https://www.example.com/suite/webapi/customer/5` with no headers the value of `http!request` will be the following:

| Field | Value |
| --- | --- |
| url | `https://www.example.com/suite/webapi/customer/5` |
| pathSegments | `{"5"}` |
| queryParameters | `{}` |
| headers | `{}` |
| body | `""` |

In the above example, you can extract the value of the customer ID from the request using the expression `http!request.pathSegments[1]`.

| Expression | Result Value |
| --- | --- |
| `http!request.pathSegments[1]` | `"5"` |

Note that in both examples above, the ID of the customer was of type Text, not Number. This is because all HTTP URLs, including path and query parameters, are fundamentally text and not numbers. All values in the `http!request.queryParameters` and `http!request.headers` dictionaries are of type Text.

For more guidance on creating a GET API, check out this video from the [Integrations 102: Web APIs Academy Online course](https://academy.appian.com/#/online-courses/39da86cf-1506-4ef9-8084-d2d924783288):

### POST requests

For `POST` requests, the body of the request is exposed in two fields: `body` and `formData`.

If a user makes a `POST` request to `https://www.example.com/suite/webapi/customer` where the body of the request contains `id=7&name=Acme+Corporation&firstPurchaseDate=2016-03-12` and there a content type header with a value of `application/x-www-form-urlencoded`, the value of `http!request` will be the following:

| Field | Value |
| --- | --- |
| url | `https://www.example.com/suite/webapi/customer/` |
| pathSegments | `{}` |
| queryParameters | `{}` |
| headers | `{Content-Type: "application/x-www-form-urlencoded"}` |
| body | `"id=7&name=Acme+Corporation&firstPurchaseDate=2016-03-12"` |
| formData | `{id:"7", name:"Acme Corporation", firstPurchaseDate:"2016-03-12"}` |

If the same request did not contain a content type header or if it had a value other than `application/x-www-form-urlencoded`, the `formData` field of `http!request` would have been null.

When designing a web API, you can save a default value for your test HTTP request using the **Set as default test values** link. Once set, the default values will be saved with the interface.

For more guidance on creating a POST API, check out this video from the [Integrations 102: Web APIs Academy Online course](https://academy.appian.com/#/online-courses/39da86cf-1506-4ef9-8084-d2d924783288):

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...