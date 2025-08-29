---
source_url: https://docs.appian.com/suite/help/25.3/recipe-use-a-filter-to-adjust-chart-reference-lines.html
original_path: recipe-use-a-filter-to-adjust-chart-reference-lines.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use a Filter to Adjust Chart Reference Lines

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

Using a dropdown, filter the results of a data set while also adjusting a chart reference line.

![images:SAIL_Recipe_Chart_Ref_Line.png](images/SAIL_Recipe_Chart_Ref_Line.png)

This scenario demonstrates:

-   How to conditionally adjust the value of a chart reference line to account for differing limits on a set of data.
-   How to configure multiple chart reference lines on a single chart.

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
a!localVariables(
  local!selectedDepartment: "Engineering",
  local!data: {
    a!map(department: "Engineering", quarter: "2015-Q1", spent: 15804),
    a!map(department: "Engineering", quarter: "2015-Q2", spent: 13432),
    a!map(department: "Engineering", quarter: "2015-Q3", spent: 23400),
    a!map(department: "Engineering", quarter: "2015-Q4", spent: 15900),
    a!map(department: "Engineering", quarter: "2016-Q1", spent: 12004),
    a!map(department: "Engineering", quarter: "2016-Q2", spent: 13901),
    a!map(department: "Engineering", quarter: "2016-Q3", spent: 14142),
    a!map(department: "Engineering", quarter: "2016-Q4", spent: 17980),
    a!map(department: "Engineering", quarter: "2017-Q1", spent: 13822),
    a!map(department: "Engineering", quarter: "2017-Q2", spent: 11053),
    a!map(department: "Engineering", quarter: "2017-Q3", spent: 16607),
    a!map(department: "Engineering", quarter: "2017-Q4", spent: 15449),
    a!map(department: "Professional Services", quarter: "2015-Q1", spent: 18883),
    a!map(department: "Professional Services", quarter: "2015-Q2", spent: 22904),
    a!map(department: "Professional Services", quarter: "2015-Q3", spent: 19192),
    a!map(department: "Professional Services", quarter: "2015-Q4", spent: 20043),
    a!map(department: "Professional Services", quarter: "2016-Q1", spent: 17790),
    a!map(department: "Professional Services", quarter: "2016-Q2", spent: 24405),
    a!map(department: "Professional Services", quarter: "2016-Q3", spent: 21031),
    a!map(department: "Professional Services", quarter: "2016-Q4", spent: 25787),
    a!map(department: "Professional Services", quarter: "2017-Q1", spent: 17401),
    a!map(department: "Professional Services", quarter: "2017-Q2", spent: 19903),
    a!map(department: "Professional Services", quarter: "2017-Q3", spent: 18400),
    a!map(department: "Professional Services", quarter: "2017-Q4", spent: 20801),
    a!map(department: "Sales", quarter: "2015-Q1", spent: 29990),
    a!map(department: "Sales", quarter: "2015-Q2", spent: 32063),
    a!map(department: "Sales", quarter: "2015-Q3", spent: 24504),
    a!map(department: "Sales", quarter: "2015-Q4", spent: 24994),
    a!map(department: "Sales", quarter: "2016-Q1", spent: 26803),
    a!map(department: "Sales", quarter: "2016-Q2", spent: 37400),
    a!map(department: "Sales", quarter: "2016-Q3", spent: 27880),
    a!map(department: "Sales", quarter: "2016-Q4", spent: 22904),
    a!map(department: "Sales", quarter: "2017-Q1", spent: 32701),
    a!map(department: "Sales", quarter: "2017-Q2", spent: 27032),
    a!map(department: "Sales", quarter: "2017-Q3", spent: 28443),
    a!map(department: "Sales", quarter: "2017-Q4", spent: 23940)
  },
  local!selectedData: index(
    local!data,
    wherecontains(local!selectedDepartment, touniformstring(local!data.department)),
    null /* Return nothing if the selected department isn't in the list */
  ),
  {
    a!sectionLayout(
      contents: {
        a!dropdownField(
          label: "Department",
          choiceLabels: {"Engineering", "Professional Services", "Sales"},
          choiceValues: {"Engineering", "Professional Services", "Sales"},
          value: local!selectedDepartment,
          saveInto: local!selectedDepartment
        ),
        a!lineChartField(
          label: "Money Spent per Quarter",
          categories: local!data.quarter,
          series: a!chartSeries(data: local!selectedData.spent),
          xAxisTitle: "Quarter",
          yAxisTitle: "Amount Spent (in $)",
          referenceLines: {
            a!chartReferenceLine(
              label: "100% Budget",
              value: if(
                local!selectedDepartment = "Engineering",
                18000,
                if(
                  local!selectedDepartment = "Professional Services",
                  21000,
                  30000
                )
              ),
              color: "ORANGE"
            ),
            a!chartReferenceLine(
              label: "125% Budget",
              value: if(
                local!selectedDepartment = "Engineering",
                22500,
                if(
                  local!selectedDepartment = "Professional Services",
                  26250,
                  37500
                )
              ),
              color: "RED",
              style: "DASHDOT"
            )
          },
          showLegend: false
        )
      }
    )
  }
)
```

## Test it out

1.  Use the _Department_ dropdown to select a value other than `Engineering`. Notice that the data set and reference lines in the line chart change.

## Notable implementation details

-   This example uses a hard-coded data set. To use data from a record type, use [a!queryRecordType()](fnc_system_queryrecordtype.html). The dropdown would then populate the value passed into the [query filter](fnc_system_a_queryfilter.html) or [logical expression](fnc_system_a_querylogicalexpression.html).
-   The chart reference values are hard-coded. Typically, these limits would be stored in a custom rule, constant, or lookup table.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...