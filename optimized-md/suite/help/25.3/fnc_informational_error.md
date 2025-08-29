---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_error.html
original_path: fnc_informational_error.html
version: "25.3"
title: "error() Function"
page_id: "fnc_informational_error"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# error() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**error**( _message_ )

Raises an error with the given message, used for invalidating execution.This function never returns a value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`message`

 |

_Text_

 |

The text of the error message.

 |

## Returns

This function is used for invalidating execution. It never returns a value.

## Examples

```
1
error("This is an error message.")
```

Returns an error with the message `This is an error message.`

```
1
error({"This is an error message.", "This is a second error message."})
```

Returns an error with the message `This is an error message.; This is a second error message.`

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