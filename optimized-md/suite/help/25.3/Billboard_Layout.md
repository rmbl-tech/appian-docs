---
source_url: https://docs.appian.com/suite/help/25.3/Billboard_Layout.html
original_path: Billboard_Layout.html
version: "25.3"
title: "Billboard Layout"
page_id: "Billboard_Layout"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Billboard Layout

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

**a!billboardLayout**( _backgroundMedia, backgroundColor, showWhen, height, marginBelow, overlay, accessibilityText, marginAbove, backgroundMediaPositionHorizontal, backgroundMediaPositionVertical_ )

Displays a background color, image, or video with optional overlay content.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Background Media

 |

`backgroundMedia`

 |

_Any Type_

 |

Determines the background content. Takes priority over background color. Configure using a!documentImage, a!userImage, a!webImage, or a!webVideo.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Determines the background color. When background media is also specified, the background color shows while media is loading or when background image is transparent. Must be a valid hex code or hex color including transparency. Default is `#f0f0f0`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

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

Height

 |

`height`

 |

_Text_

 |

Determines the layout height. Valid values: `"EXTRA_SHORT"`, `"SHORT"`, `"SHORT_PLUS"`, `"MEDIUM"` (default), `"MEDIUM_PLUS"`, `"TALL"`, `"TALL_PLUS"`, `"EXTRA_TALL"`, `"AUTO"`. Auto renders as medium when no background media is set.

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
|

Overlay Configurations

 |

`overlay`

 |

_Any Type_

 |

Determines the overlay. Configure using a!columnOverlay, a!barOverlay, or a!fullOverlay.

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

Background Media Horizontal Position

 |

`backgroundMediaPositionHorizontal`

 |

_Text_

 |

Determines the horizontal positioning of the billboard background media. Valid values: `"LEFT"`, `"CENTER"` (default), `"RIGHT"`.

 |
|

Background Media Vertical Position

 |

`backgroundMediaPositionVertical`

 |

_Text_

 |

Determines the vertical positioning of the billboard background media. Valid values: `"TOP"`, `"MIDDLE"` (default), `"BOTTOM"`.

 |

## Usage considerations

### Default text colors for light and dark backgrounds

-   When the overlay style is _none_, the standard text color changes based on the selected background color.
    -   For light background colors, standard text is dark gray.
    -   For dark background colors, standard text is switched to white.
    -   These automatic text color changes apply even when background media is set.

### Using overlays

-   A billboard layout may have either a bar, column, full, or no overlay.
-   When overlay content does not fit within the layout, it scrolls vertically.

### Sizing and displaying background media

-   For billboards with a value of `"SHORT"`, `"MEDIUM"`, or `"TALL"` for the _height_ parameter, background media is displayed as large as possible to fill the available width.
-   When the background media's aspect ratio is different from the layout's aspect ratio, the background will be cut off at the top and bottom.
-   If it is important that the background media be fully visible, set the _height_ to `"AUTO"`. See the [SAIL Design System](sail/ux-billboard-layout.html) for guidance on this setting.
-   Use _backgroundMediaPositionHorizontal_ and _backgroundMediaPositionVertical_ to keep the most important parts of your background media visible in various orientations and screen sizes.
-   When a video is used as the background, it plays automatically and does not have audio.

### Using the backgroundMedia parameter in offline interfaces

In [offline interfaces](offline-mobile-overview.html), only [document images](Document_Image_Component.html) are supported for the _backgroundMedia_ parameter. [User images](User_Image_Component.html), [web images](Web_Image_Component.html), and [web videos](Web_Video_Component.html) are not supported for offline interfaces.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Billboard with overlay

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
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
a!billboardLayout(
  backgroundColor: "#619ed6",
  overlay: a!barOverlay(
    position: "BOTTOM",
    contents: {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!richTextDisplayField(
                labelPosition: "COLLAPSED",
                value: {
                  a!richTextItem(
                    text: "Finance Summary",
                    size: "LARGE"
                  )
                }
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!columnsLayout(
                columns: {
                  a!columnLayout(
                    contents: {
                      a!richTextDisplayField(
                        label: "Total Spending",
                        value: a!richTextItem(
                          text: "$31,000.00",
                          size: "MEDIUM"
                        )
                      )
                    }
                  ),
                  a!columnLayout(
                    contents: {
                      a!richTextDisplayField(
                        label: "Remaining Budget",
                        value: a!richTextItem(
                          text: a!richTextItem(
                            text: "79%",
                            size: "MEDIUM"
                          ),
                          color: "POSITIVE"
                        )
                      )
                    }
                  ),
                  a!columnLayout(
                    contents: {
                      a!richTextDisplayField(
                        label: "Open Requests",
                        value: a!richTextItem(
                          text: "36",
                          size: "MEDIUM"
                        )
                      )
                    }
                  )
                },
                alignVertical: "TOP"
              )
            }
          )
        },
        alignVertical: "MIDDLE"
      )
    },
    style: "DARK"
  ),
  height: "SHORT"
)
```

Displays the following:

![screenshot of a billboard with an overlay displaying a finance summary](images/billboard-172.png)

See the [SAIL Design System: Billboard Layout](sail/ux-billboard-layout.html) for guidance on when to use each overlay style.

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!billboardLayout\_19r1](/suite/help/25.3/Billboard_Layout_19r1.html) |
Replaced multiple parameters with a new parameter that allows the designer to choose between a bar, column, or full overlay style. Added the full overlay style. Added the alignVertical parameter for the column and full overlay styles.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Billboard Layout.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...