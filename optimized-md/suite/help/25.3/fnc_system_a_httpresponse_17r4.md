---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_httpresponse_17r4.html
original_path: fnc_system_a_httpresponse_17r4.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!httpResponse\_17r4() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!httpResponse() Function](/suite/help/25.3/fnc_system_a_httpresponse.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_system_a_httpresponse.html#Old_Version)

## Function

**a!httpResponse\_17r4**( _statusCode, headers, body_ )

Returns an HTTP Response object for use in a Web API.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`statusCode`

 |

_Number(Integer)_

 |

The status code of the response. Default is "200" meaning successful completion of the request.

 |
|

`headers`

 |

_List of HttpHeader_

 |

A list of headers for the response. Built with a!httpHeader().

 |
|

`body`

 |

_Text_

 |

The body of the response.

 |

## Returns

HTTP Response

## Examples

```
1
2
3
4
5
6
7
8
  a!httpResponse_17r4(
    statusCode: 200,
    headers: {
      a!httpHeader(name: "content-type", value: "application/json")
    },
    body: a!toJson(value: local!user)
  )
```

See also: [Web APIs](Web_APIs.html), [a!httpheader()](fnc_connector_http_a_httpheader.html)

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