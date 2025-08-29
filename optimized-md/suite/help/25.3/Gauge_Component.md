---
source_url: https://docs.appian.com/suite/help/25.3/Gauge_Component.html
original_path: Gauge_Component.html
version: "25.3"
title: "Gauge Component"
page_id: "Gauge_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Gauge Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-gauge.html">SAIL Design System guidance available for Gauges</a><p class="ds-release-notice-p">What gets measured gets done. So measure what matters with gauges. Learn how to configure and display gauges on your interface designs so you can visualize progress on your most important goals and initiatives.</p></td></tr></tbody></table>

## Function

**a!gaugeField**( _label, labelPosition, instructions, helpTooltip, percentage, primaryText, secondaryText, color, size, align, accessibilityText, showWhen, tooltip, marginAbove, marginBelow_ )

Displays a completion percentage in a circular style similar to the [Progress Bar](Progress_Bar_Component.html). Best used for showing progress when there is a target value, such as the number of completed surveys out of 360 total surveys, or number of hired employees out of 20 total open positions.

**See also**:

-   [Gauge Icon](Gauge_Icon_Component.html)
-   [Gauge Percentage](Gauge_Percentage_Component.html)
-   [Gauge Fraction](Gauge_Fraction_Component.html)
-   [Gauge design guidance](sail/ux-gauge.html)

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

Fill Percentage

 |

`percentage`

 |

_Number (Decimal)_

 |

Number to display between 0 and 100.

 |
|

Primary Text

 |

`primaryText`

 |

_Text_

 |

Optional text to display on the first line inside the gauge. Create using plain text, [a!gaugeIcon()](Gauge_Icon_Component.html), [a!gaugePercentage()](Gauge_Percentage_Component.html), or [a!gaugeFraction()](Gauge_Fraction_Component.html).

 |
|

Secondary Text

 |

`secondaryText`

 |

_Text_

 |

Optional text to display on the second line inside the gauge.

 |
|

Fill Color

 |

`color`

 |

_Text_

 |

Determines the color. Access the percentage using fv!percentage. Valid values: Any valid hex color or hex color including transparency, or `"ACCENT"` (default), `"POSITIVE"`, `"NEGATIVE"`, `"WARN"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Size

 |

`size`

 |

_Text_

 |

Determines the size of the gauge. Valid values: `SMALL`, `MEDIUM` (default), `LARGE`.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the gauge. Valid values: `START`, `CENTER` (default), `END`.

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

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display as a tooltip on the gauge.

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

-   If the _percentage_ value is negative or null, the gauge shows with 0% of the circle complete.
-   If the _percentage_ value is greater than 100, the gauge shows with 100% of the circle complete.

### Editing the gauge primary text

The gauge configuration pane contains a step-by-step designer to help you quickly try out all Primary Text formats. We recommend you use this designer to select the format that works best for your gauge. ![gif of editing the value in the middle of the gauge using design mode](images/Gauge_Design.gif)

### Formatting primary text width and color

-   If custom primaryText or secondaryText does not fit within the gauge, it is truncated.
-   If the primaryText is formatted using [a!gaugeIcon()](Gauge_Icon_Component.html), [a!gaugePercentage()](Gauge_Percentage_Component.html), or [a!gaugeFraction()](Gauge_Fraction_Component.html), it will resize to fit within the circle.
-   To conditionally set the color of the gauge, use `fv!percentage` as shown in the "Gauge Setting Color Based on Percentage" example below.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Gauge showing fraction complete

Use the interactive editor below to test out the example code.

### Gauge showing percent complete

Use the interactive editor below to test out the example code.

### Gauge showing icon with secondary text

Use the interactive editor below to test out the example code.

### Gauge setting color based on percentage

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

## Related Patterns

The following patterns include usage of the Gauge Component.

-   [Percentage of Online Sales](/suite/help/25.3/recipe-show-percentage-of-sales.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate the percent of sales generated from online orders and display it in a gauge component.

-   [Use the Gauge Fraction and Gauge Percentage Configurations](/suite/help/25.3/recipe-use-guage-fraction-and-percentage-configurations.html) (_Formatting, Reports_): This recipe provides a common configuration of the [Gauge Component](Gauge_Component.html) using [a!gaugeFraction()](Gauge_Fraction_Component.html) and [a!gaugePercentage()](Gauge_Percentage_Component.html), and includes a walkthrough that demonstrates the benefits of using design mode when configuring the gauge component.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...