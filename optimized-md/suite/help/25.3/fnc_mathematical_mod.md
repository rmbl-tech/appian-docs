---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_mod.html
original_path: fnc_mathematical_mod.html
version: "25.3"
title: "mod() Function"
page_id: "fnc_mathematical_mod"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# mod() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**mod**( _dividend, divisor_ )

Returns the remainder of dividend when divided by the divisor.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`dividend`

 |

_Decimal Array_

 |

The number that will serve as the dividend in the modulus calculation.

 |
|

`divisor`

 |

_Decimal Array_

 |

The number that will serve as the divisor or base in the modulus calculation.

 |

## Returns

Number

## Examples

`mod(8,3)` returns `2`

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