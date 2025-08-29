---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_a_flatten.html
original_path: fnc_array_a_flatten.html
version: "25.3"
title: "a!flatten() Function"
page_id: "fnc_array_a_flatten"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!flatten() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!flatten**( _array_ )

Converts an array that contains other arrays into an array of single items.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array`

 |

_Any Type Array_

 |

Array to be flattened.

 |

## Returns

Any Type Array

## Usage considerations

### Understanding results

`a!flatten()` removes nesting from arrays, such as those created by looping functions. When passed a simple array, `a!flatten()` returns it unmodified.

Nulls are not removed from lists. Use [reject()](fnc_looping_reject.html) and [isnull()](fnc_informational_isnull.html) to easily remove nulls from a flattened list.

`a!flatten()` always returns an array, so when passed a single item, `a!flatten()` returns an array containing that item.

When passed an empty or null array, `a!flatten()` returns an empty array.

If the array's type is Any Type, `a!flatten()` returns an array of the appropriate type.

## Examples

### Remove nesting from arrays

If you use `a!forEach()` to iterate over a list of items, it will return a nested list of arrays. For example:

```
1
2
3
4
a!forEach(
  items: {1, 2, 3},
  expression: enumerate(fv!item)
)
```

Returns a three-item list consisting of `{0}`, `{0, 1}`, and `{0, 1, 2}`.

You can use `a!flatten()` to remove the nesting and return a single array. For example:

```
1
2
3
4
5
6
a!flatten(
  a!forEach(
    items: {1, 2, 3},
    expression: enumerate(fv!item)
  )
)
```

Returns `{0, 0, 1, 0, 1, 2}`.

Only array nesting is removed when using `a!flatten`. Nested maps, dictionaries, and other data types retain their structure. For example, flattening an array containing a nested array of maps and a map with a nested map:

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
11
12
a!flatten(
  {
    {
      a!map(id: 1),
      a!map(id: 2),
    },
    a!map(
      id: 3,
      address: a!map(street: "Main Street", number: 101)
    )
  }
)
```

Returns a three-item list of maps. The nested map structure is unaffected:

```
1
2
3
4
5
{
  a!map(id: 1),
  a!map(id: 2),
  a!map(id: 3, address: a!map(street: "Main Street", number: 101))
}
```

### Retain data types

`a!flatten()` retains the data type of each array item.

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
typename(
  typeof(
    a!flatten(
      a!map
        data: {1, 2, 3}
      ).data
    )
  )
)
```

Returns a list of integers.

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
typename(
  typeof(
    a!flatten(
      a!map
        data: {1, 2, "a"}
      ).data
    )
  )
)
```

Returns list of variant types because the flattened array includes two numbers and a text string.

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