---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_false.html
original_path: fnc_logical_false.html
version: "25.3"
title: "false() Function"
page_id: "fnc_logical_false"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# false() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**false**( _returns_ )

Returns the Boolean value `false`.

**See also**:

-   [if()](fnc_logical_if.html): Evaluates a logical statement and returns different results if the logical statement returns true or false.
-   [true()](fnc_logical_true.html): The opposite to the `false()` function; returns the boolean value `true`.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`returns`

 |

_Boolean_

 |

Returns the boolean value `false`.

 |

## Returns

Boolean

## Usage considerations

Using the `false()` function is equivalent to using `false` (without calling the function) in any expression. If calling the `false()` function with parentheses, any parameters provided to the function are ignored.

An easy way to check if a value is either null or true is to make a comparison to false using the `<>` operator. For example, the following expressions result in the same outcome:

-   `local!value <> false()`
-   `or(local!value = true(), a!isNullOrEmpty(local!value))`

## Examples

### Basic example

```
1
false()
```

Returns `false`.

### Using false() as a user property

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
  local!user1Active: false(),
  local!user2Active: false(),
  local!user3Active: true(),
  and(
    local!user1Active,
    local!user2Active,
    local!user3Active
  )
)
```

Returns `false` because not all of the users are currently active.

### Using false() for field configurations

Paste the following example into an interface to test the expression.

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
a!boxLayout(
  label: "Box",
  contents: {
    a!textField(
      value: "Test",
      readOnly: true()
    )
  },
  isCollapsible: false(),
  showBorder: false(),
  showShadow: false()
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