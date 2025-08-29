---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_todecimal.html
original_path: fnc_conversion_todecimal.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# todecimal() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**todecimal**( _value_ )

Converts a value to Decimal (double-precision floating-point number).

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

Decimal

## Usage considerations

Numbers less than -10,000,000 and greater than 10,000,000 are represented in scientific notation.

When operating on arrays, it is not necessary to use `apply` with `todecimal`. If multiple parameters are passed, or one parameter is an Array, `todecimal` will return a Decimal Array.

## Examples

### Convert strings to decimals

```
1
todecimal("3.6")
```

Returns `3.6`.

```
1
todecimal("1.123456789")
```

Returns `1.123457`.

```
1
todecimal("2ab4.57cd3")
```

Returns `24.573`.

```
1
todecimal("2ab4.57cd3")
```

Returns `24.573`.

```
1
todecimal("1239329332")
```

Returns `1.239329e+09`.

```
1
todecimal("string")
```

Returns `null`.

### Convert a list of strings to a list of decimals

```
1
2
3
4
{
todecimal("3.6", "4.2"),
todecimal({"3.6", "4.2"})
}
```

Returns `{3.6, 4.2, 3.6, 4.2}`. The _value_ can be one or more single values or a list of values.

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