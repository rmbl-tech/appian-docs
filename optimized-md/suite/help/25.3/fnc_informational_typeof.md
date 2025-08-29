---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_typeof.html
original_path: fnc_informational_typeof.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# typeof() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**typeof**( _value_ )

Returns the type number of a given value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value to be inquired for type. For example, typename(typeof(123)) might return "Integer (Number)".

 |

## Returns

Integer

## Examples

### Returning data type number

```
1
typeof(123)
```

Returns `1`, which corresponds to the `Number (Integer)` system data type.

### Comparing data types

```
1
typeof(loggedinuser()) = type!User
```

Returns `true`.

### Returning multiple data type numbers

```
1
2
3
4
5
6
7
8
typeof(
  "abc",
  0.5,
  47,
  date(1985, 12, 10),
  a!map(first: 1, second: 2),
  {order: 1906, units: 46}
)
```

Returns `{ 3, 2, 1, 7, 252, 94 }`, which correspond to `Text`, `Number (Decimal)`, `Number (Integer)`, `Date`, `Map`, and `Dictionary`, respectively.

### Returning list type numbers for lists

```
1
typeof({ 1, 2, {}, 17 }, {"abc", "", "def"})
```

Returns `{ 101, 103 }`, which correspond to `List of Number (Integer)` and `List of Text String`, respectively.

```
1
typeof({ {1,2}, {1.0} })
```

Returns `102`, which corresponds to `List of Number (Floating Point)`. Nested lists are flattened and treated as one list.

```
1
typeof({ {1,2}, {"as", 2.0} })
```

Returns `197`, which corresponds to `List of Variant`.

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