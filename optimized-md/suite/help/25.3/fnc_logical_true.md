---
source_url: https://docs.appian.com/suite/help/25.3/fnc_logical_true.html
original_path: fnc_logical_true.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# true() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**true**( _returns_ )

Returns the Boolean value `true`.

**See also**:

-   [if()](fnc_logical_if.html): Evaluates a logical statement and returns different results if the logical statement returns `true` or `false`.
-   [false()](fnc_logical_false.html): The opposite to the `true()` function; returns the boolean value `false`.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`returns`

 |

_Boolean_

 |

Returns the Boolean value `true`.

 |

## Returns

Boolean

## Usage considerations

Using the `true()` function is equivalent to using `true` (without calling the function) in any expression. If calling the `true()` function with parentheses, any parameters provided to the function are ignored.

In addition, it isn't necessary to compare a condition to true—the result of a conditional statement can be used directly.

For example, this expression will return `"Yes"`:

```
1
2
3
4
5
if(
  a!isUserMemberOfGroup(cons!MY_GROUP) = true(),
  "Yes",
  "No"
)
```

However, the following expression returns the same output:

```
1
2
3
4
5
if(
  a!isUserMemberOfGroup(cons!MY_GROUP),
  "Yes",
  "No"
)
```

**Tip:**  The `true()` and `false()` functions are commonly used with comparison or logical operators. See the [expressions](parts-of-an-expression.html#comparison-operators) page for more examples.

## Examples

### Basic example

`true()` returns `true`

### Using true() as a Boolean status

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
  local!status1: true(),
  local!status2: false(),
  local!status3: true(),
  where(
    {
      local!status1,
      local!status2,
      local!status3
    }
  )
)
```

Returns `{1, 3}` because the first and third status are `true`.

### Using true() for field configurations

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
a!localVariables(
  local!value,
  a!textField(
    label: "Text",
    value: local!value,
    saveInto: local!value,
    required: true(),
    characterLimit: 25,
    showCharacterCount: true()
  )
)
```

When configuring components, use `true()` to set a fixed value for Boolean properties.

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