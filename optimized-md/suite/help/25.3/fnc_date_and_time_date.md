---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_date.html
original_path: fnc_date_and_time_date.html
version: "25.3"
title: "date() Function"
page_id: "fnc_date_and_time_date"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# date() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**date**( _year, month, day_ )

Converts text into data accepted by the date data type and functions that require date parameters.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`year`

 |

_Integer_

 |

The year of the date you would like to convert into a serial number.

 |
|

`month`

 |

_Integer_

 |

It month of the date in number format without leading zeros for a month with one digit.

 |
|

`day`

 |

_Integer_

 |

The day component of the date.

 |

## Returns

Date

## Examples

```
1
date(2009,7,22)
```

Returns `7/22/2009`.

```
1
date(2009,7,{22})
```

Returns `7/22/2009`.

```
1
date({2009, 2008},{7, 4},{22, 18})
```

Returns `{7/22/2009, 4/18/2008}`. All lists must be the same length.

```
1
date(2009,7,{})
```

Returns `{}`. A value must be passed for all arguments to receive a valid output.

```
1
date(10000, 10, 9)
```

Returns `null`. A null date is returned for invalid _month_ or _day_ values (such as `13` or `35`, respectively) and for year values greater than `9999` or between `99 and 1000`.

### Dictionaries and maps

```
1
date(2022, {month: 10}.month, 31)
```

Returns `10/31/2022`.

```
1
date(2022, a!map(month: 10).month, 31)
```

Returns `10/31/2022`.

### Two-digit years

Two-digit _year_ values are converted to twenty-first century years when the value is between `0` and 19 years from the current year. For example, if the current year is 2023, _year_ values from `0` to `42` are converted to four-digit years like `2000` and `2042`.

```
1
date(12, 10, 31)
```

Returns `10/31/2012`.

```
1
date(63, 10, 31)
```

Returns `10/31/1963`.

### Gregorian calendar

```
1
date(1582, 10, 22)
```

Returns `10/22/1582`. Dates before this date will diverge from the input due to the introduction of the Gregorian calendar.

```
1
date(1220, 10, 22)
```

Returns `10/15/1220`.

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