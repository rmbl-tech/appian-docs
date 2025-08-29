---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_isusermemberofgroup_21r2.html
original_path: fnc_people_isusermemberofgroup_21r2.html
version: "25.3"
title: "isusermemberofgroup\_21r2 Function"
page_id: "fnc_people_isusermemberofgroup_21r2"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# isusermemberofgroup\_21r2 Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!isUserMemberOfGroup() Function](/suite/help/25.3/fnc_people_a_isusermemberofgroup.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_people_a_isusermemberofgroup.html#Old_Version)

## Function

**isusermemberofgroup\_21r2**( _username, groupId_ )

Identifies whether or not a user belongs to a group.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`username`

 |

_Text_

 |

The username to check for group membership.

 |
|

`groupId`

 |

_Group_

 |

The Id of the group.

 |

## Returns

Boolean

## Usage considerations

Returns `true` when the user belongs to the specified group, except when security rules prohibit users from knowing this information.

For example, this function returns `false` to keep membership awareness secure in the following instance:

-   A [high privacy group](Configuring_Security_for_Groups.html#group-privacy-policy) is passed in **AND**
-   A user other than the logged in user is passed in **AND**
-   The function is executed within the context of a basic user who is not an administrator of the high privacy group

A basic user is not allowed to know whether another user is a member of such groups.

`isusermemberofgroup_21r2()` cannot be used to define a column of process report data or in a process event.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

```
1
isusermemberofgroup_21r2("john.doe",2)
```

Returns `false`.

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