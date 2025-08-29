---
source_url: https://docs.appian.com/suite/help/25.3/fnc_set_intersection.html
original_path: fnc_set_intersection.html
version: "25.3"
title: "intersection() Function"
page_id: "fnc_set_intersection"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# intersection() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**intersection**( _array1, array2_ )

Returns only those elements that appear in all of the given arrays.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array1`

 |

_Any Type Array_

 |

Array to intersect.

 |
|

`array2`

 |

_Any Type Array_

 |

Array to intersect.

 |

## Returns

Any Type Array, matching the type of the inputs

## Examples

### Find the values that are common in two integer arrays

`intersection({1, 2, 3, 4}, {3, 4, 5, 6})` returns an array with `3, 4`

### Find the values that are common in two text arrays

Values are matched case sensitively:

`intersection({"a", "b", "A"}, {"a", "c"})` returns an array with `a`

To match items case insensitively, use the `lower()` function on both inputs.

A value is returned for each match:

`intersection({"a", "b", "a"}, {"a"})` returns an array with `a, a`

### Types of the arrays must match

`intersection({"a"}, {1})` returns the following error message: `Invalid types, can only act on data of the same type`.

Use either the conversion functions or the `cast()` function to convert to the appropriate type.

### Empty or null arrays

When one of the arrays is empty, or no common values are found, an empty array of the same type as the inputs is returned:

`intersection({1}, tointeger({}))` returns an empty integer array.

`intersection({"a"}, {"b"})` returns an empty text array.

Null values in the array are matched and returned:

`intersection({1, null, 3}, {1, null, 4})` returns an array with `1, <null>`

### Compare more than two arrays

An unlimited number of arrays can be compared, and the values common to all of them are returned:

`intersection({1, 2}, {2, 3}, {2, 4})` returns an array with `2`

### Scalar inputs

Scalar inputs are cast to arrays:

`intersection(1, 1)` returns an array with `1`

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