---
source_url: https://docs.appian.com/suite/help/25.3/kpis-pattern.html
original_path: kpis-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# KPI Patterns

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

The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

There are five KPI patterns to choose from:

-   [KPI in a Card](#kpi-in-a-card)
-   [KPI Overlay](#kpi-overlay)
-   [KPI with Chart](#kpi-with-chart)
-   [KPI with Progress Bar](#kpi-with-progress-bar)
-   [KPI with Sparkline](#kpi-with-sparkline)

Each pattern displays one or more [KPI components](KPI_Component.html) alongside other elements to highlight important metrics.

**Tip:**  Need help choosing a pattern? See the [SAIL Design System](sail/ux-kpi.html) for more information about displaying KPIs.

## KPI in a Card

The main components in KPI in a Card are [KPI components](KPI_Component.html), [rich text fields](Rich_Text_Component.html), [card layouts](card_layout.html), and [column layouts](Column_Layout.html). This pattern will display four KPIs on a single card.

By default, the pattern does not populate with any data since the KPI component relies on a record type reference. The image below displays how the KPI in a Card pattern can look when configured with an Application record type.

![kpi_example_card.png](images/patterns/kpi_example_card.png)

### Pattern expression

When you drag and drop the KPI in a Card pattern onto your interface, 86 lines of expression will be added to the section where you dragged it.

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
76
77
78
79
80
81
82
83
84
85
86
{
  a!cardLayout(
    contents: {
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          a!richTextItem(
            text: "University Admissions",
            size: "MEDIUM",
            style: "STRONG"
          )
        },
        marginBelow: "NONE"
      ),
      a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: {
          a!richTextItem(
            text: { "2024 ", "Fall Semester" },
            color: "SECONDARY",
            size: "SMALL",
            style: "PLAIN"
          )
        },
        marginAbove: "NONE",
        marginBelow: "STANDARD"
      ),
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!kpiField(
                /* Select a record type for the data parameter */
                data: null,
                primaryText: "Total Applications"
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!kpiField(
                /* Select a record type for the data parameter */
                data: null,
                primaryText: "Admitted",
                trend: "NONE"
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!kpiField(
                /* Select a record type for the data parameter */
                data: null,
                primaryText: "Accepted",
                trend: "NONE"
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!kpiField(
                /* Select a record type for the data parameter */
                data: null,
                primaryText: "Enrolled",
                trend: "NONE"
              )
            }
          )
        },
        alignVertical: "TOP",
        marginAbove: "EVEN_LESS",
        marginBelow: "STANDARD",
        spacing: "SPARSE",
        showDividers: true
      )
    },
    style: "NONE",
    shape: "SEMI_ROUNDED",
    padding: "STANDARD",
    marginBelow: "STANDARD",
    showBorder: false,
    showShadow: true,
    decorativeBarPosition: "TOP",
    decorativeBarColor: "ACCENT"
  )
}
```

## KPI Overlay

The main components in KPI Overlay are [KPI components](KPI_Component.html), a [billboard layout](Billboard_Layout.html), a [web image](Web_Image_Component.html), and [column layouts](Column_Layout.html). This pattern will display four KPIs over a background image.

By default, the pattern does not populate with any data since the KPI component relies on a record type reference. The image below displays how the KPI Overlay pattern can look when configured with an Application record type.

![kpi_example_overlay.png](images/patterns/kpi_example_overlay.png)

### Pattern expression

When you drag and drop the KPI Overlay pattern onto your interface, 74 lines of expression will be added to the section where you dragged it.

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
{
  a!billboardLayout(
    backgroundMedia: a!webImage(
      source: "https://images.unsplash.com/photo-1574950333594-f3e9a9446d0f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80"
    ),
    height: "MEDIUM",
    marginBelow: "NONE",
    overlay: a!barOverlay(
      position: "BOTTOM",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!kpiField(
                  /* Select a record type for the data parameter */
                  data: null,
                  primaryText: "Gifts Dollars to Target",
                  icon: "gift",
                  trend: "PERCENTAGE",
                  template: "STACKED"
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!kpiField(
                  /* Select a record type for the data parameter */
                  data: null,
                  primaryText: "Total Donors",
                  icon: "user-friends",
                  trend: "PERCENTAGE",
                  template: "STACKED"
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!kpiField(
                  /* Select a record type for the data parameter */
                  data: null,
                  primaryText: "Active Campaigns",
                  icon: "bullhorn",
                  trend: "DIFFERENCE",
                  secondaryText: "vs last month",
                  template: "STACKED"
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!kpiField(
                  /* Select a record type for the data parameter */
                  data: null,
                  primaryText: "New Donors to Target",
                  icon: "user-plus",
                  trend: "NONE",
                  template: "STACKED"
                )
              }
            )
          },
          spacing: "SPARSE",
          stackWhen: {
            "TABLET_LANDSCAPE",
            "TABLET_PORTRAIT",
            "PHONE"
          },
          showDividers: true
        )
      }
    )
  )
}
```

## KPI with Chart

The main components in KPI with Chart are a [KPI component](KPI_Component.html), [card layouts](card_layout.html), [column layouts](Column_Layout.html), and a [column chart](Column_Chart_Component.html). This pattern will display a KPI and a chart on a card.

By default, the pattern does not populate with any data since the KPI component relies on a record type reference. The image below displays how the KPI with Chart pattern can look when configured with an Application record type.

![kpi_example_chart.png](images/patterns/kpi_example_chart.png)

You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

### Pattern expression

When you drag and drop the KPI with Chart pattern onto your interface, 77 lines of expression will be added to the section where you dragged it.

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
76
77
a!localVariables(
  local!fakeData: {
    a!map(month: "Jan", data: 100000),
    a!map(month: "Feb", data: 290000),
    a!map(month: "Mar", data: 330000),
    a!map(month: "Apr", data: 300000),
    a!map(month: "May", data: 400000),
    a!map(month: "Jun", data: 480000),
    a!map(month: "Jul", data: 520000),
    a!map(month: "Aug", data: 720000),
    a!map(month: "Sep", data: 680000),
    a!map(month: "Oct", data: 750000),
    a!map(month: "Nov", data: 950000),
    a!map(month: "Dec", data: 1000000)
  },
  a!cardLayout(
    contents: {
      a!kpiField(
        /* Select a record type for the data parameter */
        data: null,
        primaryText: "Total Revenue",
        icon: "file-invoice-dollar",
        size: "LARGE"
      ),
      a!cardLayout(
        contents: {
          a!columnChartField(
            label: "",
            categories: local!fakeData.month,
            series: {
              a!chartSeries(
                label: "2023totalRevenue",
                data: local!fakeData.data
              )
            },
            xAxisTitle: "",
            yAxisTitle: "",
            yAxisMin: null,
            yAxisMax: 1250000,
            stacking: "NORMAL",
            referenceLines: a!chartReferenceLine(
              value: 1.85E3,
              color: "#2E2E35",
              style: "SHORTDASH"
            ),
            showLegend: false,
            showDataLabels: false,
            showTooltips: true,
            allowDecimalAxisLabels: false,
            labelPosition: "COLLAPSED",
            colorScheme: a!colorSchemeCustom(
              colors: {
                "#ffbc11",
                "#9d4de3",
                "#F3961F",
                "#18b4ab",
                "#F9CC00"
              }
            ),
            height: "SHORT",
            xAxisStyle: "STANDARD",
            yAxisStyle: "NONE"
          )
        },
        style: "#FAFAFA",
        shape: "ROUNDED",
        padding: "LESS",
        showBorder: false
      )
    },
    height: "AUTO",
    shape: "ROUNDED",
    padding: "STANDARD",
    showBorder: false,
    showShadow: true
  )
)
```

### \[Line 1-15\] Define local variables

At the top of the pattern, local variables set up the data that will be used in the chart.

```sail
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
{
a!localVariables(
  local!fakeData: {
    a!map(month: "Jan", data: 100000),
    a!map(month: "Feb", data: 290000),
    a!map(month: "Mar", data: 330000),
    a!map(month: "Apr", data: 300000),
    a!map(month: "May", data: 400000),
    a!map(month: "Jun", data: 480000),
    a!map(month: "Jul", data: 520000),
    a!map(month: "Aug", data: 720000),
    a!map(month: "Sep", data: 680000),
    a!map(month: "Oct", data: 750000),
    a!map(month: "Nov", data: 950000),
    a!map(month: "Dec", data: 1000000)
  },
```

### \[Line 16-77\] Use a KPI component and column chart component to display KPIs

Here, we use [a!kpiField()](KPI_Component.html) to define the source data and display style for the KPI. When you adapt this pattern for your application, replace the value in the _data_ parameter with a reference to the record type you want to use as the source of the KPI.

Then, we use [a!columnChartField()](Column_Chart_Component.html) to create a column chart. [a!chartSeries](Chart_Series_Component.html) defines the data used for the chart using the local variable we defined above.

The rest of the pattern is used to customize the appearance of the column chart, including [a!chartReferenceLine()](Chart_Reference_Line_Component.html) to include a reference line and [a!colorSchemeCustom()](Chart_Custom_Color_Scheme_Component.html) to apply custom colors to the chart.

```sail
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
76
77
78
    {
  a!cardLayout(
    contents: {
      a!kpiField(
        /* Select a record type for the data parameter */
        data: null,
        primaryText: "Total Revenue",
        icon: "file-invoice-dollar",
        size: "LARGE"
      ),
      a!cardLayout(
        contents: {
          a!columnChartField(
            label: "",
            categories: local!fakeData.month,
            series: {
              a!chartSeries(
                label: "2023totalRevenue",
                data: local!fakeData.data
              )
            },
            xAxisTitle: "",
            yAxisTitle: "",
            yAxisMin: null,
            yAxisMax: 1250000,
            stacking: "NORMAL",
            referenceLines: a!chartReferenceLine(
              value: 1.85E3,
              color: "#2E2E35",
              style: "SHORTDASH"
            ),
            showLegend: false,
            showDataLabels: false,
            showTooltips: true,
            allowDecimalAxisLabels: false,
            labelPosition: "COLLAPSED",
            colorScheme: a!colorSchemeCustom(
              colors: {
                "#ffbc11",
                "#9d4de3",
                "#F3961F",
                "#18b4ab",
                "#F9CC00"
              }
            ),
            height: "SHORT",
            xAxisStyle: "STANDARD",
            yAxisStyle: "NONE"
          )
        },
        style: "#FAFAFA",
        shape: "ROUNDED",
        padding: "LESS",
        showBorder: false
      )
    },
    height: "AUTO",
    shape: "ROUNDED",
    padding: "STANDARD",
    showBorder: false,
    showShadow: true
  )
)
```

## KPI with Progress Bar

The main components in KPI with Progress Bar are [KPI components](KPI_Component.html), [card layouts](card_layout.html), [column layouts](Column_Layout.html), and a [progress bar](Progress_Bar_Component.html). This pattern will display three KPIs with a progress bar.

By default, the pattern does not populate with any data since the KPI component relies on a record type reference. The image below displays how the KPI with Progress Bar pattern can look when configured with an Application record type.

![kpi_example_progress.png](images/patterns/kpi_example_progress.png)

### Pattern expression

When you drag and drop the KPI with Progress Bar pattern onto your interface, 89 lines of expression will be added to the section where you dragged it.

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
76
77
78
79
80
81
82
83
84
85
86
87
88
89
{
  a!columnsLayout(
    columns: {
      a!columnLayout(
        contents: a!cardLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!kpiField(
                  /* Select a record type for the data parameter */
                  data: null,
                  primaryText: "Total Revenue",
                  icon: "usd",
                  iconStyle: "STAMP",
                  trend: "NONE",
                  secondaryText: "Target Revenue: $1,200,000",
                  template: "ADJACENT"
                ),
                a!progressBarField(
                  labelPosition: "COLLAPSED",
                  percentage: 80,
                  color: "POSITIVE",
                  style: "THIN",
                  marginAbove: "NONE",
                  marginBelow: "NONE",
                  showPercentage: false
                )
              },
              style: "TRANSPARENT",
              padding: "NONE",
              showBorder: false
            )
          },
          style: "#0F1C2E",
          shape: "ROUNDED",
          padding: "STANDARD",
          showBorder: false,
          showShadow: true
        )
      ),
      a!columnLayout(
        contents: a!cardLayout(
          contents: {
            a!kpiField(
              /* Select a record type for the data parameter */
              data: null,
              primaryText: "Total Visitors",
              icon: "walking",
              iconColor: "#FAA92F",
              iconStyle: "STAMP",
              trend: "PERCENTAGE",
              secondaryText: "vs 2023",
              template: "ADJACENT"
            )
          },
          height: "SHORT",
          style: "#0F1C2E",
          shape: "ROUNDED",
          padding: "STANDARD",
          showBorder: false,
          showShadow: true
        )
      ),
      a!columnLayout(
        contents: a!cardLayout(
          contents: {
            a!kpiField(
              /* Select a record type for the data parameter */
              data: null,
              primaryText: "Total Orders",
              icon: "shopping-basket",
              iconColor: "#EB4183",
              iconStyle: "STAMP",
              trend: "NONE",
              secondaryText: "vs 2023",
              template: "ADJACENT"
            )
          },
          height: "SHORT",
          style: "#0F1C2E",
          shape: "ROUNDED",
          padding: "STANDARD",
          showBorder: false,
          showShadow: true
        )
      )
    }
  )
}
```

## KPI with Sparkline

The main components in KPI with Sparkline are [KPI components](KPI_Component.html), [side by side layouts](Side_By_Side_Layout.html), [card layouts](card_layout.html), [column layouts](Column_Layout.html), and [line charts](Line_Chart_Component.html). This pattern will display three KPIs with sparklines. A sparkline is a simplified line chart without axes that shows the movement of the metric over time.

By default, the pattern does not populate with any data since the KPI component relies on a record type reference. The image below displays how the KPI with Sparkline pattern can look when configured with an Application record type.

![kpi_example_sparkline.png](images/patterns/kpi_example_sparkline.png)

You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

### Pattern expression

When you drag and drop the KPI with Sparkline pattern onto your interface, 162 lines of expression will be added to the section where you dragged it.

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
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
a!localVariables(
  local!fakeData1: { 2, 3, 5, 13, 20, 17, 23, 24, 22, 18, 12, 10, 3, 4, 2, 15, 16, 20, 26, 23, 27, 28, 30, 34, 33, 32, 30, 35, 40, 38, 59, 76 },
  local!fakeData2: { 13, 15, 14, 12, 13, 12, 14, 15, 18, 25, 30, 35, 37, 40, 39, 46, 42, 52, 48, 53, 55, 56, 59, 67, 73, 77, 73, 75, 69, 64, 60, 55 },
  local!fakeData3: { 22, 30, 45, 41, 35, 54, 98, 43, 95, 201, 258, 178, 395, 213, 234, 469, 378, 520, 634, 734, 674, 700, 1323, 1320, 1211, 1432, 1343 },
  a!columnsLayout(
    columns: {
      a!columnLayout(
        contents: {
          a!cardLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!kpiField(
                      /* Select a record type for the data parameter */
                      data: null,
                      primaryText: "Total Orders",
                      icon: "shopping-basket",
                      trend: "PERCENTAGE",
                      size: "STANDARD"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!lineChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(
                          label: "2023 Total Revenue",
                          data: local!fakeData1
                        )
                      },
                      referenceLines: a!chartReferenceLine(value: null, style: "SOLID"),
                      showLegend: false,
                      showDataLabels: false,
                      showTooltips: false,
                      allowDecimalAxisLabels: false,
                      connectNulls: false,
                      colorScheme: a!colorSchemeCustom(colors: { "#756BD1", "#5448C6" }),
                      height: "MICRO",
                      xAxisStyle: "NONE",
                      yAxisStyle: "NONE"
                    ),
                    width: "AUTO"
                  )
                }
              )
            },
            style: "#0F1C2E",
            shape: "ROUNDED",
            padding: "STANDARD",
            showBorder: false,
            showShadow: true
          )
        }
      ),
      a!columnLayout(
        contents: {
          a!cardLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!kpiField(
                      /* Select a record type for the data parameter */
                      data: null,
                      primaryText: "Total Sales",
                      icon: "shopping-cart",
                      trend: "PERCENTAGE",
                      size: "STANDARD"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!lineChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(
                          label: "2023 Total Revenue",
                          data: local!fakeData2
                        )
                      },
                      referenceLines: a!chartReferenceLine(value: null, style: "SOLID"),
                      showLegend: false,
                      showDataLabels: false,
                      showTooltips: false,
                      allowDecimalAxisLabels: false,
                      connectNulls: false,
                      colorScheme: a!colorSchemeCustom(colors: { "#F47348", "#5448C6" }),
                      height: "MICRO",
                      xAxisStyle: "NONE",
                      yAxisStyle: "NONE"
                    ),
                    width: "AUTO"
                  )
                }
              )
            },
            style: "#0F1C2E",
            shape: "ROUNDED",
            padding: "STANDARD",
            showBorder: false,
            showShadow: true
          )
        }
      ),
      a!columnLayout(
        contents: {
          a!cardLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!kpiField(
                      /* Select a record type for the data parameter */
                      data: null,
                      primaryText: "Online Visitors",
                      icon: "globe-alt",
                      trend: "PERCENTAGE",
                      size: "STANDARD"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!lineChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(
                          label: "2023 Total Revenue",
                          data: local!fakeData3
                        )
                      },
                      referenceLines: a!chartReferenceLine(value: null, style: "SOLID"),
                      showLegend: false,
                      showDataLabels: false,
                      showTooltips: false,
                      allowDecimalAxisLabels: false,
                      connectNulls: false,
                      colorScheme: a!colorSchemeCustom(colors: { "#F8B439", "#5448C6" }),
                      height: "MICRO",
                      xAxisStyle: "NONE",
                      yAxisStyle: "NONE"
                    ),
                    width: "AUTO"
                  )
                }
              )
            },
            style: "#0F1C2E",
            shape: "ROUNDED",
            padding: "STANDARD",
            showBorder: false,
            showShadow: true
          )
        }
      )
    }
  )
)
```

### \[Line 1-4\] Define local variables

At the top of the pattern, local variables set up the data that will be used in the sparklines.

```sail
1
2
3
4
5
{
a!localVariables(
  local!fakeData1: { 2, 3, 5, 13, 20, 17, 23, 24, 22, 18, 12, 10, 3, 4, 2, 15, 16, 20, 26, 23, 27, 28, 30, 34, 33, 32, 30, 35, 40, 38, 59, 76 },
  local!fakeData2: { 13, 15, 14, 12, 13, 12, 14, 15, 18, 25, 30, 35, 37, 40, 39, 46, 42, 52, 48, 53, 55, 56, 59, 67, 73, 77, 73, 75, 69, 64, 60, 55 },
  local!fakeData3: { 22, 30, 45, 41, 35, 54, 98, 43, 95, 201, 258, 178, 395, 213, 234, 469, 378, 520, 634, 734, 674, 700, 1323, 1320, 1211, 1432, 1343 },
```

### \[Line 5-162\] Use KPI components and line chart components to display KPIs

Here, we use [a!sideBySideLayout()](Side_By_Side_Layout.html) for each KPI and sparkline so that the value and chart display next to each other. Within each side by side layout, we use one [a!sideBySideItem()](Side_By_Side_Item.html) to define the KPI, then a second `a!sideBySideItem()` to define the chart that goes with that KPI.

For each KPI, [a!kpiField()](KPI_Component.html) defines the source data and display style for the KPI. When you adapt this pattern for your application, replace the values in the _data_ parameters with references to the record types you want to use as the source of the KPIs.

Then, for each sparkline, we use [a!lineChartField()](Line_Chart_Component.html) to create a simple line chart. [a!chartSeries](Chart_Series_Component.html) defines the data used for the chart using the local variable we defined above.

We use [a!chartReferenceLine()](Chart_Reference_Line_Component.html) to include a reference line for the charts. In this pattern, the _value_ parameter for each reference line is `null`, so it will not be displayed. You can replace this value if you want to show a reference line on any of the sparklines.

```sail
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
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
{
  a!columnsLayout(
    columns: {
      a!columnLayout(
        contents: {
          a!cardLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!kpiField(
                      /* Select a record type for the data parameter */
                      data: null,
                      primaryText: "Total Orders",
                      icon: "shopping-basket",
                      trend: "PERCENTAGE",
                      size: "STANDARD"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!lineChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(
                          label: "2023 Total Revenue",
                          data: local!fakeData1
                        )
                      },
                      referenceLines: a!chartReferenceLine(value: null, style: "SOLID"),
                      showLegend: false,
                      showDataLabels: false,
                      showTooltips: false,
                      allowDecimalAxisLabels: false,
                      connectNulls: false,
                      colorScheme: a!colorSchemeCustom(colors: { "#756BD1", "#5448C6" }),
                      height: "MICRO",
                      xAxisStyle: "NONE",
                      yAxisStyle: "NONE"
                    ),
                    width: "AUTO"
                  )
                }
              )
            },
            style: "#0F1C2E",
            shape: "ROUNDED",
            padding: "STANDARD",
            showBorder: false,
            showShadow: true
          )
        }
      ),
      a!columnLayout(
        contents: {
          a!cardLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!kpiField(
                      /* Select a record type for the data parameter */
                      data: null,
                      primaryText: "Total Sales",
                      icon: "shopping-cart",
                      trend: "PERCENTAGE",
                      size: "STANDARD"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!lineChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(
                          label: "2023 Total Revenue",
                          data: local!fakeData2
                        )
                      },
                      referenceLines: a!chartReferenceLine(value: null, style: "SOLID"),
                      showLegend: false,
                      showDataLabels: false,
                      showTooltips: false,
                      allowDecimalAxisLabels: false,
                      connectNulls: false,
                      colorScheme: a!colorSchemeCustom(colors: { "#F47348", "#5448C6" }),
                      height: "MICRO",
                      xAxisStyle: "NONE",
                      yAxisStyle: "NONE"
                    ),
                    width: "AUTO"
                  )
                }
              )
            },
            style: "#0F1C2E",
            shape: "ROUNDED",
            padding: "STANDARD",
            showBorder: false,
            showShadow: true
          )
        }
      ),
      a!columnLayout(
        contents: {
          a!cardLayout(
            contents: {
              a!sideBySideLayout(
                items: {
                  a!sideBySideItem(
                    item: a!kpiField(
                      /* Select a record type for the data parameter */
                      data: null,
                      primaryText: "Online Visitors",
                      icon: "globe-alt",
                      trend: "PERCENTAGE",
                      size: "STANDARD"
                    ),
                    width: "MINIMIZE"
                  ),
                  a!sideBySideItem(
                    item: a!lineChartField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      series: {
                        a!chartSeries(
                          label: "2023 Total Revenue",
                          data: local!fakeData3
                        )
                      },
                      referenceLines: a!chartReferenceLine(value: null, style: "SOLID"),
                      showLegend: false,
                      showDataLabels: false,
                      showTooltips: false,
                      allowDecimalAxisLabels: false,
                      connectNulls: false,
                      colorScheme: a!colorSchemeCustom(colors: { "#F8B439", "#5448C6" }),
                      height: "MICRO",
                      xAxisStyle: "NONE",
                      yAxisStyle: "NONE"
                    ),
                    width: "AUTO"
                  )
                }
              )
            },
            style: "#0F1C2E",
            shape: "ROUNDED",
            padding: "STANDARD",
            showBorder: false,
            showShadow: true
          )
        }
      )
    }
  )
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...