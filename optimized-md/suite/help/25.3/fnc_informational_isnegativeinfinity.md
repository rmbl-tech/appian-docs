---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_isnegativeinfinity.html
original_path: fnc_informational_isnegativeinfinity.html
version: "25.3"
title: "isnegativeinfinity() Function"
page_id: "fnc_informational_isnegativeinfinity"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# isnegativeinfinity() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**isnegativeinfinity**( _number_ )

Tests given numbers against negative infinity, returning true if number is negative infinity, false if number is not negative infinity.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Number (Decimal)_

 |

Number to test against negative infinity.

 |

## Returns

Boolean

## Examples

### Checking for negative infinity

```
1
isnegativeinfinity(-100)
```

Returns `false`.

```
1
isnegativeinfinity(-2147483646)
```

Returns `false`.

```
1
isnegativeinfinity(-2147483647)
```

Returns `true`. `-2147483647` is the minimum integer value for a signed 32-bit integer.

### Checking for negative infinity on multiple values

```
1
isnegativeinfinity(234, -40, -9999, -2147483647)
```

Returns `{false, false, false, true}`.

```
1
isnegativeinfinity({234, -40, -2147483648})
```

Returns `{false, false, true}`.

```
1
isnegativeinfinity({​{234, -40, -2147483649}, {234, 0}}, {}, {12})
```

Returns `{false, false, true, false, false, false}`. Lists of values are flattened and empty lists are ignored.

### Checking for negative infinity in a dictionary

```
1
isnegativeinfinity({dictionaryKey: -129384}.dictionaryKey)
```

Returns `false`.

### Checking for negative infinity in a map or CDT

```
1
isnegativeinfinity(a!map(mapKey: -12312312312323).mapKey)
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