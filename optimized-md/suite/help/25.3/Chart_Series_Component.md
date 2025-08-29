---
source_url: https://docs.appian.com/suite/help/25.3/Chart_Series_Component.html
original_path: Chart_Series_Component.html
version: "25.3"
title: "Chart Series Component"
page_id: "Chart_Series_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Chart Series Component

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

**a!chartSeries**( _label, data, links, color, showWhen_ )

Defines a series of data for a bar, column, line, area, or pie chart. This component is always used within a chart component.

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

Name that corresponds to the data value or data values to display in the legend.

 |
|

Data

 |

`data`

 |

_Decimal Array_

 |

Value displayed for the related series.label.

 |
|

Links

 |

`links`

 |

_Array of Links_

 |

Array of values that determine what occurs when a user clicks a data point in the chart. Create links with:

-   [a!authorizationLink()](authorization_link_component.html)
-   [a!documentDownloadLink()](Document_Link_Component.html)
-   [a!dynamicLink()](Dynamic_Link_Component.html)
-   [a!newsEntryLink()](News_Entry_Link_Component.html)
-   [a!processTaskLink()](Process_Task_Link_Component.html)
-   [a!recordLink()](Record_Link_Component.html)
-   [a!reportLink()](Report_Link_Component.html)
-   [a!startProcessLink()](Start_Process_Link_Component.html)
-   [a!submitLink()](Submit_Link_Component.html)
-   [a!userRecordLink()](User_Record_Link_Component.html)
-   [a!safeLink()](Web_Link_Component.html)

 |
|

Color

 |

`color`

 |

_Text_

 |

Overrides the auto-assignment of series color with a specific value. Valid values: Any valid hex color or `"ACCENT"`, `"BLUEGRAY"`, `"GREEN"`, `"GOLD"`, `"ORANGE"`, `"PURPLE"`, `"RED"`, `"SKYBLUE"`, `"LIMEGREEN"`, `"YELLOW"`, `"AMBER"`, `"PINK"`, `"VIOLETRED"`.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the series is displayed on the interface. When set to false, the series is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Chart series color

The color of chart series can be defined by an overall [chart color scheme](Chart_Color_Scheme.html) or it can be configured individually. If a user has selected or created a color scheme, they can swap out the color of any individual series.

Users can choose between the assigned color scheme color, the environment’s [accent color](Appian_Administration_Console.html#colors), a color such as `"SKYBLUE"` or `"BLUEGRAY"`, or a custom color defined by a hex code. Any series configurations will take precedence over the assigned color scheme colors.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Single series bar chart with label, Y-axis title, and no legend

Use the interactive editor below to test out the example code.

### Multiple series line chart with label, X-axis title, Y-axis title, and legend

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

The following patterns include usage of the Chart Series Component.

-   [Aggregate Data and Conditionally Display in a Chart or Grid](/suite/help/25.3/recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) (_Reports, Charts, Query Data, Grids, Records_): Aggregate data and conditionally display it in a pie chart or grid. In this pattern, we will calculate the total number of employees in each department and display it in a pie chart and a read-only grid. Then, we'll use a link field to conditionally display each component.

-   [Configure a Chart to Grid Toggle](/suite/help/25.3/recipe-configure-a-chart-to-grid-toggle.html) (_Charts, Grids_): Display a column chart with a toggle to display an alternate grid view of the data.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Use a Filter to Adjust Chart Reference Lines](/suite/help/25.3/recipe-use-a-filter-to-adjust-chart-reference-lines.html) (_Filtering, Charts_): Using a dropdown, filter the results of a data set while also adjusting a chart reference line.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...