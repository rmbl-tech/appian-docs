---
source_url: https://docs.appian.com/suite/help/25.3/fnc_set_union.html
original_path: fnc_set_union.html
version: "25.3"
title: "union() Function"
page_id: "fnc_set_union"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# union() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**union**( _array1, array2_ )

Returns all unique elements from the given arrays.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array1`

 |

_Any Type Array_

 |

Array to combine.

 |
|

`array2`

 |

_Any Type Array_

 |

Array to combine.

 |

## Returns

Any Type Array, matching the type of the inputs

## Examples

### Find the superset of values from two integer arrays

`union({1, 2, 3, 4}, {3, 4, 5, 6})` returns an array with `1, 2, 3, 4, 5, 6`

### Remove duplicates from an array

Remove the duplicates from an array by comparing it with an empty array of the same type:

`union({1, 2, 3, 4, 1, 2}, tointeger({}))` returns an array with `1, 2, 3, 4`

This can also be accomplished by comparing an array with itself:

`union(local!myArray, local!myArray)` removes the duplicate elements from `local!myArray`.

### Values are matched with case sensitivity

`union({"a", "b"}, {"a", "B"})` returns an array with `a, b, B`

### Array types must match

`union({"a", "b"}, {1, 2})` returns the following error: `Invalid types, can only act on data of the same type`.

**Note:**  Use either the conversion functions or the `cast()` function to convert to the appropriate type.

`union({"a", "b"}, tostring({1, 2}))` returns an array with `a, b, 1, 2`

Every field of a CDT, dictionary, or map must match to be treated as identical:

`union({a: 1, b: 2}, {a: 1, b: 2, c: 3})` returns `{{a: 1, b: 2}, {a: 1, b: 2, c: 3}}`

`union({a: 1, b: 2}, {a: 1, b: 2})` returns `{{a: 1, b: 2}}`

### Null values and empty lists

Null values are included as long as they are of the correct types (nulls of an incorrect type throw a type mismatch error):

`union({"a", "b"}, {"c", ""})` returns an array with `a, b, c, ""`

Empty lists are ignored as long as they are of the correct types (empty lists of an incorrect type throw a type mismatch error):

`union(tointeger({}), {1, 2})` returns an array with `1, 2`

### Scalar values

Scalar values are cast to arrays with a single entry:

`union(1, {2, 3})` returns an array with `1, 2, 3`

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