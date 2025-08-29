---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_group.html
original_path: fnc_people_group.html
version: "25.3"
title: "group() Function"
page_id: "fnc_people_group"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# group() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**group**( _groupId, property_ )

Returns information for group.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`groupId`

 |

_Number_

 |

The Id of the group to be retrieved.

 |
|

`property`

 |

_Text_

 |

Information to retrieve for this group.

 |

## Returns

Text

## Usage considerations

The _property_ value accepts the following (case-sensitive) values:

-   created
-   creator
-   groupName
-   groupTypeName
-   lastModified
-   parentName
-   delegatedCreation
-   description
-   id
-   memberPolicyName
-   parentId
-   securityMapName
-   viewingPolicyName

`group()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

### Return the date and time a group was created

Given a Group with an ID value of 2 created on December 16, 2005:

```
1
group(2, "created")
```

Returns

```
1
12/16/05 6:37 PM GMT
```

### Return the date and time a group was last modified

```
1
2
3
4
5
a!localVariables(
  local!groups: a!groupsForUser(loggedInUser()),
  a!forEach(
    local!groups,
    group(fv!item,"lastModified")))
```

Returns the date and time that the relevant groups were last modified in this format: `MM/DD/YY 00:00 PM GMT`.

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