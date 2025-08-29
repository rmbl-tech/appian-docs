---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_tostring.html
original_path: fnc_conversion_tostring.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# tostring() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**tostring**( _value_ )

Converts a value to Text. If an array is passed in, its values will be concatenated to form one string. To preserve the original array structure, use `touniformstring()`.

**See also**: [touniformstring()](fnc_conversion_touniformstring.html)

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

Text

## Usage considerations

Arguments after the first are ignored.

Values that hold a Number (Decimal) data type are displayed using 7 digits of precision, when cast to a string of plain text.

This function returns a null Text when passed a null value.

## Usage considerations

Do not use `apply` with `tostring`; use [touniformstring()](fnc_conversion_touniformstring.html) instead.

## Examples

### Convert an integer to a string

```
1
tostring(17)
```

Returns `"17"`.

### Convert an list of integers to a string

```
1
tostring({1,2,3.1})
```

Returns `"1; 2; 3.1"`.

### Convert a list of variant to a string

```
1
tostring({1, 2, "a", null, "b", "", "c"})
```

Returns `"1; 2; a; ; b; ; c"`.

```
1
tostring({"a", {}, "b", "c"})
```

Returns `"a; b; c"`.

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