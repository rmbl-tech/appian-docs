---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_a_groupsbyname.html
original_path: fnc_people_a_groupsbyname.html
version: "25.3"
title: "a!groupsByName() Function"
page_id: "fnc_people_a_groupsbyname"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!groupsByName() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!groupsByName**( _groupName_ )

Returns an array of groups with the given name, or an empty array if no group exists.

**See also**: [group()](fnc_people_group.html):

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`groupName`

 |

_Text_

 |

The case-insensitive name of the group to retrieve.

 |

## Returns

Group Array

## Usage considerations

If there are multiple groups that have the same name, `a!groupsByName()` will return all of the groups, sorted by `id`, ascending.

`a!groupsByName()` always returns an array.

If the user running the expression does not have permission to see a group, that group will not be returned in the result. If the user does not have permission to see any of the groups, an empty array will be returned. See also: [Group Visibility](Configuring_Security_for_Groups.html#group-visibility)

[System groups](System_Groups.html) cannot be retrieved using `a!groupsByName()`.

`a!groupsByName()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

Given there is one group named **Case Viewers - 123** with id 7:

```
1
a!groupsByName("Case Viewers - 123")
```

Returns `{[Group:7]}`.

Given there are no groups named **Group Does Not Exist**:

```
1
a!groupsByName("Group Does Not Exist")
```

Returns `{}`.

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