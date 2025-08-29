---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_isBetween.html
original_path: fnc_system_a_isBetween.html
version: "25.3"
title: "a!isBetween Function"
page_id: "fnc_system_a_isBetween"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!isBetween Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!isBetween**( _value, upperLimit, lowerLimit_ ) This function is frequently used in validations.

Checks if a value is within the specified range. The value can be of type date, date and time, number integer, or number decimal.

**See also:** [applyValidations()](fnc_system_a_applyValidations.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value that is checked to determine if it is in the specified range.

 |
|

`upperLimit`

 |

_Any Type_

 |

The highest value in the range.

 |
|

`lowerLimit`

 |

_Any Type_

 |

The lowest value in the range.

 |

## Returns

Boolean

## Example

_Copy and paste an example into an **Expression Editor** to experiment with it._

```
1
2
3
4
5
a!isBetween(
  value: 4,
  lowerLimit: 1,
  upperLimit: 6
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...