---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_cast.html
original_path: fnc_informational_cast.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# cast() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**cast**( _typeNumber, value_ )

Converts a value from its existing type to the specified type.

**See also**: [Casting](Casting.html), [typeof()](fnc_informational_typeof.html), [Delete Data Types](Custom_Data_Types.html#delete)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`typeNumber`

 |

_Number (Integer)_

 |

The type to which the value should be cast. This may be retrieved by using typeof(x), where x is a value of the intended type, or referencing a type with 'type!{namespace}type-name' (within single quotes).

 |
|

`value`

 |

_Any Type_

 |

The value that should be cast to type typeNumber.

 |

## Returns

Any Type

## Usage considerations

### Referencing data types

-   To retrieve the type number, use `typeof(x)`, where `x` is a value of the intended type, or reference a type with `type!{namespace}type-name` (within single quotes).
-   When referencing a data type, consider the impact that deleting the data type has on the expression that references it.

### Use in portals

-   In portals, you cannot cast a value to a record type.

## Examples

### Casting a value

```
1
2
3
4
cast(
  'type!{http://www.appian.com/ae/types/2009}Integer',
  123.4
)
```

Returns `123`.

```
1
cast(1, 123.4)
```

Returns `123`.

```
1
cast(typeof(123), 123.4)
```

Returns `123`. `typeof(123)` returns 1, the type number for Integer.

### Casting a list of values

Use [`a!listType`](fnc_informational_a_listtype.html) to cast a list of values to a certain type of list.

```
1
2
3
4
cast(
  a!listType(type!Integer),
  {1, 2.0, 3.1, "23", "2.34", true, null}
)
```

Returns `{ 1, 2, 3, 23, 2, 1, null }`.

```
1
2
3
4
cast(
  a!listType(typeof(1.0)),
  { 1, 2.0, 3.1, "23", "2.34", true, null }
)
```

Returns `{ 1, 2.0, 3.1, 23, 2.34, 1, null }`. `typeof(1.0)` returns the type number for Decimal.

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