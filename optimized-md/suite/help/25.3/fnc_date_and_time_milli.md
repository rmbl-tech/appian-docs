---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_milli.html
original_path: fnc_date_and_time_milli.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# milli() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**milli**( _time_ )

This function returns the millisecond portion of a timestamp or the decimal number that represents 1 millisecond in days.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`time`

 |

_Time_

 |

Time or Datetime timestamp from which to extract the milliseconds.

 |

## Returns

Integer

## Usage considerations

When no parameter is passed, the function returns the Interval (Day to Second) value of 1 millisecond in days (`0::00:00:00.001`).

When the optional _time_ parameter is passed, it returns the millisecond portion of the given Datetime value.

If the `now()` function is passed as the parameter, the millisecond portion of the current timestamp is returned.

## Examples

`milli()` returns `0::00:00:00.001`

`milli(now())` returns `123`

## See Also

[now()](fnc_date_and_time_now.html): Use this function to use the current timestamp as the _time_ value.

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