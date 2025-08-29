---
source_url: https://docs.appian.com/suite/help/25.3/Grouping_Component.html
original_path: Grouping_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Grouping Component

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

Determines the fields to group by in a query or chart that uses a record type as the source. The grouping should incorporate a record field or a related record field, an alias, and an optional interval to group by a date.

This configuration is used when a record type is defined as the data source for a chart or when using `a!queryRecordType()`. This function can be used as a primary grouping or secondary grouping in a [bar](Bar_Chart_Component.html), [column](Column_Chart_Component.html), [line](Line_Chart_Component.html), or [pie chart](Pie_Chart_Component.html) or to define the fields in a query using [a!aggregationFields()](fnc_scripting_a_aggregationfields.html).

**See also**:

-   [Chart Configuration Using Records](Chart_Configuration_Using_Records.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Field

 |

`field`

 |

_Any Type_

 |

The record field or related record field to group by. Use the `recordType!` domain to reference the field. For example, `recordType!Case.fields.status`.

 |
|

Interval

 |

`interval`

 |

_Text_

 |

The date or time interval to group by. This parameter can only be used when the field is of type Date, Date and Time, or Time. Valid values: `"AUTO"` (default), `"YEAR"`, `"MONTH_OF_YEAR"`, `"MONTH_OF_YEAR_SHORT_TEXT"`, `"MONTH_OF_YEAR_TEXT"`, `"MONTH_TEXT"`, `"MONTH_SHORT_TEXT"`, `"MONTH_DATE"`, `"DATE"`, `"DATE_SHORT_TEXT"`, `"DATE_TEXT"`, `"DAY_OF_MONTH"`, `"HOUR_OF_DAY"`, `"HOUR"`, `"MINUTE_OF_HOUR"`, `"MINUTE"`.

 |
|

Alias

 |

`alias`

 |

_Text_

 |

The short name by which the result of the grouping field can be referenced in other places in the chart configuration or `a!queryRecordType()`.

 |
|

Format Value

 |

`formatValue`

 |

_Any Type_

 |

Display value for the given grouping value. Only applies when the grouping is used in a chart. This parameter is evaluated once for each value returned. You can reference the unformatted result from the data source using `fv!value`. This display value does not affect the values used in calculations for the chart; it is only used for display.

 |

## Usage considerations

### Using the interval parameter

The _interval_ parameter determines how to group data for fields of type Date, Date and Time, or Time. Each interval can combine data from multiple dates for easy reporting.

For example, suppose you have three records with the following values for the `startDate` field: `March 17, 2021`, `March 28, 2021`, and `April 3, 2021`. If you use the `MONTH_TEXT` interval, it will group the data together and return the values as `March 2021` and `April 2021`.

By default, the `AUTO` interval is selected. This interval does not perform any additional grouping, so the original values will be returned.

See the table below for the results using each interval:

**Note:**  Some intervals may impact the date format returned for the groupings, while others will cause the returned group values to be offset to account for the user’s locale time zone.

| Grouping Interval | Valid Data Types | Return Type | [Localized Date Format](#localized-date-formats)? | [Time zone offset](#time-zone-offset)? | Sample Value | Sample Result |
| --- | --- | --- | --- | --- | --- | --- |
| `AUTO` | Any Type | Any Type | No | Yes | 10/17/2021 3:45:12 PM | 10/17/2021 3:45:12 PM |
| `YEAR` | Date and Time; Date | Integer | No | No | 10/17/2021 | 2021 |
| `MONTH_OF_YEAR` | Date and Time; Date | Integer | No | No | 10/17/2021 | 10 |
| `MONTH_OF_YEAR_SHORT_TEXT` | Date and Time; Date | Text | Yes | No | 10/17/2021 | Oct |
| `MONTH_OF_YEAR_TEXT` | Date and Time; Date | Text | Yes | No | 10/17/2021 | October |
| `MONTH_DATE` | Date and Time; Date | Date | No | No | 10/17/2021 | 10/1/2021 |
| `MONTH_SHORT_TEXT` | Date and Time; Date | Text | Yes | No | 10/17/2021 | Oct 2021 |
| `MONTH_TEXT` | Date and Time; Date | Text | Yes | No | 10/17/2021 | October 2021 |
| `DATE` | Date and Time; Date | Date | No | Yes | 10/17/2021 3:45 PM | 10/17/2021 |
| `DATE_SHORT_TEXT` | Date and Time; Date | Text | Yes | No | 10/17/2021 3:45 PM | Oct 17, 2021 |
| `DATE_TEXT` | Date and Time; Date | Text | Yes | No | 10/17/2021 3:45 PM | October 17, 2021 |
| `DAY_OF_MONTH` | Date and Time; Date | Integer | No | No | 10/17/2021 3:45 PM | 17 |
| `HOUR_OF_DAY` | Date and Time; Time | Integer | No | No | 10/17/2021 3:45 PM | 15 |
| `HOUR` | Date and Time | Date and Time | No | No | 10/17/2021 3:45 PM | 10/17/2021 3:00 PM |
| `MINUTE_OF_HOUR` | Date and Time; Time | Integer | No | No | 10/17/2021 3:45:12 PM | 45 |
| `MINUTE` | Date and Time | Date and Time | No | No | 10/17/2021 3:45:12 PM | 10/17/2021 3:45:00 PM |

#### Localized date formats

If the interval returns a value of type Text, the values will display in localized date formats.

For example, the `MONTH_OF_YEAR_TEXT` interval returns the text value of the month. Depending on the locale of the user who runs the query, the text values for the month may differ. For example, if a user's locale is set to Spanish, the results would return values like `enero, marzo, agosto`. If a user's locale is set to English, the results would instead return values like `February, March, April`.

Alternatively, the `MONTH_OF_YEAR` interval returns the month number, a value 1-12, so it will be the same value across all locales.

If you need to ensure the values are the same across all locales (for example, to use the result in a filter), use one of the intervals that does not localize date formats.

#### Time zone offset

By default, every query is aggregated in Greenwich Mean Time (GMT) and returned in your local time zone. However, if the interval returns Date or Date and Time, the values will be aggregated in GMT and then offset to the user's selected time zone. This may result in groupings that don't accurately represent when something occurred.

For example, let's say your local time is in Australia and you create a chart showing the number of orders created each day. If you use the `DATE` interval (which returns values of type Date), the data will be aggregated in GMT and then offset to the local Australian time. Since Australia is 10 hours ahead of GMT, it may appear like orders are being created the next day.

When selecting an interval, consider whether intervals with a time zone offset are appropriate for your use case.

### Using the field and alias parameters

The _field_ is a required parameter. It must reference a record field or a [related record field](record-type-relationships.html) from the record type specified in the query or chart.

When using `a!grouping()` in a query, an alias is required. This is a short name that is used to reference the grouping field in other places in the configuration. The alias must be used as the field in the _sort_ parameter within the parent configuration function (like `a!queryRecordType()` or in a component function like `a!barChartField()`).

### Formatting values

When using _formatValue_ parameter, the expression provided will execute for each unique value returned for the grouping.

Learn more about [formatting date fields](Chart_Configuration_Using_Records.html#format-date-fields) and [formatting text and number fields](Chart_Configuration_Using_Records.html#format-text-and-number-fields) in a chart.

### Grouping in charts

For all charts, except [pie charts](Pie_Chart_Component.html) and [scatter charts](Scatter_Chart_Component.html), you can add a Primary and Secondary Grouping if there is only one [Measure](Measure_Component.html) provided. See [Chart Configuration Using Records](Chart_Configuration_Using_Records.html#configure-chart-groupings) for more information on how to add groupings to charts.

When the [_interval_](#using-the-interval-parameter) parameter is set to any value other than `"AUTO"`, you can show time intervals with no data on the axis of your charts using the _showIntervalsWithNoData_ parameter.

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

The following patterns include usage of the Grouping Component.

-   [Aggregate Data and Conditionally Display in a Chart or Grid](/suite/help/25.3/recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) (_Reports, Charts, Query Data, Grids, Records_): Aggregate data and conditionally display it in a pie chart or grid. In this pattern, we will calculate the total number of employees in each department and display it in a pie chart and a read-only grid. Then, we'll use a link field to conditionally display each component.

-   [Aggregate Data and Display in a Chart](/suite/help/25.3/recipe-aggregate-data-and-display-in-a-chart.html) (_Reports, Charts, Query Data, Records_): Aggregate data, specifically the total number of employees in a given department, to display in a pie chart.

-   [Aggregate Data by Multiple Fields and Display in a Chart](/suite/help/25.3/recipe-aggregate-data-by-multiple-fields-and-display-in-a-chart.html) (_Reports, Charts, Query Data, Records_): Aggregate data by multiple fields and display it in a stacked column chart. In this pattern, we will calculate the total number of employees for each title in each department and display it in a stacked column chart.

-   [Aggregate Data on a Date or Date and Time Field](/suite/help/25.3/recipe-aggregate-data-on-a-date-or-date-time-field.html) (_Reports, Query Data, Grids, Records_): Aggregate data, specifically the total number of employees by date.

-   [Aggregate Data using a Filter and Display in a Chart](/suite/help/25.3/recipe-aggregate-data-using-a-filter-and-display-in-a-chart.html) (_Reports, Charts, Query Data, Filtering, Records_): Aggregate data, specifically the total number of employees for each title in the Engineering department, to display in a bar chart.

-   [Configure a Chart Drilldown to a Grid](/suite/help/25.3/recipe-configure-a-chart-drilldown-to-a-grid.html) (_Charts, Grids, Query Data, Records_): Displays a column chart with aggregate data from a record type and conditionally shows a grid with filtered records when a user selects a column on the chart.

-   [Dynamically Show Sales by Product Category Compared to Total Sales](/suite/help/25.3/recipe-show-total-sales-compared-to-sales-per-category.html) (_Records, Reports, Charts, Filtering_): This pattern illustrates how to create an area chart that dynamically displays sales generated by product category compared to total sales.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [Percentage of Online Sales](/suite/help/25.3/recipe-show-percentage-of-sales.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate the percent of sales generated from online orders and display it in a gauge component.

-   [Sales by Region](/suite/help/25.3/recipe-show-sales-by-region.html) (_Records, Reports, Charts_): This pattern illustrates how to create a bar chart that shows sales per sales region.

-   [Total Orders Compared to Orders Purchased with Promo Codes](/suite/help/25.3/recipe-show-orders-with-promo-codes.html) (_Records, Reports, Charts_): This pattern illustrates how to create a column chart that compares the number of total orders and the number of orders that had at least one item purchased with a promo code.

-   [Year-Over-Year Sales Growth](/suite/help/25.3/recipe-show-sales-growth.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate year-over-year sales growth and display it in a KPI.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...