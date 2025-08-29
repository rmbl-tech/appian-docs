---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_length.html
original_path: fnc_array_length.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# length() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**length**( _array_ )

This function returns the number of elements in an array.

**See also**:

-   [isnull()](fnc_informational_isnull.html): Use this function to determine if the process variable or array contains null values.
-   [count()](fnc_statistical_count.html): Use this function to include null elements in the number of elements in a process variable or array.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array`

 |

_Any Type Array_

 |

The array in which to calculate the number of elements.

 |

## Returns

Integer

## Usage considerations

### Null elements

In most cases, this function does not count null elements. `length({null, 2})` returns `1` because the null is not counted.

There are scenarios though where null values will be counted as part of a list. For example, let's say you have a local variable called `local!result`, which stores the results of a query. If the query returns a null value, then the expression `length({local!result, 2})` may return `2`. When `local!result` is a List of Text String with a single null field, Appian evaluates the expression as `length({{null}, 2})` and returns `2`.

![Check length of array containing a null list](images/array_length_list_with_null.png)

If this function is used on a null result from the [Query Database smart service](Query_Database_Smart_Service.html), the expression may fail to evaluate and cause an error. To avoid an error, first check the result set for a null value using the `isnull()` function before attempting to count the result set using the `length()` function.

## Examples

### Length of list

```
1
length({10, 20, 30})
```

Returns `3`.

### Length of list with null values

```
1
length({10, null, 30})
```

Returns `2`. Null values are skipped.

### Length of list with nested list

```
1
length({1, 2, merge({1}, {2})})
```

Returns `3`. Nested lists are counted as one value.

### Length of list with nested null list

```
1
length({1, 2, merge({null})})
```

Returns `3`. Nested lists with only null values are counted as one value.

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