---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_if.html
original_path: fnc_logical_if.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# if() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**if**( _condition, valueIfTrue, valueIfFalse_ )

Returns `valueIfTrue` if `condition` returns `true`; returns `valueIfFalse` otherwise.

**See also**:

-   [a!match()](fnc_logical_match.html): Allows specifying a series of condition pairs using equal and then, or whenTrue and then. Can often achieve more complex logic than `if()`.
-   [choose()](fnc_logical_choose.html): Returns a result based on the index provided. Can often result in similar logic to `if()` when paired with `wherecontains()`.
-   [a!defaultValue](fnc_informational_a_defaultvalue.html): Consider using the `a!defaultValue` function when you are replacing a null value with another value or have nested `if` and `isnull` statements.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`condition`

 |

_Boolean_

 |

A test that determines whether valueIfTrue or valueIfFalse will be returned.

 |
|

`valueIfTrue`

 |

_Any Type_

 |

The value to be returned if condition returns true.

 |
|

`valueIfFalse`

 |

_Any Type_

 |

The value to be returned if condition returns false.

 |

## Returns

Any Type

## Usage considerations

### Evaluation properties

-   Unlike most functions, `if()` does not always evaluate all of its parameters. When passed a single condition, the function evaluates the condition and then only the value parameter that is returned.
-   All parameters are required for the `if()` function.
-   The _condition_ value is cast to a Boolean. If it fails to cast, the `if()` function returns an error.

### Null and empty values

-   When null values are passed to the _condition_ parameter, they are considered to be false.
-   When null values are passed to the `valueIfTrue` or `valueIfFalse` parameters, a null value is also returned for the corresponding true or false.

### Lists of values

When a list is passed to the _condition_ parameter, it is treated as a list of conditions, so the `valueIfTrue` and `valueIfFalse` parameters return lists of values. This means that when passed an empty list, `if()` always returns an empty list.

If the lists in the `condition` and value parameters are the same length, the index of each condition corresponds to the item selected for the result. For example:

```
1
2
3
4
5
if(
  {true, false, true, false, true},
  {"One", "Two", "Three", "Four", "Five"},
  {"A", "B", "C", "D", "E"}
)
```

Returns `{"One", "B", "Three", "D", "Five"}`.

However, if the value parameters have shorter lists than the _condition_, the index is not maintained. Instead, each item is returned in order (and repeats if necessary). For example:

```
1
2
3
4
5
if(
  {true, false, true, false, true, true, true},
  {"One", "Two", "Three", "Four"},
  {"A", "B", "C", "D"}
)
```

Returns `{"One", "A", "Two", "B", "Three", "Four", "One"}`.

When passed a list containing a single boolean and lists in the value parameters, only the first item of the selected list will be returned. However, if a single value is passed to the _condition_ and there are lists in the value parameters, the entire list is returned.

## Examples

### Basic examples

`if(null, 1, 0)` returns `0`

`if(true, 1, error("Doesn't get evaluated"))` returns `1` (because the parameter with `error()` does not get evaluated)

`if(true, { 2, 4, 6 }, { 1, 3, 5 })` returns `{ 2, 4, 6 }`

`if({true, false, true}, { 2, 4, 6 }, { 1, 3, 5 })` returns `{ 2, 3, 6 }`

`if({true}, { 2, 4, 6 }, { 1, 3, 5 })` returns `{ 2 }`

`if({}, { 2, 4, 6}, { 1, 3, 5 })` returns `{}`

### Evaluating only one output

`if(true, 1, error("Doesn't get evaluated"))` returns `1` (because the parameter with `error()` does not get evaluated)

### Using if() to return a default result

The `if()` function is often used when calling an integration to handle cases where an integration failed or returned a null response.

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
  local!result: rule!MY_Integration(),
  if(
    a!isNullOrEmpty(local!result),
    0,
    local!result.totalCount
  )
)
```

In this case, when the integration returns an empty result, a default count of 0 is returned. Otherwise, the total count from the result is used.

### Using if() to determine whether to show a component as read only

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
a!localVariables(
  local!isReadOnly: true,
  local!value,
  a!textField(
    label: "Text",
    labelPosition: if(
      local!isReadOnly,
      "JUSTIFIED",
      "ABOVE"
    ),
    readOnly: local!isReadOnly,
    required: if(
      local!isReadOnly,
      false,
      true
    ),
    saveInto: local!value,
    value: local!value,
  )
)
```

When the variable `local!isReadOnly` is changed, it determines the component's `readOnly` value, as well as additional display properties.

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