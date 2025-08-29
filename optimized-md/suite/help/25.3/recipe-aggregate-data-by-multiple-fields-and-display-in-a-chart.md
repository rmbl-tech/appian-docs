---
source_url: https://docs.appian.com/suite/help/25.3/recipe-aggregate-data-by-multiple-fields-and-display-in-a-chart.html
original_path: recipe-aggregate-data-by-multiple-fields-and-display-in-a-chart.html
version: "25.3"
title: "Aggregate Data by Multiple Fields and Display in a Chart"
page_id: "recipe-aggregate-data-by-multiple-fields-and-display-in-a-chart"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Aggregate Data by Multiple Fields and Display in a Chart

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

Aggregate data by multiple fields and display it in a stacked column chart. In this pattern, we will calculate the total number of employees for each title in each department and display it in a stacked column chart.

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

[![images/columnChartClassic.png](images/columnChartClassic.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img6)

[![](images/columnChartClassic.png)](#_) This scenario demonstrates:

-   How to aggregate data by multiple fields and display in a column chart.

## Create this pattern

You can easily configure a chart in design mode when you use a [record type as the source](Chart_Configuration_Using_Records.html).

To create this pattern in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **Column Chart** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the Employee record type.
4.  Under **Primary Grouping**, select the `department` field.
5.  Click **ADD GROUPING**.
6.  Under **Secondary Grouping**, select the `title` field.
7.  Under **Measure**, use the dropdown to select **Count of**, then select the `id` field.
8.  From **Stacking**, select **Normal**.
9.  For the **X-Axis Title**, enter **Department**.
10.  For the **Y-Axis Title**, enter **Number of Employees**.

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
  a!columnChartField(
    data: recordType!Employee,
    config: a!columnChartConfig(
      primaryGrouping: a!grouping(
        field: recordType!Employee.fields.department,
        alias: "department_primaryGrouping"
      ),
      secondaryGrouping: a!grouping(
        field: recordType!Employee.fields.title,
        alias: "title_secondaryGrouping"
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
    label: "Column Chart",
    xAxisTitle: "Department",
    yAxisTitle: "Number of Employees",
    stacking: "NORMAL",
    showLegend: true,
    showTooltips: true,
    labelPosition: "ABOVE",
    colorScheme: "CLASSIC",
    height: "MEDIUM",
    xAxisStyle: "STANDARD",
    yAxisStyle: "STANDARD"
  )
```

## Test it out

1.  Hover over each of the stacked department data to see a breakdown of the title of employees in that department.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...