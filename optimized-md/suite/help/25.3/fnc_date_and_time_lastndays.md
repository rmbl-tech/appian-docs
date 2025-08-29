---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_lastndays.html
original_path: fnc_date_and_time_lastndays.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# lastndays() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**lastndays**( _date, n_ )

Returns a Boolean value for whether the given date is within the last given number of days.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date_

 |

The base date.

 |
|

`n`

 |

_Number(Integer)_

 |

The number of days to test.

 |

## Returns

Boolean

## Examples

`lastndays(date(2013,2,15), 6)` returns `False` when today's date is 2013/2/28.

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