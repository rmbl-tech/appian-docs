---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_factdouble.html
original_path: fnc_mathematical_factdouble.html
version: "25.3"
title: "factdouble() Function"
page_id: "fnc_mathematical_factdouble"
section: "Functions"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# factdouble() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Functions

**factdouble**( _number_ )

The double factorial of specified number (mathematically n!!). Returns a decimal even though the factorial is an integer.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Integer_

 |

A number, the double factorial of which will be returned. The number must be an integer between 0 and 300, inclusive.

 |

## Returns

Decimal

## Examples

```
1
factdouble(6)
```

Returns `48`

### Double factorial on a list

```
1
factdouble({6, 7, 0})
```

Returns `{48, 105, 1}`

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