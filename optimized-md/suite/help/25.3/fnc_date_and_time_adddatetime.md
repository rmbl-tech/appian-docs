---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_adddatetime.html
original_path: fnc_date_and_time_adddatetime.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!addDateTime() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!addDateTime**( _startDateTime, years, months, days, hours, minutes, seconds, useProcessCalendar, processCalendarName_ )

Adds the specified increments of time to the _startDateTime_ and returns a date and time value. You can select a [process calendar](Process_Calendar_Settings.html) to ensure the return value falls within the specified working days and time.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`startDateTime`

 |

_Date and Time_

 |

The starting Date and Time value. Use the [datetime() function](fnc_date_and_time_datetime.html) to convert a given date and time into a serial number that holds the Date and Time data type. This parameter is required.

 |
|

`years`

 |

_Number (Integer)_

 |

The number of years to add to the start value.

 |
|

`months`

 |

_Number (Integer)_

 |

The number of months to add to the start value.

 |
|

`days`

 |

_Number (Integer)_

 |

The number of days to add to the start value.

 |
|

`hours`

 |

_Number (Integer)_

 |

The number of hours to add to the start value.

 |
|

`minutes`

 |

_Number (Integer)_

 |

The number of minutes to add to the start value.

 |
|

`seconds`

 |

_Number (Integer)_

 |

The number of seconds to add to the start value.

 |
|

`useProcessCalendar`

 |

_Boolean_

 |

Determines if a [process calendar](Process_Calendar_Settings.html) is used to calculate the result. The returned value will fall within the work time defined in the calendar. Default is _false_.

 |
|

`processCalendarName`

 |

_Text_

 |

The name of the process calendar to use. If _useProcessCalendar_ is _true_ and this parameter is not specified, the default process calendar is used. This parameter is case-sensitive.

 |

## Returns

Date and Time

## Usage considerations

### Using the startDateTime parameter

The _startDateTime_ parameter can accept values of type Text, Date, Date and Time, Integer since the epoch, Decimal since the epoch, and Array types. Time values are not supported.

If you use a Date data type, the value will be automatically cast to a Date and Time data type. When the value is cast to Date and Time, the time component will be 12:00 AM GMT unless you've specified a process calendar. If you specified a process calendar, then the time component will be 12:00 AM in the calendar's specific timezone.

If multiple values are passed to the _startDateTime_ parameter, or the value is type Array, the function will return a Date and Time array.

### Using a process calendar

Process calendars are configured by your system administrators to determine your environment's working days and hours. Consider setting the _useProcessCalendar_ parameter to _true_ when you want your calculation to return a date and time within the specified working hours. The return value will be in the calendar's specified timezone.

If you have multiple calendars configured, you can use the _processCalendarName_ parameter to specify the correct calendar configuration to use in your calculation.

Learn how to configure [process calendar settings](Process_Calendar_Settings.html).

### Adding increments of time

You can use a combination of years, months, days, hours, minutes, or seconds in your calculation. The calculation will be performed on the largest unit of time (years) to the smallest (seconds). If any of these parameters are `0` or null, it will be ignored in the calculation.

**Note:**  You cannot add negative values in any of these parameters. For example, `year: -2` will return an error.

The total amount of time added to the start date cannot exceed 100 years.

### Autoscaled process models and application performance

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_Copy and paste the following examples into an Appian Expression Editor to experiment with this function._

### Add date and time values to a single date

```
1
2
3
4
5
6
7
8
a!addDateTime(
   startDateTime: datetime(2000,1,1,0,0,0),
   months: 1,
   days: 1,
   hours: 1,
   minutes: 1,
   seconds: 1,
)
```

Returns `2/2/2000 1:01 AM GMT+00:00`

### Add date and time value to multiple dates

```
1
2
3
4
5
6
7
8
a!addDateTime(
   startDateTime: {datetime(2000,1,1,0,0,0),datetime(2001,1,1,0,0,0)}
   months: 1,
   days: 1,
   hours: 1,
   minutes: 1,
   seconds: 1,
)
```

Returns `2/2/2000 1:01 AM GMT+00:00; 2/2/2001 1:01 AM GMT+00:00`

### Add date and time values using a process calendar

In this example, there are multiple process calendars, so we've specified the default process calendar to use in our calculation. This calendar has working hours defined as weekdays only from 9am to 5pm GMT.

```
1
2
3
4
5
6
a!addDateTime(
   startDateTime: datetime(2000,2,1,0,0,0), /*Tuesday*/
   days: 5,
   useProcessCalendar: true,
   processCalendarName: "Default Calendar"
)
```

Returns `2/8/2000 9:00 AM GMT+00:00`

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