---
source_url: https://docs.appian.com/suite/help/25.3/fnc_set_contains.html
original_path: fnc_set_contains.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# contains() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**contains**( _array, value_ )

Checks whether an array contains the value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array`

 |

_Any Type Array_

 |

Array to check.

 |
|

`value`

 |

_Any Type_

 |

Value to look for.

 |

## Returns

Boolean

## Examples

### Check for a text value

Values are matched case sensitively:

`contains({"A", "b", "c"}, "A")` returns `true`

`contains({"A", "b", "c"}, "a")` returns `false` because a lowercase letter does not match its uppercase equivalent.

### Check for an integer value

`contains({1, 2, 3}, 2)` returns `true`

### Check for an integer value in a decimal array

`contains({1, 2.2, 3.3}, todecimal(1))` returns `true`

Cast the integer value to a decimal using the `todecimal()` function so that the two inputs are of the same type. Not doing so results in the error message `Invalid types, can only act on data of the same type`.

### Check for a null value

`contains({1, null, 3}, tointeger(null))` returns `true`

When the value is an empty list of the same type, `true` is returned:

`contains({1, 2, 3}, tointeger({}))` returns `true`

`contains(tointeger({}), tointeger({}))` returns `true`

### Check for an array of values

`contains({1, 2, 3}, {1, 2})` returns `true`

`contains({1, 2, 3}, {1, 4})` returns `false`

To return the indexes of matching values, use `wherecontains()`:

`wherecontains({4, 5}, {4, 5, 6})` returns `{1, 2}`

### Check for a dictionary, map, or CDT value

All fields of the dictionary or map must match the fields of one of the values in the array:

`contains({{a: 1, b: 2}, {a:3, b: 4}}, {a:1, b: 2})` returns `true`

`contains({{a: 1, b: 2}, {a:3, b: 4}}, {a:1})` returns `false` because the _value_ does not match either array element completely. The _value_ is present in the first map, but the entire map needs to match for `contains()` to return `true`.

`contains({{a: 1, b: 2}, {a:3, b: 4}}, {a: "1", b: 2})` returns `false` because the _value_ includes a text element, but all of the array elements are integer values.

This usage of `contains()` with maps returns `true`:

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
a!localVariables(
  local!maps: {
    a!map(
      first: "Alice",
      last: "Kwan"
    ),
    a!map(
      first: "Charles",
      last: "Parker"
    ),
  },
  contains(local!maps, a!map(last: "Parker", first: "Charles"))
)
```

### Check for a record field value

To see if an array of records contains a value, you need to specify the record field and ensure the type of _value_ matches the type of the record field. The following example returns `true`:

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
a!localVariables(
  local!records: {
    'recordType!{SYSTEM_RECORD_TYPE_USER}User'(
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{firstName}firstName': "Alice",
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{lastName}lastName': "Kwan"
    ),
    'recordType!{SYSTEM_RECORD_TYPE_USER}User'(
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{firstName}firstName': "Charles",
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{lastName}lastName': "Parker"
    ),
  },
  contains(local!records['recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{firstName}firstName'], "Alice")
)
```

You can also look for a list of record field values. If all values in the list are not contained in the array, the function returns `false` as shown in the following example.

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
a!localVariables(
  local!records: {
    'recordType!{SYSTEM_RECORD_TYPE_USER}User'(
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{firstName}firstName': "Alice",
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{lastName}lastName': "Kwan"
    ),
    'recordType!{SYSTEM_RECORD_TYPE_USER}User'(
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{firstName}firstName': "Charles",
      'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{lastName}lastName': "Parker"
    ),
  },
  contains(local!records['recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{firstName}firstName'], {"Charles", "Patricia"})
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