---
source_url: https://docs.appian.com/suite/help/25.3/fnc_statistical_harmean.html
original_path: fnc_statistical_harmean.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# harmean() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**harmean**( _number_ )

Returns the harmonic mean of the specified number(s), which is the number of terms divided by the sum of the terms' reciprocals.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal Array_

 |

Numbers over which to calculate the harmonic mean.

 |

## Returns

Decimal

## Usage considerations

Use this function for the average of rates.

## Examples

`harmean(1,2,3)` returns `1.636364`

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