---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_year.html
original_path: fnc_date_and_time_year.html
version: "25.3"
title: "year() Function"
page_id: "fnc_date_and_time_year"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# year() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**year**( _date_ )

Returns the year for the date specified.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date_

 |

The date from which the year is extracted.

 |

## Returns

Integer

## Examples

`year(date(2011,2,28))` returns `2011`

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