---
source_url: https://docs.appian.com/suite/help/25.3/column-overlay.html
original_path: column-overlay.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Column Overlay

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!columnOverlay**( _alignVertical, position, width, contents, showWhen, style, padding_ )

Displays a vertical column overlay for use in billboard layout.

**See also**: [Billboard](Billboard_Layout.html)

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

Position

 |

`position`

 |

_Text_

 |

Determines where the column overlay appears. Valid values: `"START"` (default), `"CENTER"`, `"END"`.

 |
|

Width

 |

`width`

 |

_Text_

 |

Determines the column overlay width. Valid values: `"NARROW"`, `"MEDIUM"` (default), `"WIDE"`.

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

### Column overlay with intro message

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
a!billboardLayout(
  backgroundcolor: "#073763",
  marginBelow: "STANDARD",
  overlay: a!columnOverlay(
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
    style: "DARK",
    padding: "MORE"
  )
)
```

Displays the following:

![Column Overlay Example](images/columnOverlayExample.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...