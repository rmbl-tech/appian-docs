---
source_url: https://docs.appian.com/suite/help/25.3/fnc_statistical_frequency.html
original_path: fnc_statistical_frequency.html
version: "25.3"
title: "frequency() Function"
page_id: "fnc_statistical_frequency"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# frequency() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**frequency**( _data\_array, bins\_array_ )

Uses the bin array to create groups bounded by the elements of the array.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`data_array`

 |

_Decimal Array_

 |

The set of numbers that will be divided into groups according to bins\_array and then counted

 |
|

`bins_array`

 |

_Decimal Array_

 |

The upper (and inclusive) boundaries of the groups into which the elements from the data array will be dispersed.

 |

## Returns

Integer Array

## Usage considerations

### Using the bins\_array parameter

The _bins\_array_ argument also defines one additional group capturing all numbers greater than the maximum number in _bins\_array_.

### Understanding results

The return value represents how many elements from the data array fall into each of these groups.

## Examples

For example, a bin array equal to `{70, 79, 89}` defines four groups:

-   numbers where number <= 70
-   numbers where 70 < number <= 79
-   numbers where 79 < number <=89
-   numbers > 89

`frequency({64,74,75,84,85,86,95},{70,79,89})` returns `1*2*3*1`

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