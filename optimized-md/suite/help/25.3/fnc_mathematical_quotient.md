---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_quotient.html
original_path: fnc_mathematical_quotient.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# quotient() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**quotient**( _numerator, denominator_ )

Returns the quotient when numerator is divided by the denominator, and drops the remainder.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`numerator`

 |

_Decimal_

 |

The numerator of the quotient, or the number that is divided.

 |
|

`denominator`

 |

_Decimal_

 |

The denominator of the quotient, or the number to divide by.

 |

## Returns

Integer

## Examples

The _denominator_ value cannot be `0`.

## Examples

`quotient(8.0,3.0)` returns `2`

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