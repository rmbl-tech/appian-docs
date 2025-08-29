---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_not.html
original_path: fnc_logical_not.html
version: "25.3"
title: "not() Function"
page_id: "fnc_logical_not"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# not() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**not**( _value_ )

Converts `true` into `false`, and `false` into `true`.

**See also**:

-   [if()](fnc_logical_if.html): Evaluates a logical statement and returns different results if the logical statement returns true or false.
-   [true()](fnc_logical_true.html): Returns the Boolean value `true`.
-   [false()](fnc_logical_false.html): Returns the Boolean value `false`.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Boolean_

 |

A Boolean or array of Booleans to be toggled.

 |

## Returns

Boolean

## Usage considerations

-   All values are cast to a Boolean before evaluating the `not()`. If any values cannot be cast to a Boolean, the function returns an error.
-   `not()` can accept a list of values. If a list is provided, the result returns a list of the same length with each input value evaluated.
-   A list of values can either be provided using separate arguments or a list of values. For example, the following expressions return the same result:
    -   `not({true, true, false})`
    -   `not(true, true, false)`
-   If a list of lists is provided, the list is flattened before evaluating the `not()` function.
-   The `not()` function returns an error if any values provided are null.

If it's possible that the input value to the `not()` function could be null, an alternate approach is to do a comparison against the `false()` function using the `<>` operator. For example, the following expressions result in the same outcome if `local!value` is `true` or `false`. However, if `local!value` is null, the first expression will return an error, while the second expression returns `true`.

-   `not(local!value)`
-   `local!value <> false`

## Examples

### Using not() within an if() statement

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
if(
  not(
    a!isUserMemberOfGroup(
      username: loggedInUser(),
      groups: cons!MY_GROUP
    )
  ),
  "Not Authorized",
  "Authorized",
)
```

Returns `"Not Authorized"` if the user is not in the group.

When using `not()` in a logical function, the expression can usually be simplified to avoid using `not()`. In this example, you can remove `not()` from the `if()` _condition_ and switch the values for the true and false outcomes. This has the same result and will be easier for another developer to read and understand.

```
1
2
3
4
5
6
7
8
if(
    a!isUserMemberOfGroup(
      username: loggedInUser(),
      groups: cons!MY_GROUP
    ),
  "Authorized",
  "Not Authorized",
)
```

### Using not() to change the selected style of a button

Paste this example into an interface to see the result.

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
a!localVariables(
  local!selected: true,
  a!buttonWidget(
    label: if(
      local!selected,
      "Selected",
      "Not Selected"
    ),
    style: if(
      local!selected,
      "SOLID",
      "OUTLINE"
    ),
    value: not(local!selected),
    saveInto: local!selected
  )
)
```

When the button is selected, the variable value is flipped from true to false or vice versa.

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