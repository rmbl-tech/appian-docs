---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_charat.html
original_path: fnc_text_charat.html
version: "25.3"
title: "charat() Function"
page_id: "fnc_text_charat"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# charat() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**charat**( _text, index_ )

Returns the character at given index within specified string.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text string to find the character.

 |
|

`index`

 |

_Number_

 |

The integer index position of the character, starting at one (1).

 |

## Returns

Text

## Examples

`charat("string",2)` returns `t`

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