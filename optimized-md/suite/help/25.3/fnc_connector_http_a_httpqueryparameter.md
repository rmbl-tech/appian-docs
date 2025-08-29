---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_http_a_httpqueryparameter.html
original_path: fnc_connector_http_a_httpqueryparameter.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!httpQueryParameter() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

_Note: this function is used only for the HTTP Upload and HTTP Download smart services. Query Parameters for general HTTP requests are managed using [integrations](Integration_Object.html)._

## Function

**a!httpQueryParameter**( _name, value_ )

Creates an HTTP query parameter object which can be passed to an HTTP function.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

The header name.

 |
|

`value`

 |

_Type_

 |

The header value. Either Text or `a!scsField()`.

 |

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
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