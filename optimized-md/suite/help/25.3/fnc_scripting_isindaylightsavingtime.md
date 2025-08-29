---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_isindaylightsavingtime.html
original_path: fnc_scripting_isindaylightsavingtime.html
version: "25.3"
title: "isInDaylightSavingTime() Function"
page_id: "fnc_scripting_isindaylightsavingtime"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# isInDaylightSavingTime() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**isInDaylightSavingTime**( _date, timezone_ )

Returns whether the given date and timezone are in daylight saving time.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date_

 |

The date in which the expression should evaluate.

 |
|

`timezone`

 |

_Text_

 |

The string Id of a timezone.

 |

## Returns

Boolean

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`isInDaylightSavingTime(date(2005,12,13),"America/Los_Angeles")` returns `false`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Compatible |  |
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
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...