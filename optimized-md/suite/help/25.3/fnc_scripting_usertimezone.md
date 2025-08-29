---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_usertimezone.html
original_path: fnc_scripting_usertimezone.html
version: "25.3"
title: "usertimezone() Function"
page_id: "fnc_scripting_usertimezone"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# usertimezone() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**usertimezone**( _user_ )

Returns the site primary timezone if the application is configured to override user preferences; otherwise it returns the preferred timezone of the given user or the site primary timezone if the user doesn't have a preference set.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`user`

 |

_user_

 |

The user (or the username of the user) for whom the timezone should be returned.

 |

## Returns

Text

## Usage considerations

The timezone is returned as a string, such as "GMT" or "EST".

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`usertimezone(pv!user)` returns `GMT`

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