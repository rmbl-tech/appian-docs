---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_eomonth.html
original_path: fnc_date_and_time_eomonth.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# eomonth() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**eomonth**( _starting\_date, months_ )

Returns the date for the last day of the month that is the number of months before or after the given starting date.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`starting_date`

 |

_Date_

 |

The starting date.

 |
|

`months`

 |

_Integer_

 |

The number of months to offset, where negative is before starting\_date and positive is after starting\_date.

 |

## Returns

Date

## Examples

`eomonth(date(2011,12,13),-6)` returns `6/30/2011`

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