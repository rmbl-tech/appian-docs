---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_and.html
original_path: fnc_logical_and.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# and() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**and**( _value_ )

Returns `true` if all inputs are `true`; returns `false` if at least one input is false.

**See also**:

-   [or()](fnc_logical_or.html): Similar to `and()`, but instead returns true if _any_ of the values return true.
-   [all()](fnc_looping_all.html): Calls a rule or function for a list of values to determine if all the results return true. This function is a combination of [a!forEach()](fnc_looping_a_foreach.html) and `and()`.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Boolean_

 |

A value or array of values that must be true for the function to return true.

 |

## Returns

Boolean

## Usage considerations

### Casting and returning boolean values

-   Arguments are cast to a Boolean before `and()` evaluates.
-   If a value cannot be cast to a Boolean, the function returns an error.

### Evaluation order and performance

-   Arguments are evaluated in order from left to right.
-   As soon as any value of a _value_ evaluation returns `false`, the function returns `false`. All values must be evaluated to `true` to return `true`.
-   By keeping common conditions on the left and complex edge cases on the right, you can improve function performance. That way, if an earlier, simple function returns `false`, evaluation of the later edge cases never occurs.
-   Runtime errors on unevaluated arguments will not result in an error for the entire `and()` function. During troubleshooting, try evaluating each expression independently to identify issues.

### Null and empty arrays

-   Null values that are part of input arrays are filtered out before evaluation.
-   Empty dictionaries, maps, CDTs, or records evaluate to `true`
-   Empty text strings in a text array evaluate to `false`, but empty text strings in an array with multiple data types are considered null values and are filtered out before evaluation.

### Using lists

-   Values can be provided either as separate arguments or within a list. For example, the following are both valid and will return the same result:
    -   `and(true, true, false)`
    -   `and({true, true, false})`
-   If multiple lists are provided, the items are flattened into a single list before evaluating each item.

**Tip:**  The `and()` function is often useful for validations to ensure that a value inputted by a user meets all of criteria.

## Examples

### Basic examples

#### Pass an Empty Array

`and({})` returns `true`

#### Pass an Array of Numbers

`and(1,2,"",3)` returns `true`

`and(0,1,2,"",3)` returns `false` because `0` casts to false

### Applying multiple logical statements to check a single value

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
  local!value: 123,
  and(
    local!value > 100,
    local!value <= 200,
    typename(typeof(local!value)) = "Number (Integer)"
  )
)
```

Returns `true` since the value provided passes all of the checks. The value provided is:

-   greater than 100
-   less than or equal to 200
-   of type Integer

### Using and() to perform multiple validations

Paste the following example into an interface, and then select a **Start Date** and **End Date** to see how `and()` is used to check both conditions for the end date.

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
  local!startDate,
  local!endDate,
  {
    a!dateField(
      label: "Start Date",
      value: local!startDate,
      saveInto: local!startDate
    ),
    a!dateField(
      label: "End Date",
      value: local!endDate,
      saveInto: local!endDate,
      validations: if(
        and(
          a!isNotNullOrEmpty(local!endDate),
          local!endDate > today(),
          local!endDate > local!startDate
        ),
        "",
        "Please enter a valid date. The end date must be after the start date and in the future"
      )
    )
  }
)
```

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