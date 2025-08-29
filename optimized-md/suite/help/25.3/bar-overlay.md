---
source_url: https://docs.appian.com/suite/help/25.3/bar-overlay.html
original_path: bar-overlay.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Bar Overlay

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

**a!barOverlay**( _position, contents, showWhen, style, padding_ )

Displays a horizontal bar overlay for use in billboard layout.

**See also**: [Billboard](Billboard_Layout.html), [Billboard layout design guidance](sail/ux-billboard-layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Position

 |

`position`

 |

_Text_

 |

Determines where the bar overlay appears. Valid values: `"TOP"`, `"MIDDLE"`, `"BOTTOM"` (default).

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

Determines whether the overlay is displayed on the interface. When set to false, the overlay is hidden and is not evaluated. Default: true.

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

### Bar overlay with intro message

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
a!billboardLayout(
  backgroundcolor: "#073763",
  marginBelow: "STANDARD",
  overlay: a!barOverlay(
    position: "MIDDLE",
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

![Bar Overlay Example](images/barOverlayExample.png)

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

## Related Patterns

The following patterns include usage of the Bar Overlay.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...