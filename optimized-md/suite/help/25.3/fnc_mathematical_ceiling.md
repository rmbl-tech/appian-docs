---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_ceiling.html
original_path: fnc_mathematical_ceiling.html
version: "25.3"
title: "ceiling() Function"
page_id: "fnc_mathematical_ceiling"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# ceiling() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**ceiling**( _number, significance_ )

Rounds the number up to the nearest multiple of the specified significance.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

A number, the ceiling of which will be returned.

 |
|

`significance`

 |

_Decimal_

 |

The number will be rounded to the lowest multiple of the significance that is greater than the number.

 |

## Returns

Number

## Examples

### Single _number_

```
1
ceiling(7.32,.5)
```

Returns `7.5`.

### Ceiling on a list of _number_

```
1
ceiling({7.32, 8.43}, 0.5)
```

Returns `{7.5, 8.5}`.

### Ceiling with a list of _significance_

```
1
ceiling(7.32, {0.5, 0.2})
```

Returns `{7.5, 7.4}`.

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