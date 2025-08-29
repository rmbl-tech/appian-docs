---
source_url: https://docs.appian.com/suite/help/25.3/Chart_Custom_Color_Scheme_Component.html
original_path: Chart_Custom_Color_Scheme_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Chart Custom Color Scheme Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-charts.html">SAIL Design System guidance available for Charts</a><p class="ds-release-notice-p">Every chart should tell a story. What does yours say? Learn how to build rich reporting dashboards that provide users with visualizations of their data.</p></td></tr></tbody></table>

## Function

**a!colorSchemeCustom**( _Colors_ )

A custom list of colors to apply to any chart.

**See also**: [Chart Color Schemes](Chart_Color_Scheme.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Colors

 |

`Colors`

 |

_Text_

 |

List of colors to use in the custom color scheme. Valid values: any valid hex colors or hex color including transparency. Maximum colors allowed: 12. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |

## Usage considerations

### Series colors

-   If there are more series than colors provided, the colors enumerate through the list again from the beginning.
-   Users can still configure the colors of individual [chart series](Chart_Series_Component.html) while using a custom color scheme. Any series configurations will take precedence over automatically assigned color scheme colors.

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

The following patterns include usage of the Chart Custom Color Scheme Component.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...