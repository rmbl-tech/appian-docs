---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_timevalue.html
original_path: fnc_date_and_time_timevalue.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# timevalue() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**timevalue**( _time\_text_ )

Converts the given time into an equivalent interval.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`time_text`

 |

_Text_

 |

The time of day to be converted into an interval.

 |

## Returns

Time

## Examples

```
1
timevalue()
```

Returns `0::00:00:00.001`.

### Use with time

```
1
timevalue(time(14,20,23))
```

Returns `2:20 PM`.

### Use with date and time

```
1
timevalue(datetime(2011, 2, 28, 12, 0, 0))
```

Returns `12:00 PM`.

### Use with integers, decimals, and lists

```
1
timevalue(0)
```

Returns `12:00 AM`.

```
1
timevalue(9.9,8.098,{5,6})
```

Returns `{9:36 PM, 2:21 AM, 12:00 AM, 12:00 AM}`.

```
1
timevalue(9.9,8.098,1234.2)
```

Returns `{9:36 PM, 2:21 AM, 4:48 AM}`. `timevalue({9.9,8.098,1234.2})` has the same result.

### Use with text

```
1
timevalue("4::12:12:12.013", "23:09")
```

Returns `{12:18 AM, 11:09 PM}`.

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