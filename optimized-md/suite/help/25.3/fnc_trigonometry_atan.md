---
source_url: https://docs.appian.com/suite/help/25.3/fnc_trigonometry_atan.html
original_path: fnc_trigonometry_atan.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# atan() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**atan**( _number_ )

Returns the arctangent(s) of the specified number(s) in radians.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

A number or array of numbers, the arctangent(s) of which will be returned.

 |

## Returns

Decimal

## Usage considerations

This function can only be applied for numbers between -1 and 1.

## Examples

`atan(1)` returns `0.7853981633974483`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Compatible |  |
| Process Events | Compatible |

Can be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...