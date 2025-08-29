---
source_url: https://docs.appian.com/suite/help/25.3/full-overlay.html
original_path: full-overlay.html
version: "25.3"
title: "Full Overlay"
page_id: "full-overlay"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Full Overlay

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-billboard-layout.html">SAIL Design System guidance available for Billboard Layout</a><p class="ds-release-notice-p">When you need to get a user's attention, use the billboard layout. Learn how to broadcast the right message and create powerful, visual prominence for sections that shouldn't be ignored.</p></td></tr></tbody></table>

## Function

**a!fullOverlay**( _alignVertical, contents, showWhen, style, padding_ )

Displays an overlay that covers the entire billboard layout.

**See also**: [Billboard](Billboard_Layout.html), [Billboard layout design guidance](sail/ux-billboard-layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Vertical Alignment

 |

`alignVertical`

 |

_Text_

 |

Determines vertical alignment of all content within the overlay. Valid values: `"TOP"` (default), `"MIDDLE"`, and `"BOTTOM"`.

 |
|

Contents

 |

`contents`

 |

_Any Type_

 |

The interface to display in the overlay. Accepts layouts and display components. Supported layouts and components: Box, Button, Card, Columns, Image, Link, Milestone, Progress Bar, Rich Text Display, Section, Side By Side.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the layout is displayed on the interface. When set to false, the layout is hidden and is not evaluated. Default: true.

 |
|

Style

 |

`style`

 |

_Text_

 |

Determines the overlay style. Valid values: `"DARK"` (default), `"SEMI_DARK"`, `"NONE"`, `"SEMI_LIGHT"`, `"LIGHT"`.

 |
|

Padding

 |

`padding`

 |

_Text_

 |

Determines the space between the overlay's edges and its contents. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`(default), `"MORE"`, `"EVEN_MORE"`.

 |

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Full overlay with intro message

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
a!billboardLayout(
  backgroundMedia: a!documentImage(
    document: a!EXAMPLE_BILLBOARD_IMAGE()
  ),
  backgroundcolor: "#073763",
  marginBelow: "STANDARD",
  overlay: a!fullOverlay(
    alignvertical: "MIDDLE",
    contents: {
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          a!richTextItem(text: {"Hello, " & user(loggedinuser(), "firstName") & "."}, size: "MEDIUM"),
          char(10),
          a!richTextItem(text: {"What do you need help with?"}, size: "LARGE")
        },
        align: "CENTER"
      )
    },
    style: "DARK"
  )
)
```

Displays the following:

![Full Overlay Example](images/fullOverlayExample.png)

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