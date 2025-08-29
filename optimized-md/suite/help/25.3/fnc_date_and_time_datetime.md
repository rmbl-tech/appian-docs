---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_datetime.html
original_path: fnc_date_and_time_datetime.html
version: "25.3"
title: "datetime() Function"
page_id: "fnc_date_and_time_datetime"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# datetime() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**datetime**( _year, month, day, hour, minute, second_ )

Converts the given Date and Time into a serial number that holds the Date and Time data type.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`year`

 |

_Integer_

 |

The year of the you would like to convert into a serial number.

 |
|

`month`

 |

_Integer_

 |

Only numbers are accepted, not month names. Do not include leading zeroes for a month with one digit.

 |
|

`day`

 |

_Integer_

 |

The day of the Date and Time.

 |
|

`hour`

 |

_Integer_

 |

The hour of the Date and Time.

 |
|

`minute`

 |

_Integer_

 |

The minute of the Date and Time.

 |
|

`second`

 |

_Integer_

 |

The seconds of the Date and Time.

 |

## Returns

Date and Time

## Usage considerations

The value is converted to GMT when stored.

## Examples

**Note:**  These examples assume the system or user time zone is Greenwich Mean Time (GMT).

```
1
datetime(2011, 2, 28, 12, 0, 0)
```

Returns `2/28/2011 12:00 PM GMT+00:00`.

```
1
datetime(2009, 7, { 5 }, 7, 1, 20)
```

Returns `7/5/2009 7:01 AM GMT+00:00`.

```
1
2
3
4
5
6
7
8
datetime(
  { 2009, 2008 },
  { 7, 4 },
  { 5, 10 },
  { 12, 10 },
  { 2, 20 },
  { 0, 0 }
)
```

Returns `{7/5/2009 12:02 PM GMT+00:00, 4/10/2008 10:20 AM GMT+00:00}`. All lists must be the same length.

```
1
datetime(2009, 7, 9, {}, 2, 0)
```

Returns `{}`. A value must be passed for all arguments in order to receive a valid output.

### Out-of-range time values

Each of the time parameters has a normal range of values. You can use positive or negative values outside the normal range for any of these parameters.

| Parameter | Range |
| --- | --- |
| _hour_ | 0–24 |
| _minute_ | 0–60 |
| _second_ | 0–60 |
| _millisecond_ | 0–999 |

#### Positive out-of-range values

```
1
datetime(2022, 10, 9, 26, 63, 61, 1002)
```

Returns `10/9/2022 3:04 AM GMT+00:00`.

#### Negative out-of-range values

```
1
datetime(2022, 10, 9, 12, -60, 0)
```

Returns `10/9/2022 11:00 AM GMT+00:00`.

```
1
datetime(2022, 10, 9, -25, 0, 0)
```

Returns `10/9/2022 11:00 PM GMT+00:00`.

### Dictionaries and maps

```
1
datetime(2022, 10, 9, {hours: 10}.hours, 0, 0)
```

Returns `10/9/2022 10:00 AM GMT+00:00`.

```
1
datetime(2022, 10, 9, a!map(hours: 10).hours, 0, 0)
```

Returns `10/9/2022 10:00 AM GMT+00:00`.

### Append a time to a date

```
1
2
3
4
5
6
7
8
9
10
11
a!localVariables(
  local!date: date(2022, 10, 24),
  datetime(
    year(local!date),
    month(local!date),
    day(local!date),
    23,
    59,
    00
  )
)
```

Returns `10/24/2022 11:59 PM GMT+00:00` by adding the time 11:59 PM to the date given in `local!date`.

## See also

-   [date()](fnc_date_and_time_date.html): Limitations on year also apply to Date and Time. Dates that return null in `date()` will throw an error when used in `datetime()`.
-   [userdatetime()](fnc_scripting_userdatetime.html): Use this function to return a Datetime value in the local time zone.

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