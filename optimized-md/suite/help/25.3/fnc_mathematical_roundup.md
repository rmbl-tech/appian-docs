---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_roundup.html
original_path: fnc_mathematical_roundup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# roundup() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**roundup**( _number, num\_digits_ )

Rounds the number up to the specified digit.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number to be rounded.

 |
|

`num_digits`

 |

_Number_

 |

Determines the digit or place to which the number will be rounded up to the nearest 10^(-num\_digits). 2 is default.

 |

## Returns

Decimal

## Usage considerations

To round the number up to the nearest hundred, set _num\_digits_ equal to `-2`.

## Examples

`roundup(7.36819)` returns `7.37`

`roundup(7.36819, 3)` returns `7.369`

`roundup(7.36819, 4)` returns `7.3682`

## See Also

[fixed()](fnc_text_fixed.html): Use this function with `roundup()` to display your desired output.

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