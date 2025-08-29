---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_totime.html
original_path: fnc_conversion_totime.html
version: "25.3"
title: "totime() Function"
page_id: "fnc_conversion_totime"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# totime() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**totime**( _value_ )

Converts a value to Time.

**See also**: [time()](fnc_date_and_time_time.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to convert.

 |

## Returns

Time

## Usage considerations

### Using the value parameter

The _value_ parameter accepts Integer, Decimal (double precision floating point), and Datetime, and Array data types.

### Using totime() with arrays

When operating on arrays, it is not necessary to use `apply` with `totime`. If multiple parameters are passed, or one parameter is an Array, `totime` will return a Time Array.

### Understanding results

To return a localized time for a user, the `local()` function must be nested within the `totime()` function.

For example, `totime(local(pp!starttime))` returns the localized time when a given process started. Otherwise the time is returned in GMT. This is true unless the user happens to reside in the GMT timezone, then no localization is necessary.

## Examples

### Convert a datetime to time

```
1
totime(datetime(2005,12,13,12,0,0))
```

Returns `12:00 PM` (GMT).

```
1
totime(local(datetime(2005,12,13,12,0,0)))
```

Returns the user's local-time equivalent of 12:00 PM GMT.

### Convert minutes to time

```
1
totime(30/1440, 60/1440, 300/1440, 1439/1440)
```

Returns `{12:30 AM; 1:00 AM; 5:00 AM; 11:59 PM}`. There are 1440 minutes in a day, so divide a number of minutes by 1440 to calculate the time.

```
1
totime(0.02083333, 0.04166667, 0.2083333, 0.9993056)
```

Returns `{12:30 AM; 1:00 AM; 5:00 AM; 11:59 PM}`.

```
1
totime(0,1,2,-3)
```

Returns `{12:00 AM; 12:00 AM; 12:00 AM; 12:00 AM}` because non-zero integers cannot be converted.

```
1
totime(1, 1/1440, { null }, null)
```

Returns `12:00 AM, 12:01 AM, null, null`.

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