---
source_url: https://docs.appian.com/suite/help/25.3/List_Item_Component.html
original_path: List_Item_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Rich Text List Item

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

**a!richTextListItem**( _text, nestedList, showWhen_ )

Displays a nested list within a bulleted or numbered list in a [rich text display](Rich_Text_Component.html) component.

**See also**: [Rich text style guidance](sail/ux-rich-text.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Text

 |

`text`

 |

_Text or Rich Text Item_

 |

Array of text to display as a rich text list item. Text can be formatted using `a!richTextItem()`.

 |
|

Nested List

 |

`nestedList`

 |

_Bulleted List or Numbered List_

 |

A bulleted or numbered list to nest within the rich text list item. Use `a!richTextBulletedList()` or `a!richTextNumberedList()`.

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

### Using the text and nestedList parameters

-   If _text_ is null or contains an empty array, no text is displayed for the list item.
-   If _nestedList_ is null, no nested list is displayed within the parent list.
-   A nested list doesn't need to be the same type of list as its parent list. Bulleted lists can be nested within numbered lists and vice versa.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

Use the interactive editor below to test out the example code.

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