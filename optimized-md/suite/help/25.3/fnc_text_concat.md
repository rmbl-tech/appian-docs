---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_concat.html
original_path: fnc_text_concat.html
version: "25.3"
title: "concat() Function"
page_id: "fnc_text_concat"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# concat() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**concat**( _text_ )

Concatenates the specified strings into one string, without a separator.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text Array_

 |

One of the strings or a set of strings that will be concatenated.

 |

## Returns

Text

## Usage considerations

If an array is passed as a parameter, that array is converted to a string first and then concatenated. Parameters that don't hold a text data type are converted to string before being operated on.

## Examples

`concat({"a","b","c"},{"d","e","f"})` returns `abcdef`

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