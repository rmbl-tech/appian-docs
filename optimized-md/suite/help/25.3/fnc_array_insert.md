---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_insert.html
original_path: fnc_array_insert.html
version: "25.3"
title: "insert() Function"
page_id: "fnc_array_insert"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# insert() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Change Values in an Array Using Functions in Appian

This video from [Academy Online](https://academy.appian.com/) explains how to change values in an array using the insert and remove functions.

## Function

**insert**( _array, value, index_ )

Inserts a value into the given array and returns the resulting array.

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

The value or values to insert.

 |
|

`index`

 |

_Integer or Integer Array_

 |

The index or array of indices at which the value should be inserted.

 |

## Returns

Any Type Array

## Usage considerations

### Index values

When the _index_ value is greater than the [array length](fnc_array_length.html) or is less than `1`, the value is appended to the right side of the array.

### Data types of array items

The _array_ to be modified can contain items of one or more types. When all array items are of a single type, the _value_ must be the same type as the current items. The updated array will be a list of that type. For example, `insert({10, 20}, 30, 2)` returns `10, 30, 20`, a List of Number (Integer).

Any values that are not the same type will not be added. For example, `insert({10, 20, 30, 40}, "fifty", 2)` returns `10, null, 20, 30, 40` because the text value (`"fifty"`) cannot be added to an array of numbers.

An array with values of more than one type returns a List of Variant. For example, `insert({10, "twenty"}, 30, 3)` returns `10, "twenty", 30`, , a List of Variant with a Number (Integer), Text, and Number (Integer).

You can append values of any type to these mixed-type arrays. For example, `insert({10, "twenty"}, 30.15, 3)` returns `10, "twenty", 30.15`, a List of Variant with a Number (Integer), Text, and Number (Decimal).

### Match the length of the value and index parameters

When using a list as the _index_ parameter, the _value_ must be a scalar value or a list of matching length.

If the _index_ list is longer, a null is inserted at each index where there is not a corresponding _value_ element.

For example, `insert({10,20,30}, {100,2}, {1,2,3,4})` returns `{100, 10, 2, 20, null, 30, null}` because the _value_ list has a length of 2. Once the values from the list are inserted, nulls are inserted at any remaining indexes.

## Examples

### Insert a value as the first array item

```
1
insert({10, 20, 30, 40}, 100, 1)
```

Returns `{100, 10, 20, 30, 40}`.

### Insert a value as the last array item

```
1
insert({10, 20, 30, 40}, 100, 5)
```

Returns `{10, 20, 30, 40, 100}` because the _index_ is greater than the length of the array.

### Insert multiple values at the start of the array

```
1
insert({10, 20, 30, 40}, {100, 200}, 1)
```

Returns `{100, 200, 10, 20, 30, 40}`.

### Insert a value at multiple array indexes

```
1
insert({10, 20, 30, 40}, 100, {1, 2})
```

Returns `{100, 10, 100, 20, 30, 40}`.

### Insert a value from a list at a specific index

When using a list for the _index_ parameter, Appian uses the existing index positions of the _array_ to insert new values.

```
1
insert({10, 20, 30, 40}, {100, 200}, {1, 2})
```

Returns `{100, 10, 200, 20, 30, 40}`. The first change inserts `100` at index 1 and `200` at index 2 (after `10`).

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