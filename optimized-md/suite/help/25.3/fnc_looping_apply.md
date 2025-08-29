---
source_url: https://docs.appian.com/suite/help/25.3/fnc_looping_apply.html
original_path: fnc_looping_apply.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# apply() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Check out the new looping function, [a!forEach()](fnc_looping_a_foreach.html). It does everything **apply()** does but with easier syntax, better null handling, and support for interface components.

## Function

**apply**( _function, list, context_ )

Calls a rule or function for each item in a list, and provides any contexts specified.

**See also**:

-   [Arrays in Expressions](parts-of-an-expression.html#arrays)
-   [merge()](fnc_looping_merge.html)
-   [a!localVariables()](fnc_evaluation_a_localvariables.html)
-   [load()](fnc_evaluation_load.html)
-   [a!applyComponents()](fnc_system_a_applycomponents.html)

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

`list`

 |

_Any Type Array_

 |

List of elements that function iterates through.

 |
|

`context`

 |

_Any Type Array_

 |

Variable number of parameters passed directly into each function evaluation.

 |

## Returns

Any Type Array

## Usage considerations

### Referencing expressions and rules

Use `fn!functionName` to reference an expression function and `rule!ruleName` to reference a rule.

### Using rules or functions with multiple arguments

To use rules or functions that take more than one argument, use the `merge()` function. For example, given a rule `g(x, y), apply(rule!g, merge({a, b, c}, {d, e, f}))` returns `{g(a, d), g(b, e), g(c, f)}`.

### Understanding results

Null lists return a null list without executing the function.

The result of each operation is appended to each other in the same order as their corresponding item in the input list. If the result of each operation is an array, `apply()` returns a two-dimensional array which can then be used for further computation. When the two-dimensional array is saved into a process variable, a node input or a custom data type, the array is flattened to a one-dimensional array. Local variables, however, can store the two-dimensional array without flattening it.

### Flattening data

If you save the nested arrays into a process variable for multiple values, the nested function is flattened. Keep in mind that casting to a flattened array only happens when saving into a process variable, node input, custom data type, or custom data type field.

To avoid having the nested function flatten, you can use the output of the `apply()` function as the input for a `merge()` function.

### Alternatives when working with local data

`apply()` cannot be used with rules or functions that store local data. This means any local variable that can be saved into, such as variables created using `load()` or `a!localVariables()` without using the "refreshAlways" configuration, cannot be created. Additionally, `a!forEach()` and some components cannot be used. In these cases, `apply()` will return an error. In these cases, use `a!forEach()` or `a!applyComponents()` instead of `apply()`.

## Examples

Given a function `h(x, y)`, `apply(fn!h, {a, b, c}, v)` returns `{h(a, v), h(b, v) ,h(c, v)}`

`apply(fn!sum,{-1,2,3},2)` returns `1, 4, 5`

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