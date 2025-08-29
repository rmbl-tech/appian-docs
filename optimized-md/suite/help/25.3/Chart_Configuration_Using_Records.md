---
source_url: https://docs.appian.com/suite/help/25.3/Chart_Configuration_Using_Records.html
original_path: Chart_Configuration_Using_Records.html
version: "25.3"
title: "Configure Charts Using Records"
page_id: "Chart_Configuration_Using_Records"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Charts Using Records

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Create Charts for a Report Using Records

This video from [Academy Online](https://academy.appian.com/) explains how to create charts for a report using a record type.

## Overview

Charts in Appian can be configured using one of two methods:

-   Define a record type as the source and select fields to display on the chart. A chart that uses a record type as the source is referred to as a _records-powered_ chart.
-   Provide a list of data directly to the `categories` and `series` parameters in the chart. Scatter charts cannot be configured in this manner.

This page explains how you can easily configure and customize a records-powered chart.

**Note:**  You cannot configure a records-powered chart with a service-backed record type with data sync enabled. Instead, use the `categories` and `series` parameters to construct the chart using an expression. See an [example here](SAIL_Components.html#charts).

## Configure a records-powered chart

To configure a records-powered chart:

1.  On an interface, drag and drop a chart from the **PALETTE**:
    -   [Area Chart](Area_Chart_Component.html)
    -   [Bar chart](Bar_Chart_Component.html)
    -   [Column Chart](Column_Chart_Component.html)
    -   [Line Chart](Line_Chart_Component.html)
    -   [Pie Chart](Pie_Chart_Component.html)
    -   [Scatter Chart](Scatter_Chart_Component.html)
2.  From **Data Source**, select **RECORD TYPE**.
3.  Search and select your record type. The chart will automatically populate with data from the record type.

    [![images/records-powered-chart-config.png](images/records-powered-chart-config.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img357)

    [![](images/records-powered-chart-config.png)](#_)

4.  Customize the data in your chart by editing the chart:
    -   [Groupings](#configure-chart-groupings)
    -   [Measures](#configure-chart-measures)
    -   [Links](#configure-chart-links)
    -   [Data limit and sorts](#configure-the-data-limit-and-sorting)

## Configure chart groupings

[Groupings](Grouping_Component.html) allow you to determine how the data is grouped together in the chart. You can group by any record fields or related record fields.

For example, say you have a record type of all open support cases and you want to see how many open cases are associated with each employee. You can use grouping to group open cases by employee.

[![images/chart_single_grouping.png](images/chart_single_grouping.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img358)

[![](images/chart_single_grouping.png)](#_)

Depending on the type of chart you use, the way you group your data and the complexity of your groupings will vary:

-   **Pie charts** contain only one grouping: Primary Grouping. This grouping determines the labels for each slice of the pie chart.
-   **Bar and column charts** allow adding multiple groupings. If only the Primary Grouping is used, the chart displays a single series of data and the axis shows the labels of the grouping results. When a Secondary Grouping is added, the secondary grouping shows as stacked or grouped bars.
-   **Line and area charts** also support multiple groupings. Like bar and column charts, the Primary Grouping displays on the x-axis. We recommend using time series data for this grouping. A Secondary Grouping will show as multiple lines in a line and as stacked layers in an area chart.
-   **Scatter charts** also support multiple groupings. The Primary Grouping is the main concept you want to examine in the chart. To refine the data, you can add a Secondary Grouping like a sales region or store identifier.

**Note:**  When there are multiple measures in your bar, column, line, or area chart, you cannot add a Secondary Grouping.

### Add an alias

An alias is a short name that is used to reference the grouping field in other places in the chart, like in the [sort](#sort) or in a [link](#configure-chart-links).

By default, an alias is provided for you. You can modify the alias name as needed.

To edit the alias:

1.  Click the pencil icon next to **Primary Grouping**.
2.  Edit the value in the **Alias** field.

### Apply time intervals

When configuring the grouping of a chart, you can apply a [time interval](Grouping_Component.html#using-the-interval-parameter) on any Date, Date and Time, or Time field to group dates together and view trends at a summarized level.

For example, suppose you want to create a line chart with the number of cases created over time. If you group by the `createdOn` field without an interval, it will only group together data that occurred at the exact same time. Instead of grouping by the full date and time, it makes sense instead to group at a higher level, for instance by showing cases created by month.

To apply a time interval to a grouping:

1.  Click the pencil icon next to the grouping.
2.  In the **Time Interval**, select an [interval](Grouping_Component.html#using-the-interval-parameter). By default, `"AUTO"` is selected.
3.  Select the **Show time intervals with no data** checkbox to display all date values between the first and last date, even when there are no values returned for some dates.

    For example, the chart below shows support cases created each month; however, there were no support cases created in August. Since the **Show time intervals with no data** checkbox is selected, that month still appears on the axis of the chart.

    [![images/date_grouping1.png](images/date_grouping1.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img359)

    [![](images/date_grouping1.png)](#_)

### Format date fields

If you apply a [time interval](#apply-time-intervals), you can also define how the data is formatted using a **Format Value**.

Some intervals have pre-defined formats that you can choose. If you select one of these formats, it will automatically localize the data based on language for the user viewing the chart. For example, if you select the long text version of date, the value in US English will show as `April 13, 2021`. However, a user with a French locale will see the same chart with the value `13 avril 2021`.

You also have the flexibility to customize your date format. With the **Use custom format** option, you can use the following characters to format your date values:

| Unit of Time | Character | Valid Combinations |
| --- | --- | --- |
| Year | `y` | `yy`, `yyyy` |
| Month | `M` | `M`, `MM`, `MMM`, `MMMM`, `MMMMM` |
| Day | `d` | `d`, `dd`, `ddd` |
| Hour | `h` | `h`, `hh` |
| Minute | `m` | `mm` |
| Second | `s` | `ss` |
| Day of Week | `E` | `EEE`, `EEEE` |
| AM / PM | `a` | `a` |
| Timezone | `z` | `z`, `zzzz` |

You can combine these characters to create a variety of formats, and use special characters like `/` or `-` to separate your values. For example, `d-m-yy` will return `17-9-21`, whereas `dd mmmm yyyy` will return `17 September 2021`.

### Format text and number fields

In addition to using **Format Value** to format your dates, you can also use this option to format text and integer fields used in your groupings.

For example, suppose the grouping field displayed on the chart is the status ID. The status labels exist in a constant, so the labels aren't available directly from the data source. Using the status ID as the grouping field would display on the chart like this:

![/chart with statusId](images/chart_with_statusId.png)

To display the status labels instead, we can add an expression to the `formatValue` parameter of `a!grouping()`:

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
a!grouping(
  field: recordType!Cases.field.statusId,
  alias: "status",
  formatValue: index(
    cons!MY_APP_STATUS_LABELS /* Status labels available in a constant*/
    fv!value,
    "Unknown Status"
  )
)
```

Using the expression above, the chart will instead display like this:

![/chart with status labels](images/chart_with_status_labels.png)

## Configure chart measures

[Measures](Measure_Component.html) determine how to calculate the values of a field in a chart. A measure can be calculated on any record field or related record field, but it should usually be a numeric field.

For example, say you have a record type that lists all customer requests and you want to see how many requests have been marked as "Success", "Fail", or "Exception". You can use grouping to display requests by status and use measure to count the number of requests per status.

[![images/chart_measure.png](images/chart_measure.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img360)

[![](images/chart_measure.png)](#_)

To configure a chart's measure:

1.  In design mode, select the chart component.
2.  Locate the **Measure** field on the chart's Component Configuration.
3.  Select a record field or a related record field to perform a calculation on.
4.  Use the dropdown to choose the type of calculation to perform on the selected field.
5.  Click the edit icon next to the measure to add additional configurations:
    -   Under **Label**, enter the text to display in the legend or tooltip on the chart. If no label is defined, the label displays with the function name and field name.
    -   Click **ADD FILTERS** to determine which values are returned in the **Measure** field based on the specified conditions. Learn more about [using filters in a measure](#using-filters-in-a-measure).
    -   Under **Alias**, create an alias for the results of the measure field. An alias can be used as a field to [sort by](#configure-the-data-limit-and-sorting) and as a field in a [chart link](#configure-chart-links).
    -   For **Format Value**, you can choose a pre-defined format (Automatic, Integer, Decimal, Dollar, or Euro), or you can choose a custom format to style the measure value. Learn more about [using format values](#prodlink-format-value-measures).

If you use a bar, column, line, or area chart, you can display multiple measures if no Secondary Grouping field is provided.

When multiple measures display on a chart, each measure displays in chronological order on the chart and legend, and is assigned a different color based on the color scheme.

### Add an alias

An alias is a short name that is used to reference the grouping field in other places in the chart, like in the [sort](#sort) or in a [link](#configure-chart-links).

By default, an alias is provided for you. You can modify the alias name as needed.

To edit the alias:

1.  Click the pencil icon next to **Measure**.
2.  Edit the value in the **Alias** field.

### Using filters in a measure

If your record type has [data sync](about-data-sync.html) enabled, you can add filters to your measures. By applying filters on a measure, you can determine which values are included in the measure's calculation.

For example, let's say you want to create a column chart that shows the number of orders associated with each customer, and you also want to see how many of those orders have a priority level of "Critical".

In your chart, you'd use the Customer record type to group by the `name` field and use the relationship with the Order record type to create two measures:

-   The first measure will calculate the count of order `Ids`.
-   The second measure will also calculate the count of order `Ids` and add a filter on the `label` field from the Priority record type so you only count orders that have a `priorityLabel = Critical`.

![Column chart with number of total orders and number of critical orders](images/filter-measure-ex-1.png)

### Using format values

Formatted numbers make it easier for users to scan and understand the data shown in a chart. You can use the **Format Value** option to format the numbers used in your measures. You can choose from several predefined options or use a custom format.

For example, a dashboard may contain a chart showing the total sales for each country. If you build the chart using the default options, the result might be similar to the following sample.

[![images/chart-measure-format-default.png](images/chart-measure-format-default.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img361)

[![](images/chart-measure-format-default.png)](#_)

While the data is accurate, it is hard to read and may not match what the user expects to see in a sales report.

By changing the format value to **Dollar**, the data labels will show the same data with a dollar sign before the number and rounded to the nearest cent.

[![images/chart-measure-format-dollar.png](images/chart-measure-format-dollar.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img362)

[![](images/chart-measure-format-dollar.png)](#_)

## Configure chart links

A link in a chart can be used to [drill down into a grid](recipe-configure-a-chart-drilldown-to-a-grid.html), or [filter other components](recipe-filter-the-data-in-a-grid-using-a-chart.html) on an interface.

Chart links consist of a two elements:

-   A [Dynamic Link component](Dynamic_Link_Component.html).
-   The variable `fv!selection` that contains a map with all the information about the current selected item. This variable allows you to dynamically pass chart data and save the current selected value to a local variable.

For example, suppose you have the following stacked column chart that displays a count of restaurants by region and type:

[![images/drilling_link.png](images/drilling_link.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img363)

[![](images/drilling_link.png)](#_)

In expression mode, you'll see that the chart's _link_ parameter is pre-populated with the `a!dynamicLink()` function, and the _value_ parameter contains `fv!selection`.

To dynamically save the current selected values, you'll add a local variable, like `local!selectedItem`, and use it in the `saveInto` parameter:

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
a!localVariables(
  local!selectedItem,
  {
    a!columnChartField(
      data: recordType!Restaurants,
      config: a!columnChartConfig(
        primaryGrouping: a!grouping(
          field: recordType!Restaurants.fields.region,
          alias: "region"
        ),
        secondaryGrouping: a!grouping(
          field: recordType!Restaurants.fields.type,
          alias: "type"
        ),
        measures: a!measure(
          field: recordType!Restaurants.fields.id,
          function: "COUNT",
          alias: "id_count"
        ),
        link: a!dynamicLink(
          value: fv!selection,
          saveInto: local!selectedItem
        )
      )
    )
  }
)
```

Now, when you select the bar chart shown above, the following data is saved to the local variable:

![/drilling_link2](images/drilling_link2.png)

### Link considerations

-   The data that is saved depends on the alias defined for each field. If you add a drilling link, the alias field is required.

-   The saved value is always the unformatted result.

    For instance, suppose the **Primary Grouping** field is a boolean type, but the chart displays as `Yes` or `No` using the `formatValue` parameter. When using a link, the data in `fv!selection` for that field will be a boolean instead of a text.

    This applies when using some intervals that provide localized formatting too. For example, the `DATE_TEXT` interval returns the date as a text, like `November 16, 2021`. However, when you add a link for this field, the resulting value is the original date value `11/16/2021`, not the localized text.

## Configure the data limit and sorting

In addition to the groupings and measures, records-powered charts contain options for setting a batch size and sorting.

### Data limit

To limit the batch size, enter a value in the **Data Limit** field of the chart's Component Configuration. The data limit determines how many unique groupings are on the chart. The data limit is most useful when using a single grouping.

For example, if you want a chart to display the top 10 products by their sales, the limit of 10 will return the correct results. The data limit also determines the combination of groupings. So, if both a primary and secondary grouping are used, a data limit of 100 would return a total of 100 values (10 primary grouping values x 10 secondary grouping values). For this reason, we recommend using the maximum limit of 5,000 when using multiple groupings.

### Sort

To sort the record data in the chart, use the **Sort** field of the chart's Component Configuration. Sort is used to determine which values display first on the chart.

To configure a chart's sort behavior in design mode:

1.  Locate the **Sort** field on the chart's Component Configuration.
2.  Click **ADD SORT** to configure the sort behavior.

    ![sort options](images/choose-sort-field.png)

3.  For **Sort By**, choose the field to sort by:

    -   Select **Alias** to sort by the alias of any groupings or measures in the chart. Then, select an alias from the dropdown.
    -   Select **Record Field** to sort by a record field or related record field that is not referenced in the chart. Then, select a field from the dropdown.

    **Note:**  You can only select fields of type Number (Integer), Number (Decimal), Date, Date and Time, Time, or Boolean.

4.  For **Order**, choose to sort in **Ascending** or **Descending** order.
5.  If you're sorting on a line, bar, or column chart, click **ADD SORT** to add multiple sort fields.

To configure the sort behavior in expression mode, use the [a!sortInfo](fnc_system_a_sortinfo.html) function.

## Examples

Let's look at a few examples to understand how to configure a chart to use a record type as the source.

### Stacked column chart of cases by status and priority

In this example, let's say you have a Case record type that has a [many-to-one relationship](record-type-relationships.html) with the Status record type, and you want to see how many cases have a status of Open, In Progress, or Closed. Within this chart, you also want to see a breakdown of case priority.

An easy way to display this data is using a stacked column chart, and you can use the Case record type as the source. Since the Case record type has a relationship with the Status record type, you can easily reference related record fields from the Status record type in the chart. To display the case status in the correct order of Open, In Progress, and Closed, you can also sort by the `id` field from the Status record type.

Here's what the chart looks like:

![/related-record-column-chart](images/related-record-column-chart.png)

To configure this chart in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **COLUMN CHART** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the **Case** record type.
4.  For **Primary Grouping**:
    1.  Remove the existing field.
    2.  Use the dropdown to hover over the **status** relationship and select the **label** field from the Status record type.

        This will display each column as a different status in alphabetical order (Closed, In Progress, and Open).

5.  Under **Secondary Grouping**:
    1.  Click **ADD GROUPING**.
    2.  Use the dropdown to select the **priority** field.
6.  For **Stacking**, select **Normal**. This will stack the two groupings.
7.  For **Measure**, select **Count of Id**.
8.  For **Sort**, click **ADD SORT**.
9.  For **Sort By**, select **Record Field**.
10.  From the dropdown, hover over the **status** relationship and select the **id** field from the Status record type.

     This will sort the columns by the status Id so they display in order of Open, In Progress, and Closed.

11.  For **Order**, select **Ascending**.

To configure this chart in expression mode:

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
{
  a!columnChartField(
    data: recordType!Case,
    config: a!columnChartConfig(
      primaryGrouping: a!grouping(
        field: recordType!Case.relationships.status.fields.label,
        alias: "status"
      ),
      secondaryGrouping: a!grouping(
        field: recordType!Case.fields.priority,
        alias: "priority"
      ),
      measures: {
        a!measure(
          function: "COUNT",
          field: recordType!Case.fields.id,
          alias: "id_count"
        )
      },
      sort: {
        a!sortInfo(
          field: recordType!Case.relationships.status.fields.id
        )
      },
      dataLimit: 100
    ),
    label: "Column Chart",
    stacking: "NORMAL",
    showLegend: true,
    showTooltips: true,
    labelPosition: "ABOVE",
    colorScheme: "SUNSET",
    height: "MEDIUM",
    xAxisStyle: "STANDARD",
    yAxisStyle: "STANDARD",
    refreshAfter: "RECORD_ACTION"
  )
}
```

### Bar chart of employees per department

In this example, you'd like to count the number of employees in the company grouped by their department. To easily compare the number of employees in each department, you can use a bar chart.

Here's what the chart looks like:

![image of a bar chart](images/barchart-example-records.png)

To configure this chart in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **Bar Chart** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the **Employee** record type.
4.  For **Primary Grouping**, remove the existing field. Then, use the dropdown to select the **department** field.
5.  For **Measure**, select **Count of Id**.
6.  For **Sort**, click **ADD SORT**.
7.  For **Sort By**, select **Alias**.
8.  From the dropdown, select the **id\_count\_measure1** alias.
9.  For **Order**, select **Descending**.

To configure this chart in expression mode:

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
{
  a!barChartField(
    data: recordType!Employee,
    config: a!barChartConfig(
      primaryGrouping: a!grouping(
        field: recordType!Employee.fields.department,
        alias: "department_primaryGrouping"
      ),
      measures: {
        a!measure(
          function: "COUNT",
          field: recordType!Employee.fields.id,
          alias: "id_count_measure1"
        )
      },
      sort: {
        a!sortInfo(
          field: "id_count_measure1"
        )
      },
      dataLimit: 100
    ),
    label: "Employees per Department",
    labelPosition: "ABOVE",
    stacking: "NONE",
    showLegend: true,
    showTooltips: true,
    colorScheme: "OCEAN",
    height: "MEDIUM",
    xAxisStyle: "STANDARD",
    yAxisStyle: "STANDARD",
    refreshAfter: "RECORD_ACTION"
  )
}
```

### Pie chart of sales by product area

Now suppose you have a record type that contains a list of sales for each product. A pie chart is a great way to view the contributions made by each product area.

Here's what the chart looks like:

![/pie chart design view2](images/pie_chart_design_view2.png)

To configure this chart in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **PIE CHART** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the **Sales** record type.
4.  For **Primary Grouping**, remove the existing field. Then, use the dropdown to select the **productArea** field. This will display each product as a slice of the pie.
5.  For **Measure**, select **Sum of** as the aggregation function, and choose the **salesRevenue** field. The sum of sales revenue will determine the size of each pie slice.

To configure this chart in expression mode:

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
a!pieChartField(
  label: "Sales by Product Area",
  data: recordType!Sales,
  config: a!pieChartConfig(
    primaryGrouping: a!grouping(
      field: recordType!Sales.fields.productArea,
      alias: "productArea"
    ),
    measures: a!measure(
      function: "SUM",
      field: recordType!Sales.fields.salesRevenue,
      alias: "sum_salesRevenue"
    ),
    dataLimit: 100,
    sort: a!sortInfo(
      field: "sum_salesRevenue",
      ascending: false
    )
  ),
  labelPosition: "ABOVE",
  height: "SHORT",
  showDataLabels: true,
  showAsPercentage: true,
  seriesLabelStyle: "LEGEND",
  colorScheme: "RAINFOREST",
  style: "DONUT"
)

```

### Line chart of cases per month for each office

Suppose you'd like to create a chart that displays the total number of cases created within each office over time. When displaying trends over time, a line chart is typically a good choice.

Here's what the chart looks like:

![/date grouping example2](images/date_grouping_example2.png)

To configure this chart in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **LINE CHART** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the **Support Case** record type.
4.  Click the pencil icon next to **Primary Grouping** to configure the grouping and formatting:
    -   For **Field**, select **createdOn**.
    -   For **Time Interval**, select **Month**.
    -   Select the **Show time intervals with no data** checkbox to display any months when there were no support cases submitted.
    -   For **Format Value**, use a pre-defined format to display the full month and year. For example, **April 2021**.
5.  Return to the **Line Chart** component configuration.
6.  For **Measure**, select **Count of** as the aggregation function, and choose the **Id** field.

To configure this chart in expression mode:

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
a!lineChartField(
  data: recordType!Case,
  config: a!lineChartConfig(
    primaryGrouping: a!grouping(
      field: recordType!Case.fields.createdOn,
      alias: "createdOn_month_primaryGrouping",
      interval: "MONTH_TEXT"
    ),
    secondaryGrouping: a!grouping(
      field: recordType!Case.fields.office,
      alias: "office"
    ),
    measures: {
      a!measure(
        function: "COUNT",
        field: recordType!Case.fields.id,
        alias: "id_count"
      )
    },
    dataLimit: 5000,
    showIntervalsWithNoData: true
  ),
  label: "Cases by Month per Office",
  showTooltips: true,
  colorScheme: "RAINFOREST",
)
```

### Area chart of sales per month for each region

Let's say you want to create a chart that shows which sales regions generated the most sales revenue this past year.

Line charts and area charts are both great for showing trends over time; however, an area chart would be a better fit for this use case since you want to see a part-to-whole relationship (which region's sales makes up most of the total sales). Since the total number of sales generated this past year is not the key performance indicator, you may choose to create an area chart that shows the percent to total ratio of each region's sales.

Here's what the chart looks like:

![Area chart show sales per month for each region](images/area-chart-with-records.png)

To configure this chart in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag an **AREA CHART** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the **Order** record type.
4.  For **Primary Grouping**, remove the existing field. Then, use the dropdown to select the **orderDate** field.
5.  Click the pencil icon next to **Primary Grouping** to configure the grouping and formatting:
    -   For **Field**, leave the default selection of **createdOn**.
    -   For **Time Interval**, select **Month**.
    -   Keep the **Show time intervals with no data** checkbox selected to display any months when there were no support cases submitted.
    -   For **Format Value**, use a pre-defined format to display the abbreviated month and year. For example, **Nov 2021**.
6.  Return to the **Area Chart** component configuration.
7.  For Secondary Grouping, click **ADD GROUPING**.
8.  From the dropdown, hover over the **region** relationship and select the **name** field from the Region record type. The area chart populates with different shaded areas.
9.  For Measure, keep the default selection of **Count of orderId**. Click the pencil icon next to Measure
10.  For **Stacking**, select **Percent to total**.

To configure this chart in expression mode:

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
{
  a!areaChartField(
    data: recordType!Order,
    config: a!areaChartConfig(
      primaryGrouping: a!grouping(
        field: recordType!Order.fields.orderDate,
        alias: "orderDate_month_primaryGrouping",
        interval: "MONTH_DATE"
      ),
      secondaryGrouping: a!grouping(
        field: recordType!Order.relationships.salesRegion.fields.name,
        alias: "name_secondaryGrouping"
      ),
      measures: {
        a!measure(
          function: "COUNT",
          field: recordType!Order.fields.orderId,
          alias: "orderId_count_measure1"
        )
      },
      dataLimit: 100,
      showIntervalsWithNoData: true
    ),
    label: "Area Chart",
    labelPosition: "ABOVE",
    stacking: "PERCENT_TO_TOTAL",
    showLegend: true,
    showTooltips: true,
    colorScheme: "CLASSIC",
    height: "MEDIUM",
    xAxisStyle: "STANDARD",
    yAxisStyle: "STANDARD",
    refreshAfter: "RECORD_ACTION"
  )
}
```

### Scatter chart of items per order compared to order cost

Scatter charts show relationships in a dataset, so you need to define two measures: one for the horizontal (_x_) axis and one for the vertical (_y_) axis. For example, if you are reporting on retail sales, you can look for a relationship between the number of items being purchased and the total cost of an order.

The scatter chart for these measures may look like this example, showing a positive correlation between the number of items and order total.

Here's what the chart looks like:

![Scatter chart showing order cost item price by item quantity](images/scatter-chart-example-order-cost-quantity.png)

To configure this chart in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **SCATTER CHART** component into the interface.
3.  For **Data Source**, search for the **Order** record type.
4.  For **Primary Grouping**, remove the existing field. Then, use the dropdown to select the **orderNumber** field.
5.  For X-Axis Measure, remove the existing field. Then, use the dropdown to select the **itemQty** field and change the formula from **Count of** to **Sum of**.
6.  For Y-Axis Measure, remove the existing field. Then, use the dropdown to select the **totalDue** field.
7.  Click the pencil icon next to **Y-Axis Measure** to configure the formatting:
    -   For **Label**, enter `Order total`.
    -   For **Aggregation Function**, leave the default selection of **Sum of**.
    -   For **Field**, leave the default selection of **totalDue**.
    -   For **Alias**, use the default value of `totalDue_sum_measure1`.
    -   For **Format Value**, use the dropdown to select **Dollar**.
8.  Return to the **Scatter Chart** component configuration.

To configure this chart in expression mode:

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
a!scatterChartField(
  data: recordType!Order,
  primaryGrouping: a!grouping(
    field: recordType!Order.fields.orderNumber,
    alias: "orderNumber_primaryGrouping"
  ),
  xAxisMeasure: a!measure(
    function: "AVG",
    field: recordType!Order.fields.itemQty,
    label: "Quantity ordered",
    alias: "itemQty_avg_measure1"
  ),
  yAxisMeasure: a!measure(
    function: "AVG",
    field: recordType!Sales Order.fields.totalDue,
    label: "Order total",
    alias: "totalDue_avg_measure1"
  ),
  label: "Total cost by number of items in order",
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...