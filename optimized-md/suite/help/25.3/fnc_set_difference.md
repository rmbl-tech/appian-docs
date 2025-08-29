---
source_url: https://docs.appian.com/suite/help/25.3/fnc_set_difference.html
original_path: fnc_set_difference.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# difference() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**difference**( _array1, array2_ )

Returns the values in array1 and not in array2.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array1`

 |

_Any Type Array_

 |

Initial array of values.

 |
|

`array2`

 |

_Any Type Array_

 |

Array of values to remove from array1.

 |

## Returns

Any Type Array

## Usage considerations

If all values are removed from array1, an empty list is returned.

## Examples

`difference({1, 2, 3, 4}, {3, 4})` returns `1, 2`

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