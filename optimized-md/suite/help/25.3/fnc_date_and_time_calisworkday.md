---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_calisworkday.html
original_path: fnc_date_and_time_calisworkday.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# calisworkday() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**calisworkday**( _datetime, calendar\_name_ )

This returns whether or not the given Date and Time is a work day, according to the calendar defined for the system.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`datetime`

 |

_Date and Time_

 |

The Date and Time to test.

 |
|

`calendar_name`

 |

_Text_

 |

This optional parameter accepts the name of a system calendar; otherwise, the default calendar is used. In a portal, this parameter is ignored.

 |

## Returns

Boolean

## Usage considerations

Passing a calendar name allows you to validate working days using an alternate system calendar, if you have multiple calendars configured.

See also: [Process Calendar Settings](Process_Calendar_Settings.html)

### Autoscaled process models and application performance

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

`calisworkday(datetime(2011,12,13,20,0,0),"Second")` returns `true`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Incompatible |  |
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
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...