---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_offsetfromgmt.html
original_path: fnc_scripting_offsetfromgmt.html
version: "25.3"
title: "offsetFromGMT() Function"
page_id: "fnc_scripting_offsetfromgmt"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# offsetFromGMT() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**offsetFromGMT**( _date, timezone_ )

Returns the offset (in minutes) from GMT of the given date and timezone.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`date`

 |

_Date_

 |

The date for which the offset should be returned.

 |
|

`timezone`

 |

_Text_

 |

The string Id of the timezone for which the offset should be returned.

 |

## Returns

Number

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`offsetFromGMT(date(2005,12,13), "America/Los_Angeles")` returns `-480`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |

Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
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