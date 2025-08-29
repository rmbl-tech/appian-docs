---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_exp.html
original_path: fnc_mathematical_exp.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# exp() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**exp**( _power_ )

Returns e raised to the specified power.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`power`

 |

_Number(Decimal)_

 |

The power to raise e to.

 |

## Returns

Decimal

## Examples

```
1
exp(2)
```

Returns `7.389056`

```
1
exp(-2)
```

Returns `0.1353353`

```
1
exp(0)
```

Returns `1`

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