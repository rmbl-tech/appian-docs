---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_httpresponse.html
original_path: fnc_system_a_httpresponse.html
version: "25.3"
title: "a!httpResponse() Function"
page_id: "fnc_system_a_httpresponse"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!httpResponse() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!httpResponse**( _statusCode, headers, body_ )

Returns an HTTP Response object for use in a Web API.

**See also:** [Web APIs](Web_APIs.html), [a!httpheader()](fnc_connector_http_a_httpheader.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`statusCode`

 |

_Number (Integer)_

 |

The status code of the response. Default is "200" meaning successful completion of the request.

 |
|

`headers`

 |

_List of HttpHeader_

 |

A list of headers for the response. Built with [a!httpheader()](fnc_connector_http_a_httpheader.html). Header values set using [a!scsField()](fnc_connector_http_a_scsfield.html) will be ignored.

 |
|

`body`

 |

_Text_

 |

The body of the response. This value can be either text or a document. If a document is supplied, default headers will be set and the client browser will attempt to open the document. Some documents, such as images, sound files, and PDFs, can be effectively viewed within your browser window. Other documents, such as Microsoft Office files, may be downloaded for local viewing.

 |

## Returns

HTTP Response

## Examples

To test these examples, paste them into the expression editor of a Web API object. You can view the test results from within the designer by clicking the **Test Request** button. You can also view the runtime results in your browser by clicking the URL.

### Returning a JSON body

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
a!httpResponse(
  statusCode: 200,
  headers: {
    a!httpHeader(name: "content-type", value: "application/json")
  },
  body:{
    {
      firstName: "Jane",
      lastName: "Doe",
      age: 35
    },
    {
      firstName: "John",
      lastName: "Smith",
      age: 42
    }
  }
)
```

### Returning a document as the body

```
1
2
3
4
5
6
7
8
a!httpResponse(
  statusCode: 200,
  headers: {
    a!httpHeader(name: "content-type", value: "application/json")
  },
  body: a!iconIndicator("STATUS_WARN")
)
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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!httpResponse\_17r4](/suite/help/25.3/fnc_system_a_httpresponse_17r4.html) |
Can now return documents through Web APIs so that other systems can access Appian documents.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...