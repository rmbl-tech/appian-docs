---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_a_isusermemberofgroup.html
original_path: fnc_people_a_isusermemberofgroup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!isUserMemberOfGroup() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!isUserMemberOfGroup**( _username, groups, matchAllGroups_ )

Identifies whether or not a user is a member of the specified groups. By default, this function returns true if the user is in at least one of the specified groups.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`username`

 |

_User_

 |

The username of the user for whom you wish to check for group membership.

 |
|

`groups`

 |

_Group Array_

 |

One or more groups to check for membership.

 |
|

`matchAllGroups`

 |

_Boolean_

 |

Determines whether to match any or all of the provided groups. When set to true, the function will check that the user is a member of ALL of the groups. Default: false

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

`a!isUserMemberOfGroup()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

```
1
a!isUserMemberOfGroup("john.doe", 2)
```

The above expression returns `true` if your environment has a username `john.doe` that is in the group with an `id` of `2`. Otherwise, it returns `false`.

```
1
2
3
4
a!isUserMemberOfGroup(
  username: loggedInUser(),
  groups: a!groupsByName("Process Model Creators")
)
```

The above expression returns `true` if you are in the **Process Model Creators** group. Otherwise, it returns `false`.

```
1
2
3
4
5
6
7
a!isUserMemberOfGroup(
  username: loggedInUser(),
  /* Replace these constants with constants that point to the Application Users and Designers groups in your environment */
  groups: { cons!GROUP_APPLICATION_USERS, cons!GROUP_DESIGNERS},
  matchAllGroups: true
)

```

The above expression returns `true` if you are in the **Application Users** and **Designers** groups. Otherwise, it returns `false`.

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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [isusermemberofgroup\_21r2](/suite/help/25.3/fnc_people_isusermemberofgroup_21r2.html) |
Now accepts multiple groups and can check whether the user is a member of any or all groups. Also moved to the a! domain.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...