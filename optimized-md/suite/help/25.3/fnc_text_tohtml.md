---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_tohtml.html
original_path: fnc_text_tohtml.html
version: "25.3"
title: "toHtml() Function"
page_id: "fnc_text_tohtml"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# toHtml() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**toHtml**( _text_ )

Converts a string in plain text to the HTML equivalent that displays appropriately in an HTML page, by replacing reserved characters with their escaped counterparts.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The string of text to be converted to HTML

 |

## Returns

Text

## Usage considerations

This function is not necessary when using certain allowed HTML tags, which are always allowed in Expressions.

## Examples

`toHTML("Hello <br> World")` returns `Hello &lt;br&gt; World`

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