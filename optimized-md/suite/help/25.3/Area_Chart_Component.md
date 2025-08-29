---
source_url: https://docs.appian.com/suite/help/25.3/Area_Chart_Component.html
original_path: Area_Chart_Component.html
version: "25.3"
title: "Area Chart Component"
page_id: "Area_Chart_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Area Chart Component

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

**a!areaChartField**( _label, instructions, categories, series, xAxisTitle, yAxisTitle, yAxisMin, yAxisMax, stacking, referenceLines, showLegend, showDataLabels, showTooltips, allowDecimalAxisLabels, labelPosition, helpTooltip, showWhen, connectNulls, accessibilityText, colorScheme, height, xAxisStyle, yAxisStyle, data, config, refreshAlways, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, refreshAfter, allowImageDownload, loadDataAsync_ )

Displays a series of numerical data as points connected by lines with the area between the line and axis shaded. Use an area chart to visualize trends over time and compare multiple values. If specific values are more important than the trend, consider using a [column chart](Column_Chart_Component.html).

**See also**:

-   [Chart Color Schemes](Chart_Color_Scheme.html)
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

_List of Variant_

 |

Text, Date, or Date and Time array to display on the x-axis below each data point. If you are using an array of Date or Date and Time, make sure the data is sorted prior to using it as a category.

 |
|

Series

 |

`series`

 |

_List of AreaChartSeries_

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

Title for the independent (horizontal) axis.

 |
|

Y-Axis Title

 |

`yAxisTitle`

 |

_Text_

 |

Title for the dependent (vertical) axis.

 |
|

Min Y-Axis

 |

`yAxisMin`

 |

_Number (Decimal)_

 |

Determines the minimum displayed point on the vertical axis.

 |
|

Max Y-Axis

 |

`yAxisMax`

 |

_Number (Decimal)_

 |

Determines the maximum displayed point on the vertical axis.

 |
|

Stacking

 |

`stacking`

 |

_Text_

 |

Determines if series values display as stacked, or stacked to a height of 100% to show the contribution to the whole, or overlapping. Valid values: `"NORMAL"` (default), `"PERCENT_TO_TOTAL"`, `"NONE"`.

 |
|

Reference Lines

 |

`referenceLines`

 |

_List of Variant_

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

Determines if data values are displayed next to each data point. Default: `false`.

 |
|

Show tooltips

 |

`showTooltips`

 |

_Boolean_

 |

Determines if a tooltip displays the data value for each data point. Default: `true`.

 |
|

Allow decimal axis labels

 |

`allowDecimalAxisLabels`

 |

_Boolean_

 |

Allows dependent (vertical) values to display as decimal numbers instead of integers. Default: `false`.

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

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: `true`.

 |
|

Connect Null Data Points

 |

`connectNulls`

 |

_Boolean_

 |

Determines whether to connect an area across null points, or render a gap between the two points on either side of the null. Default: `false`.

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

Determines the chart height. Valid values: `"MICRO"`, `"SHORT"`, `"MEDIUM"` (default), `"TALL"`. See [Chart Heights](Chart_Heights.html) for guidance on using the `"MICRO"` size.

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

_AreaChartConfig_

 |

Configures how to display data on the chart, including fields used for calculations and grouping, using [a!areaChartConfig()](Area_Chart_Config_Component.html). Only applies when using a record type as a source in the _data_ parameter.

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

Refresh after record action completes

 |

`refreshAfter`

 |

_List of Text String_

 |

Refreshes chart data each time a specified event completes. Valid values: `"RECORD_ACTION"`.

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

There are two ways to configure an area chart:

1.  Set a record type as the data source and define fields to display on the chart.
2.  Perform your own query and define lists of data within the categories and series.

If you have a record type that uses a database as the source, or a record type with [data sync](about-data-sync.html) enabled, we recommend using the record type as the source of your chart. This configuration is easier because Appian will perform the query for you and display the results directly in the chart.

If your record type uses a web service as the source and does not have data sync enabled, use the _categories_ and _series_ to construct the chart manually.

### Using record data

Configuring an area chart using a record type as the source requires using two parameters: _data_ and _config_. Once you provide a record type in the _data_ parameter and provide the fields in the _config_ parameter, the chart displays the results.

See [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html) for details on using a record type as the source. See [Build Reports from Records](report-with-records.html) for examples of reports created with different charts.

### Using categories and series

When using _categories_ and _series_, you must provide the list of data labels and values directly to these parameters.

#### Categories

-   The order of items in the _categories_ array determines the display order of categories on the chart with the left-most item in the array appearing on the far left of the x-axis.
-   For each null or empty item in the array passed to _categories_, `[Category #]` displays on the x-axis with `#` as the index number in the _categories_ array of the null or empty item. For example, `[Category 1]`.
-   The index of each item in the _categories_ array must match with the index of its _series_ data value.

#### Series

-   A single _Series_ item produces a single line with line points for each _categories_ item. Multiple _series_ items produce multiple lines with one line for each series label item displayed in a distinct color.
-   Use [a!chartSeries()](Chart_Series_Component.html) to create the Chart Series array.
-   If a series data value is greater than the _Max Y-Axis_ value or less than the _Min Y-Axis_ value, the line line and shaded area will not appear on the chart.
-   If the _series_ argument has a non-null label value paired with a 0, null, or empty data value, the data value still displays in the legend.
-   If the _series_ argument has a null or empty label value paired with a non-null data value, the label value displays as `[Series #]` with `#` as the index number of the data value. For example, `[Series 1]`.

## Usage considerations

### Using the stacking parameter

-   The stacking parameter has three possible values:
    -   `"NONE"` is best for showing an overlapping area chart. This will shade each line from its vertical value to the common baseline (zero). Use this value when you want to compare two values. If you need to compare more than two values, consider using a [line chart](Line_Chart_Component.html) instead since it may be hard for users to read multiple overlapping areas. See [Area charts vs. line charts](#area-charts-vs-line-charts) for other considerations.

    -   `"NORMAL"` is best for showing part-to-whole relationships. This will stack each value on top of each other so the topmost line corresponds to the total of all values. Use this value when you want to see a breakdown of a total.

    -   `"PERCENT_TO_TOTAL"` is best for showing the distribution of categories as part of a whole. The Y-axis will display values starting from 0% (the baseline) to 100%. Use this value when the cumulative total is unimportant.

        **Note:**  If you've set a _Min Y-Axis_ or _Max Y-Axis_ value, the value will correspond to a percentage. For example, if you set a _Min Y-Axis_ of 20, it will display as 20%.

### Area charts vs. line charts

-   Area charts are most similar to [line charts](Line_Chart_Component.html) in that they are great for showing trends over time. So when should you choose an area chart or a line chart?
    -   Consider using an area chart to display large differences between multiple data points, or when you need to show how multiple data points relate to a total value.
    -   Consider using a line chart to show multiple data comparisons over time.
-   For more information on which type of chart to use in your reports, see [Charts design guidance](sail/ux-charts.html).

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

## Example

_To experiment with examples, copy and paste the expression into an interface object._

The examples below demonstrate how to configure your charts using categories and series. For examples on using record data, see [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html).

### Multiple series area chart with normal stacking

```
1
2
3
4
5
6
7
8
9
10
11
12
13
{
  a!areaChartField(
    label: "Cases by Month",
    labelPosition: "ABOVE",
    categories: {"Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan", "Feb"},
    series: {
      a!chartSeries(label: "Met SLA", data: {72, 91, 93, 95, 92, 99, 98, 99, 79, 83, 90, 99}),
      a!chartSeries(label: "Missed SLA", data: {12, 55, 26, 61, 30, 29, 49, 37, 62, 51, 33, 29})
    },
    stacking: "NORMAL",
    colorScheme: "SUNSET",
  )
}
```

Displays the following:

![Area chart with normal stacking](images/example-1-area-chart.png)

### Multiple series area chart with percent to total stacking

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
{
  a!areaChartField(
    label: "New Customers by Industry",
    labelPosition: "ABOVE",
    categories: {"2012", "2013", "2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022"},
    series: {
      a!chartSeries(label: "Retail", data: {69, 54, 81, 74, 73, 64, 74, 52, 64, 63, 72}),
      a!chartSeries(label: "Healthcare", data: {28, 29, 39, 34, 40, 45, 47, 51, 62, 66, 69}),
      a!chartSeries(label: "Real Estate", data: {2, 5, 6, 9, 23, 9, 17, 17, 62, 51, 50}),
      a!chartSeries(label: "Food Services", data: {1, 2, 2, 7, 1, 2, 10, 7, 22, 21, 29})
    },
    stacking: "PERCENT_TO_TOTAL",
    colorScheme: "CLASSIC"
  )
}
```

Displays the following:

![Area chart with percent to toal stacking](images/example-2-area-chart.png)

### Multiple series area chart with no stacking

To learn how to create this area chart, see the [Dynamically Show Sales by Product Category Compared to Total Sales](recipe-show-total-sales-compared-to-sales-per-category.html) pattern.

![Area chart with no stacking](images/example-3-area-chart.png)

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

The following patterns include usage of the Area Chart Component.

-   [Dynamically Show Sales by Product Category Compared to Total Sales](/suite/help/25.3/recipe-show-total-sales-compared-to-sales-per-category.html) (_Records, Reports, Charts, Filtering_): This pattern illustrates how to create an area chart that dynamically displays sales generated by product category compared to total sales.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...