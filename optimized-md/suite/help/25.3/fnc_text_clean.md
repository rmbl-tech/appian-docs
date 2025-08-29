---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_clean.html
original_path: fnc_text_clean.html
version: "25.3"
title: "clean() Function"
page_id: "fnc_text_clean"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# clean() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Note:**  Supports US English text only.

## Function

**clean**( _text_ )

Returns the specified text, minus any characters not considered printable. Printable characters are the 95 printable ASCII characters plus three special characters: BACKSPACE (0x08), TAB (0x09), and NEWLINE (0x0a).

**See also**: [cleanwith()](fnc_text_cleanwith.html), [strip()](fnc_text_strip.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to be "cleaned" for printing purposes.

 |

## Returns

Text

## Examples

`clean("this`     `text`    `needs`    `to`   `be`   `cleaned")` returns `this text needs to be cleaned`

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