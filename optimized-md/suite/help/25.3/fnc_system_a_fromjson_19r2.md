---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_fromjson_19r2.html
original_path: fnc_system_a_fromjson_19r2.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!fromJson\_19r2() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!fromJson() Function](/suite/help/25.3/fnc_system_a_fromjson.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_system_a_fromjson.html#Old_Version)

## Function

**a!fromJson\_19r2**( _jsonText_ )

Converts a JSON string into an Appian value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`jsonText`

 |

_Text_

 |

The text to convert from a JSON string to an Appian value.

 |

## Returns

One of: Dictionary, List of Integer, List of Decimal, List of Text, List of Dictionary, List of Boolean, List of Variant

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
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