---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_tointeger.html
original_path: fnc_conversion_tointeger.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# tointeger() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**tointeger**( _value_ )

Converts a value to Integer.

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

Integer

## Usage considerations

### Using the value parameter

The _value_ parameter accepts decimal numbers. These are rounded to the nearest integer.

Values passed must be within the limits of the Integer data type (`-2,147,483,647` to `2,147,483,647`).

### Using tointeger() with arrays

When operating on arrays, it is not necessary to use `apply` with `tointeger`. If multiple parameters are passed, or one parameter is an Array, `tointeger` will return an Integer Array.

## Examples

### Convert a string to an integer

```
1
tointeger("3")
```

Returns `3`.

### Convert a list of strings to a list of integers

```
1
tointeger("3","4")
```

Returns `{3,4}`.

```
1
tointeger({"3","4"})
```

Returns `{3,4}`.

### Convert a list of decimals to a list of integers

```
1
tointeger({1.49, 1.5, 1.51})
```

Returns `{1, 2, 2}`.

### Convert a list of decimal strings to a list of integers

```
1
tointeger({"1.49", "1.5", "1.99", "2", "2.01"})
```

Returns `{1, 1, 1, 2, 2}`.

### Convert a list of variant to a list of integers

```
1
tointeger({"A", null, "1ABC2", 3})
```

Returns `{null, null, 12, 3}`.

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