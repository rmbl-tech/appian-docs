---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_today.html
original_path: fnc_date_and_time_today.html
version: "25.3"
title: "today() Function"
page_id: "fnc_date_and_time_today"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# today() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**today()**

Returns the current day in GMT.

## Parameters

No parameters.

## Returns

Date with Timezone

This function returns the current day in Greenwich Mean Time (GMT) so the result may differ from the current day in your local timezone.

## Examples

```
1
today()
```

Returns `12/14/2022` on December 14, 2022.

```
1
today() - 5
```

Returns the date five days prior to the current day (`12/9/2022` in this example).

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
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