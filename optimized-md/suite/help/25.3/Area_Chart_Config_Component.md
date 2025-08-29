---
source_url: https://docs.appian.com/suite/help/25.3/Area_Chart_Config_Component.html
original_path: Area_Chart_Config_Component.html
version: "25.3"
title: "Area Chart Configuration"
page_id: "Area_Chart_Config_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Area Chart Configuration

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

**a!areaChartConfig**(_primaryGrouping_, _secondaryGrouping_, _measures_, _sort_, _dataLimit_, _link_, _showIntervalsWithNoData_)

Contains configuration for how to display data in an area chart. See the [Area Chart Component](Area_Chart_Component.html) page for examples on using this configuration supporting function.

**See also**:

-   [Chart Configuration Using Records](Chart_Configuration_Using_Records.html)

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

Defines the field labels to display on the axis in the chart, configured using [a!grouping()](Grouping_Component.html).

 |
|

Secondary Grouping

 |

`secondaryGrouping`

 |

_Grouping_

 |

Defines the field labels to display in the series of stacked or overlapping data points in the chart, configured using [a!grouping()](Grouping_Component.html).

 |
|

Measures

 |

`measures`

 |

_List of Measure_

 |

Defines the numerical calculations for data in the chart, configured using [a!measure()](Measure_Component.html). If no measure is provided, a count of records shows as the measurement in the chart.

 |
|

Sort

 |

`sort`

 |

_List of SortInfo_

 |

Use [a!sortInfo()](fnc_system_a_sortinfo.html) to define a sort in ascending or descending order. Use the alias of any groupings or measures to sort by the values in the chart. Use a record field or related record field reference to sort by data that is not referenced in the chart.

 |
|

Data Limit

 |

`dataLimit`

 |

_Number (Integer)_

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
|

Show time intervals with no data

 |

`showIntervalsWithNoData`

 |

_Boolean_

 |

Determines whether the axis in the chart displays date or time values that do not have a value associated with them. For example, show January, February, and March, even if February has no data. This parameter is only available when a Date, Time, or Date and Time field is used as the primary grouping. Default: _false_.

 |

## Usage considerations

### Using a!areaChartConfig()

-   [a!areaChartConfig()](Area_Chart_Component.html) is always used within an area chart component.
-   This configuration is used when a record type is defined as the data source for an area chart.
-   If no measure is provided, the chart displays a count of records and the label displays as `Count of <primary key field name>`.

### Using groups and data limits

-   The _primaryGrouping_ is required to display data on the chart. The data values returned from the grouping display on the horizontal axis.
-   The _secondaryGrouping_ is optional; if this parameter is provided, multiple lines are shown for each unique value in the grouping and the label will display in the legend and/or tooltips if they are enabled.
-   The _dataLimit_ determines the total number of data points displayed in the chart. When both a primary and secondary grouping are provided, there is a data point for each unique combination of values: with 3 values in your primary grouping and 4 values in your secondary grouping, you will have 12 values on your chart.

### Using dynamic links and aliases

-   When a dynamic link is added to the _link_ parameter, the current selected data is available using `fv!selection`. This variable returns a map that contains each of the field aliases as the key and the unformatted value as the value. Since the alias is used for the key, aliases are required for each grouping and measure when using a link. See [Chart Configuration Using Records](Chart_Configuration_Using_Records.html#configure-chart-links) for an example of how to configure a link.

### Using the sort parameter

-   You can sort by the alias of any groupings or measures, or by any fields that are not directly referenced in the chart as long as they are of type Number (Integer), Number (Decimal), Date, Date and Time, Time, or Boolean. See [Chart Configuration Using Records](Chart_Configuration_Using_Records.html#stacked-column-chart-of-cases-by-status-and-priority) for an example of sorting by a field not referenced in the chart.
-   When configuring sort in design mode, you must use the alias of any groupings or measures to sort by the fields in the chart. In expression mode, you can use the alias or the field name if the alias is not provided.

### Using the showIntervalsWithNoData parameter

-   To use the _showIntervalsWithNoData_ parameter, the _primaryGrouping_ must be a Date, Time, or Date and Time field, and have a [time interval](Grouping_Component.html#using-the-interval-parameter) set to a value other than `"AUTO"`. For example:

    [![images/area-chart-show-no-data.png](images/area-chart-show-no-data.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img52)

    [![](images/area-chart-show-no-data.png)](#_)

-   When you configure your chart in design mode, the _showIntervalsWithNoData_ parameter will automatically be set to `true` when you select a time interval for your primary grouping.
-   When _showIntervalsWithNoData_ is `true`, the sort must be on the _primaryGrouping_ field.
-   The _dataLimit_ applies to this parameter, so any dates without data will be counted in the total number of data points that can be displayed in the chart.

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

The following patterns include usage of the Area Chart Configuration.

-   [Dynamically Show Sales by Product Category Compared to Total Sales](/suite/help/25.3/recipe-show-total-sales-compared-to-sales-per-category.html) (_Records, Reports, Charts, Filtering_): This pattern illustrates how to create an area chart that dynamically displays sales generated by product category compared to total sales.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...