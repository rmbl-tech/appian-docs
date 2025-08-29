---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_togroup.html
original_path: fnc_people_togroup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# togroup() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**togroup**( _value_ )

Converts a value to Group.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to convert.

 |

## Returns

Group

## Usage considerations

When operating on arrays, it is not necessary to use `apply` with `togroup`. If multiple parameters are passed, or one parameter is an Array, `togroup` will parameters return a Group Array.

## Examples

### Convert a single value

```
1
togroup(1)
```

Returns `[Group:1]`.

### Convert a list of values

```
1
togroup(1,2)
```

and

```
1
togroup({1,2})
```

Both return `{[Group:1],[Group:2]}`.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
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