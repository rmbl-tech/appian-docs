---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_hour.html
original_path: fnc_date_and_time_hour.html
version: "25.3"
title: "hour() Function"
page_id: "fnc_date_and_time_hour"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# hour() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**hour**( _time_ )

Returns the hour from the time specified.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`time`

 |

_Time_

 |

A time or date & time value from which the hour is extracted.

 |

## Returns

Integer

## Usage considerations

The hour is expressed in 24-hour time (0 for midnight, 13 for 1 PM).

No time shift occurs.

## Examples

`hour(time(14,20,23))` returns `14`

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