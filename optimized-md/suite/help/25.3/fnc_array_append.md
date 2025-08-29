---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_append.html
original_path: fnc_array_append.html
version: "25.3"
title: "append() Function"
page_id: "fnc_array_append"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# append() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**append**( _array, value_ )

Appends a value or values to the given array, and returns the resulting array.

**See also**:

-   [insert()](fnc_array_insert.html): Use this function to add items to the beginning or middle of an array.
-   [joinarray()](fnc_array_joinarray.html): Use this function to insert a string element between each item in the resulting array.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array`

 |

_Any Type Array_

 |

The array to modify.

 |
|

`value`

 |

_Any Type or Any Type Array_

 |

The value or values to append.

 |

## Returns

Any Type Array

## Usage considerations

### Data types of array items

The _array_ to be modified can contain items of one or more types. When all array items are a single type, the _value_ must be the same type as the current items in the array. The updated array will be a List of that type. For example, `append({10, 20}, 30)` returns `10, 20, 30`, a List of Number (Integer).

Any values that are not the same type will not be added. For example, `append({10, 20, 30, 40}, "fifty")` returns `10, 20, 30, 40, null` because the text value (`"fifty"`) cannot be added to an array of numbers.

An array with values of more than one type returns a List of Variant. For example, `append({10, "twenty"}, 30)` returns `10, "twenty", 30`.

You can append values of any type to these mixed-type arrays. For example, `append({10, "twenty"}, 30.15)` returns `10, "twenty", 30.15`, a list of variant types with an integer, text string, and decimal.

## Examples

### Append one item to an array of one type

```
1
2
3
4
append(
  {10, 20, 30, 40},
  50
)
```

Returns `{10, 20, 30, 40, 50}`. When the array contains items of one type, the _value_ must be the same type.

If _value_ is not the same type, a null is appended. For example:

```
1
2
3
4
append(
  {10, 20, 30, 40},
  "fifty"
)
```

Returns `{10, 20, 30, 40, null}` because the text value cannot be added to an array of numbers.

### Append an array to an empty array

```
1
2
3
4
append(
  {},
  {60, 70}
)
```

Returns `{60, 70}`.

### Append one array to another

```
1
2
3
4
append(
  {10, 20, 30, 40},
  {50, 60, 70}
)
```

Returns `{10, 20, 30, 40, 50, 60, 70}`.

### Append multiple arrays

```
1
2
3
4
5
append(
  {"Red", "Green"},
  {"Blue", "Yellow"},
  {"Brown", "White"}
)
```

Returns `{"Red", "Green", "Blue", "Yellow", "Brown", "White"}`.

### Append decimal numbers to an integer array

When appending a Number (Decimal) _value_ to an array of Number (Integer), Appian will round the decimal value to the nearest integer.

```
1
2
3
4
append(
  {10, 20},
  30.49
)
```

Returns `{10, 20, 30}`.

```
1
2
3
4
append(
  {10, 20},
  30.5
)
```

Returns `{10, 20, 31}`.

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
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...