---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-a-chart-to-grid-toggle.html
original_path: recipe-configure-a-chart-to-grid-toggle.html
version: "25.3"
title: "Configure a Chart to Grid Toggle"
page_id: "recipe-configure-a-chart-to-grid-toggle"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure a Chart to Grid Toggle

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

Display a column chart with a toggle to display an alternate grid view of the data.

Display a chart with the number of tickets reported each month internally and from customers. Then add a grid to display the same data. Finally, add a link so that a user may toggle between the chart and grid views of the data. This pattern is recommended to provide a visual data display while still making the data [accessible](building_accessible_applications.html) to users who employ assistive technology.

This is the data displayed as a chart:

![screenshot of a column chart with column for every month of the year](images/SAIL_Recipe_chart_to_grid_toggle_chart_view_Parachute.png)

This is the data displayed as a grid:

![screenshot of a read-only grid with a row for every month of the year with an associated number and type of tickets](images/SAIL_Recipe_chart_to_grid_toggle_grid_view.png)

This scenario demonstrates:

-   How to configure alternate displays of the same data.
-   How to modify the expression to display a grid when the user clicks on a link toggle.

## Create this pattern

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
a!localVariables(
  local!ticketData:{
    a!map( month:"January",   internalTickets:32, customerTickets:41 ),
    a!map( month:"February",  internalTickets:16, customerTickets:38 ),
    a!map( month:"March",     internalTickets:21, customerTickets:37 ),
    a!map( month:"April",     internalTickets:31, customerTickets:20 ),
    a!map( month:"May",       internalTickets:33, customerTickets:47 ),
    a!map( month:"June",      internalTickets:9, customerTickets:22 ),
    a!map( month:"July",      internalTickets:2, customerTickets:16 ),
    a!map( month:"August",    internalTickets:11, customerTickets:29 ),
    a!map( month:"September", internalTickets:5, customerTickets:0 ),
    a!map( month:"October",   internalTickets:71, customerTickets:10 ),
    a!map( month:"November",  internalTickets:4, customerTickets:13 ),
    a!map( month:"December",  internalTickets:5, customerTickets:21 )
  },
  /* This variable is referenced in the showWhen parameters of both the grid and
     the chart. */
  local!showAsGrid: false,
  {
    a!linkField(
      links:{
        /* The not() function simply inverts a true or false value, making for a
           simple toggle. */
        a!dynamicLink(
          label: "View data as a " & if(local!showAsGrid, "chart", "grid"),
          value: not(local!showAsGrid),
          saveInto: local!showAsGrid
        )
      }
    ),
    if(local!showAsGrid,
    a!gridField(
      label: "Logged Defect Tickets",
      data: local!ticketData,
      columns: {
        a!gridColumn(
          label: "Month",
          value: fv!row.month
        ),
        a!gridColumn(
          label: "Internal Tickets",
          value: fv!row.internalTickets,
          align: "END",
          width: "NARROW_PLUS"
        ),
        a!gridColumn(
          label: "Customer Tickets",
          value: fv!row.customerTickets,
          align: "END",
          width: "NARROW_PLUS"
        ),
        a!gridColumn(
          label: "Total Tickets",
          value: fv!row.internalTickets + fv!row.customerTickets,
          align:"END",
          width: "NARROW_PLUS"
        )
      },
      pageSize: 12
    ),
    a!columnChartField(
      label: "Logged Defect Tickets",
      categories: left(local!ticketData.month, 3),
      series: {
        a!chartSeries(label: "Internal", data: local!ticketData.internalTickets),
        a!chartSeries(label: "Customer", data: local!ticketData.customerTickets)
      },
      colorScheme: "PARACHUTE",
      yAxisTitle: "Number of Tickets",
      stacking: "NORMAL",
      showLegend: true
    )
    )
  }
)
```

## Test it out

1.  Click the "View this data as a grid" link. The chart will be replaced with a grid that displays all defect tickets.
2.  Click the "View this data as a chart" link. The grid will be replaced with the original chart.

## Notable implementation details

-   This example uses a hard-coded data set. To use data from a record type, use [a!queryRecordType()](fnc_system_queryrecordtype.html) to populate `local!ticketData` and update the columns to use [record type field references](reference-records.html). See [Aggregate Data and Conditionally Display in a Chart or Grid](recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) for a similar pattern using records.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...