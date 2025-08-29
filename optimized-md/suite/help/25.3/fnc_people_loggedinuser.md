---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_loggedinuser.html
original_path: fnc_people_loggedinuser.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# loggedInUser() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**loggedInUser()**

Returns the current user logged in to the application.

## Parameters

No parameters.

## Returns

User

## Usage considerations

It is only applicable in situations where there is a user context, such as when rendering an interface, displaying a report, or executing a process task form.

If there is no user context, such as when used in an expression in a node output, `loggedInUser()` returns "Administrator".

In non-SAIL task forms that do not follow an activity-chained flow, `loggedInUser()` can be populated by selecting the **Refresh default values every time the task form is viewed** checkbox on the Other tab of the activity. The checkbox does not need to be selected when an interface is used as it is automatically applied.

The function can be used to filter process reports for the current user. Cast the data to the User data type with the `touser()` function.

`loggedInUser()` cannot be used to define a column of process report data or in a process event.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

### Return the user that is viewing a report or an interface

```
1
loggedInUser()
```

Returns `current.user`.

### Check if the logged in user is in an array

Identify if the logged in user is in an array of users using the `contains()` function:

```
1
contains(ri!userArray, touser(loggedinuser()))
```

Returns `true` or `false`.

### Check if a logged in user is in the array

Given a rule input of `ri!userArray`, check if the logged in user is in the array using the `contains()` function:

```
1
loggedinuser()=touser(tp!owner)
```

Returns `true` or `false`.

This function can't be evaluated in the expression editor.

**Note:**  Cast `tp!owner` to the User data type with the `touser()` function so that there's no error when comparing with `loggedinuser()` as soon as a task is accepted. Not doing so results in the error message `Cannot compare incompatible operands of type User and type User id`.

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
| Process Reports | Compatible |  |
| Process Events | Compatible |

Can be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...