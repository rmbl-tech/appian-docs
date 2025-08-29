---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_runtimetypeof.html
original_path: fnc_informational_runtimetypeof.html
version: "25.3"
title: "runtimetypeof() Function"
page_id: "fnc_informational_runtimetypeof"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# runtimetypeof() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**runtimetypeof**( _value_ )

Returns the numerical representation of an Appian system data type when used during process execution.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value to be inquired for type. For example, typename(runtimetypeof(topeople(123))) might return "Group".

 |

## Returns

Integer

## Examples

```
1
typename(runtimetypeof(topeople(123)))
```

Returns `Group`.

```
1
2
3
4
5
if(
  runtimetypeof(topeople(loggedInUser())) = type!User,
  "You're a User",
  "You're a Group"
)
```

Returns `"You're a User"`.

### Use with rule inputs

When using a rule input of a type that can contain a more specific type, `runtimetypeof` can be used to determine the type when an actual value is passed into the rule input (at runtime).

For a rule input called `userOrGroup` of type `User or Group` with value `loggedinuser()`:

```
1
typename(typeof(ri!userOrGroup))
```

Returns `User or Group`.

```
1
typename(runtimetypeof(ri!userOrGroup))
```

Returns `User`.

This works similarly for rule inputs of type `Document or Folder`.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
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