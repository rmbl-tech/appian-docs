---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_stripwith.html
original_path: fnc_text_stripwith.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# stripwith() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**stripwith**( _text, with_ )

The function returns the provided text, minus any characters on the list of invalid characters.

**See also**: [cleanwith()](fnc_text_cleanwith.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text to be "stripped" for printing purposes.

 |
|

`with`

 |

_Text_

 |

The text disallowed in the "stripped" result.

 |

## Returns

Text

## Usage considerations

Do not include a space between characters for the _with_ value unless you want spaces "stripped" from the _text_ value.

## Examples

`stripwith("text string","xt")` returns `e sring`

`stripwith("text string","x t")` returns `esring`

`stripwith("text string","xg t")` returns `esrin`

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