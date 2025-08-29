---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_combin.html
original_path: fnc_mathematical_combin.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# combin() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**combin**( _n, m_ )

Calculates the number of unique ways to choose m elements from a pool of n elements.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`n`

 |

_Integer_

 |

The number of elements that can be chosen from.

 |
|

`m`

 |

_Integer_

 |

The number of elements that will be chosen from the pool of n elements.

 |

## Returns

Decimal

## Examples

`combin(4,2)` returns `6`

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