---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_getdistinctusers.html
original_path: fnc_people_getdistinctusers.html
version: "25.3"
title: "getdistinctusers() Function"
page_id: "fnc_people_getdistinctusers"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# getdistinctusers() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**getdistinctusers**( _peopleArray_ )

Retrieves users from a set of users and groups.

**See also**: [topeople()](fnc_people_topeople.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`peopleArray`

 |

_User or Group Array_

 |

The groups or users and groups that you want to convert to the User data type.

 |

## Returns

User Array

## Usage considerations

You can reference a group as a _peopleArray_ value by creating a constant with a **User or Group** data type and specifying your desired group as its value. Wrap this value with the `topeople()` function.

`getdistinctusers()` will only return the first 10,000 users.

`getdistinctusers()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html#create) to see how this works._

Using it in a script task:

`getdistinctusers(topeople( cons!group ))` when stored as `pv!multipleuser` returns `"user.name1", "user.name2", ...`

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