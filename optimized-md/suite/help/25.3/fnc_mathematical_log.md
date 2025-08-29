---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_log.html
original_path: fnc_mathematical_log.html
version: "25.3"
title: "log() Function"
page_id: "fnc_mathematical_log"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# log() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**log**( _number, base_ )

Returns the logarithm of the number using the specified base, which is the power that base must be raised to, to equal the number.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

A number, the logarithm of which will be returned.

 |
|

`base`

 |

_Decimal_

 |

The base to use in the logarithm calculation. 10 and e are common values for the base.

 |

## Returns

Decimal

## Examples

`log(8,2)` returns `3`

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