---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_day.html
original_path: fnc_date_and_time_day.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# day() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**day**( _date_ )

Returns the day of the month from the date specified.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date and Time_

 |

The date from which the day of the month will be extracted.

 |

## Returns

Integer

## Examples

```
1
day(datetime(2022,7,28,12,0,0))
```

Returns `28`.

```
1
day(date(2022,7,3))
```

Returns `3`.

```
1
day(today())
```

Returns the current day of the month. For example, on the third day, this returns `3`.

```
1
day(now() + 10)
```

Adding `10` moves the calendar forward by 10 days. Assuming that `day(now())` returns `28`, for a month with 31 days, the return value is `7`. For a month with 30 days, the return value is `8`.

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