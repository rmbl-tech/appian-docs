---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_where.html
original_path: fnc_array_where.html
version: "25.3"
title: "where() Function"
page_id: "fnc_array_where"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# where() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**where**( _booleanArray, default_ )

Returns the indexes where the values in the input array are true.

**See also**:

-   [wherecontains()](fnc_array_wherecontains.html): Use this function to return indexes of an array that match a user-defined value, instead of items that evaluate to `true`.
-   [index()](fnc_array_index.html): Use this function to return the values of an array at the indexes you gathered with the `where()` function.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`booleanArray`

 |

_Boolean Array_

 |

The array of Boolean values to test.

 |
|

`default`

 |

_Integer or Integer Array_

 |

The integer number or array of integer numbers to return if none of the values in the array are true.

 |

## Returns

Integer Array

## Usage considerations

### When to use where()

This function is useful for finding values in an array that meet a certain criterion. It's also useful for checking the value of a field in an array of CDT field values.

### Understanding results

If a _default_ value is not specified and none of the values in the input array are true, an empty list will be returned.

A null or empty array given as the _array_ parameter is considered false.

## Examples

### Check which indexes are true

```
1
where({true, false, true})
```

Returns `1, 3`.

When all array values are false and no _default_ is specified, an empty set is returned. For example:

```
1
where({false, false, false})
```

Returns `{}`.

When all array values are false and a _default_ is specified, the default value is returned. For example:

```
1
where({false, false, false}, -1)
```

Returns `{-1}`.

### Check which indexes are even

```
1
where(mod({13, 24, 35, 46, 57, 68}, 2)=0)
```

Returns `2, 4, 6`. `mod({13, 24, 35, 46, 57, 68}, 2)=0` returns a list of true and false values based on whether a value is divisible by 2. The `where()` function then returns the list of indexes for true values (in this example, the even numbers).

### Use with comparison operators

#### Check which indexes are greater than 50

```
1
2
3
4
a!localVariables(
  local!scores: {68, 89, 82, 90, 93, 99, 59, 49, 88, 27, 56, 49, 100},
  where(local!scores < 50)
)
```

Returns `{8, 10, 12}`.

#### Check which indexes are greater than the average

```
1
2
3
4
a!localVariables(
  local!scores: {68, 89, 82, 90, 93, 99, 59, 49, 88, 27, 56, 49, 100},
  where(local!scores > average(local!scores))
)
```

Returns `{2, 3, 4, 5, 6, 9, 13}`.

#### Check which indexes are less than three standard deviations from the mean

```
1
2
3
4
5
6
7
a!localVariables(
  local!scores: {68, 89, 82, 90, 93, 99, 59, 49, 88, 27, 56, 49, 100},
  where(
    local!scores < average(local!scores) - 3 * stdevp(local!scores),
    -1
  )
)
```

Returns `-1` because no scores are less than three standard deviations from the mean.

### Use with the `index()` function

**Note:**  The rule input and CDT shown in this section are for reference only. If you copy and paste either expression, it will not evaluate.

#### Return first name of employees in a specified department

```
1
2
3
4
5
6
7
8
index(
  ri!employees.firstName,
  where(
    like(ri!employees.department, "Finance"),
    -1
  ),
  "None"
)
```

Returns all of the first names of employees in the Finance department, or "None" if none of the employees have their department field set to Finance.

#### Return customers with risk scores greater than 15

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
a!localVariables(
  local!customer: {
    'type!Customer'(riskScore: 1),
    'type!Customer'(riskScore: 25),
    'type!Customer'(),
    'type!Customer'(riskScore: 15),

  },
  local!customer[where(local!customer.riskScore > 10)]
)
```

Returns the customer CDTs from the original list with risk scores greater than 15 (the second and fourth customers).

### Use with a null or empty array

#### Null _booleanArray_

```
1
where(null)
```

Returns `{}`.

#### Null _booleanArray_ with _default_

```
1
where(null, 1000)
```

Returns `{1000}`.

#### Empty _booleanArray_

```
1
where({})
```

Returns `{}`.

#### Empty _booleanArray_ with _default_

```
1
where({}, -1)
```

Returns `{-1}`

#### _booleanArray_ with null item

```
1
where({true, false, null, true})
```

Returns `{1, 4}`

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