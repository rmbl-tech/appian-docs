---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_getgroupattribute.html
original_path: fnc_people_getgroupattribute.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# getgroupattribute() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**getgroupattribute**( _group, attribute_ )

Retrieves the value of the specified group attribute for the given group. Use this only to retrieve [group attributes](Group_Types.html#group-type-attributes) for groups of a specific [group type](Group_Types.html). This function will not work with custom groups without a specific group type. To retrieve attributes common to all groups, such as id, use the [group()](fnc_people_group.html) function.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`group`

 |

_group_

 |

The group for which the value of the attribute is to be retrieved.

 |
|

`attribute`

 |

_Text_

 |

The name of the desired attribute.

 |

## Returns

Any Type

## Usage considerations

When you create a custom group type, you can add attributes for the group type.

When you later create a group of this type (which must be public or restricted), you can also specify values for the defined attributes.

`getgroupattribute()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

Returning the creation date of a custom group:

`getgroupattribute(pv!myGroup,"dateCreated")` where `pv!myGroup` is a process variable holding a Group data type, which is a custom public group of type "personalgroups", and the group type has an attribute called `dateCreated` returns `5/9/06`

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