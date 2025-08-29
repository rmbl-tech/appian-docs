---
source_url: https://docs.appian.com/suite/help/25.3/recipe-aggregate-data-using-a-filter-and-display-in-a-chart.html
original_path: recipe-aggregate-data-using-a-filter-and-display-in-a-chart.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Aggregate Data using a Filter and Display in a Chart

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Aggregate data, specifically the total number of employees for each title in the Engineering department, to display in a bar chart.

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

[![image](images/barChartOcean.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img8)

[![](images/barChartOcean.png)](#_)

This scenario demonstrates:

-   How to aggregate data and display it in a bar chart.
-   How to filter the bar chart.

## Create this pattern

You can easily create this pattern in design mode when you use a [record type as the source](Chart_Configuration_Using_Records.html) of your chart.

**Tip:**  If your record type has [data sync](about-data-sync.html) enabled, you can also add filters directly on your measures. This allows you to determine which values are included in the measure's calculation. Learn more about [using filters in a measure](Chart_Configuration_Using_Records.html#using-filters-in-a-measure).

To create this pattern in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **Bar Chart** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the **Employee** record type.
4.  Under **Primary Grouping**, select the **title** field.
5.  Under **Measure**, use the dropdown to select **Count of**, then select the **id** field.
6.  Click the edit icon next to the measure.
7.  Under **Label**, enter **Total**.
8.  Return to the Bar Chart configuration and click **FILTER RECORDS**.
9.  Under **Field**, use the dropdown to select the **department** field.
10.  Under **Condition**, use the dropdown to select **equal to**.
11.  Under **Value**, enter `Engineering`.
12.  Click **OK**.

Your resulting expression will look something like this:

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
{
  a!barChartField(
    data: a!recordData(
      recordType: recordType!Employee,
      filters: a!queryLogicalExpression(
        operator: "AND",
        filters: {
          a!queryFilter(
            field: recordType!Employee.fields.department,
            operator: "=",
            value: "Engineering"
          )
        },
        ignoreFiltersWithEmptyValues: true
      )
    ),
    config: a!barChartConfig(
      primaryGrouping: a!grouping(
        field: recordType!Employee.fields.title,
        alias: "title_primaryGrouping"
      ),
      measures: {
        a!measure(
          label: "Total",
          function: "COUNT",
          field: recordType!Employee.fields.id,
          alias: "id_count_measure1"
        )
      },
      dataLimit: 100
    ),
    label: "Bar Chart",
    labelPosition: "ABOVE",
    stacking: "NONE",
    showLegend: true,
    showTooltips: true,
    colorScheme: "RAINFOREST",
    height: "MEDIUM",
    xAxisStyle: "STANDARD",
    yAxisStyle: "STANDARD",
    refreshAfter: "RECORD_ACTION"
  )
}
```

## Notable implementation details

-   The expression for the filter is being passed into the _filters_ parameter of `a!recordData()`. Learn more about [this function](fnc_system_recorddata.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...