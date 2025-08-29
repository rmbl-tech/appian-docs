---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_trunc.html
original_path: fnc_mathematical_trunc.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# trunc() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**trunc**( _value, numberOfDecimals_ )

Truncates a decimal number to the specified number of places after the decimal point.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Decimal_

 |

A decimal number.

 |
|

`numberOfDecimals`

 |

_Number_

 |

The number of places after the decimal point to which the number should be truncated.

 |

## Returns

Decimal

## Usage considerations

If the _numberOfDecimals_ parameter is not specified, a default value of `0` is used and the decimal number is truncated to just its integer value.

Appian stores the `Number (Decimal)` data type as a double precision floating-point decimal, which is a 64-bit IEEE 754 floating point. You may experience unexpected results when using this function due to a limitation with the IEEE 754 standard. Refer to [Appian Knowledge Base article #1426](https://community.appian.com/support/w/kb/707/kb-1426-unexpected-results-on-decimal-calculations-and-rounding) for more details and suggested workarounds.

## Examples

`trunc(7.3675,2)` returns `7.36`

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