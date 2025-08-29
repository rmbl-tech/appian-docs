---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_insertkey.html
original_path: fnc_text_insertkey.html
version: "25.3"
title: "insertkey() Function"
page_id: "fnc_text_insertkey"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# insertkey() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**insertkey**( _key, startDelimiter, endDelimiter_ )

Returns the provided text, wrapped with the specified delimiters.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`key`

 |

_Text_

 |

A key or array of keys.

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

Text

## Examples

`insertKey("hello", "[", "]")` returns `[hello]`

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