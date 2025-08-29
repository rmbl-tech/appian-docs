---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_gmt.html
original_path: fnc_date_and_time_gmt.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# gmt() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**gmt**( _datetime, timezone_ )

Subtracts a time zone offset from a given Date and Time.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`datetime`

 |

_Date and Time_

 |

The base Date and Time to be modified.

 |
|

`timezone`

 |

_Number (Integer)_

 |

The time zone offset to subtract from the datetime parameter.

 |

## Returns

Date and Time

## Usage considerations

This function does not store a time zone offset with the returned value.

The _datetime_ parameter accepts date values, date and time values, and process properties such as pp!starttime.

The _timezone_ parameter accepts four formats of input:

-   Time zone IDs, such as `America/Denver`.
-   Time zone acronyms, such as `MST`.
-   Hours and minutes offset from a GMT date and time, such as `GMT-06:00`.
-   Minutes offset, such as `-30`.

Time zone IDs, time zone acronyms, and GMT offsets must be enclosed in quotation marks (`""`). If a _timezone_ is not passed, the time zone of the current context is used.

Passing a time zone ID (such as `"Asia/Tokyo"`) causes the result to be adjusted for daylight saving time. Passing a time zone acronym (such as `"GMT"`) does not cause the result to be adjusted for daylight saving time.

## Examples

### Use a specific offset

**Note:**  These examples assume the system or user time zone is Greenwich Mean Time (GMT).

#### Offset using a time zone ID

```
1
gmt(datetime(2022, 11, 11, 4, 30), "Europe/Helsinki")
```

Returns `11/11/2022 2:30 AM GMT+00:00`. The +2 hour offset was subtracted from the GMT time, and the time zone was not changed from GMT.

#### Offset using a GMT offset

```
1
gmt(datetime(2022, 11, 11, 4, 30), "GMT+02:00")
```

Returns `11/11/2022 2:30 AM GMT+00:00`.

#### Offset using minutes

```
1
gmt(datetime(2022, 11, 11, 4, 30), "120")
```

Returns `11/11/2022 2:30 AM GMT+00:00`.

### Offset using the current context

```
1
gmt(datetime(2022, 11, 11, 4, 30))
```

Returns `11/11/2022 4:30 AM GMT+04:00` provided that the time zone of the current context is GMT+4. The GMT time of 12:30 AM is offset by -4 hours. This GMT time is then displayed to the user as 4:30 AM GMT+4 in the current context.

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