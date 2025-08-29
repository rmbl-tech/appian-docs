---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_http_a_httpformpart.html
original_path: fnc_connector_http_a_httpformpart.html
version: "25.3"
title: "a!httpFormPart() Function"
page_id: "fnc_connector_http_a_httpformpart"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!httpFormPart() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!httpFormPart**( _name, contentType, value_ )

Creates an HTTP form part which can be passed in an integration’s multipart request body.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

The form part name.

 |
|

`contentType`

 |

_Text_

 |

The form part content type. This can be set to `“auto-detect”` to automatically detect the content type of a document value.

 |
|

`value`

 |

_Any Type_

 |

The form part value. If the value is a document, it can be streamed by setting the _contentType_ to `“auto-detect”`.

 |

## Usage considerations

For integrations that have a request body, you can send multiple types of data in a single request by choosing [Multipart Form Data (multipart/form-data)](Integration_Content_Types.html#multipart-form-data-multipartform-data) for the **Content Type**.

### Using the form to define the multipart request

If you have a static number of form parts that don't require additional logic, you can specify values for each part using the form.

![Multipart Form Data Specify Values](images/multipart_form_data_specify_values.png)

### Using an expression to define the a multipart request

If you want to use conditional logic or send a dynamic number of form parts, you can select **Define all parts with a single expression**, and define the form parts using an array of `a!httpFormPart()` functions. This can be helpful if you have multiple form parts that can be sent as a part of the integration, but some of them are optional.

**Tip:**  The output of the expression must be one of the following:

-   Null.
-   Empty brackets: {}.
-   A single httpFormData system type, created with `a!httpFormPart()`.
-   An array of type httpFormData, created with an array of `a!httpFormPart()` functions.

## Example

### Using conditional logic for a multipart request

The following interface is from an automated application deployment app. When users fill out a request to deploy an application, they can upload up to three different files. However, depending on their needs, they may only need to upload one or two files.

![Application Deployment Example](images/deployment_app_example.png)

The information from the form is passed into an integration that sends the file and text data as multipart form data.

To configure the integration object for this app, after filling out the **Connection** information, choose **Multipart Form Data (multipart/form-data)** in the **Request Body** section.

![Application Deployment Integration Example](images/deployment_app_integration_example.png)

Since you need to use conditional logic to determine which files to send with the request, choose **Define all parts with a single expression** and enter the following expression.

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
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
/*The application UUID is always sent with the request*/
{
  a!httpFormPart(
    name: "applicationUUID",
    contentType: "text/plain",
    value: ri!applicationUUID
  ),

  /*ri!applicationFile, ri!propertiesFile, and ri!sqlFile rule inputs are Document data types*/
  if
  (
    isnull(ri!applicationFile),
    {},
    a!httpFormPart(
      name: "applicationFile",
      /*Because this is a document, we set the value to "auto-detect"*/
      contentType: "auto-detect",
      value: ri!applicationFile
    )
  ),

  if
  (
    isnull(ri!propertiesFile),
    {},
    a!httpFormPart(
      name: "propertiesFile",
      contentType: "auto-detect",
      value: ri!propertiesFile
    )
  ),

  if
  (
    isnull(ri!sqlFile),
    {},
    {
      a!httpFormPart(
        name: "sqlFile",
        contentType: "auto-detect",
        value: ri!sqlFile
      ),
      /*ri!sqlDataSource rule input is a Text data type*/
      a!httpFormPart(
        name: "sqlDataSourceName",
        contentType: "text/plain",
        value: ri!sqlDataSource
      )
    }
  )
}
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...