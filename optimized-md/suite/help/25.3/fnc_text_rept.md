---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_rept.html
original_path: fnc_text_rept.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# rept() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**rept**( _text, repetitions_ )

Concatenates the text to itself a specified number of times and returns the result.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to be repeated.

 |
|

`repetitions`

 |

_Number_

 |

The number of times the text will be repeated. The original text is not counted as a repetition.

 |

## Returns

Text

## Examples

`rept("do",3)` returns `dododo`

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