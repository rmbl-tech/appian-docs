---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_wherecontains.html
original_path: fnc_array_wherecontains.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# wherecontains() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**wherecontains**( _values, array_ )

Receives one or more values and returns an array of indexes that indicate the position of the values within the array.

**See also**:

-   [where()](fnc_array_where.html): Use this function to return indexes of an array that evaluate to `true`, instead of items that match a user-defined value.
-   [index()](fnc_array_index.html): Use this function to return the values of an array at the indexes you gathered with the `wherecontains()` function.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`values`

 |

_Any Type Array_

 |

The values to find.

 |
|

`array`

 |

_Any Type Array_

 |

The array in which the values are found.

 |

## Returns

Integer Array

## Usage considerations

### When to use wherecontains()

This function is useful for finding which items in a CDT array have the same value for a field.

You can then use that array of indexes as the _index_ argument for the `index()` function in order to pull the values for another field in that CDT array. This will give you all the values in the second field that have a matching value in the first field. An example is displayed below.

### Argument types and formatting

The arguments passed to both the _values_ and _array_ parameters must be of the same type. For example, you can not search through a Decimal Array with a _values_ argument of type Integer.

You can not search through an array of groups or documents with their Integer ID values. Either cast the group/document _array_ to an Integer, or cast the ID _values_ to type group or document.

### Matching data types

The types of _values_ and _array_ must be the same or Appian will return an error. For example, `wherecontains(1, {1.2})` will not evaluate since _values_ is an integer and _array_ is a list of decimals.

### Understanding results

When there is no match, the function returns an empty array.

## Examples

### Find index of value in list

```
1
wherecontains(20, {10, 20, 30})
```

Returns `{2}`.

### Find index of value in list when value is not found

```
1
wherecontains(50, {10, 20, 30})
```

Returns `{}`.

### Find indexes of multiple values in list

```
1
wherecontains({2, 1}, {1, 2, 2, 3})
```

Returns `{1, 2, 3}`. Since `2` was found twice in the list, both indexes are returned along with the index of `1`. The indexes returned are in order of the values found in the _array_.

### Find indexes of values in variant list

```
1
wherecontains({20, "b"}, {10, 20, "b"})
```

Returns `{2, 3}`

### Find indexes of complex values in list

```
1
wherecontains(topaginginfo(1, 1), {topaginginfo(1, 1), topaginginfo(1, 2)})
```

Returns `{1}`

### Find index of null values in list of text

```
1
wherecontains(null, {"a", "", "b"})
```

Returns `{2}`. Since `""` is equivalent to a `null` text value, the second index is returned.

### Empty list of values

```
1
wherecontains(tointeger({}), {1, 2, 3})
```

Returns `{}`.

### Use with the `index()` function

```
1
index(pv!employees.firstName, wherecontains("Finance", pv!employees.department))
```

Returns the first names of all employees with their department field set to `Finance` or an empty array if none have it set to `Finance`.

Text values are case-sensitive.

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