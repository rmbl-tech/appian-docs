---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_padright.html
original_path: fnc_text_padright.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# padright() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**padright**( _text, length_ )

Pads text with spaces on the right so that it is a certain length.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to be padded.

 |
|

`length`

 |

_Number_

 |

The target number of characters desired in the final text.

 |

## Returns

Text

## Usage considerations

### Padding and text length

Spaces will be added until the text has the number of characters entered for the _length_ parameter.

Text longer than the specified length remains untouched.

## Examples

`padright("boston",10)` returns `boston&nbsp;&nbsp;&nbsp;&nbsp;`

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