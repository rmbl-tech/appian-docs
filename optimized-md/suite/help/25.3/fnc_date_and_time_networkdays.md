---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_networkdays.html
original_path: fnc_date_and_time_networkdays.html
version: "25.3"
title: "networkdays() Function"
page_id: "fnc_date_and_time_networkdays"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# networkdays() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**networkdays**( _starting\_date, ending\_date, holidays_ )

Returns the number of working days between two specified dates.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`starting_date`

 |

_Date_

 |

The starting date.

 |
|

`ending_date`

 |

_Date_

 |

The ending date.

 |
|

`holidays`

 |

_Date_

 |

A list of holidays not counted as workdays.

 |

## Returns

Integer

## Usage considerations

An array of holidays may be given by enclosing them in braces, such as `{"12/25/2004","12/31/2004"}`.

## Examples

`networkdays(date(2011,12,13),date(2011,12,20))` returns `6`

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