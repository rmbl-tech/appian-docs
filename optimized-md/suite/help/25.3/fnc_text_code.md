---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_code.html
original_path: fnc_text_code.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# code() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**code**( _text_ )

Converts the text into Unicode integers.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to be converted into Unicode codes.

 |

## Returns

Number

## Examples

`code("Convert to Unicode")` returns `67, 111, 110, 118, 101, 114, 116, 32, 116, 111, 32, 85, 110, 105, 99, 111, 100, 101`

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