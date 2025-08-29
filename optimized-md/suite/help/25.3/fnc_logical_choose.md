---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_choose.html
original_path: fnc_logical_choose.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# choose() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use Choose to Create Dynamic Interfaces

Watch this video to learn how to use the `choose()` function.

**Tip:**  Check out the new logical function, [a!match()](fnc_logical_match.html). It does everything `choose()` does but with additional flexibility so you can simplify your conditional logic without using an index.

## Function

**choose**( _key, choice1, choiceN_ )

Evaluates the `choice` argument at the given `index` and returns the result.

**See also**:

-   [a!match()](fnc_logical_match.html): Allows specifying a series of condition pairs using equal and then, or whenTrue and then. Can often achieve more complex logic than `choose()`.
-   [wherecontains()](fnc_array_wherecontains.html): Returns an index given a list of values and a value to find within the list; often used in combination with `choose()` to determine the index.
-   [index()](fnc_array_index.html): Similar to `choose()`, `index()` returns an item at a certain index within a list. Usually used for static lists instead of expressions.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`key`

 |

_Number (Integer)_

 |

The one-based index that selects which choice argument to evaluate and return.

 |
|

`choice1`

 |

_Any Type_

 |

The first of n possible expressions, where n must be >= 1. Only the selected value is evaluated.

 |
|

`choiceN`

 |

_Any Type_

 |

An unlimited number of expressions.

 |

## Returns

Any Type

## Usage considerations

### Casting and returning boolean values

-   The _key_ parameter is always cast to an integer to identify the choice.
-   If the value cannot be cast to an integer, the function returns an error.

### Working with nulls

-   If the selected choice evaluates to null, no error occurs and `null` will be returned.
-   The _key_ must be a number between 1 and the number of choices. It cannot be `null`.

### Using lists

-   The items to evaluate must be provided as separate arguments. If a list is provided as an argument, the entire list is returned as the result.
-   The _key_ parameter cannot be a list of values.

### Evaluation order

-   Unlike most functions, `choose()` does not evaluate all its arguments. First the _key_ is evaluated, then the corresponding _choice_ argument.
-   Only one _choice_ argument is evaluated. Use `choose` to avoid calling potentially costly expressions whose results would be discarded.

### Other tips

When choosing values from a static list, the [index()](fnc_array_index.html) function is often easier to use. For example, both of the following examples will return the same output:

```
1
2
3
4
5
6
choose(
  2,
  "Low",
  "Medium",
  "High"
)
```

```
1
2
3
4
5
index(
  {"Low", "Medium", "High"},
  2,
  "Unknown"
)
```

However, the example using `index()` is far more common because the list of values can come from a single variable or constant rather than each value being provided in a separate argument. In addition, if an index value of 4 is provided in the examples above, `choose()` returns an evaluation error, while `index()` returns the default value _Unknown_.

**Tip:**  One common use for the `choose()` function is within a [wizard pattern](ux_wizards.html), since it can show each page in the wizard one at a time.

## Examples

### Use expressions as the choice arguments

```
1
choose(2,2+2,4/2,3^2)
```

Returns `2`.

### Using choose to provide a random rating

It can be useful to use the `wherecontains()` function in conjunction with `choose()`. Since `wherecontains()` returns a list, use the first result for the _key_ parameter.

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
  local!rating: "Excellent",
  choose(
    wherecontains(local!rating, {"Poor","Satisfactory","Excellent"})[1],
    mod(rand() * 10, 5),
    mod(rand() * 10, 5) + 4,
    10 - mod(rand() * 10, 2)
  )
)
```

### Choose a component to display in an interface

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
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
a!localVariables(
  local!selectionField: 2,
  local!value: 2,
  choose(
    local!selectionField,
    a!radioButtonField(
      label: "Radio Button",
      choiceLabels: {"One", "Two", "Three"},
      choiceValues: {1, 2, 3},
      value: local!value,
      saveInto: local!value
    ),
    a!checkboxField(
      label: "Checkbox",
      choiceLabels: {"One", "Two", "Three"},
      choiceValues: {1, 2, 3},
      value: local!value,
      saveInto: local!value
    ),
    a!dropdownField(
      label: "Dropdown",
      choiceLabels: {"One", "Two", "Three"},
      choiceValues: {1, 2, 3},
      value: local!value,
      saveInto: local!value
    )
  )
)
```

In this example, the checkbox field is displayed since it is the second _choice_ argument. In addition, the radio button and dropdown fields are not evaluated.

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