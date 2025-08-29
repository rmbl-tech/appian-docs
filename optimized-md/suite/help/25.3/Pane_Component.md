---
source_url: https://docs.appian.com/suite/help/25.3/Pane_Component.html
original_path: Pane_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Pane Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-pane-layout.html">SAIL Design System guidance available for Pane Layout</a><p class="ds-release-notice-p">When users need to scroll through information but also leave part of the interface static, use the pane layout. Learn how to use two- and three-pane layouts to build flexible interfaces with greater user control.</p></td></tr></tbody></table>

## Function

**a!pane**( _contents, width, backgroundColor, showWhen, padding, accessibilityText_ )

Displays a pane within [a!paneLayout()](Pane_Layout.html).

**See also**:

-   [Pane Layout](Pane_Layout.html)
-   [Responsive Design](responsive_design.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Contents

 |

`contents`

 |

_Any Type_

 |

Components and layouts to display within the pane.

 |
|

Width

 |

`width`

 |

_Text_

 |

Determines the width of the pane. Valid values: "AUTO" (default), "EXTRA\_NARROW", "NARROW", "NARROW\_PLUS", "MEDIUM", "MEDIUM\_PLUS", "WIDE", "WIDE\_PLUS".

 |
|

Background color

 |

`backgroundColor`

 |

_Text_

 |

Color to show behind the contents of the pane. Valid values: Any valid hex color or hex color including transparency, or `"WHITE"` (default), `"GRAY`, `"TRANSPARENT"`, `"CHARCOAL_SCHEME"`, `"NAVY_SCHEME"`, `"PLUM_SCHEME"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

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

Padding

 |

`padding`

 |

_Text_

 |

Determines the space between the pane's edges and its contents. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

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

## Usage considerations

See the [pane layout design guidance](sail/ux-pane-layout.html) for information about setting widths, background colors, and padding.

### Using the accessibilityText parameter

Each pane must include a unique _accessibilityText_ value. Panes are a top-level navigation item, so this text ensures users who rely on screen readers can accurately and more easily navigate a page with panes.

The text should briefly indicate what type of content is contained in the pane. For example, you might use `AI options` for a pane that lets users select from a list of available language models, or you could use `Create solicitation` to describe a pane containing fields needed for a new solicitation.

Do not include the following terms in the text: `main`, `navigation`, `section`, `form`, `search`, `header`, `footer`, `article` or `region`. These terms are common elements of web pages in general, and they should be avoided in favor of descriptors that apply specifically to the pane component.

For example, say you have a pane that contains a list of cards defined as links. When a card is clicked, the corresponding calendar item is highlighted.

[![Two-pane interface with a list of tasks and calendar](images/pane_a11y_text.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img84)

[![](images/pane_a11y_text.png)](#_)

This lets the user navigate through their tasks, but you should say what is being navigated without using the term `navigation`. A description like `Tasks needing attention` tells users what the pane contains without mentioning that it is a navigation item.

### Appian Mobile considerations

Panes have different behavior when the interface is viewed in the [Appian Mobile](Appian_for_Mobile_Devices.html) app. Panes are converted to columns, so the contents cannot be scrolled independently. Larger devices like tablets will display the columns side by side, while phones and other smaller devices will show the panes as stacked columns. This may result in very long pages depending on a pane's contents.

**Note:**  Panes are not converted for mobile browsers. Users viewing the paned interface this way will have a similar experience to those using a desktop browser. See [Adjusting for different screen sizes](Pane_Layout.html#adjusting-for-different-screen-sizes) to learn how to adapt the layout for smaller screens.

## Examples

See the [pane layout](Pane_Layout.html#examples) page for examples of using the pane component.

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