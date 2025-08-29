---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_a_defaultvalue.html
original_path: fnc_informational_a_defaultvalue.html
version: "25.3"
title: "a!defaultValue Function"
page_id: "fnc_informational_a_defaultvalue"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!defaultValue Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Handle Null and Empty Values in Your Apps

Learn how to use two Appian functions—a!defaultValue() and a!isNullOrEmpty—to prevent your app from throwing an error when it encounters null or empty values.

## Function

**a!defaultValue**( _value, default_ )

Returns a default value when the specified value is null or empty. When there are multiple _default_ parameters, each parameter is evaluated in order and the first non-null and non-empty _default_ will be returned. `Null`, `""`, and `{}` are all considered null or empty values.

**See also**: [if()](fnc_logical_if.html), [isnull()](fnc_informational_isnull.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to be returned if not null or empty.

 |
|

`default`

 |

_Any Type_

 |

Default value to return when value is null or empty.

 |

## Returns

Any Type

## Examples

### Basic

```
1
a!defaultValue(null, 1)
```

Returns `1`.

```
1
a!defaultValue(1, "default")
```

Returns `1`.

### Using null or empty values

```
1
a!defaultValue("", "default")
```

Returns `"default"`.

```
1
a!defaultValue(null, "")
```

Returns `""`.

```
1
a!defaultValue({}, "default")
```

Returns `"default"`. An empty list is considered null or empty.

### Using multiple default parameters

This function accepts multiple _default_ parameters. Each parameter will be evaluated in order until the first non-null and non-empty _default_ is returned.

```
1
a!defaultValue(null, "", {})
```

Returns `{}`.

```
1
a!defaultValue(null, "", 1, "", {})
```

Returns `1`.

### Using lists

```
1
a!defaultValue({1, 9}, {2, 3, 4, 5})
```

Returns `{1, 9}`. A list of values is treated as a single value of type list.

```
1
a!defaultValue({null, null}, {3})
```

Returns `{null, null}`. A list of nulls is not considered null or empty.

```
1
a!defaultValue({"", "", ""}, {3})
```

Returns `{"", "", ""}`. A list of empty text is not considered null or empty.

```
1
a!defaultValue({​{1,2,3}, {4,5}}, "default")
```

Returns `{1, 2, 3, 4, 5}`. Lists of lists are flattened.

```
1
a!defaultValue(null, {2, {3, 4}, 5})
```

Returns `{2, 3, 4, 5}`. Lists of lists are flattened.

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