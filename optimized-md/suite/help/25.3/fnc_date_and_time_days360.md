---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_days360.html
original_path: fnc_date_and_time_days360.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# days360() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**days360**( _start\_date, end\_date, method_ )

Returns the number of days between two dates, based on a 360-day calendar.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`start_date`

 |

_Date_

 |

The starting date.

 |
|

`end_date`

 |

_Date_

 |

The ending date.

 |
|

`method`

 |

_Integer_

 |

1 for European, 0 for US/NASD.

 |

## Returns

Integer

## Examples

```
1
days360(today(), today() + 365, 0)
```

Returns `360`.

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