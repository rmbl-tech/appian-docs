---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_dayofyear.html
original_path: fnc_date_and_time_dayofyear.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# dayofyear() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**dayofyear**( _date_ )

Returns the day number within the year.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date and Time_

 |

The date or datetime timestamp from which the day number will be extracted.

 |

## Returns

Integer

## Examples

```
1
dayofyear(date(1957, 03, 14))
```

Returns `73`.

```
1
dayofyear(today())
```

Returns the current day number. On April 30th, the return value is `120`.

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