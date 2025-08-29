---
source_url: https://docs.appian.com/suite/help/25.3/fnc_connector_http_a_httpheader.html
original_path: fnc_connector_http_a_httpheader.html
version: "25.3"
title: "a!httpHeader() Function"
page_id: "fnc_connector_http_a_httpheader"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!httpHeader() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

_Note: this function is used only for the HTTP Upload and HTTP Download smart services. Headers for general HTTP requests are managed using [integrations](Integration_Object.html)._

## Function

**a!httpHeader**( _name, value_ )

Creates an HTTP header object which can be passed to an HTTP function.

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

_Any Type_

 |

The header value. Either Text or `a!scsField()`.

 |

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