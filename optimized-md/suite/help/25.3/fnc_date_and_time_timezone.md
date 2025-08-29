---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_timezone.html
original_path: fnc_date_and_time_timezone.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# timezone() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**timezone()**

Returns the default offset in minutes from GMT, which is generally the process initiator's time zone.

## Parameters

No parameters.

## Returns

Integer

## Examples

```
1
timezone()
```

Returns `0` when the user's time zone is GMT.

```
1
timezone()
```

Returns `600` when the user's time zone is GMT+10:00.

```
1
timezone()
```

Returns `-360` when the user's time zone is GMT-06:00.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Incompatible |  |
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