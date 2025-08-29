---
source_url: https://docs.appian.com/suite/help/25.3/fnc_base_conversion_hex2bin.html
original_path: fnc_base_conversion_hex2bin.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# hex2bin() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**hex2bin**( _value, place_ )

Converts a Hex number as text to a Binary number as text.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Text_

 |

Hex value as text to convert, such as `A5`.

 |
|

`place`

 |

_Number_

 |

The number of places to return.

 |

## Returns

Text

## Usage considerations

### Using the value parameter

Invalid digits for a _value_ parameter, including signs, are ignored.

### Using the place parameter

The default value for _place_ is however many places are necessary to represent the number.

## Examples

`hex2bin(64)` returns `1100100`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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