---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_touniformstring.html
original_path: fnc_conversion_touniformstring.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# touniformstring() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**touniformstring**( _value_ )

Converts a value or list to text, preserving the original scalar or array structure. To concatenate the array into one string, see [tostring()](fnc_conversion_tostring.html).

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

### Using touniformstring() on arrays

Arrays are preserved.

When operating on arrays, it is not necessary to use `apply` with `touniformstring`. If multiple parameters are passed, or one parameter is an Array, then an Array of Text is returned.

## Examples

```
1
touniformstring("John Doe 1060 West Addison Chicago","IL")
```

Returns `{"John Doe 1060 West Addison Chicago", "IL"}`, a list of two strings.

```
1
touniformstring({ 1, 2, "a", null, "b", "", "c", {} })
```

Returns `{"1", "2", "a", "", "b", "", "c"}`, a list of seven strings. Null values are converted to empty strings, and the final empty list is not included in the result.

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