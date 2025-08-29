---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_sum.html
original_path: fnc_mathematical_sum.html
version: "25.3"
title: "sum() Function"
page_id: "fnc_mathematical_sum"
section: "Functions"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# sum() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Functions

**sum**( _addend_ )

Returns the sum of the specified numbers. Returns an integer if all parameters are integers.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`addend`

 |

_Decimal Array_

 |

A number or array of numbers that will be added into the final sum.

 |

## Returns

Decimal

## Usage considerations

If the _addend_ values are integers, the function will return an integer.

## Examples

`sum(1,2,3,4)` returns `10`

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