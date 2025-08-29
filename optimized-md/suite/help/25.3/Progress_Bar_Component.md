---
source_url: https://docs.appian.com/suite/help/25.3/Progress_Bar_Component.html
original_path: Progress_Bar_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Progress Bar Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!progressBarField**( _label, instructions, percentage, labelPosition, helpTooltip, accessibilityText, color, showWhen, style, showPercentage, marginAbove, marginBelow_ )

Displays a completion percentage, such as receiving all the necessary approval tasks, completing a certain number of on-boarding processes, or completing a single process. Similar to the [Gauge](Gauge_Component.html), but with a bar style rather than a circular style.

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

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

 |
|

Percentage

 |

`percentage`

 |

_Number (Integer)_

 |

Number to display between 0 and 100.

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

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

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

Color

 |

`color`

 |

_Text_

 |

Determines the color. Valid values: Any valid hex color or hex color including transparency, or `"ACCENT"` (default), `"POSITIVE"`, `"NEGATIVE"`, `"WARN"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

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

Thickness of the progress bar. Valid values: `"THIN"` (default), `"THICK"`.

 |
|

Show Percentage

 |

`showPercentage`

 |

_Boolean_

 |

Determines whether the progress bar displays the percentage. Default: true.

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

### Using the percentage parameter

-   If an expression for the _percentage_ parameter results in a decimal number, the system automatically casts the value to an integer.
-   If the _percentage_ parameter is negative or null, the bar renders with 0% filled and displays the provided _percentage_ as a label on the bar.
-   If the _percentage_ parameter is greater than 100, the bar renders with 100% filled and displays the provided _percentage_ as a label on the bar.

### Bar thickness

-   We recommend you use thin styling on the progress bar when working with a small space on an interface, such as within grids.

## Examples

Use the interactive editor below to test out the example code.

### Thick progress bar with details

### Thin progress bar with color based on value

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

The following patterns include usage of the Progress Bar Component.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...