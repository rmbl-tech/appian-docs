---
source_url: https://docs.appian.com/suite/help/25.3/recipe-aggregate-data-on-a-date-or-date-time-field.html
original_path: recipe-aggregate-data-on-a-date-or-date-time-field.html
version: "25.3"
title: "Aggregate Data on a Date or Date and Time Field"
page_id: "recipe-aggregate-data-on-a-date-or-date-time-field"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Aggregate Data on a Date or Date and Time Field

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

Aggregate data, specifically the total number of employees by date.

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

[![images/bar-chart-aggregate-data-on-date-field.png](images/bar-chart-aggregate-data-on-date-field.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img7)

[![](images/bar-chart-aggregate-data-on-date-field.png)](#_)

## Create this pattern

You can easily configure a chart in design mode when you use a [record type as the source](Chart_Configuration_Using_Records.html).

To create this pattern in design mode:

1.  Open a new or empty interface object.
2.  From the **PALETTE**, drag a **Bar Chart** component into the interface.
3.  From **Data Source**, select **RECORD TYPE** and search for the Employee record type.
4.  Under **Primary Grouping**, select the `startDate` field.
5.  Click the edit icon next to the selected field and set **Time Interval** to **Month of Year**.
6.  Under **Format Value**, use the dropdown to choose a pre-defined format. Select the short text date.
7.  Click **Bar Chart** to return to the bar chart configuration.
8.  Click **ADD GROUPING**.
9.  Under **Secondary Grouping**, select the `department` field.
10.  Under **Measure**, use the dropdown to select **Count of**, then select the `id` field.
11.  From **Stacking**, select **Normal**.
12.  From **Color Scheme**, select **Ocean**.

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
a!barChartField(
    data: recordType!Employee,
    config: a!barChartConfig(
      primaryGrouping: a!grouping(
        field: recordType!Employee.fields.startDate,
        alias: "startDate_month_of_year_primaryGrouping",
        interval: "MONTH_OF_YEAR_SHORT_TEXT"
      ),
      secondaryGrouping: a!grouping(
        field: recordType!Employee.fields.department,
        alias: "department_secondaryGrouping"
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
    label: "Bar Chart",
    labelPosition: "ABOVE",
    stacking: "NORMAL",
    showLegend: true,
    showTooltips: true,
    colorScheme: "OCEAN",
    height: "MEDIUM",
    xAxisStyle: "STANDARD",
    yAxisStyle: "STANDARD"
  )
```

## Test it out

1.  Hover over each of the stacked month data to see a breakdown of the number of employees in each department.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...