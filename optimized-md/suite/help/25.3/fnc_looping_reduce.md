---
source_url: https://docs.appian.com/suite/help/25.3/fnc_looping_reduce.html
original_path: fnc_looping_reduce.html
version: "25.3"
title: "reduce() Function"
page_id: "fnc_looping_reduce"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# reduce() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**reduce**( _function, initial, list, context_ )

Calls a rule or function for each item in a list, passing the result of each call to the next one, and returns the value of the last computation.

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

`initial`

 |

_Any Type_

 |

The accumulator's initial value.

 |
|

`list`

 |

_Any Type_

 |

Array of elements that the function iterates through.

 |
|

`context`

 |

_Any Type Array_

 |

Variable number of parameters passed directly into each function evaluation.

 |

## Returns

Any Type

## Usage considerations

### Referencing expressions and rules

Use `fn!functionName` or `a!functionName` to reference an expression function and `rule!ruleName` to reference a rule.

The initial accumulator value is given by initial.

### Using rules or functions with multiple arguments

To use rules or functions that take more than two arguments, use the [merge() function](fnc_looping_merge.html). For example, given a rule `g(x, y, z)`, `reduce(rule!g, i, merge({a, b, c}, {d, e, f}))` returns `g(g(g(i, a, d), b, e), c, f)`.

### Understanding results

Returns a scalar value if the function called returns a scalar, and returns a list if the function called returns a list.

### Limitations

Best used when the computation of each operation needs to use the result from the previous operation such as when the result of each operation is an array that should be appended to each other in order. The result from the previous operation is then passed to the subsequent operation as the parameter initial.

`a!forEach()` cannot be used within rules used in this function.

## Examples

### Generalized behavior

Given a function `h(x, y)`, `reduce(fn!h,initial, {a, b, c}, v)` returns `h(h(h(initial, a, v), b, v), c, v)`.

### Substitute multiple values from _initialValue_

```
1
2
3
4
5
6
reduce(
  fn!substitute,
  "abcdefg",
  {"a", "d", "f"},
  "#"
)
```

Returns `"#bc#e#g"`. The function firsts replaces `"a"` from the _initialValue_. Then `"d"` is replaced from the result of the previous substitution. And finally the `"f"` is replaced.

### Create new list from initial value

```
1
2
3
4
5
6
reduce(
  fn!insert,
  {1},
  {2, 3},
  1
)
```

Returns `{3, 2, 1}`. The function firsts inserts `2` at the first position and then inserts `3` into the first position of the resulting list from the first insert.

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