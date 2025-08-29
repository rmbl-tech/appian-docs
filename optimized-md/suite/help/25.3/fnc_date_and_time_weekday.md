---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_weekday.html
original_path: fnc_date_and_time_weekday.html
version: "25.3"
title: "weekday() Function"
page_id: "fnc_date_and_time_weekday"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# weekday() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**weekday**( _date, return\_type_ )

Returns the day of the week of the specified date.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date_

 |

The date that the day of the week will be calculated from

 |
|

`return_type`

 |

_Integer_

 |

Controls how the days of the week are numbered with `1` correlating 1-7 with Sunday-Saturday, `2` correlating 1-7 with Monday-Sunday, and `3` correlating 0-6 with Monday-Sunday.

 |

## Returns

Integer

## Usage considerations

The default value of _return\_type_ is `1`.

## Examples

`weekday(date(2011,12,13))` returns `3`

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