---
source_url: https://docs.appian.com/suite/help/25.3/drilldown-pattern.html
original_path: drilldown-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Drilldown Pattern

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

The drilldown pattern allows users to select an item from a grid to see more details in place of the grid. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

Use an in-place drill down pattern to show a list of items and allow users to select an item to see more of its details. This is a variation of the [Grid With Detail pattern](grid-with-detail-pattern.html).

When an item is selected, the list is replaced with the details view for the item.

![gif showing the drill down behavior](images/patterns/ux_in_place_drill_down.gif)

When adapting this pattern for your own use, be sure to employ best UX design practices, like including a link from the top-left corner of the details view to return to the list of items. Also make sure _don't_ display an item's details below the grid on click; for tall grids, users may not notice the details loading below the fold, and may think the UI is broken, especially in a grid without selection where there's no clear indication that the new section of the UI is showing details of a selected item.

## Design structure

The main components in this pattern are a [Read-Only Grid](Paging_Grid_Component.html) and a set of [text display fields](Text_Component.html) that are alternately visible depending on whether `local!selectedId` is `null`.

### Pattern expression

This pattern introduces a 127-line expression to the interface.

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
{
  a!localVariables(
    local!selectedId,
    local!employees: {
      a!map(id: 11, name: "Elizabeth Ward",  dept: "Engineering",     role: "Senior Engineer",      team: "Front-End Components",     pto: 15, startDate: today()-500),
      a!map(id: 22, name: "Michael Johnson", dept: "Finance",         role: "Payroll Manager",      team: "Accounts Payable",         pto: 2,  startDate: today()-100),
      a!map(id: 33, name: "John Smith",      dept: "Engineering",     role: "Quality Engineer",     team: "User Acceptance Testing",  pto: 5,  startDate: today()-1000),
      a!map(id: 44, name: "Diana Hellstrom", dept: "Engineering",     role: "UX Designer",          team: "User Experience",          pto: 49, startDate: today()-1200),
      a!map(id: 55, name: "Francois Morin",  dept: "Sales",           role: "Account Executive",    team: "Commercial North America", pto: 15, startDate: today()-700),
      a!map(id: 66, name: "Maya Kapoor",     dept: "Sales",           role: "Regional Director",    team: "Front-End Components",     pto: 15, startDate: today()-1400),
      a!map(id: 77, name: "Anthony Wu",      dept: "Human Resources", role: "Benefits Coordinator", team: "Accounts Payable",         pto: 2,  startDate: today()-300)
    },
    {
    a!gridField(
      /* Replace the dummy data with a query, rule, or function that returns a datasubset and uses fv!pagingInfo as the paging configuration. */
      data: todatasubset(
        local!employees,
        fv!pagingInfo
      ),
      columns: {
        a!gridColumn(
          label: "Name",
          value: a!linkField(
            links: {
              a!dynamicLink(
                label: fv!row.name,
                value: fv!row.id,
                saveInto: local!selectedId
              )
            }
          )
        ),
        a!gridColumn(
          label: "Role",
          value: fv!row.role
        ),
        a!gridColumn(
          label: "Department",
          value: fv!row.dept
        )
      },
      pageSize: 7,
      showWhen: isnull(local!selectedId),
      rowHeader: 1
    ),
    a!richTextDisplayField(
      labelPosition: "COLLAPSED",
      value: {
        a!richTextItem(
          text: {
            a!richTextIcon(
              icon: "long-arrow-left"
            ),
            " Back to employee list"
          },
          link: a!dynamicLink(
            value: null,
            saveInto: local!selectedId
          ),
          linkstyle: "STANDALONE"
        )
      },
      showWhen: not(isnull(local!selectedId))
    ),
    a!localVariables(
      local!selectedEmployee: if(
        isnull(local!selectedId),
        {},
        /* Replace with your rule to get the employee details */
        displayvalue(local!selectedId, local!employees.id, local!employees, {})
      ),
      a!sectionLayout(
        label: "Employee Details: " & local!selectedEmployee.name,
        contents: {
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
              }
            )
          },
          showWhen: not(isnull(local!selectedId))
        )
      )
    }
  )
}
```

### \[Line 1-12\] Set local variables

At the beginning of the expression, two local variables are setup: `local!selectId`, which stores the row data when the user clicks on that row's link, and `local!employees`, which is used to populate the grid.

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
{
  a!localVariables(
    local!selectedId,
    local!employees: {
      a!map(id: 11, name: "Elizabeth Ward",  dept: "Engineering",     role: "Senior Engineer",      team: "Front-End Components",     pto: 15, startDate: today()-500),
      a!map(id: 22, name: "Michael Johnson", dept: "Finance",         role: "Payroll Manager",      team: "Accounts Payable",         pto: 2,  startDate: today()-100),
      a!map(id: 33, name: "John Smith",      dept: "Engineering",     role: "Quality Engineer",     team: "User Acceptance Testing",  pto: 5,  startDate: today()-1000),
      a!map(id: 44, name: "Diana Hellstrom", dept: "Engineering",     role: "UX Designer",          team: "User Experience",          pto: 49, startDate: today()-1200),
      a!map(id: 55, name: "Francois Morin",  dept: "Sales",           role: "Account Executive",    team: "Commercial North America", pto: 15, startDate: today()-700),
      a!map(id: 66, name: "Maya Kapoor",     dept: "Sales",           role: "Regional Director",    team: "Front-End Components",     pto: 15, startDate: today()-1400),
      a!map(id: 77, name: "Anthony Wu",      dept: "Human Resources", role: "Benefits Coordinator", team: "Accounts Payable",         pto: 2,  startDate: today()-300)
    },
```

### \[Line 13-45\] Grid with link column

The grid is configured simply to show the name, role, and department for each item in `local!employees`. The first column, "Name," wraps the value in a dynamic link that, on click, will write that row's name and ID to `local!selectedId`. Note that on **line 43**, the entire grid's `showWhen` parameter is set to display only when `local!selectedId` is `null`, meaning as soon as the user clicks on the link, the grid will stop showing.

```sail
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
    {
    a!gridField(
      /* Replace the dummy data with a query, rule, or function that returns a datasubset and uses fv!pagingInfo as the paging configuration. */
      data: todatasubset(
        local!employees,
        fv!pagingInfo
      ),
      columns: {
        a!gridColumn(
          label: "Name",
          value: a!linkField(
            links: {
              a!dynamicLink(
                label: fv!row.name,
                value: fv!row.id,
                saveInto: local!selectedId
              )
            }
          )
        ),
        a!gridColumn(
          label: "Role",
          value: fv!row.role
        ),
        a!gridColumn(
          label: "Department",
          value: fv!row.dept
        )
      },
      pageSize: 7,
      `showWhen: isnull(local!selectedId)`,
      rowHeader: 1
    ),
```

### \[Line 46-64\] Grid with link column

Once the user clicks on a link in the Name column, they'll see the additional details about that employee, and at the top of those details is a **Back to employee list** link that sets the value of `local!selectedId` to `null`, which effectively resets the interface.

```sail
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
    a!richTextDisplayField(
      labelPosition: "COLLAPSED",
      value: {
        a!richTextItem(
          text: {
            a!richTextIcon(
              icon: "long-arrow-left"
            ),
            " Back to employee list"
          },
          link: a!dynamicLink(
            value: null,
            saveInto: local!selectedId
          ),
          linkstyle: "STANDALONE"
        )
      },
      showWhen: not(isnull(local!selectedId))
    ),
```

### \[Line 65-71\] Fetch selected employee details

Since we want to display more details about the employee, we look up the additional information and populate a new local variable, `local!selectedEmployee`, with it.

**Tip:**  Here we define a second local variable to store the additional information as that information can come from another source. But, in this example, since the data for the grid has all the additional information, we could simplify this pattern by passing the whole row of information with `fv!row` instead of just the ID.

```sail
65
66
67
68
69
70
71
    a!localVariables(
      local!selectedEmployee: if(
        isnull(local!selectedId),
        {},
        /* Replace with your rule to get the employee details */
        displayvalue(local!selectedId, local!employees.id, local!employees, {})
      ),
```

### \[Line 72-127\] Display employee details

The final section contains some basic columns and text fields to display the additional details about the selected employee.

```sail
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
      a!sectionLayout(
        label: "Employee Details: " & local!selectedEmployee.name,
        contents: {
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
              }
            )
          },
          showWhen: not(isnull(local!selectedId))
        )
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...