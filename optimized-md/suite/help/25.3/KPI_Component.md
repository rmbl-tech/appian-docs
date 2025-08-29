---
source_url: https://docs.appian.com/suite/help/25.3/KPI_Component.html
original_path: KPI_Component.html
version: "25.3"
title: "KPI Component"
page_id: "KPI_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# KPI Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-kpi.html">SAIL Design System guidance available for KPIs</a><p class="ds-release-notice-p">Keep an eye on your vital information with KPIs. Learn how to configure and display KPIs on your interface designs so you can showcase your most important data points and trends.</p></td></tr></tbody></table>

## Function

**a!kpiField**( _data, primaryMeasure, primaryText, icon, helpTooltip, align, accessibilityText, tooltip, showWhen, secondaryMeasure, trend, trendFormat, trendIcon, trendColor, secondaryText, iconColor, primaryTextColor, primaryMeasureColor, secondaryTextColor, iconStyle, template, refreshAlways, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, refreshAfter, size, primaryTextStyle, loadDataAsync_ )

Displays a key performance indicator that can be configured using a record type as the source.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Data

 |

`data`

 |

_Any Type_

 |

Reference to the record type used as the source of the KPI. Can accept `a!recordData()` or a record type reference.

 |
|

Primary Measure

 |

`primaryMeasure`

 |

_Measure_

 |

Determines the numerical values shown in the KPI, configured using `a!measure()`. By default, a count of records is displayed.

 |
|

Primary Text

 |

`primaryText`

 |

_Text_

 |

The main text to identify or describe the primary measure.

 |
|

Icon

 |

`icon`

 |

_Text_

 |

Icon to display next to the primary text. See the [available icons](Appian_Icons.html).

In the component configuration pane, you can click **SUGGEST ICON** to use AI to suggest an icon based on the primary text. If the primary text isn't a simple text string, this option is disabled.

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

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of text on the KPI. Valid values: `"START"` (default), `"CENTER"`, `"END"`.

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

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display when a user hovers over (web) or long presses (mobile) the KPI. You can use the `fv!primaryMeasure` and `fv!secondaryMeasure` variables as part of an expression defining the tooltip.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |
|

Secondary Measure

 |

`secondaryMeasure`

 |

_Measure_

 |

Defines the numerical calculations for the KPI’s trend elements, configured using `a!measure()`.

 |
|

Trend

 |

`trend`

 |

_Text_

 |

Defines the numerical calculations for trend data in the KPI, configured using the variables `fv!primaryMeasure` and `fv!secondaryMeasure`. If no secondary measure is provided, this parameter is ignored. Valid values: `"AUTO"` (default), `"DIFFERENCE"`, `"PERCENTAGE"`, `"NONE"`.

 |
|

Trend Format

 |

`trendFormat`

 |

_Text_

 |

Display value for the given trend. Valid formats are `"AUTO"` (default), `"INTEGER"`, `"DECIMAL"`, `"DOLLAR"`, `"EURO"`, `"POUND"`, `"YEN"`, `"SWISS_FRANC"`, or a custom format defined with text(). For a custom format, you can reference the unformatted result from the data source using fv!value. The display format does not affect the values used in the calculations for the KPI; it is only used for display.

 |
|

Trend Icon

 |

`trendIcon`

 |

_Text_

 |

Icon to display next to the trend. Icon to display next to the trend. Valid values: any valid expression, `"AUTO"` (default), or `"NONE"`. See the [available icons](Appian_Icons.html).

 |
|

Trend Color

 |

`trendColor`

 |

_Text_

 |

Determines the color applied to the trend and its icon, configured using `fv!primaryMeasure` and `fv!secondaryMeasure`. Valid values: any valid hex color or `"AUTO"` (default), `"STANDARD"`, `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`, `"REVERSE"`.

 |
|

Secondary Text

 |

`secondaryText`

 |

_Text_

 |

The text placed next to the trend to identify, explain, or provide more information about the data.

 |
|

Icon Color

 |

`iconColor`

 |

_Text_

 |

Determines the color applied to the icon. Valid values: any valid hex color or `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`.

 |
|

Primary Text Color

 |

`primaryTextColor`

 |

_Text_

 |

Determines the color applied to the primary text. Valid values: any valid hex color or `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`.

 |
|

Primary Measure Color

 |

`primaryMeasureColor`

 |

_Text_

 |

Determines the color applied to the primary measure. Valid values: any valid hex color or one of the following values: `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`.

 |
|

Secondary Text Color

 |

`secondaryTextColor`

 |

_Text_

 |

Determines the color applied to the secondary text. Valid values: any valid hex color or `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`.

 |
|

Icon Style

 |

`iconStyle`

 |

_Text_

 |

Determines the kind of image shown next to the KPI value and text. Valid values: `"ICON"` (default), `"STAMP"`.

 |
|

KPI Template

 |

`template`

 |

_Text_

 |

Defines the template to be used to display the KPI elements. Valid values: `"COMPACT"` (default), `"ADJACENT"`, `"STACKED"`. See the [SAIL Design System](sail/ux-kpi.html#templates) for component display best practices.

 |
|

Refresh after each user interaction

 |

`refreshAlways`

 |

_Boolean_

 |

When true, KPI data will be refreshed after each user interaction and each interval refresh. Default: `false`.

 |
|

Refresh after an interval of time

 |

`refreshInterval`

 |

_Number (Decimal)_

 |

How often KPI data gets refreshed in minutes. When null, KPI data will not be refreshed on an interval. Valid values: `"0.5"`, `"1"`, `"2"`, `"3"`, `"4"`, `"5"`, `"10"`, `"30"`, and `"60"`.

 |
|

Refresh after referenced variable changes

 |

`refreshOnReferencedVarChange`

 |

_Boolean_

 |

When true, KPI data will be refreshed each time the value of any variable referenced in the _data_ parameter is updated. To refresh KPI data when another variable that is not used in the _data_ parameter changes, use `refreshOnVarChange`. Default: `true`.

 |
|

Refresh after variable changes

 |

`refreshOnVarChange`

 |

_Any Type_

 |

Refreshes KPI data each time any of these specific variables change. This allows you to refresh the KPI data when a variable that is not referenced in the _data_ parameter is updated. You can define a single variable (e.g. `refreshOnVarChange: local!var1`) or a list of variables (e.g. `refreshOnVarChange: {local!var1, local!var2}`).

 |
|

Refresh after record action completes

 |

`refreshAfter`

 |

_List of Text String_

 |

Refreshes KPI data each time a specified event completes. Valid values: `"RECORD_ACTION"`.

 |
|

Size

 |

`size`

 |

_Text_

 |

Determines the size of the KPI. Valid values: `"SMALL"`, `"STANDARD"` (default), `"LARGE"`.

 |
|

Primary Text Style

 |

`primaryTextStyle`

 |

_Text_

 |

Determines the style to apply to the primary text. Valid values include `"PLAIN"` (default), `"EMPHASIS"`, and `"STRONG"`.

 |
|

Load KPI Data in Background

 |

`loadDataAsync`

 |

_Boolean_

 |

When a record type is used as the KPI's data source, set this to true to load the KPI data independently from the rest of the interface. To asynchronously load data that is used in other components as well, instead of setting this to true, use [a!asyncVariable](fnc_evaluation_a_asyncvariable.html) to define a local variable and use the local variable in the data parameter. See [Asynchronous Loading](async_loading.html) for more information. Default: false.

 |

## Usage considerations

### Trends

Trends are an optional addition to the component that show how the primary measure compares to another calculated value. For example, say your KPI tracks the number of social media users that convert to customers. You may want to know the rate that conversions increase or decrease compared to the previous month.

[![An example of the KPI component with a trend]](images/kpi-trend.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img63)

[![](images/kpi-trend.png)](#_)

To include a trend in your KPI, you must first configure a _secondaryMeasure_. This determines what to compare against the primary measure. Then, you can set one or more of the following parameters to further refine the trend's display and formatting: _trend_, _trendFormat_, _trendColor_, and _trendIcon_.

[![An example of the KPI component with a trend]](images/kpi-trend-labels.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img64)

[![](images/kpi-trend-labels.png)](#_)

#### Setting the trendColor parameter

A trend generally falls into one of two categories based on the business impact of an increasing trend. In some cases, an upward trend is good; this is the default assumption Appian makes when displaying the KPI. For example, say your metric is the average customer satisfaction rating. If the average rating is increasing over time, you may want to indicate that with a positive color. Likewise, a negative color would indicate that the average rating is decreasing.

[![An example of the KPI component with a reverse trend]](images/kpi-trend-auto-combined.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img65)

[![](images/kpi-trend-auto-combined.png)](#_)

But an upward trend can also mean worse performance. If your metric is customer complaints, you want that number to decrease over time. In these cases, setting the _trendColor_ to `"REVERSE"` will apply the correct colors to your trend.

[![An example of the KPI component with a reverse trend]](images/kpi-trend-reverse-combined.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img66)

[![](images/kpi-trend-reverse-combined.png)](#_)

#### Customizing the trendColor and trendIcon parameters

By default, trends are configured to appear differently depending on the comparison between the primary and secondary measures. If you want to customize the icons or colors for different results, you can use an [a!match()](fnc_logical_match.html) to define those values. Make sure to include values for positive change, negative change, and a default value for no change.

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
trendIcon: a!match(
  value: fv!primaryMeasure,
  whenTrue: fv!value > fv!secondaryMeasure,
  then: "arrow-circle-o-up",
  whenTrue: fv!value < fv!secondaryMeasure,
  then: "arrow-circle-o-down",
  default: "circle-o"
),
trendColor: a!match(
  value: fv!primaryMeasure,
  whenTrue: fv!value > fv!secondaryMeasure,
  then: "#38CF7F",
  whenTrue: fv!value < fv!secondaryMeasure,
  then: "#DD3457",
  default: "AUTO"
),
```

See the [metric with trend](#metric-with-trend) example and guidance on [using colors](sail/ux-color-overview.html) for more information.

### Formatting KPI values

The primary value is automatically formatted, but you can override the default format using the measure component's _formatValue_ parameter.

[![An example of the KPI component configured as Euros]](images/kpi-format-value.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img67)

[![](images/kpi-format-value.png)](#_)

The trend's value is also automatically formatted, and it can be changed using the _trendFormat_ parameter.

### Using the loadDataAsync parameter

Set the _loadDataAsync_ parameter to `true` to allow the interface to load without waiting for the KPI data. A placeholder will display in the KPI's place, enabling users to interact with other parts of the interface while the KPI's data loads in the background.

If the KPI's data is reused elsewhere in the interface, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to create an async variable instead. See [Asynchronous Loading](async_loading.html) for more information on choosing the right method.

**Note:**  In [offline mobile](offline-mobile-overview.html) and [portal](portals-home.html) interfaces, KPIs that are configured to load asynchronously will load with the rest of the interface, instead of loading in the background.

If the _loadDataAsync_ parameter is set to `true`, don't use [now()](fnc_date_and_time_now.html) in the KPI component or it will fail to load.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as references only.

### Standalone metric

This example uses data from an Order record type to show the average value of an order from a specific date range.

[![An example of the KPI component](images/kpi.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img68)

[![](images/kpi.png)](#_)

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
a!kpiField(
  primaryText: "Average order total (Q4)",
  icon: "cash-register",
  data: recordType!AT Order,
  primaryMeasure: a!measure(
    function: "AVG",
    field: recordType!AT Order.fields.total,
    formatValue: "DOLLAR",
    filters: a!queryFilter(
    field: 'recordType!AT Order.fields.entryDate',
    operator: "between",
    value: {
      datetime(2023, 10, 1),
      datetime(2023, 12, 31)
    }
  )
  ),
)
```

### Metric with trend

This KPI adds trend data to the [standalone metric](#standalone-metric) to show how the current quarter's average compares to the rest of the year.

[![An example of the KPI component with a trend]](images/kpi-with-trend.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img69)

[![](images/kpi-with-trend.png)](#_)

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
a!kpiField(
  data: recordType!AT Order,
  primaryMeasure: a!measure(
    function: "AVG",
    field: recordType!AT Order.fields.orderTotalCost,
    filters: a!queryFilter(
      field: recordType!AT Order.fields.entryDate,
      operator: "between",
      value: {
        datetime(2020, 10, 1),
        datetime(2020, 12, 31)
      }
    ),
    formatValue: "DOLLAR"
  ),
  secondaryMeasure: a!measure(
    function: "AVG",
    field: recordType!AT Order.fields.orderTotalCost,
    filters: a!queryFilter(
      field: recordType!AT Order.fields.entryDate,
      operator: "between",
      value: { datetime(2020, 1, 1), datetime(2020, 9, 30) }
    ),
    formatValue: "DOLLAR"
  ),
  primaryText: "Average order total (Q4)",
  icon: "cash-register",
  secondaryText: "Annual average",
  trendIcon: a!match(
    value: fv!primaryMeasure,
    whenTrue: fv!value > fv!secondaryMeasure,
    then: "thumbs-up",
    whenTrue: fv!value < fv!secondaryMeasure,
    then: "thumbs-down",
    default: "smile"
  ),
  trendColor: a!match(
    value: fv!primaryMeasure,
    whenTrue: fv!value > fv!secondaryMeasure,
    then: "ACCENT",
    whenTrue: fv!value < fv!secondaryMeasure,
    then: "SECONDARY",
    default: "AUTO"
  ),
)
```

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

The following patterns include usage of the KPI Component.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...