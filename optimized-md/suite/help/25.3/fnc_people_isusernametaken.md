---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_isusernametaken.html
original_path: fnc_people_isusernametaken.html
version: "25.3"
title: "isusernametaken() Function"
page_id: "fnc_people_isusernametaken"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# isusernametaken() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**isusernametaken**( _username_ )

Verifies whether a user account with the specified username is already present.

**See also**: [Create a New User](User_Management.html#create-a-new-user), [Add User Smart Service](Add_User_Smart_Service.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`username`

 |

_Text_

 |

The username to check against the current list of active and deactivated users.

 |

## Usage considerations

Returns a value of type Boolean.

A `false` result indicates that the username is available to use when creating a new user, unless the username contains special characters that are not permitted.

For a list of usernames, returning `false` means that all of the usernames are available. If any of the usernames are taken, the result will be `true`.

Both active and deactivated user accounts are referenced.

The username parameter is case-sensitive, however you will not be able to create a username if case-insensitive matches exist.

`isusernametaken()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

Given that you have users in your environment with the usernames `john.doe` and `jane.doe`:

```
1
isusernametaken("john.doe")
```

Returns `true`.

```
1
isusernametaken("John.Doe")
```

Returns `false` due to case sensitivity.

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