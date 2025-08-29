---
source_url: https://docs.appian.com/suite/help/25.3/fnc_looping_filter.html
original_path: fnc_looping_filter.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# filter() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**filter**( _predicate, list, context_ )

Calls a predicate for each item in a list and returns any items for which the returned value is true.

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

Any Type Array

## Usage considerations

### Referencing expressions and rules

Use `fn!functionName` or `a!functionName` to reference an expression function and `rule!ruleName` to reference a rule.

### Using rules or functions with multiple arguments

To use rules or functions that take more than two arguments, use the [merge() function](fnc_looping_merge.html). For example, given a rule `g(x, y, z)`, `reduce(rule!g, i, merge({a, b, c}, {d, e, f}))` returns `g(g(g(i, a, d), b, e), c, f)`.

### Limitations

`a!forEach()` cannot be used within rules used in this function.

## Examples

### Filtering a list

```
1
2
3
4
filter(
  a!isNotNullOrEmpty,
  {1, 2, null, 3, null, 4}
)
```

Returns `{1, 2, 3, 4}`.

### Filtering with context

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

#### Filtering a list with _context_

```
1
2
3
4
5
filter(
  a!isUserMemberOfGroup,
  {"user1", "user2", "user3"},
  cons!csaAdmins
)
```

Returns `{"user1", "user3"}`. Since user1 and user3 are members of the group referenced by `cons!csaAdmins` they will be returned by the function.

Learn more about [a!isUserMemberOfGroup()](fnc_people_a_isusermemberofgroup.html).

#### Filtering a list with _context_ for more than 2 parameters

```
1
2
3
4
5
filter(
  a!isUserMemberOfGroup,
  {"user1", "user2", "user3"},
  {cons!allGroups, true}
)
```

Returns `{"user1"}` when only user1 is a member of all the groups referenced in `cons!allGroups`. `a!isUserMemberOfGroup` has 3 parameters: _username_, _groups_, and _matchAllGroups_. The `filter()` _list_ corresponds to _username_, and the list of values provided in the _context_ parameter are used as the next two parameters, _groups_ & _matchAllGroups_.

Learn more about [a!isUserMemberOfGroup()](fnc_people_a_isusermemberofgroup.html).

#### Filtering a list with _context_ for more than 2 parameters which accept lists

```
1
2
3
4
5
filter(
  a!isUserMemberOfGroup,
  {"user1", "user2", "user3"},
  merge({cons!csaAdmins, cons!csaProfs}, {true, true})
)
```

Returns `{"user1"}` when only user1 is a member of the groups referenced in `cons!csaAdmins` and `cons!csaProfs`. The [merge()](fnc_looping_merge.html) function maps the list values to the correct parameters in this example.

Learn more about [a!isUserMemberOfGroup()](fnc_people_a_isusermemberofgroup.html).

### Filtering a list with a custom expression rule

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
filter(
  rule!isDateLater,
  {date(1950, 2, 3), date(1950, 6, 23), date(1950, 5, 2)},
  date(1950, 4, 7)
)
```

Returns `{6/23/1950, 5/2/1950}`

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