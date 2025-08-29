---
source_url: https://docs.appian.com/suite/help/25.3/Chart_Reference_Line_Component.html
original_path: Chart_Reference_Line_Component.html
version: "25.3"
title: "Chart Reference Line Component"
page_id: "Chart_Reference_Line_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Chart Reference Line Component

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

**a!chartReferenceLine**( _label, value, showWhen, color, style_ )

Contains the reference line value for each threshold that is defined on a column, bar, line, or area chart.

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

Text to display on top of the reference line.

 |
|

Value

 |

`value`

 |

_Decimal_

 |

The numeric value at which the reference line will be drawn.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the reference line is displayed on the interface. When set to false, the reference line is hidden and is not evaluated. Default: true.

 |
|

Color

 |

`color`

 |

_Text_

 |

Color for the reference line. Valid values: Any valid hex color or `"ACCENT"`, `"BLUEGRAY"`, `"GREEN"`, `"GOLD"`, `"ORANGE"`, `"PURPLE"`, `"RED"`,`"SKYBLUE"`, `"LIMEGREEN"`, `"YELLOW"`, `"AMBER"`, `"PINK"`, and `"VIOLETRED"`.

 |
|

Style

 |

`style`

 |

_Text_

 |

Style of the reference line. Valid values are: `"SOLID"`, `"DOT"`, `"DASH"` (default), `"DASHDOT"`, `"SHORTDASH"`.

 |

## Usage considerations

### Displaying reference lines

-   Reference lines will not display if used in a chart when the `yAxisStyle` is set to `"NONE"`.

## Examples

This example demonstrate how to configure a chart using categories and series. For examples on using record data, see [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html).

### Single series column chart with reference lines

Use the interactive editor below to test out the example code.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
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

The following patterns include usage of the Chart Reference Line Component.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

-   [Use a Filter to Adjust Chart Reference Lines](/suite/help/25.3/recipe-use-a-filter-to-adjust-chart-reference-lines.html) (_Filtering, Charts_): Using a dropdown, filter the results of a data set while also adjusting a chart reference line.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...