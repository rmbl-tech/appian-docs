---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_displayvalue.html
original_path: fnc_conversion_displayvalue.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# displayvalue() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**displayvalue**( _value, inArray, replacement, default_ )

Tries to match a value in a given array with a value at the same index in a replacement array and returns either the value at the same index or a default value if the value is not found.

**See also**: [resource()](fnc_text_resource.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value to search for in the array. Will cast to the type of inArray.

 |
|

`inArray`

 |

_Any Type Array_

 |

The array to be searched.

 |
|

`replacement`

 |

_Any Type Array_

 |

The array of replacement values.

 |
|

`default`

 |

_Any Type_

 |

The default value to be returned if the search value is not found.

 |

## Returns

Any Type

## Usage considerations

### Suggested uses

This function is typically used to return a text display value that corresponds to an ID value stored in a process variable and makes it easier to generate reports that show human-readable values instead of numeric IDs in process data.

You can also use it to search a CDT array and return the CDT that has a field value matching a process variable value. Do this by creating an expression similar to the following: `displayvalue(pv!departmentID, pv!departments.departmentID, pv!departments, "none")`

### Using the value parameter

The type of the argument passed to _value_ must match the types in the _replacement_ array, otherwise the default value will be returned.

### Using the replacement parameter

If the length of the _replacement_ array is shorter than the _inArray_ array, the _replacement_ array will be repeatedly extended until it is the same length as the longer _inArray_ array.

### Using displayvalue() with arrays

This function supports expressions or process variables for arrays.

## Examples

### Return a priority level based on the number in an array

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
a!localVariables(
  local!priority: 2,
  displayvalue(
    local!priority,
    {0,1,2},
    {"Low","Medium","High"},
    "Unknown"
  )
)
```

Returns `High`. If you change `local!priority` to `3`, the expression returns `Unknown`.

### Working with string values

```
1
2
3
4
5
6
displayvalue(
  { "Group 1" },
  { "Group 1", "Group 2", "Group 3", "Group 4" },
  { "Order", "Customer", "Invoice", "Parts" },
  "Unknown Group"
)
```

Returns `"Order"`.

### Working with integer values

```
1
2
3
4
5
6
displayvalue(
  { 3 },
  { 1, 2, 3, 4, 5 },
  { "A", 2, "C", "D", 5 },
  "Unknown"
)
```

Returns `"C"`.

### Working with boolean values

```
1
2
3
4
5
6
displayvalue(
  { true },
  { true, false },
  { "First", "Second" },
  "Unknown"
)
```

Returns `"First"`.

### Return a value not found in replacement

```
1
2
3
4
5
6
displayvalue(
  { "Group 4" },
  { "Group 1", "Group 2", "Group 3", "Group 4" },
  { "Order", "Customer", "Invoice" },
  "Unknown Group"
)
```

Returns `"Order"`. If the matching index from _inArray_ is not found in _replacement_, then the the index loops back to beginning of the list. In this case, the first value from _replacement_ is returned.

### Use with the `resource()` function to display internationalized text

In the `custom_locale_en_US.properties` file located in the `<INSTALL_HOME>/server/_conf` directory, define the following key value pairs:

-   low=Low
-   medium=Medium
-   high=High

Define a `pv!priority` process variable of type Number and set the current locale to `en_US`.

```
1
2
3
4
5
6
displayvalue(
  pv!priority,
  {0,1,2},
  {resource("low"),resource("medium"),resource("high")},
  "Unknown"
)
```

Returns `High` when `pv!priority = 2` because the [resource()](fnc_text_resource.html) function looked up the value for the key `high`.

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