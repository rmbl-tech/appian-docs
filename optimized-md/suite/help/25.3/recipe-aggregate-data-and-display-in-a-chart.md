---
source_url: https://docs.appian.com/suite/help/25.3/recipe-aggregate-data-and-display-in-a-chart.html
original_path: recipe-aggregate-data-and-display-in-a-chart.html
version: "25.3"
title: "Aggregate Data and Display in a Chart"
page_id: "recipe-aggregate-data-and-display-in-a-chart"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Aggregate Data and Display in a Chart

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

Aggregate data, specifically the total number of employees in a given department, to display in a pie chart.

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

[![image of a pie chart with 5 slices](images/patternPieChartClassic.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img5)

[![](images/patternPieChartClassic.png)](#_)

This scenario demonstrates:

-   How to aggregate data and display in a pie chart.

## Create this pattern

You can easily create this pattern in design mode when you use a [record type as the source](Chart_Configuration_Using_Records.html) of your chart.

To create this pattern in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **Pie Chart** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the Employee record type.
4.  Under **Primary Grouping**, select the **department** field.
5.  Under **Measure**, use the dropdown to select **Count of**, then select the **id** field.
6.  Under **Style**, use the dropdown to select **Pie**.

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
{
  a!pieChartField(
    data: recordType!Employee,
    config: a!pieChartConfig(
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
      dataLimit: 100
    ),
    label: "Pie Chart",
    labelPosition: "ABOVE",
    colorScheme: "RAINFOREST",
    style: "PIE",
    seriesLabelStyle: "ON_CHART",
    height: "MEDIUM",
    refreshAfter: "RECORD_ACTION"
  )
}
```

## Notable implementation details

-   This chart will aggregate on the entire data set. To aggregate and filter a chart, see [Aggregate Data using a Filter and Display in a Chart](recipe-aggregate-data-using-a-filter-and-display-in-a-chart.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...