---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_time.html
original_path: fnc_date_and_time_time.html
version: "25.3"
title: "time() Function"
page_id: "fnc_date_and_time_time"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# time() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**time**( _hour, minute, second, millisecond_ )

Converts the given time into an equivalent time value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`hour`

 |

_Number (Integer)_

 |

The number of hours to add to the total.

 |
|

`minute`

 |

_Number (Integer)_

 |

The number of minutes to add to the total.

 |
|

`second`

 |

_Number (Integer)_

 |

The number of seconds to add to the total.

 |
|

`millisecond`

 |

_Number (Integer)_

 |

The number of milliseconds to add to the total.

 |

## Returns

Time

## Usage considerations

The time can be treated both as duration (for example, Joe ran the marathon in 3 hours and 23 minutes) and as a point in time (for example, we have a meeting at 3:23PM every day).

## Examples

```
1
time(14, 20, 23)
```

Returns `2:20 PM`.

### Lists

```
1
time(13, {8})
```

Returns `1:08 PM`.

```
1
time({8, 9}, {1, 20})
```

Returns `{ 8:01 AM, 9:20 AM }`. All lists must be the same length.

```
1
time(2, 5, {})
```

Returns `{}`. A value must be passed for all required arguments in order to receive a valid output.

### Strings

```
1
time("", "4")
```

Returns `12:04 AM`. An empty string acts as `0`. A non-empty string is cast to number.

```
1
time("")
```

Returns `null`.

### Using time as intervals

```
1
time(1, 70)
```

Returns `2:10 AM`. 70 minutes is treated as 1 hour and 10 minutes.

```
1
time(1, 10) + time(1, -10)
```

Returns `2:00 AM`. 1 hour is added and 10 minutes are subtracted from the first time.

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