---
source_url: https://docs.appian.com/suite/help/25.3/fnc_trigonometry_cos.html
original_path: fnc_trigonometry_cos.html
version: "25.3"
title: "cos() Function"
page_id: "fnc_trigonometry_cos"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# cos() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**cos**( _number_ )

Returns the cosine(s) of the specified number(s).

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

An angle measure or array of angle measures in radians, the cosine(s) of which will be returned.

 |

## Returns

Decimal

## Usage considerations

This function can only be used for values between 0 and 2π (~6.286).

## Examples

`cos(1)` returns `0.5403023058681398`

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