---
source_url: https://docs.appian.com/suite/help/25.3/fnc_evaluation_a_asyncvariable.html
original_path: fnc_evaluation_a_asyncvariable.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!asyncVariable() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!asyncVariable**( _value, refreshOnReferencedVarChange, refreshOnVarChange, refreshAfter_ )

Use in [a!localVariables()](fnc_evaluation_a_localvariables.html) to load data asynchronously and configure refresh behavior for local variables that take more than 500 ms to load. Components that depend on the local variable will show a placeholder until the data is ready. To control the refresh behavior without loading the data asynchronously, use [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html). When used outside of an interface, the refresh parameters are ignored and the variable doesn’t load asynchronously.

**Note:**  In [offline mobile and portal interfaces](#using-in-offline-mobile-and-portal-interfaces), async variables will load with the rest of the interface, instead of loading in the background.

**See also**: [a!localVariables()](Local_Variables.html), [Asynchronous Loading](async_loading.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The expression to get data that will load asynchronously.

 |
|

`refreshOnReferencedVarChange`

 |

_Boolean_

 |

When `true`, the value of this async variable will be refreshed each time the value of any variable it references within the value parameter is updated. To refresh the local variable when another variable that is not used within value changes, use refreshOnVarChange. Default: `true`.

 |
|

`refreshOnVarChange`

 |

_Any Type_

 |

Refreshes the value of this async variable each time any of these specific variables change. This allows you to refresh the value when a variable that is not referenced within the value parameter is updated. You can define either using a single variable (refreshOnVarChange: local!var1) or a list of variables (refreshOnVarChange: {local!var1, local!var2}).

 |
|

`refreshAfter`

 |

_List of Text String_

 |

Refreshes the value of this async variable after a record action completes from a dialog window within a!recordActionField(). Instead of requiring the user to reload the entire page, this parameter allows you to refresh a local variable after the user completes a record action. Valid values: `"RECORD_ACTION"`.

 |

## Returns

Any Type

## Usage considerations

### Using in offline mobile and portal interfaces

[Offline mobile](offline-mobile-overview.html) and [portal](portals-home.html) interfaces do not support async loading. Any local variable that uses `a!asyncVariable()` will simply load synchronously in portals and offline mobile. This means the data will load with the rest of the interface, and no placeholder will be displayed.

### Grids, charts, and KPIs: Choosing between a!asyncVariable and loadDataAsync

[Read-only grid](Paging_Grid_Component.html), [chart](SAIL_Components.html#charts), and [KPI](KPI_Component.html) components offer two ways to load their data asynchronously. Use the following table to decide which method is best for your use case.

| Method | When to use | How it works |
| --- | --- | --- |
| _loadDataAsync_ parameter | When a read-only grid, chart, or KPI component's data is sourced from a record type and is **not used elsewhere** in the interface. | Use a record type for the _data_ parameter and set `loadDataAsync` to `true`. |
| `a!asyncVariable()` | When you need to use the **same data in multiple components** on an interface. | Define your data query inside an `a!asyncVariable` and use the local variable in the component's `data` parameter. |

**Note:**  If you use an async variable as the data source for a read-only grid, chart, or KPI, the component will always load asynchronously, even if _loadDataAsync_ is set to false.

### Anything that relies on an async variable will also load asynchronously

Any expression or variable that relies on an async variable will also become asynchronous. This means any component or variable that depends on the async variable will only be evaluated after the async data is available.

### Placeholder behavior

When an interface is waiting on an async variable, a placeholder appears. Where it appears depends on which components are using the async data.

| **Condition** | **Placeholder Behavior** |
| --- | --- |
| The component using the async data [supports placeholders](#components-that-support-placeholders) | That component shows its own placeholder |
| The component using the async data doesn't support placeholders | The first component it's nested in that supports placeholders will show the placeholder |
| No components in the hierarchy support placeholders | The entire interface displays a placeholder |

For example, in the following expression, the async variable is used in the gauge component. However, the contents of the box layout will display a loading indicator since it is the inner-most component that can display a placeholder.

![gif of a component that relies on an async variable that can't display a placeholder](images/async_placeholder.gif)

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
a!localVariables(
  local!asyncData: a!asyncVariable(value: "60"),
  {
    a!sectionLayout(
      label: "Outer Section Layout",
      contents: {
        a!boxLayout(
          label: "Middle Box Layout",
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: a!richTextItem(
                text: "Inner Rich Text",
                color: "ACCENT",
                style: "STRONG"
              )
            ),
            a!gaugeField(
              label: "Inner Gauge Component",
              percentage: local!asyncData,
              primaryText: a!gaugePercentage()
            )
          }
        )
      }
    )
  }
)
```

#### Limiting how much of an interface displays a placeholder

If you find that too much of your interface is being replaced by a loading indicator, you can wrap the specific component that needs the async data in a component that is able to render a placeholder, such as `a!cardLayout()`.

For example, the following expression would cause anything inside the section layout to display a placeholder until the data is available.

![gif of a component that relies on an async variable that can't display a placeholder](images/async_placeholder_without_card.gif)

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
a!localVariables(
  local!asyncData: a!asyncVariable(
    value: a!dataSubset(
      data: { "Low", "Medium", "High" },
      identifiers: { 1, 2, 3 }
    )
  ),
  {
    a!sectionLayout(
      label: "Section Layout",
      contents: {
        a!boxLayout(
          label: "Box Layout"
        ),
        a!dropdownField(
          choiceLabels: local!asyncData.data,
          choiceValues: local!asyncData.identifiers,
          label: "Dropdown",
          placeholder: "Select a value"
        )
      }
    )
  }
)

```

However, if you wrap the dropdown component in a card layout, the box layout displays immediately, while the dropdown component displays a placeholder. To make the card layout invisible, add the `padding: "NONE"` and `showBorder: false` parameters.

**Tip:**  You can also add the _height_ parameter to the card layout to ensure that the height of the placeholder is always the same.

![gif of a component that relies on an async variable wrapped inside a card layout](images/async_placeholder_with_card.gif)

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
a!localVariables(
  local!asyncData: a!asyncVariable(
    value: a!dataSubset(
      data: { "Low", "Medium", "High" },
      identifiers: { 1, 2, 3 }
    )
  ),
  {
    a!sectionLayout(
      label: "Section Layout",
      contents: {
        a!boxLayout(
          label: "Box Layout"
        ),
        a!cardLayout(
          contents: {
            a!dropdownField(
              choiceLabels: local!asyncData.data,
              choiceValues: local!asyncData.identifiers,
              label: "Dropdown",
              placeholder: "Select a value"
            )
          },
          height: "SHORT",
          padding: "NONE",
          showBorder: false
        )
      }
    )
  }
)
```

#### Components that support placeholders

The following components can display placeholders:

-   Layouts:
    -   `a!boxLayout()`
    -   `a!cardLayout()`
    -   `a!cardGroupLayout()`
    -   `a!columnsLayout()`
    -   `a!columnLayout()`
    -   `a!sectionLayout()`
    -   `a!sideBySideLayout()`
    -   `a!wizardStep()`
-   Charts:
    -   `a!areaChartField()`
    -   `a!barChartField()`
    -   `a!columnChartField()`
    -   `a!lineChartField()`
    -   `a!pieChartField()`
    -   `a!scatterChartField()`
-   Other display components:
    -   `a!gridField()`
    -   `a!kpiField()`

### Form submissions

[Submit buttons](Button_Component.html#using-the-submit-parameter) will block submission of the form if an async variable is still loading or in an error state. A validation message will appear below the placeholder.

### Performance considerations

To maintain application performance and scalability, use `a!asyncVariable()` strategically, not for every query. Each async variable requires additional server resources, so using them too often can negatively impact your environment's performance and the user experience.

As a best practice:

-   **Start with the slowest loading data**. Focus your efforts on the parts of the interface that will provide the most noticeable improvement.
-   **Limit the number of async variables to 15 per interface**. This will help you avoid potential performance issues.
-   **Don't make a variable async if it's already fast**. If a query consistently returns in under 500ms, the flash of a loading placeholder can feel more jarring to a user than a brief, synchronous load.

**Note:**  The interface [performance details](Performance_View.html) don't measure the true evaluation time for async variables. Async variables will always appear with a time of `<1` ms (less than 1 millisecond), regardless of how long its data actually takes to load.

## Examples

### Basic async query

This example demonstrates how to use `a!asyncVariable()` to asynchronously load data for a chart. While the chart data is being loaded, a placeholder replaces the chart and the section layout and chart label display.

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
a!localVariables(
  local!submissionsByDate: a!asyncVariable(
    /* a!dataSubset could be replaced with a query
    like a!queryRecordType() */
    value: a!dataSubset(
      data: {
        a!map(date: today() - 7, count: 12),
        a!map(date: today() - 6, count: 15),
        a!map(date: today() - 5, count: 22),
        a!map(date: today() - 4, count: 18),
        a!map(date: today() - 3, count: 25),
        a!map(date: today() - 2, count: 30),
        a!map(date: today() - 1, count: 21)
      }
    )
  ),
  {
    a!sectionLayout(
      label: "Submission Dashboard",
      contents: {
        a!columnChartField(
          label: "Submissions Over Last 7 Days",
          categories: local!submissionsByDate.data.date,
          series: {
            a!chartSeries(
              label: "Count",
              data: local!submissionsByDate.data.count
            )
          }
        )
      }
    )
  }
)
```

### Reusing async data

This example shows how the result of a single async query can be used in multiple components. The `local!salesByCategory` variable is used to populate both a card choice and a bar chart component. Both components will display placeholders until the data is loaded.

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
a!localVariables(
  local!currentMonth: month(today()),
  local!timePeriodSelection: local!currentMonth,
  local!selectedCategory: 1,
  local!salesByCategory: a!asyncVariable(
    /* a!dataSubset could be replaced with a query
    like a!queryRecordType() */
    value: a!dataSubset(
      data: {
        a!map(
          id: 1,
          productLine: "Beverages",
          beverageTypes: {
    /* This could be a reference to a related record.
    The rest of the product lines would have similar data. */
            a!map(
              productCode: "Coke",
              sales: 20535.24
            ),
            a!map(
              productCode: "Pepsi",
              sales: 13556.06
            ),
            a!map(
              productCode: "Dr Pepper",
              sales: 12300.55
            ),
            a!map(
              productCode: "Sprite",
              sales: 5168.4
            ),
            a!map(
              productCode: "Other",
              sales: 4271.5
            ),
            a!map(
              productCode: "Vitamin Water",
              sales: 4030.47
            )
          },
          total_sales_sum: 111562.51
        ),
        a!map(
          id: 2,
          productLine: "Cereals",
          total_sales_sum: 59862.22
        ),
        a!map(
          id: 3,
          productLine: "Dairy",
          total_sales_sum: 43763.59
        ),
        a!map(
          id: 4,
          productLine: "Culinary",
          total_sales_sum: 40160.97
        ),
        a!map(
          id: 5,
          productLine: "Infant Nutrition",
          total_sales_sum: 6284.0
        )
      }
    )
  ),
  {
    a!headingField(
      text: "Top Selling Products By Category & Month",
      size: "LARGE",
      fontWeight: "BOLD",
      marginBelow: "LESS"
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!dropdownField(
              label: "Time Period",
              choiceLabels: {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"},
              choiceValues: { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 },
              value: local!timePeriodSelection,
              saveInto: local!timePeriodSelection,
              marginBelow: "STANDARD"
            )
          },
          width: "NARROW"
        )
      }
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardChoiceField(
              label: "Categories",
              data: local!salesByCategory.data,
              cardTemplate: a!cardTemplateBarTextStacked(
                id: fv!data.id,
                primaryText: fv!data.productLine,
                secondaryText: a!currency(
                  isoCode: "USD",
                  value: fv!data.total_sales_sum,
                  decimalPlaces: 0,
                  format: "SYMBOL"
                )
              ),
              value: local!selectedCategory,
              saveInto: local!selectedCategory,
              maxSelections: 1
            )
          },
          width: "NARROW_PLUS"
        ),
        a!columnLayout(
          contents: {
            /* This bar chart could be set up to change based
            on the chosen category */
            a!barChartField(
              label: "Selected Category",
              categories: index(
                index(
                  local!salesByCategory.data,
                  "beverageTypes"
                ),
                "productCode"
              ),
              series: a!chartSeries(
                  label: "Total Sales",
                  data: index(
                    index(
                      local!salesByCategory.data[1],
                      "beverageTypes"
                    ),
                    "sales"
                  )
                ),
              showLegend: false,
              showTooltips: true
            )
          }
        )
      }
    )
  }
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...