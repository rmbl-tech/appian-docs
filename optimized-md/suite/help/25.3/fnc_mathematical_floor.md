---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_floor.html
original_path: fnc_mathematical_floor.html
version: "25.3"
title: "floor() Function"
page_id: "fnc_mathematical_floor"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# floor() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**floor**( _number, significance_ )

Rounds the number down to the nearest multiple of the specified significance.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

A number, the floor of which will be returned.

 |
|

`significance`

 |

_Decimal_

 |

The number will be rounded to the highest multiple of the significance that is less than the number.

 |

## Returns

Decimal

## Examples

```
1
floor(-7,5)
```

Returns `-10`

### Floor on a list of numbers

```
1
floor({-7, 4},5)
```

Returns `{-10, 0}`

### Floor on a list of _significance_

```
1
floor(-7,{5, 4})
```

Returns `{-10, -8}`

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