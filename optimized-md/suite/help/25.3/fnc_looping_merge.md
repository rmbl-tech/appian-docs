---
source_url: https://docs.appian.com/suite/help/25.3/fnc_looping_merge.html
original_path: fnc_looping_merge.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# merge() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**merge**( _list_ )

Takes a variable number of lists and merges them into a single list (or a list of lists) that is the size of the largest list provided.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`list`

 |

_Any Type Array_

 |

Variable number of lists to merge into one list.

 |

## Returns

Any Type

## Usage considerations

Use this function when you have a looping function referencing a rule or function that takes more than one argument. The order of the argument must match the order of your rule input parameters.

Shorter lists are padded with null entries.

## Examples

### Merging two lists of the same length

```
1
2
3
4
merge(
  {1, 2, 3},
  {4, 5, 6}
)
```

Returns `{{1, 4}, {2, 5}, {3, 6}}`. Creates a list with 3 nested lists.

### Merging many lists of the same length

```
1
2
3
4
5
6
merge(
  {1, 2},
  {true, false},
  {"a", "b"},
  {10,20}
)
```

Returns `{{1, true, "a", 10}, {2, false, "b", 20}}`. Creates a list with 2 nested lists.

### Merging two lists of the different lengths

```
1
2
3
4
merge(
  {1, 2, 3},
  {4, 5}
)
```

Returns `{{1, 4}, {2, 5}, {3, null}}`. Creates a list with 3 nested lists.

### Merging a single list

```
1
2
3
merge(
  {1, 2}
)
```

Returns `{{1}, {2}}`. Creates a list with 2 nested lists.

### Usage in another looping function: filter()

Learn more about the [filter()](fnc_looping_filter.html) function.

Here a list is being filtered by the function `a!isUserMemberOfGroup` and 2 parameters which accept lists need to be passed in the _context_ parameter of `filter`.

```
1
2
3
4
5
filter(
  a!isUserMemberOfGroup,
  {"user1", "user2", "user3"},
  merge({cons!myGroup1, cons!myGroup2}, {true, true})
)
```

Returns `{"user1"}` when only user1 is a member of the groups referenced in `cons!myGroup1` and `cons!myGroup2`. The `merge` function maps the list values to the correct parameters in this example.

Learn more about [a!isUserMemberOfGroup()](fnc_people_a_isusermemberofgroup.html).

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