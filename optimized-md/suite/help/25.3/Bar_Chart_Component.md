---
source_url: https://docs.appian.com/suite/help/25.3/Bar_Chart_Component.html
original_path: Bar_Chart_Component.html
version: "25.3"
title: "Bar Chart Component"
page_id: "Bar_Chart_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Bar Chart Component

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

**a!barChartField**( _label, instructions, categories, series, xAxisTitle, yAxisTitle, yAxisMin, yAxisMax, stacking, referenceLines, showLegend, showDataLabels, showTooltips, allowDecimalAxisLabels, labelPosition, helpTooltip, accessibilityText, showWhen, colorScheme, height, xAxisStyle, yAxisStyle, data, config, refreshAlways, refreshAfter, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, allowImageDownload, loadDataAsync_ )

Displays numerical data as horizontal bars. Use a bar chart to display several values at the same point in time.

**See also**:

-   [Configure Charts Using Records](Chart_Configuration_Using_Records.html)

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

Categories

 |

`categories`

 |

_Text Array_

 |

Text to display on the x-axis next to each bar.

 |
|

Series

 |

`series`

 |

_Chart Series Array_

 |

Array of data series created with [a!chartSeries()](Chart_Series_Component.html).

 |
|

X-Axis Title

 |

`xAxisTitle`

 |

_Text_

 |

Title for the independent (vertical) axis.

 |
|

Y-Axis Title

 |

`yAxisTitle`

 |

_Text_

 |

Title for the dependent (horizontal) axis.

 |
|

Min Y-Axis

 |

`yAxisMin`

 |

_Number (Decimal)_

 |

Determines the minimum displayed point on the horizontal axis.

 |
|

Max Y-Axis

 |

`yAxisMax`

 |

_Number (Decimal)_

 |

Determines the maximum displayed point on the horizontal axis.

 |
|

Stacking

 |

`stacking`

 |

_Text_

 |

Determines if series values display as separate bars, stacked within one bar to show the sum of series values, or stacked to a height of 100% to show the contribution to the whole within each category. Valid values: `"NONE"` (default), `"NORMAL"`, `"PERCENT_TO_TOTAL"`.

 |
|

Reference Lines

 |

`referenceLines`

 |

_Chart Reference Lines Array_

 |

Array of reference line values for each threshold to be defined on the chart. Configured using [a!chartReferenceLine()](Chart_Reference_Line_Component.html).

 |
|

Show legend

 |

`showLegend`

 |

_Boolean_

 |

Determines if a color legend displays below the chart. Default: `true`.

 |
|

Show data labels

 |

`showDataLabels`

 |

_Boolean_

 |

Determines if data values are displayed next to each bar. Default: `false`.

 |
|

Show tooltips

 |

`showTooltips`

 |

_Boolean_

 |

Determines if a tooltip displays the data value for a bar. Default: `true`.

 |
|

Allow decimal axis labels

 |

`allowDecimalAxisLabels`

 |

_Boolean_

 |

Allows dependent (horizontal) values to display as decimal numbers instead of integers. Default: `false`.

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

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: `true`.

 |
|

Color scheme

 |

`colorScheme`

 |

_Any type_

 |

Determines which color scheme to use in the chart. Use one of the following valid values: `"CLASSIC"`, `"MIDNIGHT"`, `"OCEAN"`, `"MOSS"`, `"BERRY"`, `"PARACHUTE"`, `"RAINFOREST"` (default), `"SUNSET"` or define a custom color scheme using [a!colorSchemeCustom](Chart_Custom_Color_Scheme_Component.html). See [Chart Color Scheme](Chart_Color_Scheme.html) for color scheme examples.

 |
|

Height

 |

`height`

 |

_Text_

 |

Determines the chart height. Valid values: `"MICRO"`, `"SHORT"`, `"MEDIUM"`, `"TALL"`, `"AUTO"` (default). See [Chart Heights](Chart_Heights.html) for guidance on using the `"MICRO"` size.

 |
|

X-Axis Style

 |

`xAxisStyle`

 |

_Text_

 |

Determines how to display the labels and axis separators for the X-Axis. Valid values: `"STANDARD"` (default), `"NONE"`.

 |
|

Y-Axis Style

 |

`yAxisStyle`

 |

_Text_

 |

Determines how to display the labels, axis separators, and grid lines for the Y-Axis. Valid values: `"STANDARD"` (default), `"MINIMAL"`, `"NONE"`.

 |
|

Data

 |

`data`

 |

_Any type_

 |

Reference to the record type used for the source of this chart. Can accept [a!recordData](fnc_system_recorddata.html) or a [record type reference](reference-records.html#reference-a-record-type).

 |
|

Chart Configuration

 |

`config`

 |

_BarChartConfig_

 |

Configures how to display data on the chart, including fields used for calculations and grouping, using [a!barChartConfig()](Bar_Chart_Config_Component.html).

 |
|

Refresh after each user interaction

 |

`refreshAlways`

 |

_Boolean_

 |

When true, chart data will be refreshed after each user interaction and each interval refresh. Default: `false`.

 |
|

Refresh after record action completes

 |

`refreshAfter`

 |

_List of Text String_

 |

Refreshes chart data each time a specified event completes. Valid values: `"RECORD_ACTION"`.

 |
|

Refresh after an interval of time

 |

`refreshInterval`

 |

_Number (Decimal)_

 |

How often chart data gets refreshed in minutes. When null, chart data will not be refreshed on an interval. Valid values: `"0.5"`, `"1"`, `"2"`, `"3"`, `"4"`, `"5"`, `"10"`, `"30"`, and `"60"`.

 |
|

Refresh after referenced variable changes

 |

`refreshOnReferencedVarChange`

 |

_Boolean_

 |

When true, chart data will be refreshed each time the value of any variable referenced in the _data_ parameter is updated. To refresh chart data when another variable that is not used in the _data_ parameter changes, use `refreshOnVarChange`. Default: `true`.

 |
|

Refresh after variable changes

 |

`refreshOnVarChange`

 |

_Any Type_

 |

Refreshes chart data each time any of these specific variables change. This allows you to refresh the chart data when a variable that is not referenced in the _data_ parameter is updated. You can define a single variable (e.g. `refreshOnVarChange: local!var1`) or a list of variables (e.g. `refreshOnVarChange: {local!var1, local!var2}`).

 |
|

Allow Image Download

 |

`allowImageDownload`

 |

_Boolean_

 |

Determines if the chart download button displays on the chart. Default: `false`.

 |
|

Load Chart Data in Background

 |

`loadDataAsync`

 |

_Boolean_

 |

When a record type is used as the chart's data source, set this to true to load the chart data independently from the rest of the interface. To asynchronously load data that is used in other components as well, instead of setting this to true, use [a!asyncVariable](fnc_evaluation_a_asyncvariable.html) to define a local variable and use the local variable in the data parameter. See [Asynchronous Loading](async_loading.html) for more information. Default: false.

 |

## Configuration

There are two ways to configure a bar chart:

1.  Set a record type as the data source and define fields to display on the chart.
2.  Perform your own query and define lists of data within the categories and series.

If you have a record type that uses a database as the source, or a record type with [data sync](about-data-sync.html) enabled, we recommend using the record type as the source of your chart. This configuration is easier because Appian will perform the query for you and display the results directly in the chart.

If your record type uses a web service as the source and does not have data sync enabled, use the _categories_ and _series_ to construct the chart manually.

### Using record data

Configuring a bar chart using a record type as the source requires using two parameters: _data_ and _config_. Once you provide a record type in the _data_ parameter and provide the fields in the _config_ parameter, the chart displays the results.

See [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html) for details on using a record type as the source. See [Build Reports from Records](report-with-records.html) for examples of reports created with different charts.

### Using categories and series

When using _categories_ and _series_, you must provide the list of data labels and values directly to these parameters.

#### Categories

-   The order of items in the _categories_ array determines the display order of categories on the chart with the left-most item in the array appearing at the top of the x-axis. The x-axis is the vertical axis since the bar data displays horizontally.
-   For each null or empty item in the array passed to _categories_, `[Category #]` displays on the x-axis with `#` as the index number in the _categories_ array of the null or empty item. For example, `[Category 1]`.
-   The index of each item in the _categories_ array must match with the index of its _series_ data value.

#### Series

-   A single _series_ item produces a bar for each _categories_ item with all bars the same color. The _data_ parameter should contain a list of values that match the size of the list for categories.
-   Use [a!chartSeries()](Chart_Series_Component.html) to create the Chart Series array.
-   If the _series_ argument has a non-null label value paired with a 0, null, or empty data value, the data value still displays in the legend.
-   If the _series_ argument has a null or empty label value paired with a non-null data value, the label value displays as `[Series #]` with `#` as the index number of the data value. For example, `[Series 1]`.
-   If a color is defined at the series level, it will show for the given scheme and move the color scheme colors to the next series.

#### Series and stacking

-   Multiple _series_ items when _stacking_ is `NONE` or null produces a set of bars for each _categories_ item - one bar for each _series_ item with each bar in that set a different color. The order of the label items determine the display order of the columns in each set with the first bar displays furthest from the axis.
-   Multiple _series_ items when _stacking_ is `NORMAL` produces a single bar for each categories item with each _series_ item displayed as a different segment of the bar in a different color, so they appear stacked on top of each other. The order of the label items determine the display order of the bar segments with the first label item appearing closest to the axis.
-   Multiple _series_ items when _stacking_ is `PERCENT_TO_TOTAL` also shows a single bar for each category, but bars have a total height of 100%. Each value shows the percent contribution to the total within each category.

## Usage considerations

### Chart data and stacking

-   If data values are small and less than a whole number, Appian recommends settings _allowDecimalAxisLabels_ to `true`.
-   If _data_ contains `a!recordData` or a record type reference, the categories and series parameters are ignored.
-   The Percent to Total stacking will update the axes and tooltips to show with a percentage. Also, the minimum and maximum y-axes values refer to percentages. For example, `yAxisMax: 50` would set the maximum y-axis at 50%.

### Charts height and background color

-   When the `"AUTO"` height is used, the chart will show as Medium height with 20 or less categories. If more categories are provided, the chart will expand in height to ensure categories are not cut off.
-   When the chart is placed in a colored card, the chart background will match the color of the card. Text labels and lines in the chart will also adjust if a dark background color is used. See the [SAIL Design System](sail/ux-charts.html#background-colors) for best practices on using charts with background colors.

### Chart refresh behavior

-   You can define `a!refreshVariable` parameters directly in the chart without creating additional local variables. The only exception being `refreshOnVarChange`, which refreshes the chart after a specific local variable has changed.
-   When you use a record type as the source of your chart, it's recommended to use the refresh parameters in the chart instead of using local variables and the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function. This is because the refresh behavior will automatically apply to the fields specified in the _data_ parameter of the chart.
-   If you're not using a record type as the source of your chart, use local variables and the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function to define refresh behavior since you won't use the _data_ parameter to configure your chart.

### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

### Using the loadDataAsync parameter

When you use a record type as the chart's data source, you can set the _loadDataAsync_ parameter to `true` to allow the interface to load without waiting for the chart data. A placeholder will display in the chart's place, enabling users to interact with other parts of the interface while the chart's data loads in the background.

If the chart's data is reused elsewhere in the interface, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to create an async variable instead. See [Asynchronous Loading](async_loading.html) for more information on choosing the right method.

**Note:**  In [offline mobile](offline-mobile-overview.html) and [portal](portals-home.html) interfaces, charts that are configured to load asynchronously will load with the rest of the interface, instead of loading in the background.

## Examples

The examples below demonstrate how to configure your charts using categories and series. For examples on using record data, see [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html).

### Single series bar chart with label, y-axis title, and no legend

Use the interactive editor below to test out the example code.

### Multiple series bar chart with label, y-axis title, and no stacking

Use the interactive editor below to test out the example code.

### Multiple series bar chart with label, y-axis title, and stacking

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!barChartField\_21r4](/suite/help/25.3/Bar_Chart_Component_21r4.html) |
Fixed existing behavior in stacked bar charts so that the values in the stacked bars display in the same order as the items in the legend.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Bar Chart Component.

-   [Aggregate Data on a Date or Date and Time Field](/suite/help/25.3/recipe-aggregate-data-on-a-date-or-date-time-field.html) (_Reports, Query Data, Grids, Records_): Aggregate data, specifically the total number of employees by date.

-   [Aggregate Data using a Filter and Display in a Chart](/suite/help/25.3/recipe-aggregate-data-using-a-filter-and-display-in-a-chart.html) (_Reports, Charts, Query Data, Filtering, Records_): Aggregate data, specifically the total number of employees for each title in the Engineering department, to display in a bar chart.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Sales by Region](/suite/help/25.3/recipe-show-sales-by-region.html) (_Records, Reports, Charts_): This pattern illustrates how to create a bar chart that shows sales per sales region.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...