---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_yearfrac.html
original_path: fnc_date_and_time_yearfrac.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# yearfrac() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**yearfrac**( _start\_date, end\_date, method_ )

Determine the fraction of the year.

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

The endng date.

 |
|

`method`

 |

_Date_

 |

The methodology, where 0 or omitted is US(NASD) 30/360, 1 is Actual/Actual, 2 is Actual/360, 3 is Actual/365, 4 is European 30/360.

 |

## Returns

Integer

## Examples

`yearfrac(today(), today() + 270, 3)` returns `0.739726`

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