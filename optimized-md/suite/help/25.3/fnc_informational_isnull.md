---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_isnull.html
original_path: fnc_informational_isnull.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# isnull() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**isnull**( _value_ )

Returns true if value is null, false otherwise.

**See also**: [a!defaultValue](fnc_informational_a_defaultvalue.html), [length()](fnc_array_length.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to check for null.

 |

## Returns

Boolean

## Usage considerations

-   The function will not work without a parameter.
-   The function is typically used to test whether a Process Variable contains a null value.

## Examples

For rule input `user` of type `User or Group` with value of null:

```
1
isnull(ri!user)
```

Returns `true`.

```
1
isnull({})
```

Returns `false`. Empty arrays return `false` when passed to the `isnull()` function.

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