---
source_url: https://docs.appian.com/suite/help/25.3/Web_Content_Component.html
original_path: Web_Content_Component.html
version: "25.3"
title: "Web Content Component"
page_id: "Web_Content_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Web Content Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!webContentField**( _label, labelPosition, instructions, helpTooltip, showWhen, source, showBorder, height, altText, disabled, accessibilityText, marginAbove, marginBelow_ )

Displays content inline from an external source.

**Note:**  To protect users from how **Safari** handles memory, the Web Content component will display as an inline link when viewed in those browsers.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the field label.

 |
|

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values:

-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

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
|

Source

 |

`source`

 |

_Safe URI_

 |

Location of the external content.

 |
|

Show Border

 |

`showBorder`

 |

_Boolean_

 |

Determines whether the field has an outer border. Default: false.

 |
|

Height

 |

`height`

 |

_Text_

 |

Determines the layout height. Valid values: `"SHORT"`, `"MEDIUM"` (default), `"TALL"`.

 |
|

Alternative Text

 |

`altText`

 |

_Text_

 |

Equivalent alternate text provided to assistive technology.

 |
|

Disabled

 |

`disabled`

 |

_Boolean_

 |

Determines if the user is prevented from interacting with the web content. Default: false.

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the layout. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the layout. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |

## Usage considerations

### Embedding content

-   Not all content can be embedded. The best way to know if your content can be embedded or not is to test it. If it can't be embedded, the component will be empty. Some sources explicitly prevent being embedded, such as [https://www.google.com](https://www.google.com) and [https://www.yahoo.com/](https://www.yahoo.com/).
-   Screen readers will typically announce the embedded page's title (found in the `<title>` attribute). When no title is provided, the `altText` value is used.

### Supported content

-   This component supports displaying external content only. Internal Appian interfaces and Appian URLs are not supported.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Web content

```
1
2
3
4
5
6
a!webContentField(
  source: "https://example.com",
  height: "MEDIUM",
  showBorder: true,
  altText: "Example Domain"
)
```

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Incompatible |  |
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