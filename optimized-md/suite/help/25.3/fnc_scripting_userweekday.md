---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_userweekday.html
original_path: fnc_scripting_userweekday.html
version: "25.3"
title: "userweekday() Function"
page_id: "fnc_scripting_userweekday"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# userweekday() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**userweekday**( _date, return\_type_ )

Returns the day of the week of the specified date or datetime in the user preferred calendar.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date_

 |

The date or datetime that the day of the week will be calculated from.

 |
|

`return_type`

 |

_Number_

 |

Control for how the days of the week are numbered.

 |

## Returns

Number

## Usage considerations

### Set the return type

For the _return\_type_ parameter, use the following:

-   `1` correlates 1-7 with Sunday-Saturday (default)
-   `2` correlates 1-7 with Monday-Sunday
-   `3` correlates 0-6 with Monday-Sunday

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`userweekday(07/10/2006, 1)` returns `1`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...