---
source_url: https://docs.appian.com/suite/help/25.3/Measure_Component.html
original_path: Measure_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Measure Component

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

Determines the numerical values to display on a query, chart, or KPI. The measure should incorporate a record field or a related record field, the appropriate calculation to run on the field, and an alias. If your record type has data sync enabled, you can also apply filters to determine which values are included in the calculation.

This configuration is used when a record type is defined as the data source for a chart, KPI, or query. This function can be in:

-   The _measure_ parameter in a bar, column, line, or pie chart.
-   The _primaryMeasure_ and _secondaryMeasure_ parameters in a KPI.
-   A record type query.

**See also**:

-   [Chart Configuration Using Records](Chart_Configuration_Using_Records.html)
-   [KPI Component](KPI_Component.html)
-   [Record type relationships](record-type-relationships.html)

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

The record field or related record field to use in this calculation, configured using the `recordType!` domain. For example, `recordType!Case.fields.status`.

 |
|

Function

 |

`function`

 |

_Text_

 |

Function to use with calculations on the field provided. Accepts `"COUNT"`, `"SUM"`, `"MIN"`, `"MAX"`, `"AVG"`, `"DISTINCT_COUNT"`.

 |
|

Alias

 |

`alias`

 |

_Text_

 |

The short name by which the result of the measure field can be referenced in other places in the chart configuration or `a!queryRecordType()`.

 |
|

Label

 |

`label`

 |

_Text_

 |

Text to display in the legend or tooltip when using the measure in a chart. If no label is defined, the label displays with the function name and field name. The label only displays if a single grouping is used on a bar, column, or line chart. This parameter is ignored when used in `a!queryRecordType()`.

 |
|

Filter

 |

`filters`

 |

_Any Type_

 |

A single, logical expression or a list of query filters to filter the record set. Queries also apply the default filters defined on the referenced record type. This parameter is only available on record types that have [data sync](about-data-sync.html) enabled.

 |
|

Format value

 |

`formatValue`

 |

_Text_

 |

Display value for the given measure value. Only applies when the measure is used in a records-powered chart. Valid formats are `"AUTO"` (default), `"INTEGER"`, `"DECIMAL"`, `"DOLLAR"`, `"EURO"`, `"POUND"`, `"YEN"`, `"SWISS_FRANC"`, or a custom format defined with `text()`. For a custom format, you can reference the unformatted result from the data source using `fv!value`. The display format does not affect the values used in the calculations for the chart; it is only used for display.

 |

## Usage considerations

### Using the field and function parameters

-   The _field_ and _function_ parameters are required. The _field_ parameter also must reference a record field or a [related record field](record-type-relationships.html) from the record type specified in the query, chart, or KPI.
-   If no measure is provided in a chart, by default the chart will display as a count of the primary key field.

### Count and mathematical functions

-   The functions `SUM`, `MIN`, `MAX`, and `AVG` can only be used with fields of type integer or decimal.
-   The function `DISTINCT_COUNT` is only supported with entity-backed or synced record types.
-   The `COUNT` function will count the total number of values in a record field, whereas the `DISTINCT_COUNT` function will only count the unique values in a record field.

    For example, say you want to count the number of customers who've placed an order. Since one customer can place many orders, the `COUNT` function would count the same customer twice; however, the `DISTINCT_COUNT` function will only count that customer once, even if they've placed multiple orders.

### Using the alias parameter

-   When using `a!measure()` in a query, the _alias_ is required.
-   If an alias is provided, it must be used as the field in the _sort_ parameter within the parent configuration function.

### Using the label parameter

-   The _label_ determines the text label displayed in the legend or tooltip for the measure when used in a chart. This parameter is ignored when used in `a!queryRecordType` or a KPI component.
-   If no label is provided, the default label displays with the function and field name, such as `Count of id`.
-   The label does not apply when used with a secondary grouping, as the label is then determined by the secondary grouping field value. Also, the label does not apply when using a measure in a pie chart.

### Using the filters parameter

-   The _filters_ parameter is available for record types that have [data sync](about-data-sync.html) enabled, and can be used to determine which values are included in the calculation specified in the _field_ and _function_ parameters.

-   You can filter on a record field or a related record field, and the field reference must start from the aggregated record type.

    For example, you have a Customer record type that has a one-to-many relationship with the Order record type. In a report, you want to calculate the number of orders for each customer that include the order item "Printer". Since you're aggregating on the Order record type, the field reference in the filter must start from `recordType!Order`.

    The `a!measure` function would look something like this:

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
    a!measure(
      function: "COUNT",
    ! field: recordType!Customer.relationships.orders.fields.id,
      alias: "count_of_id",
      /* Since the Order record type is the related record type used in the field parameter,
      we'll use that record type reference in the filter.*/
      filters: {
        a!queryFilter(
    !   field: recordType!Order.relationships.orderItem.fields.itemName,
        operator: "=",
        value: "Printer"
          )
        }
      )
    ```

-   When you filter on a field from a related record type in a [one-to-many relationship](record-type-relationships.html) (the "many" side of the relationship), the filter returns all records from the base record type (the "one" side of the relationship) that have at least one related record that meets the filter condition.

    For example, an order can have many order items. So using the filter above, the aggregation will count all customer orders that have at least one order item called "Printer".

### Using the formatValue parameter

The `formatValue` has several predefined options to make the numbers on your records-powered chart or KPI easier to read and understand. You can also customize the formatting to make your data more meaningful to users.

For example, your app may have a chart showing the average monthly temperature in each US state. If this data is stored in a record field as a Number (Decimal), the `"AUTO"` option lists each value as an unformatted number.

![Chart showing automatic measure data formatting](images/chart-measure-format-auto.png)

You can customize the formatting to indicate temperature by concatenating each value with the degree symbol and unit of measure.

```
1
text(fv!value, fv!value & " " & char(176) & "F")
```

![Chart showing custom measure formatting for temperature data](images/chart-measure-format-custom.png)

### Measures on charts

-   If you use a [bar](Bar_Chart_Config_Component.html), [column](Column_Chart_Config_Component.html), or [line](Line_Chart_Config_Component.html) chart, you can display multiple measures if no Secondary Grouping field is provided. See [Chart Configuration Using Records](Chart_Configuration_Using_Records.html) for more information on how to add measures to charts.
-   You can select a predefined or custom format value to change how the measure data is displayed on the chart. See [Using format values](Chart_Configuration_Using_Records.html#prodlink-format-value-measures) for more information.

### Measures on KPIs

Measures are used in two of the KPI component's parameters: _primaryMeasure_ and _secondaryMeasure_. Together, these parameters let you display data trends and extract greater value from the metrics captured in your record data. The values created for these parameters can be referenced in other KPI parameters as `fv!primaryMeasure` and `fv!secondaryMeasure`. See [KPI Component](KPI_Component.html) for more information.

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

The following patterns include usage of the Measure Component.

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