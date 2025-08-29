---
source_url: https://docs.appian.com/suite/help/25.3/Horizontal_Line_Component.html
original_path: Horizontal_Line_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Horizontal Line Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!horizontalLine**( _color, weight, marginAbove, marginBelow, showWhen, style_ )

Displays a horizontal line. This component is best used when you need to visually distinguish and separate content within a page. It enhances readability for complex interfaces and enables the creation of responsive user interfaces.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Color

 |

`color`

 |

_Text_

 |

Determines the horizontal line color. Valid values: Any valid hex color or hex color including transparency, or “SECONDARY” (default), “STANDARD”, “ACCENT”. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Weight

 |

`weight`

 |

_Text_

 |

Determines the horizontal line thickness. Valid values: "THIN" (default), "MEDIUM", "THICK".

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the component. Valid values: "NONE" (default), "EVEN\_LESS", "LESS", "STANDARD" , "MORE", "EVEN\_MORE".

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the component. Valid values: "NONE", "EVEN\_LESS", "LESS", "STANDARD" (default), "MORE", "EVEN\_MORE".

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

Style

 |

`style`

 |

_Text_

 |

Determines how the component displays. Valid values: "SOLID" (default), "DOT", "DASH".

 |

## Examples

Use the interactive editor below to test out the example code.

### Display horizontal lines with custom colors

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

The following patterns include usage of the Horizontal Line Component.

-   [Duration Display](/suite/help/25.3/duration-display-pattern.html) (_Rich Text, Events_): Use the duration display pattern to show the amount of time in between events in a quick, easy-to-read way.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...