---
source_url: https://docs.appian.com/suite/help/25.3/Styled_Text_Component_181.html
original_path: Styled_Text_Component_181.html
version: "25.3"
title: "a!richTextItem\_18r1 Component"
page_id: "Styled_Text_Component_181"
section: "Styled Text"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!richTextItem\_18r1 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Rich Text Item](/suite/help/25.3/Styled_Text_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Styled_Text_Component.html#Old_Version)

## Styled Text

**Function**: `a!richTextItem_18r1()`

Displays styled text within a [rich text display](Rich_Text_Component.html) component.

**Parameters**

| Name | Keyword | Type | Description |
| --- | --- | --- | --- |
| Text | text | Text or Styled Text | Array of text to display as a rich text item. Text can be further styled by nesting multiple `a!richTextItem_18r1()` calls. |
| Style | style | Text | Determines the style to apply to the text value. Valid values include `"NORMAL"` (default), `"EMPHASIS"`, `"STRONG"`, `"UNDERLINE"`, `"LARGE"`, `"MEDIUM"`, `"SMALL"`, `"HEADER_LARGE"`, `"HEADER_MEDIUM"`, `"HEADER_SMALL"`, `"POSITIVE"`, `"NEGATIVE"`, `"ACCENT"`, and `"SECONDARY"`. |
| Link | link | [Link](SAIL_Components.html#display) | Link to apply to the text. Create links with
-   [a!authorizationLink()](authorization_link_component.html)
-   [a!documentDownloadLink()](Document_Link_Component.html)
-   [a!dynamicLink()](Dynamic_Link_Component.html)
-   [a!newsEntryLink()](News_Entry_Link_Component.html)
-   [a!processTaskLink()](Process_Task_Link_Component.html)
-   [a!recordLink()](Record_Link_Component.html)
-   [a!reportLink()](Report_Link_Component.html)
-   [a!startProcessLink()](Start_Process_Link_Component.html)
-   [a!submitLink()](Submit_Link_Component.html)
-   [a!userRecordLink()](User_Record_Link_Component.html)
-   [a!safeLink()](Web_Link_Component.html)

 |
| Link Style | linkStyle | Text | Determines how the link is underlined. Valid values: `"INLINE"` (default), `"STANDALONE"`. |
| Show When | showWhen | Boolean | Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true. |

**Notes**

-   If _Text_ is null or contains an empty array, no text is displayed.
-   If _Link_ is null, the _Text_ is not displayed as a link.
-   While rich text components can be placed inside a grid layout, header styles are not supported within a grid layout.
-   Header styles cannot be combined with other styles, e.g. an underlined header is not supported.
-   Header styles cannot be applied to items within a bulleted list or numbered list.
-   For nested rich text, if two conflicting styles are found (e.g. both SMALL and LARGE), the innermost style will be displayed.

## Example

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