---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_rdrop.html
original_path: fnc_array_rdrop.html
version: "25.3"
title: "rdrop() Function"
page_id: "fnc_array_rdrop"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# rdrop() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**rdrop**( _array, number_ )

Drops a given number of values from the right side of an array, and returns the resulting array.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array`

 |

_Any Type Array_

 |

The array to modify.

 |
|

`number`

 |

_Integer_

 |

The number of values to drop from the array.

 |

## Returns

Any Type Array

## Usage considerations

The _number_ value must be greater than or equal to 0.

## Examples

### Drop last value in a list

`rdrop({10, 20, 30, 40}, 1)` returns `{10, 20, 30}`.

### Drop multiple values from a list

`rdrop(split("label.language.region", "."), 2)` returns `{"label"}`.

### Drop characters from a string

`concat(char(rdrop(code("Hello World"), 6)))` returns `"Hello"`.

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