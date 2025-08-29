---
source_url: https://docs.appian.com/suite/help/25.3/fnc_trigonometry_sinh.html
original_path: fnc_trigonometry_sinh.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# sinh() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**sinh**( _number_ )

Returns the hyperbolic sine(s) of the specified number(s).

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

An angle measure or array of angle measures in radians, the hyperbolic sine(s) of which will be returned.

 |

## Returns

Decimal

## Usage considerations

This function can be used with any value.

## Examples

`sinh(1)` returns `1.1752011936438013`

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