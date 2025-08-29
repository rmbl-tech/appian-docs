---
source_url: https://docs.appian.com/suite/help/25.3/Numbered_List_Component.html
original_path: Numbered_List_Component.html
version: "25.3"
title: "Rich Text Numbered List"
page_id: "Numbered_List_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Rich Text Numbered List

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-rich-text.html">SAIL Design System guidance available for Rich Text</a><p class="ds-release-notice-p">Enhance readability and comprehension on your interface by using rich text formatting to visually differentiate text.</p></td></tr></tbody></table>

## Function

**a!richTextNumberedList**( _items, showWhen_ )

Displays a numbered list within a [rich text display](Rich_Text_Component.html) component.

**See also**: [Rich text style guidance](sail/ux-rich-text.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Items

 |

`items`

 |

_Text, [Rich Text Item](Styled_Text_Component.html), and [Rich Text List](List_Item_Component.html)_

 |

Array of text to display as a numbered list. Text can be further formatted using `a!richTextItem()`. Nested lists can be created using `a!richTextListItem()`.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Using the items parameter

-   Specific values within _items_ can be further formatted using [rich text item](Styled_Text_Component.html).
-   Numbered lists cannot be nested within a rich text item.
-   If _items_ is null or contains an empty array, no list is displayed.
-   If the _items_ array contains one or more null values, those items in the list have no text displayed.

### Numbered list formatting

-   Top-level numbered lists use Arabic numerals (for example, 1, 2, 3); second-level numbered lists use letters (for example, a, b, c); third-level numbered lists use lower-case Roman numerals (for example, i, ii, iii). Further nested numbered lists repeat the same pattern starting with Arabic numerals.

## Example

_To experiment with examples, copy and paste the expression into an interface object._

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...