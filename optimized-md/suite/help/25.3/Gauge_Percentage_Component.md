---
source_url: https://docs.appian.com/suite/help/25.3/Gauge_Percentage_Component.html
original_path: Gauge_Percentage_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Gauge Percentage

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

**a!gaugePercentage**( _label, labelPosition, instructions, helpTooltip, percentage, primaryText, secondaryText, color, size, align, accessibilityText, showWhen, tooltip_ )

Displays the configured percentage of the gauge as an integer for use within the [gauge](Gauge_Component.html) field _primaryText_ parameter.

**See also**: [Gauge design guidance](sail/ux-gauge.html)

## Parameters

**Tip:**  This component does not require any parameters. It captures the _percentage_ value from its parent gauge and displays that value in the center, rounded to an integer. The below table is just for reference.

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

Determines where the label appears. Valid values: “ABOVE” (default), “ADJACENT”, “JUSTIFIED”, “COLLAPSED”.

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

Displays a help icon with the specified text as a tooltip. The help icon does not show when the label position is “COLLAPSED”.

 |
|

Percentage

 |

`percentage`

 |

_(Number (Decimal))_

 |

Number to display between 0 and 100.

 |
|

Primary Text

 |

`primaryText`

 |

_Any Type_

 |

Content to display on the first line inside the gauge. Create using plain text, a!gaugeIcon(), a!gaugePercentage(), or a!gaugeFraction().

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

Color

 |

`color`

 |

_Text_

 |

Determines the color. Access the percentage using fv!percentage. Valid values: Any valid hex color or `“ACCENT”` (default), `“POSITIVE”`, `“NEGATIVE”`, `“WARN”`.

 |
|

Size

 |

`size`

 |

_Text_

 |

Determines the size of the gauge. Valid values: `“SMALL”`, `“MEDIUM”` (default), `“LARGE”`.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the gauge. Valid values: `“START”`, `“CENTER”` (default), `“END”`.

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

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

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

The following patterns include usage of the Gauge Percentage.

-   [Percentage of Online Sales](/suite/help/25.3/recipe-show-percentage-of-sales.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate the percent of sales generated from online orders and display it in a gauge component.

-   [Use the Gauge Fraction and Gauge Percentage Configurations](/suite/help/25.3/recipe-use-guage-fraction-and-percentage-configurations.html) (_Formatting, Reports_): This recipe provides a common configuration of the [Gauge Component](Gauge_Component.html) using [a!gaugeFraction()](Gauge_Fraction_Component.html) and [a!gaugePercentage()](Gauge_Percentage_Component.html), and includes a walkthrough that demonstrates the benefits of using design mode when configuring the gauge component.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...