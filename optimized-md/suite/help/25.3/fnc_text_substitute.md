---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_substitute.html
original_path: fnc_text_substitute.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# substitute() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**substitute**( _text, find, replace\_with_ )

Substitutes a specific part of a string with another string.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The string to be modified.

 |
|

`find`

 |

_Text_

 |

The part of the string that will be replaced.

 |
|

`replace_with`

 |

_Text_

 |

The replacement substring.

 |

## Returns

Text

## Examples

`substitute("hello world","hello","my")` returns `my world`

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