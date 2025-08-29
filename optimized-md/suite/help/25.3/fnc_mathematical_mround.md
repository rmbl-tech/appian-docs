---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_mround.html
original_path: fnc_mathematical_mround.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# mround() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**mround**( _number, multiple_ )

Rounds the number to the specified multiple.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number that will be rounded.

 |
|

`multiple`

 |

_Decimal_

 |

The multiple to which you want to round the number.

 |

## Returns

Integer

## Usage considerations

If the nearest lower multiple is as far away as the nearest higher multiple, the number will be rounded up.

## Examples

`mround(63,8)` returns `64`

## See Also

[fixed()](fnc_text_fixed.html): Use this function with `mround()` to display your desired output.

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