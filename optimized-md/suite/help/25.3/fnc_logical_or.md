---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_or.html
original_path: fnc_logical_or.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# or() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**or**( _value_ )

Returns `true` if any inputs are `true`; returns `false` if all inputs are `false`.

**See also**:

-   [and()](fnc_logical_and.html): Similar to `or()`, but instead returns `true` if _all_ of the input values return `true`.
-   [any()](fnc_looping_all.html): Calls a rule or function for a list of values to determine if any the results return `true`. This function is a combination of [a!forEach()](fnc_looping_a_foreach.html) and `or()`.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Boolean_

 |

A value or array of values that must be false for the function return false.

 |

## Returns

Boolean

## Usage considerations

### Casting and returning boolean values

-   Arguments are cast to Boolean before `or()` evaluates.
-   If a value cannot be cast to a Boolean, the function returns an error.

### Evaluation order and performance

-   Arguments are evaluated in order from left to right.
-   As soon as any _value_ evaluation returns `true`, the function returns `true`. All values must evaluate to `false` for the function to return `false`.
-   By keeping common conditions on the left and complex edge cases on the right, you can improve function performance. That way, if an earlier, simple function returns `true`, evaluation of the later edge cases never occurs.
-   Runtime errors on arguments that are not evaluated will not result in an error in the evaluation of the `or()` function. During troubleshooting, try evaluating each expression independently to identify issues.

### Null and empty arrays

-   Null values that are part of input arrays are filtered out before evaluation.
-   Empty dictionaries, maps, CDTs, or records evaluate to `false`.
-   Empty text strings in a text array evaluate to `true`, but empty text strings in an array with multiple data types are considered null values and are filtered out before evaluation.

### Using lists

-   Values can be provided either as separate arguments or within a list. For example, the following are both valid and will return the same result:
    -   `or(true, true, false)`
    -   `or({true, true, false})`
-   If multiple lists are provided, the items are flattened into a single list before evaluating each item.

**Tip:**  The `or()` function is useful within a component's _showWhen_ parameter. This allows you to display the component if any of the conditions return `true`.

## Examples

### Basic examples

#### Pass an empty array

`or({})` returns `false`

#### Pass an array of numbers

`or(1,2,"",3)` returns `true`

`or(0,1,2,"",3)` returns `true`

### Applying multiple conditions to a single value

```
1
2
3
4
5
6
7
a!localVariables(
  local!date: date(2022, 1, 2),
  or(
    calisworkday(local!date),
    local!date > today()
  )
)
```

This returns `false` because 2 Jan 2022 is a date in the past and it is not a work day in the default calendar.

### Conditionally showing or hiding components

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
a!localVariables(
  local!selection,
  local!description,
  {
    a!radioButtonField(
      label: "Approved",
      choiceLabels: {"Yes", "No"},
      choiceValues: {"Yes", "No"},
      value: local!selection,
      saveInto: local!selection
    ),
    a!paragraphField(
      label: "Comments",
      value: local!description,
      saveInto: local!description,
      showWhen: or(
        a!isUserMemberOfGroup(
          username: loggedInUser(),
          groups: cons!MY_GROUP_SUPERVISOR
        ),
        local!selection = "No"
      )
    )
  }
)
```

The paragraph field is only displayed if the user is in the supervisors group or they have selected `No` in the radio button selection.

### Checking the results of an integration

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
a!localVariables(
  local!response: rule!MY_IntegrationRule(),
  if(
    or(
      a!isNullOrEmpty(local!response),
      local!response.success = false,
      local!response.result.body.totalCount = 0
    ),
    "Error Occurred",
    "Total Results: " & local!response.result.body.totalCount
  )
)
```

In this example, the results of an integration are stored in `local!response`. We'd like to return the total number of results, but there are several possible error scenarios. If any of the following occur, we should provide a generic error message:

-   The result is null or empty.
-   The _success_ parameter returns `false`, which often occurs when an integration returns a 500 or 404 error.
-   The total number of results is 0.

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