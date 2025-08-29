---
source_url: https://docs.appian.com/suite/help/25.3/grid-with-detail-pattern.html
original_path: grid-with-detail-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Grid With Detail Pattern

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

The grid with detail pattern allows users to select an item from a grid to see more details next to the grid. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

Use a grid with detail pattern to show a list of items and allow users to select an item to see more of its details alongside the list.

Arrange the list and details as two columns.

Choose the "Row Highlight" [selection style](sail/ux-grids.html#selection-style) for the grid. This will allow users to click anywhere on a row to select it. This style also highlights the selected row.

![screenshot of the grid with detail pattern](images/patterns/grid-with-detail.png)

## Design structure

The main components in this pattern are a [Read-Only Grid](Paging_Grid_Component.html) and a set of [text display fields](Text_Component.html) that are alternately visible depending on whether `local!selectedEmployee` is `null`.

For this pattern, a small set of items is used. You should use a relatively smaller batch size, such as 10 items, so that users don't have to scroll down to make a selection in the grid and scroll back up to see the details.

[![images/patterns/grid-with-detail-details.png](images/patterns/grid-with-detail-details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img0)

[![](images/patterns/grid-with-detail-details.png)](#_)

### Pattern expression

This pattern introduces a 139-line expression to the interface.

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
{
  a!localVariables(
    local!employees: {
      {id: 1, name: "Elizabeth Ward",  dept: "Engineering",     role: "Senior Engineer",      team: "Front-End Components",     pto: 15, startDate: today()-500},
      {id: 2, name: "Michael Johnson", dept: "Finance",         role: "Payroll Manager",      team: "Accounts Payable",         pto: 2,  startDate: today()-100},
      {id: 3, name: "John Smith",      dept: "Engineering",     role: "Quality Engineer",     team: "User Acceptance Testing",  pto: 5,  startDate: today()-1000},
      {id: 4, name: "Diana Hellstrom", dept: "Engineering",     role: "UX Designer",          team: "User Experience",          pto: 49, startDate: today()-1200},
      {id: 5, name: "Francois Morin",  dept: "Sales",           role: "Account Executive",    team: "Commercial North America", pto: 15, startDate: today()-700},
      {id: 6, name: "Maya Kapoor",     dept: "Sales",           role: "Regional Director",    team: "Front-End Components",     pto: 15, startDate: today()-1400},
      {id: 7, name: "Anthony Wu",      dept: "Human Resources", role: "Benefits Coordinator", team: "Accounts Payable",         pto: 2,  startDate: today()-300}
    },
    /* This variable is used to pass the full row of data on the selected item to the part of the interface showing the details of the selected item. */
    /* Here we are pre-selecting a row by indexing into the sample data; however, the data for the pre-selected row would typically be passed in as a *
     * rule input or generated with a query.                                                                                                          */
    local!selectedEmployee: local!employees[4],
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!sectionLayout(
                label: "Employees",
                contents: {
                  a!gridField(
                    /* Replace the dummy data with a query, rule, or function that returns a datasubset and uses fv!pagingInfo as the paging configuration. */
                    data: todatasubset(
                      local!employees,
                      fv!pagingInfo
                    ),
                    columns: {
                      a!gridColumn(
                        label: "Name",
                        value: fv!row.name
                      ),
                      a!gridColumn(
                        label: "Department",
                        value: fv!row.dept
                      )
                    },
                    pageSize: 7,
                    selectable: true,
                    selectionStyle: "ROW_HIGHLIGHT",
                    selectionValue: index(local!selectedEmployee, "id", {}),
                    selectionSaveInto: {
                      /* This save replaces the value of the previously selected item with that of the newly selected item, ensuring only one item can be selected at once.*/
                      a!save(
                        local!selectedEmployee,
                        if(
                          length(fv!selectedRows) > 0,
                          fv!selectedRows[length(fv!selectedRows)],
                          null
                        )
                      )
                    },
                    shadeAlternateRows: false,
                    rowHeader: 1
                  )
                }
              )
            }
          ),
          a!columnLayout(
            contents: {
              a!sectionLayout(
                label: "Employee Details",
                contents: {
                  a!richTextDisplayField(
                    value: a!richTextItem(
                      text: "No employee selected.",
                      color: "SECONDARY",
                      size: "MEDIUM",
                      style: "EMPHASIS"
                    ),
                    showWhen: isnull(local!selectedEmployee)
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Name",
                            value: local!selectedEmployee.name,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Department",
                            value: local!selectedEmployee.dept,
                            readOnly: true
                          )
                        }
                      ),
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Role",
                            value: local!selectedEmployee.role,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Start Date",
                            value: text(local!selectedEmployee.startDate, "MMM dd, yyyy"),
                            readOnly: true
                          )
                        }
                      ),
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Team",
                            value: local!selectedEmployee.team,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Available PTO",
                            value: local!selectedEmployee.pto & " days",
                            readOnly: true
                          )
                        }
                      )
                    },
                    showWhen: not(isnull(local!selectedEmployee)),
                    stackWhen: {
                      "PHONE",
                      "TABLET_LANDSCAPE"
                    }
                  )
                }
              )
            }
          )
        },
        stackWhen: {
          "PHONE",
          "TABLET_PORTRAIT"
        }
      )
    }
  )
}
```

### \[Line 1-15\] Set local variables

Since this pattern displays the details in components outside the grid, we assign the data in a local variable (`local!employees`) so all components have access to it. This pattern would work even if the data was defined directly in the _data_ parameter of the grid because the details view is only reading the value of `local!selectedEmployee`. However, it would no longer be possible to set an initial selected value.

The `local!selectedEmployee` variable defines the currently-selected row. To avoid showing an empty details view, it is recommended that the grid have an initial selected value. In this case, that is set to the fourth item (**line 15**). If you weren't passing that initial value from an input, you would want to set it to the first (`[1]`).

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
{
  a!localVariables(
    local!employees: {
      {id: 1, name: "Elizabeth Ward",  dept: "Engineering",     role: "Senior Engineer",      team: "Front-End Components",     pto: 15, startDate: today()-500},
      {id: 2, name: "Michael Johnson", dept: "Finance",         role: "Payroll Manager",      team: "Accounts Payable",         pto: 2,  startDate: today()-100},
      {id: 3, name: "John Smith",      dept: "Engineering",     role: "Quality Engineer",     team: "User Acceptance Testing",  pto: 5,  startDate: today()-1000},
      {id: 4, name: "Diana Hellstrom", dept: "Engineering",     role: "UX Designer",          team: "User Experience",          pto: 49, startDate: today()-1200},
      {id: 5, name: "Francois Morin",  dept: "Sales",           role: "Account Executive",    team: "Commercial North America", pto: 15, startDate: today()-700},
      {id: 6, name: "Maya Kapoor",     dept: "Sales",           role: "Regional Director",    team: "Front-End Components",     pto: 15, startDate: today()-1400},
      {id: 7, name: "Anthony Wu",      dept: "Human Resources", role: "Benefits Coordinator", team: "Accounts Payable",         pto: 2,  startDate: today()-300}
    },
    /* This variable is used to pass the full row of data on the selected item to the part of the interface showing the details of the selected item. */
    /* Here we are pre-selecting a row by indexing into the sample data; however, the data for the pre-selected row would typically be passed in as a *
     * rule input or generated with a query.                                                                                                          */
    local!selectedEmployee: local!employees[4],
```

### \[Line 16-61\] Grid with limited selection

The first column contains the grid, which has the `selectionValue` set to the `ID` of the selected employee (**line 43**). The selection value can only be an index integer. Because the grid data is a datasubset, the employee ID is also the selection identifier. This pattern would work if you set the `selectionValue:` to `local!selectedEmployee.id`, but we use the `index()` function to handle the common scenario where the initial selection value is neither set nor `null`.

In this pattern, limiting the selection to a single row is done by returning only the last-selected value from `fv!selectedRows` (**lines 44-54**). This is necessary because certain network conditions could allow users to click faster than the interface can reevaluate, resulting in `fv!selectedRows` containing more than one row. To ensure that only the last selected row is returned, we use the `length()` function to return the size of the array. This will correspond to the index of the last item in the array, `fv!selectedRows[length(fv!selectedRows)]` (**line 50**), as well. You can also use the `index()` function here to the same effect: `selectionSaveInto: a!save(local!selectedEmployee, index(fv!selectedRows, length(fv!selectedRows), null))`.

```sail
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
     {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!sectionLayout(
                label: "Employees",
                contents: {
                  a!gridField(
                    /* Replace the dummy data with a query, rule, or function that returns a datasubset and uses fv!pagingInfo as the paging configuration. */
                    data: todatasubset(
                      local!employees,
                      fv!pagingInfo
                    ),
                    columns: {
                      a!gridColumn(
                        label: "Name",
                        value: fv!row.name
                      ),
                      a!gridColumn(
                        label: "Department",
                        value: fv!row.dept
                      )
                    },
                    pageSize: 7,
                    selectable: true,
                    selectionStyle: "ROW_HIGHLIGHT",
                    selectionValue: index(local!selectedEmployee, "id", {}),
                    selectionSaveInto: {
                      /* This save replaces the value of the previously selected item with that of the newly selected item, ensuring only one item can be selected at once.*/
                      a!save(
                        local!selectedEmployee,
                        if(
                          length(fv!selectedRows) > 0,
                          fv!selectedRows[length(fv!selectedRows)],
                          null
                        )
                      )
                    },
                    shadeAlternateRows: false,
                    rowHeader: 1
                  )
                }
              )
            }
          ),
```

You can also use `a!gridField()`'s _maxSelections_ parameter to limit the number of selections. If you set `maxSelections: 1`, you can replace the `if()` statement (**49-53**) with `fv!selectedRows` because the limit is already set.

```sail
45
46
47
48
49
50
51
52
selectionSaveInto: {
  /* This save replaces the value of the previously selected item with that of the newly selected item, ensuring only one item can be selected at once.*/
  a!save(
    local!selectedEmployee,
!   fv!selectedRows,
    )
},
!maxSelections: 1,
```

### \[Line 62-139\] Detail view

When no row is selected, a rich text display component is used to note that there is no selected employee (**line 67**). This makes the functionality of the grid apparent to users.

You can also use the _showSelectionCount_ parameter to show users how many selections they've made. To do this, add `showSelectionCount: ON` to `a!gridField()`.

The text fields that display the selected employee information pull from `local!selectedEmployee`.

```sail
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
                   a!columnLayout(
            contents: {
              a!sectionLayout(
                label: "Employee Details",
                contents: {
                  a!richTextDisplayField(
                    value: a!richTextItem(
                      text: "No employee selected.",
                      color: "SECONDARY",
                      size: "MEDIUM",
                      style: "EMPHASIS"
                    ),
                    showWhen: isnull(local!selectedEmployee)
                  ),
                  a!columnsLayout(
                    columns: {
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Name",
                            value: local!selectedEmployee.name,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Department",
                            value: local!selectedEmployee.dept,
                            readOnly: true
                          )
                        }
                      ),
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Role",
                            value: local!selectedEmployee.role,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Start Date",
                            value: text(local!selectedEmployee.startDate, "MMM dd, yyyy"),
                            readOnly: true
                          )
                        }
                      ),
                      a!columnLayout(
                        contents: {
                          a!textField(
                            label: "Team",
                            value: local!selectedEmployee.team,
                            readOnly: true
                          ),
                          a!textField(
                            label: "Available PTO",
                            value: local!selectedEmployee.pto & " days",
                            readOnly: true
                          )
                        }
                      )
                    },
                    showWhen: not(isnull(local!selectedEmployee)),
                    stackWhen: {
                      "PHONE",
                      "TABLET_LANDSCAPE"
                    }
                  )
                }
              )
            }
          )
        },
        stackWhen: {
          "PHONE",
          "TABLET_PORTRAIT"
        }
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...