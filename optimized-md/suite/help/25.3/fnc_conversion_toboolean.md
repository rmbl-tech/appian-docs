---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_toboolean.html
original_path: fnc_conversion_toboolean.html
version: "25.3"
title: "toboolean() Function"
page_id: "fnc_conversion_toboolean"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# toboolean() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**toboolean**( _value_ )

Converts a value to Boolean.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to convert.

 |

## Returns

Boolean

## Usage considerations

### Understanding results

A `0` returns `false`; all other numbers return `true`.

Strings beginning with `t`, `T`, `y`, `Y`, or `1` return `true`; all other strings return `false`.

### Using toboolean() with arrays

When operating on arrays, it is not necessary to use `apply` with `toboolean`. If multiple parameters are passed, or one parameter is an Array, then a Boolean Array is returned.

## Examples

### Primitive types

#### Using toboolean() with an integer

```
1
toboolean(0)
```

Returns `false`.

#### Using toboolean() with a string

```
1
toboolean("True")
```

Returns `true`.

#### Using toboolean() with a null value

```
1
toboolean(null)
```

Returns `null`.

### Lists

#### Using toboolean() with a list of integers

```
1
toboolean(0,1,0,-1)
```

and

```
1
toboolean({0,1,0,-1})
```

Both return `{false,true,false,true}`.

#### Using toboolean() with a list of strings

```
1
toboolean("Time", "tango", "true", "t", "T", "yes", "Yes", "Y", "y", "1", "S", "seven", "B", "0", "2", null)
```

Returns `{true, true, true, true, true, true, true, true, true, true, false, false, false, false, false, null}`.

#### Using toboolean() with an empty list

```
1
toboolean({})
```

Returns an empty `List of Boolean`.

### Maps

#### Using toboolean() with maps

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
toboolean(
  {
    a!map(key: "key1", value: true()),
    a!map(key: "key2", value: false()),
    a!map(key: "key3", value: 0),
    a!map(key: "key4", value: 1),
    a!map(key: "key5", value: "Y")
  }.value
)
```

Returns `{true, false, false, true, true}`.

#### Using toboolean() with multiple boolean values in a map

```
1
2
3
4
5
6
7
toboolean(
  {
    a!map(key: "key1", value: true),
    a!map(key: "key2", value: {true, false, true, false}),
    a!map(key: "key3", value: null),
  }.value
)
```

Returns `{true, true, false, true, false, null}`.

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