---
source_url: https://docs.appian.com/suite/help/25.3/Gauge_Fraction_Component.html
original_path: Gauge_Fraction_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Gauge Fraction

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

**a!gaugeFraction**( _denominator_ )

Displays text in a fractional format for use within the [gauge](Gauge_Component.html) field _primaryText_ parameter.

**See also**: [Gauge design guidance](sail/ux-gauge.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Denominator

 |

`denominator`

 |

_Number (Integer)_

 |

Value to display as the bottom portion of the fraction. Value cannot be negative. Default: 100. Numerator is calculated automatically based on denominator and fill percentage.

 |

**Tip:**  This component captures the _percentage_ value from its parent gauge and automatically calculates the numerator based on the provided _denominator_, rounding to an integer.

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

The following patterns include usage of the Gauge Fraction.

-   [Use the Gauge Fraction and Gauge Percentage Configurations](/suite/help/25.3/recipe-use-guage-fraction-and-percentage-configurations.html) (_Formatting, Reports_): This recipe provides a common configuration of the [Gauge Component](Gauge_Component.html) using [a!gaugeFraction()](Gauge_Fraction_Component.html) and [a!gaugePercentage()](Gauge_Percentage_Component.html), and includes a walkthrough that demonstrates the benefits of using design mode when configuring the gauge component.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...