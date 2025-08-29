---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_leftb.html
original_path: fnc_text_leftb.html
version: "25.3"
title: "leftb() Function"
page_id: "fnc_text_leftb"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# leftb() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**leftb**( _text, num\_bytes_ )

Returns a specified number of bytes from the text, starting from the first byte.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text from which the substring will be taken.

 |
|

`num_bytes`

 |

_Number_

 |

The length in bytes of the subtext to extract.

 |

## Returns

Text

## Examples

`leftb("boston",3)` returns `bos`

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