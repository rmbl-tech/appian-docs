---
source_url: https://docs.appian.com/suite/help/25.3/fnc_looping_any.html
original_path: fnc_looping_any.html
version: "25.3"
title: "any() Function"
page_id: "fnc_looping_any"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# any() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**any**( _predicate, list, context_ )

Calls a rule or function that returns either true or false for each item in list by asking the question, "Do any items in this list yield true for this rule/function?" with the intent to discover if any item(s) yield true.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`predicate`

 |

_Function, Rule, or Data Type Constructor_

 |

Expression that returns a Boolean (true or false).

 |
|

`list`

 |

_Any Type Array_

 |

List of elements that the predicate iterates through.

 |
|

`context`

 |

_Any Type Array_

 |

Variable number of parameters passed directly into each predicate evaluation.

 |

## Returns

Boolean

## Usage considerations

### Referencing expressions and rules

Use `fn!functionName` or `a!functionName` to reference an expression function and `rule!ruleName` to reference a rule.

### Using rules or functions with multiple arguments

To use rules or functions that take more than two arguments, use the [merge() function](fnc_looping_merge.html). For example, given a rule `g(x, y, z)`, `reduce(rule!g, i, merge({a, b, c}, {d, e, f}))` returns `g(g(g(i, a, d), b, e), c, f)`.

### Understanding results

Returns `true` as soon as the returned value of an evaluation yields true; otherwise, returns `false`.

Empty and null lists yield `false`.

### Limitations and alternatives

`a!forEach()` cannot be used within rules used in this function.

## Examples

### Generalized behavior

Given a function `f(x)` , `any(fn!f, {a, b, c}, v))` returns `or({f(a, v), f(b, v), f(c, v)})`

### Checking items in a list

```
1
2
3
4
any(
  a!isNotNullOrEmpty,
  {1, 2, null, 3, null, 4}
)
```

Returns `true`. Note that since the first value `1` was not null or empty, the function will stop evaluating and return `true` after the first item in the list.

### Checking items in an empty list

```
1
2
3
4
any(
  a!isNotNullOrEmpty,
  {}
)
```

Returns `false`.

### Checking items with context

To help demonstrate how the _context_ parameter works in looping expressions, let's look at an example.

Imagine you're building an expression that uses looping to analyze group membership in your application. You have four **Group** constants configured in the following ways:

| Constant | Group(s) referenced | Group membership |
| --- | --- | --- |
| cons!csaAdmins | CSA Administrators | user1, user3 |
| cons!csaProfs | CSA Professors | user1, user2, user4, user5, user6, user7 |
| cons!csaBuilding1 | CSA Building 1 | user1, user2, user3, user5, user6, user7 |
| cons!allGroups | CSA Adminstrators, CSA Professors, CSA Building 1 | See above |

The following SAIL expressions reference these constants to show how _context_ works when checking items in a list.

**Note:**  You'll need to adapt these expression examples for your own purposes, since the examples reference constants that may not exist in your Appian environment.

#### Checking items in a list with _context_

```
1
2
3
4
5
any(
  a!isUserMemberOfGroup,
  {"user1", "user2", "user3"},
  cons!csaBuilding1
)
```

Returns `true`. Since user2 and user3 are members of the group referenced by `cons!csaBuilding1`, the function will return `true`.

Learn more about [a!isUserMemberOfGroup()](fnc_people_a_isusermemberofgroup.html).

#### Checking all items in a list with _context_ for more than 2 parameters

```
1
2
3
4
5
any(
  a!isUserMemberOfGroup,
  {"user1", "user2", "user3"},
  {cons!allGroups, true}
)
```

Returns `true` when user1 is a member of all the groups referenced in `cons!allGroups`. `a!isUserMemberOfGroup` has 3 parameters: _username_, _groups_, and _matchAllGroups_. The `any()` _list_ corresponds to _username_, and the list of values provided in the _context_ parameter are used as the next two parameters, _groups_ & _matchAllGroups_.

Learn more about [a!isUserMemberOfGroup()](fnc_people_a_isusermemberofgroup.html).

#### Checking all items in a list with _context_ for more than 2 parameters which accept lists

```
1
2
3
4
5
any(
  a!isUserMemberOfGroup,
  {"user1", "user2", "user3"},
  merge({cons!csaAdmins, cons!csaProfs}, {true, true})
)
```

Returns `true` when user1 is a member of the groups referenced in `cons!csaAdmins` and `cons!csaProfs`. The [merge](fnc_looping_merge.html) function maps the list values to the correct parameters in this example.

Learn more about [a!isUserMemberOfGroup()](fnc_people_a_isusermemberofgroup.html).

### Checking a list with a custom expression rule

In this example, we will use a helper rule, `rule!isDateLater(value, referenceDate)`, which is defined as:

```
1
ri!value > ri!referenceDate
```

Example filter:

```
1
2
3
4
5
any(
  rule!isDateLater,
  {date(1950, 2, 3), date(1950, 6, 23), date(1950, 5, 2)},
  date(1950, 4, 7)
)
```

Returns `true`.

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