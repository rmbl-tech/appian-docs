---
source_url: https://docs.appian.com/suite/help/25.3/Line_Chart_Component_19r1.html
original_path: Line_Chart_Component_19r1.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!lineChartField\_19r1 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Line Chart Component](/suite/help/25.3/Line_Chart_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Line_Chart_Component.html#Old_Version)

## Line Chart

**Function**: `a!lineChartField_19r1()`

Displays a series of numerical data as points connected by lines. Use a line chart to visualize trends of data that changes over time. If specific values are more important than the trend, consider using a [column chart](Column_Chart_Component.html).

**See also**: [Column Chart](Column_Chart_Component.html), [Bar Chart](Bar_Chart_Component.html), [Pie Chart](Pie_Chart_Component.html), [Chart Series](Chart_Series_Component.html)

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

_List of Text String_

 |

Text to display on the x-axis below each data point.

 |
|

Series

 |

`series`

 |

_List of [LineChartSeries](Chart_Series_Component.html)_

 |

Array of data series created with a!chartSeries().

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

Determines if a color legend displays below the chart. Default: true.

 |
|

Show data labels

 |

`showDataLabels`

 |

_Boolean_

 |

Determines if data values are displayed next to each data point. Default: false.

 |
|

Show tooltips

 |

`showTooltips`

 |

_Boolean_

 |

Determines if a tooltip displays the data value for each data point. Default: true.

 |
|

Allow decimal axis labels

 |

`allowDecimalAxisLabels`

 |

_Boolean_

 |

Allows dependent (vertical) values to display as decimal numbers instead of integers. Default: false.

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

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |
|

Connect Null Data Points

 |

`connectNulls`

 |

_Boolean_

 |

Determines whether to connect a graph line across null points, or render a gap between the two points on either side of the null. Default: false.

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

**Notes**

-   The order of items in the _Categories_ array determines the display order of categories on the chart with the left-most item in the array appearing on the far left of the x-axis.
-   For each null or empty item in the array passed to _Categories_, `[Category #]` displays on the x-axis with `#` as the index number in the _Categories_ array of the null or empty item. For example, `[Category 1]`.
-   The index of each item in the _Categories_ array must match with the index of its _Series_ data value. You can retrieve a dictionary from the _data_ field of a `queryrecord()` function result, and then use `a!chartSeries()` to create the Chart Series array.
-   A single _Series_ item produces a single line with line points for each _Categories_ item. Multiple _Series_ items produce multiple lines with one line for each series label item displayed in a distinct color and line points for each _Categories_ item with a different data marker shape (for example, square, circle, diamond) for each line.
-   If a series data value is greater than the _Y-Axis Max_ value or less than the _Y-Axis Min_ value, the line continues off the chart, but the line point does not display.
-   If the _Series_ argument has a non-null label value paired with a 0, null, or empty data value, the data value still displays in the legend.
-   If the _Series_ argument has a null or empty label value paired with a non-null data value, the label value displays as `[Series #]` with `#` as the index number of the data value. For example, `[Series 1]`.
-   If data values are small and less than a whole number, Appian recommends settings _allowDecimalAxisLabels_ to `true`.

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...