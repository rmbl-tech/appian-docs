---
source_url: https://docs.appian.com/suite/help/25.3/recipe-searching-on-multiple-fields.html
original_path: recipe-searching-on-multiple-fields.html
version: "25.3"
title: "Searching on Multiple Columns"
page_id: "recipe-searching-on-multiple-fields"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Searching on Multiple Columns

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

Display a grid populated based on search criteria specified by end users.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

**Note:**  This recipe uses example data and objects created through the [Use the Write to Data Store Entity Smart Service Function on an Interface](recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) recipe. Make sure you've completed that recipe in your environment first.

**Tip:**  If the data source for a read-only grid is a record type, the grid will automatically add a search box above the grid that searches across all fields. This pattern is still useful if you want to limit which of the displayed columns you want to search, or if the data source for your grid is not a record type.

Search criteria, when left blank, are not included in the query. To hide the search box on your grid, set the value of the _showSearchBox_ parameter to "false".

![](images/Searching_On_Multiple_Fields_Query_Recipe.png)

This scenario demonstrates:

-   How to store values from multiple fields to filter query results.

## Expression

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
a!localVariables(
  /* In a real app, these values should be held in the database or in a constant. */
  local!allDepartments: {"Corporate", "Engineering", "Finance", "HR", "Professional Services", "Sales"},
  /* These local variables store filter values. */
  local!lastName,
  local!title,
  local!department,
  /* The value of this variable is false if any of the filter variables are not null. */
  local!noFiltersApplied: all(fn!isnull, {local!lastName, local!title, local!department}),
  a!sectionLayout(
    contents: {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              /* Refreshing after KEYPRESS means the filter is applied to the grid every
                 time the user presses a key. For large data sets where performance is an
                 issue, you could refresh after the user leaves the field (UNFOCUS).*/
              a!textField(
                label: "Last Name",
                value: local!lastName,
                saveInto: local!lastName,
                refreshAfter: "KEYPRESS"
              ),
              a!textField(
                label: "Title",
                value: local!title,
                saveInto: local!title,
                refreshAfter: "KEYPRESS"
              ),
              a!dropdownField(
                label: "Department",
                placeholder: "All Departments",
                choiceLabels: local!allDepartments,
                choiceValues: local!allDepartments,
                value: local!department,
                saveInto: local!department
              ),
              a!buttonLayout(
                primaryButtons: {
                  a!buttonWidget(
                    label: "Clear",
                    saveInto: {
                      local!lastName,
                      local!title,
                      local!department
                    },
                    disabled: local!noFiltersApplied
                  )
                }
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!gridField(
                label: "Read-only Grid",
                labelPosition: "ABOVE",
                data: a!queryEntity(
                  entity: cons!EMPLOYEE_ENTITY,
                  query: a!query(
                    selection: a!querySelection(
                      columns: {
                        a!queryColumn(field: "lastName"),
                        a!queryColumn(field: "title"),
                        a!queryColumn(field: "department")
                      }
                    ),
                    logicalExpression: a!queryLogicalExpression(
                      operator: "AND",
                      filters: {
                        /* The 'includes' operator compares strings and will return partial matches,
                           which is how most searching filters work.

                           The filter will also reevaluate anytime the associated local variables
                           change. To use a button to search instead, make sure the search string
                           saves to a different local variable first. */
                        a!queryFilter(
                          field: "lastName",
                          operator: "includes",
                          value: local!lastName
                        ),
                        a!queryFilter(
                          field: "title",
                          operator: "includes",
                          value: local!title
                        ),
                        a!queryFilter(
                          field: "department",
                          operator: "=",
                          value: local!department
                        )
                      },
                      ignoreFiltersWithEmptyValues: true
                    ),
                    pagingInfo: fv!pagingInfo
                  ),
                  fetchTotalCount: true
                ),
                columns: {
                  a!gridColumn(
                    label: "Last Name",
                    sortField: "lastName",
                    value: fv!row.lastName
                  ),
                  a!gridColumn(
                    label: "Title",
                    sortField: "title",
                    value: fv!row.title
                  ),
                  a!gridColumn(
                    label: "Department",
                    sortField: "department",
                    value: fv!row.department
                  )
                },
                pagesize: 5,
                initialsorts: a!sortInfo(
                  field: "lastName",
                  ascending: true
                )
              )
            }
          )
        }
      )
    }
  )
)
```

## Test it out

1.  Select **Sales** in the department dropdown. The list of employees in the grid is now limited to those in the Sales department.
2.  Click the **Clear** button. On the Last name field, enter "Johnson". The grid now contains only employees whose last name contains "Johnson".

## Notable implementation details

-   Fields are set to refresh after keypress. As soon as an end user types in a value the filter will evaluate and reduce the datasubset. If this pattern is not desired, you should attempt to only evaluate after unfocus, or use a search button that performs the evaluation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...