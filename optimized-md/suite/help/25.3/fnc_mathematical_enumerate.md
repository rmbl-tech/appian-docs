---
source_url: https://docs.appian.com/suite/help/25.3/fnc_mathematical_enumerate.html
original_path: fnc_mathematical_enumerate.html
version: "25.3"
title: "enumerate() Function"
page_id: "fnc_mathematical_enumerate"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# enumerate() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**enumerate**( _n_ )

Returns a list of integer numbers from 0 through n-1.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`n`

 |

_Number(Integer)_

 |

The number of days to test.

 |

## Returns

Integer Array

## Usage considerations

The resulting enumerated list begins with zero.

To start the list at 1, add `+1` onto the syntax as follows: `enumerate(*n*)+1`

## Examples

`enumerate(10)` returns `0, 1, 2, 3, 4, 5, 6, 7, 8, 9`

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