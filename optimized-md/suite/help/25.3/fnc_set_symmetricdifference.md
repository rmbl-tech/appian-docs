---
source_url: https://docs.appian.com/suite/help/25.3/fnc_set_symmetricdifference.html
original_path: fnc_set_symmetricdifference.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# symmetricdifference() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**symmetricdifference**( _array1, array2_ )

Returns the values from two integer arrays that are not in both arrays.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array1`

 |

_Any Type Array_

 |

Array of values.

 |
|

`array2`

 |

_Any Type Array_

 |

Array of values.

 |

## Returns

Any Type Array

## Examples

### Find the of values from two integer arrays that are not in both arrays

`symmetricdifference({1, 2, 3, 4}, {3, 4, 5, 6})` returns an array with `1, 2, 5, 6`

### Values are matched with case sensitivity

`symmetricdifference({"a", "b"}, {"a", "B"})` returns an array with `b, B`

### Array types must match

`symmetricdifference({"a", "b"}, {1, 2})` returns the following error: `Invalid types, can only act on data of the same type`.

**Note:**  Use either the conversion functions or the `cast()` function to convert to the appropriate type.

`symmetricdifference({"a", "b"}, tostring({1, 2}))` returns an array with `{"a", "b", "1; 2"}`

Every field of a CDT, dictionary, or map must match to be treated as identical:

`symmetricdifference({a: 1, b: 2}, {a: 1, b: 2, c: 3})` returns `{{a: 1, b: 2}, {a: 1, b: 2, c: 3}}`

`symmetricdifference({a: 1, b: 2}, {a: 1, b: 2})` returns `{}`

### Null values and empty lists

Null values are included as long as they are of the correct types (nulls of an incorrect type throw a type mismatch error):

`symmetricdifference({"a", "b"}, {"c", ""})` returns an array with `a, b, c, ""`

Empty lists are ignored as long as they are of the correct types (empty lists of an incorrect type throw a type mismatch error):

`symmetricdifference(tointeger({}), {1, 2})` returns an array with `1, 2`

### Scalar values

Scalar values are cast to arrays with a single entry:

`symmetricdifference(1, {2, 3})` returns an array with `1, 2, 3`

### Find whether two arrays match

The following example returns `true` if `local!updatedArray` matches `local!originalArray`, otherwise returns `false`:

```
1
2
3
4
5
6
length(
  symmetricdifference(
    local!originalArray,
    local!updatedArray
  )
) = 0
```

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