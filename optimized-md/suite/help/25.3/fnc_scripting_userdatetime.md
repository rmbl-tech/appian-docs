---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_userdatetime.html
original_path: fnc_scripting_userdatetime.html
version: "25.3"
title: "userdatetime() Function"
page_id: "fnc_scripting_userdatetime"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# userdatetime() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**userdatetime**( _year, month, day, hour, minute, second_ )

Interprets the given date and time in the user preferred calendar and converts it into a serial number.

**See also**: [datetext()](fnc_scripting_datetext.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`year`

 |

_Number_

 |

The year of the datetime you would like to convert into a serial number.

 |
|

`month`

 |

_Number_

 |

The number of the month of the datetime.

 |
|

`day`

 |

_Number_

 |

The day of the datetime.

 |
|

`hour`

 |

_Number_

 |

The hour of the datetime.

 |
|

`minute`

 |

_Number_

 |

The minute of the datetime.

 |
|

`second`

 |

_Number_

 |

The seconds of the datetime.

 |

## Returns

DateTime

## Usage considerations

To display the date, always wrap the output with `datetext()`.

For the _month_ parameter, do not include leading zeroes for a month with one digit.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`datetext(userdatetime(1427,8,18,1,2,0))` returns `08/18/1427 01:02 AM`

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
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...