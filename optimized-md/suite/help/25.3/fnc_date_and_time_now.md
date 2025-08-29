---
source_url: https://docs.appian.com/suite/help/25.3/fnc_date_and_time_now.html
original_path: fnc_date_and_time_now.html
version: "25.3"
title: "now() Function"
page_id: "fnc_date_and_time_now"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# now() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**now()**

Returns the current Date and Time as a serial number.

## Parameters

No parameters.

## Returns

Date and Time with Timezone

## Examples

### Get the current date and time

```
1
now()
```

Returns `2/2/2022 2:02 PM GMT+00:00`.

### Convert the current date and time to a local time zone

```
1
local(now(), "IST")
```

Returns `2/2/2022 7:32 PM GMT+00:00`.

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