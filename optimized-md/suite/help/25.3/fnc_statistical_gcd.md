---
source_url: https://docs.appian.com/suite/help/25.3/fnc_statistical_gcd.html
original_path: fnc_statistical_gcd.html
version: "25.3"
title: "gcd() Function"
page_id: "fnc_statistical_gcd"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# gcd() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**gcd**( _number_ )

Returns the greatest common denominator of the specified non-negative number(s), which is the largest number that divides all the given numbers without a remainder.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal Array_

 |

The list of non-negative numbers.

 |

## Returns

Decimal

## Examples

`gcd(4,12,36)` returns `4`

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