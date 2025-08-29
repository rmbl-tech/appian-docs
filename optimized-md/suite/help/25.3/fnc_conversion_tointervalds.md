---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_tointervalds.html
original_path: fnc_conversion_tointervalds.html
version: "25.3"
title: "tointervalds() Function"
page_id: "fnc_conversion_tointervalds"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# tointervalds() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**tointervalds**( _value_ )

Converts a value to Interval (Day to Second).

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

Interval (Day to Second)

## Usage considerations

### Limitations

The duration data type is not available for storing activity classes or process variables, but it is useful for reporting process and task metrics.

### Using the value parameter

The _value_ parameter accepts Integer, Decimal, Text, fixed, Boolean, Time, Date, Datetime, timestamp, complex, fraction, and Array data types.

### Understanding results

Multiple parameters return an Interval (Day to second) Array.

## Examples

`tointervalds("11h 10m 30s")` returns `111030::00:00:00.000`

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