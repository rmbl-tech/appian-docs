---
source_url: https://docs.appian.com/suite/help/25.3/Web_Link_Component.html
original_path: Web_Link_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Safe Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!safeLink**( _label, uri, showWhen, openLinkIn_ )

Defines a link to an external web page. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [Link](Link_Component.html)
-   [Read-Only Grid](Paging_Grid_Component.html)
-   [Images](Image_Component.html)
-   [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

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

Text displayed as the link name the user clicks on.

 |
|

URI

 |

`uri`

 |

_SafeURI_

 |

URI target of the hyperlink. See [SafeURI](Appian_Data_Types.html#safeuri).

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

Open Link In

 |

`openLinkIn`

 |

_Text_

 |

(Browser-Only) Determines where the linked content should open. Valid values: `"SAME_TAB"`, `"NEW_TAB"` (default).

 |

## Usage considerations

### Displaying links

-   To display a single link or array of links, put safe links inside of the [link component](Link_Component.html).
-   To display a link in a grid, put the safe link inside of a [grid text column](Grid_Text_Column_Component.html).
-   To add a link to an image, put the safe link inside a [document image](Document_Image_Component.html) or [web image](Web_Image_Component.html).
-   To add a link to a chart series, put the safe link inside a [chart series component](Chart_Series_Component.html).

### Specifying URI protocols

It's recommended that the URI use a specific protocol. When no protocol is specified, the component will generate a hyperlink using the system's protocol and domain.

### Opening links in new tabs & windows

-   A link created by `a!safeLink()` opens in a new tab by default. Opening a link in the same tab can be configured using the _openLinkIn_ parameter.
-   Note that a user's browser may still be configured so that new tabs are instead opened as new windows.

### Appian Mobile considerations

The telephone link URI ("tel:") is supported on the Appian Mobile application. If a user clicks this link in the application, the link will open a mobile device's default phone dialer.

Telephone links may work in a web browser, but behavior can differ based on operating system and whether any telephone supported applications or extensions are installed.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### To an external website

```
1
2
3
4
a!safeLink(
  label: "Company web site",
  uri: "http://www.appian.com"
)
```

Returns a hyperlink to `http://www.appian.com`

### To a telephone number in the Appian Mobile Application

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
a!richTextDisplayField(
  value: if(
    a!isNativeMobile(),
  a!richTextItem(
    text: (
      "(555)-555-5555"
    ),
    link: a!safeLink(
      label: "(555)-555-5555",
      uri: "tel: (555)-555-5555"
    ),

  ),
  "(555)-555-5555"
 )
)
```

Returns a telephone link which can be used on mobile devices via the Appian Mobile application. Use [isNativeMobile()](fnc_scripting_a_isNativeMobile.html) to only show this link in the Appian Mobile application.

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

## Related Patterns

The following patterns include usage of the Safe Link.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...