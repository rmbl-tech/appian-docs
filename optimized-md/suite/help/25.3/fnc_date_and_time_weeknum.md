---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_weeknum.html
original_path: fnc_date_and_time_weeknum.html
version: "25.3"
title: "weeknum() Function"
page_id: "fnc_date_and_time_weeknum"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# weeknum() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**weeknum**( _date, methodology_ )

Returns the week number within the year for the given date using a given methodology.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date_

 |

The date for which the week number will be determined.

 |
|

`methodology`

 |

_Integer_

 |

Controls what day is the first of the week with `1` correlating with the week beginning on Sunday and `2` correlating with the week beginning on Monday. The default value of _methodology_ is `1`.

 |

## Returns

Integer

`1` is returned for any week that contains January 1st.

## Usage considerations

-   The last days of the year will return `1` if the first day of the next year is within the same calendar week. For example, the date December 31, 2021 is on a Friday, so this will return `1` because the date January 1, 2022 is on the Saturday of that week.

## Examples

`weeknum(date(2011,12,13))` returns `51`

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