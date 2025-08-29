---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_intervalds.html
original_path: fnc_date_and_time_intervalds.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# intervalds() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**intervalds**( _hour, minute, second_ )

Converts the given time components into an equivalent time duration, an interval expressing days to seconds. This value is treated as a duration (Joe ran the marathon in 3 hours and 23 minutes), not a point in time.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`hour`

 |

_Integer_

 |

The number of hours in the time duration.

 |
|

`minute`

 |

_Integer_

 |

The number of minutes in the time duration.

 |
|

`second`

 |

_Integer_

 |

The number of seconds in the time duration.

 |

## Returns

Interval (Day to Second)

## Examples

`intervalds(2, 4, 5)` returns `0::02:04:05.000`

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