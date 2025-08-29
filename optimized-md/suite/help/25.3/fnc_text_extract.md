---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_extract.html
original_path: fnc_text_extract.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# extract() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**extract**( _text, startDelimiter, endDelimiter_ )

Returns the value (or values, if the text contains multiple delimited values) between the delimiters from the given text.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text from which to extract the delimited string.

 |
|

`startDelimiter`

 |

_Text_

 |

String for the start delimiter.

 |
|

`endDelimiter`

 |

_Text_

 |

String for the end delimiter.

 |

## Returns

Text Array

## Examples

`extract("start function /\*extract this\*/ end function","/\*","\*/")` returns `extract this`

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