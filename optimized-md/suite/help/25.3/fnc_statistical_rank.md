---
source_url: https://docs.appian.com/suite/help/25.3/fnc_statistical_rank.html
original_path: fnc_statistical_rank.html
version: "25.3"
title: "rank() Function"
page_id: "fnc_statistical_rank"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# rank() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**rank**( _number, array, order_ )

Returns an integer representing the rank of the number in the specified array.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number to be ranked

 |
|

`array`

 |

_Decimal Array_

 |

An array of numbers containing the number to be ranked

 |
|

`order`

 |

_Number_

 |

Use 0 to rank the array elements from high to low and 1 to rank the array in ascending order.

 |

## Returns

Integer

## Examples

`rank(2,{1,2,3,4},0)` returns `3`

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