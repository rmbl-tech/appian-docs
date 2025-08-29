---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_power.html
original_path: fnc_mathematical_power.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# power() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**power**( _base, exponent_ )

Returns the base number raised to the specified exponent.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`base`

 |

_Decimal_

 |

The base for exponentiation.

 |
|

`exponent`

 |

_Decimal_

 |

The power that the base will be raised to.

 |

## Returns

Decimal

## Usage considerations

If all parameter values are integers, the function will return an integer.

## Examples

`power(1.2,3)` returns `1.728`

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