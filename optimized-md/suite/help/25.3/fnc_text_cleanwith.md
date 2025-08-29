---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_cleanwith.html
original_path: fnc_text_cleanwith.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# cleanwith() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**cleanwith**( _text, with_ )

Returns the specified text, minus any characters not in the list of valid characters. (Performs the opposite function of "stripwith".)

**See also**: [stripwith()](fnc_text_stripwith.html)

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
|

`with`

 |

_Text_

 |

The text allowed in the "cleaned" result.

 |

## Returns

Text

## Examples

`cleanwith("text string","xt")` returns `txtt`

`cleanwith("text string","x t")` returns `txt t`

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