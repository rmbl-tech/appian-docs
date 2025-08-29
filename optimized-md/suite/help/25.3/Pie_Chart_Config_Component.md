---
source_url: https://docs.appian.com/suite/help/25.3/Pie_Chart_Config_Component.html
original_path: Pie_Chart_Config_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Pie Chart Configuration

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

**a!pieChartConfig**( _primaryGrouping, measures, sort, dataLimit, link_ )

Contains configuration for how to display data in a pie chart. See the [Pie Chart Component](Pie_Chart_Component.html) page for examples on using this configuration supporting function.

**See also**:

-   [Chart Configuration Using Records](Chart_Configuration_Using_Records.html)
-   [Chart Color Schemes](Chart_Color_Scheme.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Primary Grouping

 |

`primaryGrouping`

 |

_Grouping_

 |

Defines the field labels to display for each slice of the pie chart, configured using [a!grouping()](Grouping_Component.html).

 |
|

Measures

 |

`measures`

 |

_Measure_

 |

Defines the numerical calculations for data in the chart, configured using [a!measure()](Measure_Component.html). If no measure is provided, a count of records shows as the measurement in the chart.

 |
|

Sort

 |

`sort`

 |

_SortInfo_

 |

Use [a!sortInfo()](fnc_system_a_sortinfo.html) to define a sort in ascending or descending order. Use the alias of any groupings or measures to sort by the values in the chart. Use a record field or related record field reference to sort by data that is not referenced in the chart.

 |
|

Data Limit

 |

`dataLimit`

 |

_Integer_

 |

Maximum number of data points to display on the chart. Default: 100. Valid values: 1-5000.

 |
|

Link

 |

`link`

 |

_Any Type_

 |

Link to execute when a user selects a data point on the chart. Use `fv!selection` to pass context from the selection made on the chart to the link. Create a link using [a!dynamicLink()](Dynamic_Link_Component.html).

 |

## Usage considerations

### Using a!pieChartConfig()

-   `a!pieChartConfig()` is always used within a pie chart component.
-   This configuration is used when a record type is defined as the data source for a pie chart in the _data_ parameter of `a!pieChartField()`.
-   If no measure is provided, the chart displays a count of records. Also, the label displays as `Count of <primary key field name>`.

### Using groups and data limits parameters

-   The _primaryGrouping_ is required to display data on the chart.
-   The _dataLimit_ determines the total number of slices displayed in the chart.

### Using the sort parameter

-   You can sort by the alias of any groupings or measures, or by any fields that are not directly referenced in the chart as long as they are of type Number (Integer), Number (Decimal), Date, Date and Time, Time, or Boolean. See [Chart Configuration Using Records](Chart_Configuration_Using_Records.html#stacked-column-chart-of-cases-by-status-and-priority) for an example of sorting by a field not referenced in the chart.
-   When configuring sort in design mode, you must use the alias of any groupings or measures to sort by the fields in the chart. In expression mode, you can use the alias or the field name if the alias is not provided.

### Using dynamic links and aliases

-   When a dynamic link is added to the _link_ parameter, the current selected data is available using `fv!selection`. This variable returns a map that contains each of the field aliases as the key and the unformatted value as the value. Since the alias is used for the key, aliases are required for each grouping and measure when using a link. See [Chart Configuration Using Records](Chart_Configuration_Using_Records.html#configure-chart-links) for an example of how to configure a link.

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

The following patterns include usage of the Pie Chart Configuration.

-   [Aggregate Data and Display in a Chart](/suite/help/25.3/recipe-aggregate-data-and-display-in-a-chart.html) (_Reports, Charts, Query Data, Records_): Aggregate data, specifically the total number of employees in a given department, to display in a pie chart.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...