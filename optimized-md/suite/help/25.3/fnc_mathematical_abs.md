---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_abs.html
original_path: fnc_mathematical_abs.html
version: "25.3"
title: "abs() Function"
page_id: "fnc_mathematical_abs"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# abs() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**abs**( _number_ )

Returns the absolute value(s) of the specified number(s).

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal Array_

 |

A number or array of numbers, the absolute value(s) of which will be returned.

 |

## Returns

Decimal

## Usage considerations

If the _number_ values are integers, the function will return an integer.

## Examples

### Single number

```
1
abs(-2.0)
```

Returns `2`.

### List of numbers

```
1
abs({-1, -2.3, -6.78})
```

Returns `{1, 2.3, 6.78}`. If the _number_ is a list of numbers, then the function returns a list of absolute values.

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