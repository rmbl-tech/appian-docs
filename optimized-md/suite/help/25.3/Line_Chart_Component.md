---
source_url: https://docs.appian.com/suite/help/25.3/Line_Chart_Component.html
original_path: Line_Chart_Component.html
version: "25.3"
title: "Line Chart Component"
page_id: "Line_Chart_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Line Chart Component

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

**a!lineChartField**( _label, instructions, categories, series, xAxisTitle, yAxisTitle, yAxisMin, yAxisMax, referenceLines, showLegend, showDataLabels, showTooltips, allowDecimalAxisLabels, labelPosition, helpTooltip, showWhen, connectNulls, accessibilityText, colorScheme, height, xAxisStyle, yAxisStyle, data, config, refreshAlways, refreshAfter, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, allowImageDownload, loadDataAsync_ )

Displays a series of numerical data as points connected by lines. Use a line chart to visualize trends of data that changes over time. This component can display thousands of data points without scrolling.

Users can easily find trends in their data by zooming in to a selected area to see additional details. See [Display Date and Time Fields in a Line Chart](Line_Chart_Component.html#display-date-and-time-fields-in-a-line-chart) example below.

When the chart shows date or date and time fields, the x-axis labels are formatted to match the end user's time zone and conveniently resize to avoid clutter.

If specific values are more important than the trend, consider using a [column chart](Column_Chart_Component.html).

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

_List of LineChartSeries_

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

Determines whether to connect a graph line across null points, or render a gap between the two points on either side of the null. Default: `false`.

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

_LineChartConfig_

 |

Configures how to display data on the chart, including fields used for calculations and grouping, using [a!lineChartConfig()](Line_Chart_Config_Component.html).

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

There are two ways to configure a line chart:

1.  Set a record type as the data source and define fields to display on the chart.
2.  Perform your own query and define lists of data within the categories and series.

If you have a record type that uses a database as the source, or a record type with [data sync](about-data-sync.html) enabled, we recommend using the record type as the source of your chart. This configuration is easier because Appian will perform the query for you and display the results directly in the chart.

If your record type uses a web service as the source and does not have data sync enabled, use the _categories_ and _series_ to construct the chart manually.

### Using record data

Configuring a line chart using a record type as the source requires using two parameters: _data_ and _config_. Once you provide a record type in the _data_ parameter and provide the fields in the _config_ parameter, the chart displays the results.

See [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html) for details on using a record type as the source. See [Build Reports from Records](report-with-records.html) for examples of reports created with different charts.

### Using categories and series

When using _categories_ and _series_, you must provide the list of data labels and values directly to these parameters.

#### Categories

-   The order of items in the _categories_ array determines the display order of categories on the chart with the left-most item in the array appearing on the far left of the x-axis.
-   For each null or empty item in the array passed to _categories_, `[Category #]` displays on the x-axis with `#` as the index number in the _categories_ array of the null or empty item. For example, `[Category 1]`.
-   The index of each item in the _categories_ array must match with the index of its _series_ data value.

#### Series

-   A single _Series_ item produces a single line with line points for each _categories_ item. Multiple _series_ items produce multiple lines with one line for each series label item displayed in a distinct color and line points for each _categories_ item with a different data marker shape (for example, square, circle, diamond) for each line.
-   Use [a!chartSeries()](Chart_Series_Component.html) to create the Chart Series array.
-   If a series data value is greater than the _Max Y-Axis_ value or less than the _Min Y-Axis_ value, the line continues off the chart, but the line point does not display.
-   If the _series_ argument has a non-null label value paired with a 0, null, or empty data value, the data value still displays in the legend.
-   If the _series_ argument has a null or empty label value paired with a non-null data value, the label value displays as `[Series #]` with `#` as the index number of the data value. For example, `[Series 1]`.

## Usage considerations

### Chart data

-   If data values are small and less than a whole number, Appian recommends settings _allowDecimalAxisLabels_ to `true`.
-   If _data_ contains `a!recordData` or a record type reference, the _categories_ and _series_ parameters are ignored.

### Chart line and background color

When the chart is placed in a colored card, the chart background will match the color of the card. Text labels and lines in the chart will also adjust if a dark background color is used. See the [SAIL Design System](sail/ux-charts.html#background-colors) for best practices on using charts with background colors.

### Chart refresh behavior

-   You can define `a!refreshVariable` parameters directly in the chart without creating additional local variables. The only exception being `refreshOnVarChange`, which refreshes the chart after a specific local variable has changed.
-   When you use a record type as the source of your chart, use the refresh parameters in the chart instead of using local variables and the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function. This is because the refresh behavior will automatically apply to the fields specified in the _data_ parameter of the chart.
-   If you're not using a record type as the source of your chart, it's recommended to use local variables and the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function to define refresh behavior since you won't use the _data_ parameter to configure your chart.

### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

### Using the loadDataAsync parameter

When you use a record type as the chart's data source, you can set the _loadDataAsync_ parameter to `true` to allow the interface to load without waiting for the chart data. A placeholder will display in the chart's place, enabling users to interact with other parts of the interface while the chart's data loads in the background.

If the chart's data is reused elsewhere in the interface, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to create an async variable instead. See [Asynchronous Loading](async_loading.html) for more information on choosing the right method.

**Note:**  In [offline mobile](offline-mobile-overview.html) and [portal](portals-home.html) interfaces, charts that are configured to load asynchronously will load with the rest of the interface, instead of loading in the background.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

The examples below demonstrate how to configure your charts using categories and series. For examples on using record data, see [Chart Configuration Using Record Data](Chart_Configuration_Using_Records.html).

### Single series line chart with label and instructions

```
1
2
3
4
5
6
7
8
a!lineChartField(
  label: "Annual Conference Registrants",
  instructions: "The number of registrations received for the annual conference each month.",
  categories: {"Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan", "Feb"},
  series: {
    a!chartSeries(label: "Sales", data: {72, 91, 93, 95, 92, 99, 98, 99, 79, 83, 90, 99})
  }
)
```

Displays the following:

![screenshot of a line chart with a single series](images/Linechart_single_75.png)

### Display date and time fields in a line chart

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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
a!localVariables(
/* ~~~ Open vs. Closed Cases ~~~ /
/ Query for the count of Closed cases, aggregating by the date they were closed on. */
local!resolvedByDate: a!dataSubset(
data: {
{created_on: datetime(2019, 1, 1, 0, 0, 0, 0), id_count: 50},
{created_on: datetime(2019, 1, 2, 0, 0, 0, 0), id_count: 55},
{created_on: datetime(2019, 1, 3, 0, 0, 0, 0), id_count: 52},
{created_on: datetime(2019, 1, 4, 0, 0, 0, 0), id_count: 50},
{created_on: datetime(2019, 1, 5, 0, 0, 0, 0), id_count: 55},
{created_on: datetime(2019, 1, 6, 0, 0, 0, 0), id_count: 56},
{created_on: datetime(2019, 1, 7, 0, 0, 0, 0), id_count: 58},
{created_on: datetime(2019, 1, 8, 0, 0, 0, 0), id_count: 52},
{created_on: datetime(2019, 1, 9, 0, 0, 0, 0), id_count: 60},
{created_on: datetime(2019, 1, 10, 0, 0, 0, 0), id_count: 65},
{created_on: datetime(2019, 1, 11, 0, 0, 0, 0), id_count: 66},
{created_on: datetime(2019, 1, 12, 0, 0, 0, 0), id_count: 67},
{created_on: datetime(2019, 1, 13, 0, 0, 0, 0), id_count: 70},
{created_on: datetime(2019, 1, 14, 0, 0, 0, 0), id_count: 72},
{created_on: datetime(2019, 1, 15, 0, 0, 0, 0), id_count: 69},
{created_on: datetime(2019, 1, 16, 0, 0, 0, 0), id_count: 75},
{created_on: datetime(2019, 1, 17, 0, 0, 0, 0), id_count: 73},
{created_on: datetime(2019, 1, 18, 0, 0, 0, 0), id_count: 77},
{created_on: datetime(2019, 1, 19, 0, 0, 0, 0), id_count: 80},
{created_on: datetime(2019, 1, 20, 0, 0, 0, 0), id_count: 76},
{created_on: datetime(2019, 1, 21, 0, 0, 0, 0), id_count: 78},
{created_on: datetime(2019, 1, 22, 0, 0, 0, 0), id_count: 80},
{created_on: datetime(2019, 1, 23, 0, 0, 0, 0), id_count: 77},
{created_on: datetime(2019, 1, 24, 0, 0, 0, 0), id_count: 75},
{created_on: datetime(2019, 1, 25, 0, 0, 0, 0), id_count: 80},
{created_on: datetime(2019, 1, 26, 0, 0, 0, 0), id_count: 83},
{created_on: datetime(2019, 1, 27, 0, 0, 0, 0), id_count: 86},
{created_on: datetime(2019, 1, 28, 0, 0, 0, 0), id_count: 83},
{created_on: datetime(2019, 1, 29, 0, 0, 0, 0), id_count: 88},
{created_on: datetime(2019, 1, 30, 0, 0, 0, 0), id_count: 90},
{created_on: datetime(2019, 1, 31, 0, 0, 0, 0), id_count: 94},
{created_on: datetime(2019, 2, 1, 0, 0, 0, 0), id_count: 93},
{created_on: datetime(2019, 2, 2, 0, 0, 0, 0), id_count: 100},
{created_on: datetime(2019, 2, 3, 0, 0, 0, 0), id_count: 99},
{created_on: datetime(2019, 2, 4, 0, 0, 0, 0), id_count: 105},
{created_on: datetime(2019, 2, 5, 0, 0, 0, 0), id_count: 106},
{created_on: datetime(2019, 2, 6, 0, 0, 0, 0), id_count: 108},
{created_on: datetime(2019, 2, 7, 0, 0, 0, 0), id_count: 105},
{created_on: datetime(2019, 2, 8, 0, 0, 0, 0), id_count: 104},
{created_on: datetime(2019, 2, 9, 0, 0, 0, 0), id_count: 109},
{created_on: datetime(2019, 2, 10, 0, 0, 0, 0), id_count: 108},
{created_on: datetime(2019, 2, 11, 0, 0, 0, 0), id_count: 111},
{created_on: datetime(2019, 2, 12, 0, 0, 0, 0), id_count: 115},
{created_on: datetime(2019, 2, 13, 0, 0, 0, 0), id_count: 112},
{created_on: datetime(2019, 2, 14, 0, 0, 0, 0), id_count: 118},
{created_on: datetime(2019, 2, 15, 0, 0, 0, 0), id_count: 119},
{created_on: datetime(2019, 2, 16, 0, 0, 0, 0), id_count: 117},
{created_on: datetime(2019, 2, 17, 0, 0, 0, 0), id_count: 120},
{created_on: datetime(2019, 2, 18, 0, 0, 0, 0), id_count: 122},
{created_on: datetime(2019, 2, 19, 0, 0, 0, 0), id_count: 124},
{created_on: datetime(2019, 2, 20, 0, 0, 0, 0), id_count: 123},
{created_on: datetime(2019, 2, 21, 0, 0, 0, 0), id_count: 125},
{created_on: datetime(2019, 2, 22, 0, 0, 0, 0), id_count: 25},
{created_on: datetime(2019, 2, 23, 0, 0, 0, 0), id_count: 127},
{created_on: datetime(2019, 2, 24, 0, 0, 0, 0), id_count: 126},
{created_on: datetime(2019, 2, 25, 0, 0, 0, 0), id_count: 129},
{created_on: datetime(2019, 2, 26, 0, 0, 0, 0), id_count: 130},
{created_on: datetime(2019, 2, 27, 0, 0, 0, 0), id_count: 128},
{created_on: datetime(2019, 2, 28, 0, 0, 0, 0), id_count: 131},
{created_on: datetime(2019, 3, 1, 0, 0, 0, 0), id_count: 135},
{created_on: datetime(2019, 3, 2, 0, 0, 0, 0), id_count: 132},
{created_on: datetime(2019, 3, 3, 0, 0, 0, 0), id_count: 136},
{created_on: datetime(2019, 3, 4, 0, 0, 0, 0), id_count: 138},
{created_on: datetime(2019, 3, 5, 0, 0, 0, 0), id_count: 134},
{created_on: datetime(2019, 3, 6, 0, 0, 0, 0), id_count: 137},
{created_on: datetime(2019, 3, 7, 0, 0, 0, 0), id_count: 135},
{created_on: datetime(2019, 3, 8, 0, 0, 0, 0), id_count: 137},
{created_on: datetime(2019, 3, 9, 0, 0, 0, 0), id_count: 135},
{created_on: datetime(2019, 3, 10, 0, 0, 0, 0), id_count: 138},
{created_on: datetime(2019, 3, 11, 0, 0, 0, 0), id_count: 137},
{created_on: datetime(2019, 3, 12, 0, 0, 0, 0), id_count: 139},
{created_on: datetime(2019, 3, 13, 0, 0, 0, 0), id_count: 140},
{created_on: datetime(2019, 3, 14, 0, 0, 0, 0), id_count: 136},
{created_on: datetime(2019, 3, 15, 0, 0, 0, 0), id_count: 142},
{created_on: datetime(2019, 3, 16, 0, 0, 0, 0), id_count: 146},
{created_on: datetime(2019, 3, 17, 0, 0, 0, 0), id_count: 144},
{created_on: datetime(2019, 3, 18, 0, 0, 0, 0), id_count: 146},
{created_on: datetime(2019, 3, 19, 0, 0, 0, 0), id_count: 150},
{created_on: datetime(2019, 3, 20, 0, 0, 0, 0), id_count: 146},
{created_on: datetime(2019, 3, 21, 0, 0, 0, 0), id_count: 146},
{created_on: datetime(2019, 3, 22, 0, 0, 0, 0), id_count: 148},
{created_on: datetime(2019, 3, 23, 0, 0, 0, 0), id_count: 145},
{created_on: datetime(2019, 3, 24, 0, 0, 0, 0), id_count: 147},
{created_on: datetime(2019, 3, 25, 0, 0, 0, 0), id_count: 145}
}
),

/* Query for the count of Open cases, aggregating by the date they were created on. */
local!openByDate: a!dataSubset(
data: {
{created_on: datetime(2019, 1, 1, 0, 0, 0, 0), id_count: 220},
{created_on: datetime(2019, 1, 2, 0, 0, 0, 0), id_count: 220},
{created_on: datetime(2019, 1, 3, 0, 0, 0, 0), id_count: 221},
{created_on: datetime(2019, 1, 4, 0, 0, 0, 0), id_count: 224},
{created_on: datetime(2019, 1, 5, 0, 0, 0, 0), id_count: 225},
{created_on: datetime(2019, 1, 6, 0, 0, 0, 0), id_count: 227},
{created_on: datetime(2019, 1, 7, 0, 0, 0, 0), id_count: 229},
{created_on: datetime(2019, 1, 8, 0, 0, 0, 0), id_count: 233},
{created_on: datetime(2019, 1, 9, 0, 0, 0, 0), id_count: 229},
{created_on: datetime(2019, 1, 10, 0, 0, 0, 0), id_count: 231},
{created_on: datetime(2019, 1, 11, 0, 0, 0, 0), id_count: 229},
{created_on: datetime(2019, 1, 12, 0, 0, 0, 0), id_count: 222},
{created_on: datetime(2019, 1, 13, 0, 0, 0, 0), id_count: 224},
{created_on: datetime(2019, 1, 14, 0, 0, 0, 0), id_count: 222},
{created_on: datetime(2019, 1, 15, 0, 0, 0, 0), id_count: 218},
{created_on: datetime(2019, 1, 16, 0, 0, 0, 0), id_count: 223},
{created_on: datetime(2019, 1, 17, 0, 0, 0, 0), id_count: 220},
{created_on: datetime(2019, 1, 18, 0, 0, 0, 0), id_count: 216},
{created_on: datetime(2019, 1, 19, 0, 0, 0, 0), id_count: 217},
{created_on: datetime(2019, 1, 20, 0, 0, 0, 0), id_count: 215},
{created_on: datetime(2019, 1, 21, 0, 0, 0, 0), id_count: 212},
{created_on: datetime(2019, 1, 22, 0, 0, 0, 0), id_count: 210},
{created_on: datetime(2019, 1, 23, 0, 0, 0, 0), id_count: 215},
{created_on: datetime(2019, 1, 24, 0, 0, 0, 0), id_count: 218},
{created_on: datetime(2019, 1, 25, 0, 0, 0, 0), id_count: 220},
{created_on: datetime(2019, 1, 26, 0, 0, 0, 0), id_count: 211},
{created_on: datetime(2019, 1, 27, 0, 0, 0, 0), id_count: 219},
{created_on: datetime(2019, 1, 28, 0, 0, 0, 0), id_count:205},
{created_on: datetime(2019, 1, 29, 0, 0, 0, 0), id_count:229},
{created_on: datetime(2019, 1, 30, 0, 0, 0, 0), id_count:218},
{created_on: datetime(2019, 1, 31, 0, 0, 0, 0), id_count:221},
{created_on: datetime(2019, 2, 1, 0, 0, 0, 0), id_count: 219},
{created_on: datetime(2019, 2, 2, 0, 0, 0, 0), id_count: 218},
{created_on: datetime(2019, 2, 3, 0, 0, 0, 0), id_count: 211},
{created_on: datetime(2019, 2, 4, 0, 0, 0, 0), id_count: 216},
{created_on: datetime(2019, 2, 5, 0, 0, 0, 0), id_count: 218},
{created_on: datetime(2019, 2, 6, 0, 0, 0, 0), id_count: 220},
{created_on: datetime(2019, 2, 7, 0, 0, 0, 0), id_count: 219},
{created_on: datetime(2019, 2, 8, 0, 0, 0, 0), id_count: 217},
{created_on: datetime(2019, 2, 9, 0, 0, 0, 0), id_count: 215},
{created_on: datetime(2019, 2, 10, 0, 0, 0, 0), id_count: 211},
{created_on: datetime(2019, 2, 11, 0, 0, 0, 0), id_count: 206},
{created_on: datetime(2019, 2, 12, 0, 0, 0, 0), id_count: 211},
{created_on: datetime(2019, 2, 13, 0, 0, 0, 0), id_count: 209},
{created_on: datetime(2019, 2, 14, 0, 0, 0, 0), id_count: 210},
{created_on: datetime(2019, 2, 15, 0, 0, 0, 0), id_count: 207},
{created_on: datetime(2019, 2, 16, 0, 0, 0, 0), id_count: 205},
{created_on: datetime(2019, 2, 17, 0, 0, 0, 0), id_count: 216},
{created_on: datetime(2019, 2, 18, 0, 0, 0, 0), id_count: 211},
{created_on: datetime(2019, 2, 19, 0, 0, 0, 0), id_count: 214},
{created_on: datetime(2019, 2, 20, 0, 0, 0, 0), id_count: 210},
{created_on: datetime(2019, 2, 21, 0, 0, 0, 0), id_count: 211},
{created_on: datetime(2019, 2, 22, 0, 0, 0, 0), id_count: 320},
{created_on: datetime(2019, 2, 23, 0, 0, 0, 0), id_count: 209},
{created_on: datetime(2019, 2, 24, 0, 0, 0, 0), id_count: 204},
{created_on: datetime(2019, 2, 25, 0, 0, 0, 0), id_count: 206},
{created_on: datetime(2019, 2, 26, 0, 0, 0, 0), id_count: 208},
{created_on: datetime(2019, 2, 27, 0, 0, 0, 0), id_count: 205},
{created_on: datetime(2019, 2, 28, 0, 0, 0, 0), id_count: 207},
{created_on: datetime(2019, 3, 1, 0, 0, 0, 0), id_count: 205},
{created_on: datetime(2019, 3, 2, 0, 0, 0, 0), id_count: 201},
{created_on: datetime(2019, 3, 3, 0, 0, 0, 0), id_count: 200},
{created_on: datetime(2019, 3, 4, 0, 0, 0, 0), id_count: 192},
{created_on: datetime(2019, 3, 5, 0, 0, 0, 0), id_count: 190},
{created_on: datetime(2019, 3, 6, 0, 0, 0, 0), id_count: 184},
{created_on: datetime(2019, 3, 7, 0, 0, 0, 0), id_count: 186},
{created_on: datetime(2019, 3, 8, 0, 0, 0, 0), id_count: 188},
{created_on: datetime(2019, 3, 9, 0, 0, 0, 0), id_count: 185},
{created_on: datetime(2019, 3, 10, 0, 0, 0, 0), id_count: 183},
{created_on: datetime(2019, 3, 11, 0, 0, 0, 0), id_count: 178},
{created_on: datetime(2019, 3, 12, 0, 0, 0, 0), id_count: 181},
{created_on: datetime(2019, 3, 13, 0, 0, 0, 0), id_count: 180},
{created_on: datetime(2019, 3, 14, 0, 0, 0, 0), id_count: 184},
{created_on: datetime(2019, 3, 15, 0, 0, 0, 0), id_count: 178},
{created_on: datetime(2019, 3, 16, 0, 0, 0, 0), id_count: 180},
{created_on: datetime(2019, 3, 17, 0, 0, 0, 0), id_count: 177},
{created_on: datetime(2019, 3, 18, 0, 0, 0, 0), id_count: 175},
{created_on: datetime(2019, 3, 19, 0, 0, 0, 0), id_count: 173},
{created_on: datetime(2019, 3, 20, 0, 0, 0, 0), id_count: 175},
{created_on: datetime(2019, 3, 21, 0, 0, 0, 0), id_count: 178},
{created_on: datetime(2019, 3, 22, 0, 0, 0, 0), id_count: 170},
{created_on: datetime(2019, 3, 23, 0, 0, 0, 0), id_count: 172},
{created_on: datetime(2019, 3, 24, 0, 0, 0, 0), id_count: 175},
{created_on: datetime(2019, 3, 25, 0, 0, 0, 0), id_count: 176}
}
),
{
a!lineChartField(
label: "Open vs. Closed Cases",
yAxisTitle: "# of Cases",
categories: index(local!resolvedByDate.data, "created_on"),
series: {
a!chartSeries(
label: "Closed",
data: index(local!resolvedByDate.data, "id_count"),
color: "GREEN"
),
a!chartSeries(
label: "Open",
data: index(local!openByDate.data, "id_count"),
color: "RED"
)
}
)
}
)
```

Displays the following: ![gif which zooms in on a section of data in the line chart](images/date_fields_example.gif)

### Multiple series line chart with label, x-axis title, y-axis title, and legend

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
a!lineChartField(
  label: "Tempo Usage Trends",
  categories: {"Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan", "Feb"},
  series: {
    a!chartSeries(label: "IT", data: {92, 94, 93, 95, 96, 99, 98, 100, 99, 91, 98, 99}),
    a!chartSeries(label: "Human Services", data: {84, 83, 85, 86, 87, 89, 91, 90, 89, 83, 93, 95}),
    a!chartSeries(label: "Sales", data: {70, 63, 90, 72, 74, 74, 76, 89, 72, 65, 100, 85}),
    a!chartSeries(label: "Marketing", data: {80, 80, 80, 90, 90, 90, 90, 90, 90, 70, 90, 90})
  },
  colorScheme: "PARACHUTE",
  xAxisTitle: "Month",
  yAxisTitle: "% Active",
  yAxisMax: 100,
  showLegend: true
)
```

Displays the following:

![screenshot of a line chart with chart label, axes titles, and legend](images/lineChartParachute.png)

### Multiple series line chart with tooltips and a null data point

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
16
a!lineChartField(
  categories: {"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"},
  series: {
    a!chartSeries(label: "High", data: {76, 82, null, 92, 87, 79, 80}),
    a!chartSeries(label: "Low", data: {64, 70, 82, 81, 75, 67, null})
  },
  colorScheme: a!colorSchemeCustom(
    colors: {
      "#3c78d8",
      "#6aa84f"
    }
  ),
  xAxisTitle: "Day",
  yAxisTitle: "Temperature (F)",
  showLegend: true
)
```

Displays the following:

![screenshot of a line chart with two lines, one with null data points](images/nullLineChartCustom.png)

### Connect null data points in a line chart

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
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
a!localVariables(
  local!agent: {
    "Hi! Thanks for calling today! How may I help you?",
    null,
    "I can help! First, please verify your data of birth.",
    null,
    "Ok, thank you. Now I'll look up your order.",
    null,
    "Thanks for your patience.I've found it.",
    null,
    "Oh no! Which item is it?",
    null,
    "I'm sorry about that. We'll send you another one free of charge.",
    null,
    "Is there anything else I can help with?",
    null
  },
  local!customer: {
    null,
    "I have a problem with my order",
    null,
    "My birth date is January 1st, 1970.",
    null,
    "This is so slow. What's the problem?",
    null,
    "An item is damaged. I'm so annoyed.",
    null,
    "The prongs are bent on the charging cable. It's useless.",
    null,
    "OK. Thank you for fixing it.",
    null,
    "That's it. Thanks for your help."
  },
  {
    a!lineChartField(
      label: "Conversation Sentiment Analysis",
      labelPosition: "ABOVE",
      categories: a!forEach(
        items: local!agent,
        expression: if(
          isNull(
            fv!item
          ),
          local!customer[fv!index],
          fv!item
        )
      ),
      series: {
        a!chartSeries(
          label: "Agent",
          data: a!forEach(
            items: local!agent,
            expression: if(
              isNull(
                fv!item
              ),
              null,
              a!sentimentScore(
                {
                  fv!item
                }
              )
            )
          )
        ),
        a!chartSeries(
          label: "Customer",
          data: a!forEach(
            items: local!customer,
            expression: if(
              isNull(
                fv!item
              ),
              null,
              a!sentimentScore(
                {
                  fv!item
                }
              )
            )
          )
        )
      },
      colorScheme: a!colorSchemeCustom(
        colors: {
          "#FFC300",
          "#800080"
        }
      ),
      referenceLines: {
        a!chartReferenceLine(
          label: "Positive",
          value: 0.5,
          color: "#008000"
        ),
        a!chartReferenceLine(
          label: "Negative",
          value: - 0.5,
          color: "#FF0000"
        )
      },
      showLegend: true,
      showTooltips: true,
      connectNulls: true
    )
  }
)
```

Displays the following:

![screenshot of a line chart that connects null data points](images/connect_null_points_example.png)

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!lineChartField\_19r1](/suite/help/25.3/Line_Chart_Component_19r1.html) |
Added ability to display thousands of data points without scrolling. When the chart shows date or date and time fields, the x-axis labels are formatted to match the end user's time zone and resized to avoid clutter.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Line Chart Component.

-   [Dynamically Show Sales by Product Category Compared to Total Sales](/suite/help/25.3/recipe-show-total-sales-compared-to-sales-per-category.html) (_Records, Reports, Charts, Filtering_): This pattern illustrates how to create an area chart that dynamically displays sales generated by product category compared to total sales.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Use a Filter to Adjust Chart Reference Lines](/suite/help/25.3/recipe-use-a-filter-to-adjust-chart-reference-lines.html) (_Filtering, Charts_): Using a dropdown, filter the results of a data set while also adjusting a chart reference line.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...