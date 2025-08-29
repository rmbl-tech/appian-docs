---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_ln.html
original_path: fnc_mathematical_ln.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# ln() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**ln**( _number_ )

Returns the natural logarithm of the specified number, which is the power that e must be raised to in order to equal the specified number.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number in which the natural logarithm will be returned.

 |

## Returns

Decimal

## Examples

`ln(10)` returns `2.30258`

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