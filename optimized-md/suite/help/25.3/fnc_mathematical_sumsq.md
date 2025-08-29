---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_sumsq.html
original_path: fnc_mathematical_sumsq.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# sumsq() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**sumsq**( _number_ )

Squares each number and then returns the sum of the squares.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal Array_

 |

A number or array of numbers that will be squared before being added into the final sum.

 |

## Returns

Decimal

## Examples

`sumsq(3,4)` returns `25`

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