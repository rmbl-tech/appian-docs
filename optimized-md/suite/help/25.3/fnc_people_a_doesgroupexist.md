---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_a_doesgroupexist.html
original_path: fnc_people_a_doesgroupexist.html
version: "25.3"
title: "a!doesGroupExist() Function"
page_id: "fnc_people_a_doesgroupexist"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!doesGroupExist() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!doesGroupExist**( _groupId_ )

Verifies whether a group with the specified group ID already exists in the environment.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`groupId`

 |

_Number (Integer)_

 |

The ID of the group to be checked.

 |

## Returns

Boolean

## Usage considerations

Returns `true` when the specified group exists on the system, regardless of security.

This function is particularly useful to add error handling around group IDs that have been stored and then retrieved from a database.

`a!doesGroupExist()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

```
1
a!doesGroupExist(6)
```

Returns `true` if there is a group with an ID of `6`/

```
1
a!doesGroupExist(null)
```

Returns `false`

```
1
2
3
4
if(a!doesGroupExist(ri!myGroup),
  group(ri!myGroup, "groupName"),
  "Unavailable"
)
```

1.  Create a rule input named `myGroup` of type `Group`.
2.  In the **Expression** box of the **Test Inputs**, enter an integer to represent a group ID.
3.  Click **TEST RULE**.

Returns either a group name or `"Unavailable"`.

#### Looping through multiple inputs

```
1
2
3
4
a!localVariables(
  local!groupIds: {2,3,30000},
  a!doesGroupExist(local!groupIds)
)
```

Returns `{true, true, false}`. This example may return different values depending on the groups in the environment.

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
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...