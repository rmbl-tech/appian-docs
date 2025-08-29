---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_a_groupsforuser.html
original_path: fnc_people_a_groupsforuser.html
version: "25.3"
title: "a!groupsForUser() Function"
page_id: "fnc_people_a_groupsforuser"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!groupsForUser() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!groupsForUser**( _username, isGroupAdministrator, groupTypes_ )

Returns the groups where the user is a member or has Administrator permissions.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`username`

 |

_User_

 |

The user whose group membership information should be retrieved.

 |
|

`isGroupAdministrator`

 |

_Boolean_

 |

Determines whether to return groups where the user is an administrator, rather than a member. When set to `true`, returns the groups where the user has Administrator permissions. When set to `false`, returns the groups where the user is a member. Default: `false`.

 |
|

`groupTypes`

 |

_List of Group Type_

 |

Limits the returned groups to those of the specified type(s). If this property specifies multiple groups types, the function returns groups that match any of the specified group types.

 |

## Returns

List of Group

## Usage considerations

By default, the function returns the groups where the specified user is a member. Only one user can be specified in the function.

Users with Administrator permissions for a group are not always members of the group.

Invalid users will result in an error.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

#### Get groups where the user is a member

Given a User, `jane.doe`, is a member of Groups: `{[Group:7],[Group:8]}`.

```
1
2
3
a!groupsForUser(
  username: "jane.doe"
)
```

Returns

```
1
2
3
List of Group
  7 - Group A (Group)
  8 - Group B (Group)
```

The list includes returned groups where the User is a member.

As long as the User is a member of the group, the list will include that user, even if the following are true:

-   The User has Administrator permissions for the group.
-   The `isGroupAdministrator` property for the function is set to 'false'.

#### Get groups for the logged in user

Given that you are a member of Groups: `{[Group:7],[Group:8]}`.

```
1
2
3
4
5
6
a!localVariables(
  local!users: loggedInUser(),
  a!groupsForUser(
    username: local!users
  )
)
```

Returns

```
1
2
3
List of Group
  7 - Group A (Group)
  8 - Group B (Group)
```

#### Get groups where the user is an administrator

Given a User, "jane.doe", is a member of Groups: {\[Group:7\],\[Group:8\],\[Group:9\],\[Group:10\],\[Group:11\]} and has Administrator permissions for Groups: {\[Group:9\],\[Group:10\]}.

```
1
2
3
4
a!groupsForUser(
  username: "jane.doe",
  isGroupAdministrator: fn!true()
)
```

Returns

```
1
2
3
List of Group
  9 - Group C (Group)
  10 - Group D (Group)
```

Though the User is a member of many groups, they are only assigned Administrator permissions for two groups.

#### Limit the groups by group type

Given the following:

-   A rule input `ri!groupType` of type `Group Type` with a value of `Team`.
-   The following groups' type is `Team`: `{[Group:7],[Group:8],[Group:9],[Group:10],[Group:11]}`.
-   A user named Jane Doe is a member of groups `{[Group:7], [Group:8]}` and an administrator of `[Group:9]`.

```
1
2
3
4
a!groupsForUser(
  username: "jane.doe",
  groupTypes: ri!groupType
)
```

Returns

```
1
2
3
List of Group
  7 - Group A (Group)
  8 - Group B (Group)
```

In this example, the returned list excludes Group 9, even though Group 9 has the correct Group Type. The list excludes Group 9 because the User has Administrator permissions for that group but is not a member.

#### Invalid user

Given User "john.doe" does not exist in the system.

```
1
2
3
a!groupsForUser(
  username: "john.doe"
)
```

Returns

```
1
Expression evaluation error at function a!groupsForUser: The username Invalid user: john.doe is not a valid user.
```

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