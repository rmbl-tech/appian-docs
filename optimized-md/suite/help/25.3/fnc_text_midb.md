---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_midb.html
original_path: fnc_text_midb.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# midb() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**midb**( _text, start\_num, num\_bytes_ )

Returns a substring from the middle of the specified text.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text from which the substring will be extracted.

 |
|

`start_num`

 |

_Number_

 |

The positional index in bytes of the first byte of the substring to be returned.

 |
|

`num_bytes`

 |

_Number_

 |

The length in bytes of the substring to extract.

 |

## Returns

Text

## Usage considerations

The first byte of the entire _text_ value is considered to have an index = 1.

## Examples

`midb("boston",4,2)` returns `to`

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