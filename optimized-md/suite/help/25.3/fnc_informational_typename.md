---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_typename.html
original_path: fnc_informational_typename.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# typename() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**typename**( _typeNumber_ )

Returns the type name of a given type number.

**See also**: [typeof()](fnc_informational_typeof.html), [Delete Data Types](Custom_Data_Types.html#delete)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`typeNumber`

 |

_Number (Integer)_

 |

The type number to be inquired for its name. This may be retrieved by using typeof(x), where x is a value of the intended type, or referencing a type with 'type!{namespace}type-name' (within single quotes).

 |

## Returns

Text

## Usage considerations

### Referencing data types

-   To retrieve the type number, use `typeof(x)`, where `x` is a value of the intended type, or reference a type with `type!{namespace}type-name` (within single quotes).
-   When referencing a data type, consider the impact that deleting the data type has on the expression that references it.

## Examples

### Returning data type name

```
1
typename(27)
```

Returns `User or Group`.

```
1
typename(type!Integer)
```

Returns `Number (Integer)`.

### Returning multiple data type names

```
1
typename(type!Integer, type!Decimal, type!User)
```

Returns `{"Number (Integer)", "Number (Decimal)", "User"}`. Multiple input values are supported.

```
1
typename({type!Integer, type!Decimal, type!User})
```

Returns `{"Number (Integer)", "Number (Decimal)", "User"}`. A list of inputs is supported.

```
1
2
3
4
5
6
7
8
9
10
typename(
  typeof(
    "abc",
    0.5,
    47,
    date(1985, 12, 10),
    a!map(first: 1, second: 2),
    {order: 1906, units: 46}
  )
)
```

Returns `{ "Text", "Number (Decimal)", "Number (Integer)", "Date", "Map", "Dictionary" }`. `typeof` returns a list of type numbers, which is evaluated and returned as a list of type names.

### Returning list type names for lists

```
1
typename(typeof({ 1, 2, {}, 17 }))
```

Returns `List of Number (Integer)`.

```
1
typename(typeof({ 1, 2, {}, 17 }), typeof({ 1.0, 2.2, 17.0 }))
```

Returns `{ List of Number (Integer), List of Number (Floating Point) }`.

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