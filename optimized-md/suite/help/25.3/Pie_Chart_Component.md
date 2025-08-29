---
source_url: https://docs.appian.com/suite/help/25.3/Pie_Chart_Component.html
original_path: Pie_Chart_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Pie Chart Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Configure a Column Chart in Appian

This video from an [Academy Online course on configuring charts, grids, and KPIs in reports](https://academy.appian.com/#/online-courses/25483fc1-53be-403b-8035-16786160b99e) explains how to quickly add and configure a pie chart component.

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-charts.html">SAIL Design System guidance available for Charts</a><p class="ds-release-notice-p">Every chart should tell a story. What does yours say? Learn how to build rich reporting dashboards that provide users with visualizations of their data.</p></td></tr></tbody></table>

## Function

**a!pieChartField**( _label, instructions, series, showDataLabels, showTooltips, showAsPercentage, labelPosition, helpTooltip, accessibilityText, showWhen, colorScheme, style, seriesLabelStyle, height, data, config, refreshAlways, refreshAfter, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, allowImageDownload, loadDataAsync_ )

Displays numerical data as slices of a single circle. Use a pie chart to graphically display parts of a whole.

**See also**:

-   [Configure Charts Using Records](Chart_Configuration_Using_Records.html)
-   [Chart Color Schemes](Chart_Color_Scheme.html)

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

Series

 |

`series`

 |

_List of PieChartSeries_

 |

Array of data series created with [a!chartSeries()](Chart_Series_Component.html).

 |
|

Show data labels

 |

`showDataLabels`

 |

_Boolean_

 |

Determines if data values are displayed with each pie slice. Default: `false`.

 |
|

Show tooltips

 |

`showTooltips`

 |

_Boolean_

 |

Determines if a tooltip displays the data value for a pie slice. Default: `false`.

 |
|

Show as percentage

 |

`showAsPercentage`

 |

_Boolean_

 |

Determines if the data is shown as a percentage. Default: `false`.

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

Style

 |

`style`

 |

_Text_

 |

Determines if the chart displays as a full pie or as a donut. Valid values: `"PIE"` (default), `"DONUT"`.

 |
|

Series Label Style

 |

`seriesLabelStyle`

 |

_Text_

 |

Determines where to display the series labels. Valid values: `"ON_CHART"` (default), `"LEGEND"`, `"NONE"`.

 |
|

Height

 |

`height`

 |

_Text_

 |

Determines the chart height. Valid values: `"SHORT"`, `"MEDIUM"` (default), `"TALL"`.

 |
|

Data

 |

`data`

 |

_Any type_

 |

Reference to the record type used for the source of this chart. Can accept a!recordData or a Record Type Reference.

 |
|

Chart Configuration

 |

`config`

 |

_PieChartConfig_

 |

Configures how to display data on the chart, including fields used for calculations and grouping, using [a!pieChartConfig()](Pie_Chart_Config_Component.html).

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

There are two ways to configure a pie chart:

1.  Set a record type as the data source and define fields to display on the chart.
2.  Perform your own query and define lists of data within the series.

If you have a record type that uses a database as the source, or a record type with [data sync](about-data-sync.html) enabled, we recommend using the record type as the source of your chart. This configuration is easier because Appian will perform the query for you and display the results directly in the chart.

If your record type uses a web service as the source and does not have data sync enabled, use the _categories_ and _series_ to construct the chart manually.

### Using record data

Configuring a pie chart using a record type as the source requires using two parameters: _data_ and _config_. Once you provide a record type in the _data_ parameter and provide the fields in the _config_ parameter, the chart displays the results.

See [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html) for details on using a record type as the source. See [Build Reports from Records](report-with-records.html) for examples of reports created with different charts.

### Using series

When using _series_, you must provide the list of data labels and values directly to the parameter using a list of `a!chartSeries()`.

-   The labels and data arguments in the _series_ are shown in the data labels and tooltips (if enabled).
-   If a _series_ has a non-null label value paired with a 0, null, or empty data value, the data value is treated as 0 and is still displayed if _Show data labels_ is set to `true`. For example, `Americas: 0`.
-   If a _series_ argument has a null or empty label paired with a non-null data value, the label is displayed as `[Series #]` with `#` as the label's index number in the _series_ if _Show data labels_ is set to `true`. For example, `[Series 1]: 3`.
-   If a _series_ argument has both a null or empty label paired with a 0, null, or empty data value, the above behaviors are combined and the following is displayed if _Show data labels_ is set to `true`: `[Series 1]: 0`.

## Usage considerations

### Chart legends

-   If the series label style is set to `LEGEND` and data labels are displayed, the data labels are shown in the legend in parentheses. For example, `West Region (25%)`.
-   Using the `LEGEND` or `NONE` series label styles will ensure consistent sizing of the pie for any columns of the same width. When `ON_CHART` is used for the series label style, the pie changes size based on the length of the series label.
-   The `ON_CHART` style will usually use screen space more effectively than the `LEGEND`. Since showing the legend guarantees the same size pies across columns of the same width, there may be extra whitespace if a short label is used in the legend.
-   If the legend is displayed, it will show below the pie in `MEDIUM` width columns or narrower; in wider columns the legend will show adjacent to the chart. The legend always displays below the pie on phones.

### Chart data and values

-   If a data value is negative, the data label shows it as negative (for example `-20`), but it still displays as a pie slice. To avoid any confusion, negative values should only be used with bar, column, and line charts.
-   Since pie chart values do not have an x-axis for reference, Appian recommends setting _Show data labels_ as `true`.
-   When values are shown as percentages, they are rounded to one decimal place. If values in the second decimal place are 5 or higher, the first decimal number is rounded up. If the percentage is less than 0.1%, the chart will not render a slice for the section.
-   If _data_ contains `a!recordData` or a record type reference, the _series_ parameter is ignored.
-   When you use a record type as a source for your chart, you can use a!measure() to perform a calculation on a single field. If you need to perform multiple calculations within the same chart, use _series_ to configure your chart instead of _data_ and _config_.

### Chart lines and background colors

When the chart is placed in a colored card, the chart background will match the color of the card. Text labels and lines in the chart will also adjust if a dark background color is used. See the [SAIL Design System](sail/ux-charts.html#background-colors) for best practices on using charts with background colors.

### Chart refresh behavior

-   You can define `a!refreshVariable` parameters directly in the chart without creating additional local variables. The only exception being `refreshOnVarChange`, which refreshes the chart after a specific local variable has changed.
-   When you use a record type as the source of your chart, it's recommended to use the refresh parameters in the chart instead of using local variables and the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function. This is because the refresh behavior will automatically apply to the fields specified in the _data_ parameter of the chart.
-   If you're not using a record type as the source of your chart, it's recommended to use local variables and the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function to define refresh behavior since you won't use the _data_ parameter to configure your chart.

### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

### Using the loadDataAsync parameter

When you use a record type as the chart's data source, you can set the _loadDataAsync_ parameter to `true` to allow the interface to load without waiting for the chart data. A placeholder will display in the chart's place, enabling users to interact with other parts of the interface while the chart's data loads in the background.

If the chart's data is reused elsewhere in the interface, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to create an async variable instead. See [Asynchronous Loading](async_loading.html) for more information on choosing the right method.

**Note:**  In [offline mobile](offline-mobile-overview.html) and [portal](portals-home.html) interfaces, charts that are configured to load asynchronously will load with the rest of the interface, instead of loading in the background.

## Examples

The examples below demonstrate how to configure your charts using categories and series. For examples on using record data, see [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html).

### Pie chart with label, instructions, and data labels

Use the interactive editor below to test out the example code.

### Pie chart with label, instructions, data labels, tooltips, and percentage

Use the interactive editor below to test out the example code.

### Donut style chart with legend and colors assigned in series

Use the interactive editor below to test out the example code.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Incompatible |  |
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

The following patterns include usage of the Pie Chart Component.

-   [Aggregate Data and Conditionally Display in a Chart or Grid](/suite/help/25.3/recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) (_Reports, Charts, Query Data, Grids, Records_): Aggregate data and conditionally display it in a pie chart or grid. In this pattern, we will calculate the total number of employees in each department and display it in a pie chart and a read-only grid. Then, we'll use a link field to conditionally display each component.

-   [Aggregate Data and Display in a Chart](/suite/help/25.3/recipe-aggregate-data-and-display-in-a-chart.html) (_Reports, Charts, Query Data, Records_): Aggregate data, specifically the total number of employees in a given department, to display in a pie chart.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...