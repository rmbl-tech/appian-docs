---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_datetext.html
original_path: fnc_scripting_datetext.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# datetext() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**datetext**( _value, format_ )

Interprets the date or datetime specified in the user's preferred calendar and returns its string representation using given format. In a portal, this function uses the primary calendar for the environment, instead of a user's preferred calendar.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Date or Date and Time_

 |

The value to convert to a text string.

 |
|

`format`

 |

_Text_

 |

The pattern you want to use for the output.

 |

## Returns

Text

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`datetext(userdatevalue("8/18/1427"),"yyyy/MM/dd")` returns `1427/8/18`

The `datetext()` function uses a similar, but slightly different syntax than the text function.

| Letter | Date or Time Component | Presentation | Examples |
| --- | --- | --- | --- |
| G | Era designator | Text | AD |
| y | Year | Year | 1996; 96 |
| Y | [Week Year](https://en.wikipedia.org/wiki/ISO_week_date) | Year | 2009; 09 |
| M | Month in year | Month | July; Jul; 07 |
| w | Week in year | Number | 27 |
| W | Week in month | Number | 2 |
| D | Day in year | Number | 189 |
| d | Day in month | Number | 10 |
| F | Day of week in month | Number | 2 |
| E | Day name in week | Text | Tuesday; Tue |
| a | Am/pm marker | Text | PM |
| H | Hour in day (0-23) | Number | 0 |
| k | Hour in day (1-24) | Number | 24 |
| K | Hour in am/pm (0-11) | Number | 0 |
| h | Hour in am/pm (1-12) | Number | 12 |
| m | Minute in hour | Number | 30 |
| s | Second in minute | Number | 55 |
| S | Millisecond | Number | 97 |
| z | Time zone | General time zone | Pacific Standard Time; PST; GMT-08:00 |
| Z | Time zone | RFC 822 time zone | \-0800 |

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Incompatible |  |
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