---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_striphtml.html
original_path: fnc_text_striphtml.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# stripHtml() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**stripHtml**( _html_ )

Changes the provided HTML string into a plain text string by converting `<br>`, `<p>`, and `<div>` to line breaks, stripping all other tags, and converting escaped characters into their display values.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`html`

 |

_Text_

 |

the html text to be "stripped" of tags and converted to plain text.

 |

## Returns

Text

## Usage considerations

### Handling for classes and styles

`striphtml()` will not convert `<br>`, `<p>`, and `<div>` tags to line breaks if they contain additional classes or styles. For example, `<div class="test">` or `<div style="align:center">` would not be converted to line breaks.

## Examples

`=stripHtml("<p>Click <b>Save</b>.</p>")` returns `Click Save.`

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