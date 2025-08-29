---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_applycomponents.html
original_path: fnc_system_a_applycomponents.html
version: "25.3"
title: "a!applyComponents() Function"
page_id: "fnc_system_a_applycomponents"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!applyComponents() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Check out the new looping function, [a!forEach()](fnc_looping_a_foreach.html). It does everything **a!applyComponents()** does but with easier syntax, better null handling, and support for interface components.

## Function

**a!applyComponents**( _function, array, arrayVariable_ )

Calls a rule or function for each item in a list and supports the preservation of the local state on interfaces.

**See also:** [a!localVariables()](fnc_evaluation_a_localvariables.html), [load()](fnc_evaluation_load.html), [a!localVariables()](fnc_evaluation_a_localvariables.html), [Arrays in Expressions](parts-of-an-expression.html#arrays), [merge()](fnc_looping_merge.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`function`

 |

_Rule or Function Reference_

 |

Rule or expression function.

 |
|

`array`

 |

_Any Type Array_

 |

Array of elements that the function iterates through.

 |
|

`arrayVariable`

 |

_Any Type Array_

 |

Optional variable for preserving component or rule data.

 |

## Returns

Any Type Array

## Usage considerations

### Using the function parameter

Use `fn!functionName` to reference an expression function and `rule!ruleName` to reference a rule.

### Using the array parameter

If _array_ will not change, or if additions and removals only occur at the end of the array, `arrayVariable` is not needed.

Passing a null _array_ returns a null list without executing the function.

### Using the arrayVariable parameter

The _arrayVariable_ parameter should be passed an uninitialized local variable created via `a!localVariables()` or `load()`. `a!applyComponents` will store an array of state tokens in that variable. This is only required if `a!applyComponents()` is being invoked as part of an interface and the order of elements in _array_ is not stable. If items in _array_ swap positions, if an item is added to the beginning or middle, and if an item is removed from the beginning or middle, the same transformation should be applied to the `arrayVariable` array.

### Using rules or functions with more than one argument

To use rules or functions that take more than one argument, use the `merge()` function. For example, given a rule `g(x, y), a!applyComponents(function: rule!g, array: merge({a, b, c}, {d, e, f}))` returns `{g(a, d), g(b, e), g(c, f)}`.

The result of each operation is appended to each other in the same order as their corresponding item in the input list. If the result of each operation is an array, `a!applyComponents()` returns a two-dimensional array which can then be used for further computation. When the two-dimensional array is saved into a process variable, a node input or a custom data type, the array is flattened to a one-dimensional array. Local variables, however, can store the two-dimensional array without flattening it.

If you save the nested arrays into a process variable for multiple values, the nested function is flattened. Keep in mind that casting to a flattened array only happens when saving into a process variable, node input, custom data type, or custom data type field.

To avoid having the nested function flatten, you can use the output of the `apply()` function as the input for a `merge()` function.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

Given an interface rule `renderEmployeeDetails` and an array of employees `ri!employees`:

```
1
2
3
4
5
6
7
8
	a!localVariables(
	  local!stateTokens,
	  a!applyComponents(
	    function: rule!renderEmployeeDetails,
	    array: 1 + enumerate(length(ri!employees)),
	    arrayVariable: local!stateTokens
	  )
	)
```

`a!applyComponents(function: fn!isnull, array: {1,2,null,3,null,4})` returns `false, false, true, false, true, false`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
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