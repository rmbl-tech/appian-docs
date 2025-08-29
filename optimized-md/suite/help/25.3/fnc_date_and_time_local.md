---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_local.html
original_path: fnc_date_and_time_local.html
version: "25.3"
title: "local() Function"
page_id: "fnc_date_and_time_local"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# local() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**local**( _datetime, timezone_ )

This is a Date and Time _addition_ function, adding time zone offset to given Date and Time.

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

_Text or Number (Integer)_

 |

The time zone offset to add to the datetime parameter.

 |

## Returns

Date and Time

## Usage considerations

This function does not store the time zone offset with the returned value.

The _datetime_ parameter accepts Date variables, Date and Time variables, and process properties such as pp!starttime.

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
local(datetime(2022, 11, 11, 2, 30), "Europe/Helsinki")
```

Returns `11/11/2022 4:30 AM GMT+00:00`. A +2 hour offset was added to the time, but the timezone was not changed from GMT.

#### Offset using a GMT offset

```
1
local(datetime(2022, 11, 11, 2, 30), "GMT+02:00")
```

Returns `11/11/2022 4:30 AM GMT+00:00`.

#### Offset using minutes

```
1
local(datetime(2022, 11, 11, 2, 30), "120")
```

Returns `11/11/2022 4:30 AM GMT+00:00`.

### Offset using the current context

```
1
local(datetime(2022, 11, 11, 2, 30))
```

Returns `11/11/2022 10:30 AM GMT+04:00` provided that the timezone of the current context is GMT+4. The GMT time of 2:30 AM is offset by +4 hours, causing the function to return Nov 11, 6:30 AM GMT. This GMT time is then displayed to the user as 10:30 AM GMT+4 in the current context.

#### Use local() to get the current context for date time functions

```
1
todate(local(now()))
```

If the current datetime is `11/10/2022 10:30 PM GMT-04:00` in the context of GMT-4, the expression above returns `11/10/2022`. Compare this to an expression without the `local` function below.

```
1
todate(now())
```

Returns `11/11/2022` because `todate` acts on the datetime in GMT, which is `11/11/2022 2:30 AM`. It does not act on the local datetime of `11/10/2022 10:30 PM` in GMT-4.

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