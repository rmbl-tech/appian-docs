---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_fact.html
original_path: fnc_mathematical_fact.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# fact() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Functions

**fact**( _number_ )

The factorial of specified number. Returns a decimal even though the factorial is an integer.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Integer_

 |

A number between 0 and 170, the factorial of which will be returned.

 |

## Returns

Decimal

## Examples

```
1
fact(6)
```

Returns `720`

### Factorial on a list of numbers

```
1
fact({6, 7, 0})
```

Returns `{720, 5040, 1}`

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