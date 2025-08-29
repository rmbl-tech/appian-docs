---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_timezoneid.html
original_path: fnc_date_and_time_timezoneid.html
version: "25.3"
title: "timezoneid() Function"
page_id: "fnc_date_and_time_timezoneid"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# timezoneid() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**timezoneid()**

Returns the time zone ID for the current context.

## Parameters

No parameters.

## Returns

Text

## Usage considerations

Expect differing results when the process takes the initiator's time zone versus the configured time zone. In reports, rules, and dashboards, the current user's time zone is returned.

## Examples

```
1
timezoneid()
```

Returns `GMT` when the user's time zone is GMT.

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