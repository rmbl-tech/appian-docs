---
source_url: https://docs.appian.com/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html
original_path: recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html
version: "25.3"
title: "Use Links in a Grid to Show More Details and Edit Data"
page_id: "recipe-use-links-in-a-grid-to-show-more-details-and-edit-data"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use Links in a Grid to Show More Details and Edit Data

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

Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

![images/SAIL-recipe-link-in-grid-to-edit-data.png](images/SAIL-recipe-link-in-grid-to-edit-data.png)

This scenario demonstrates:

-   How to use links in a grid that conditionally display other interface components.
-   How to allow editable fields to update the individual fields of the a data set.

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
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
204
205
206
a!localVariables(
  /* We load the employee data into this variable. If you are populating
     this variable with a query, you would put .data at the end before passing
     it to the grid. */
  local!employees: {
    a!map( id: 11, name: "Elizabeth Ward",  dept: "Engineering",     role: "Senior Engineer",      team: "Front-End Components",     pto: 15, startDate: today()-500),
    a!map( id: 22, name: "Michael Johnson", dept: "Finance",         role: "Payroll Manager",      team: "Accounts Payable",         pto: 2,  startDate: today()-100),
    a!map( id: 33, name: "John Smith",      dept: "Engineering",     role: "Quality Engineer",     team: "User Acceptance Testing",  pto: 5,  startDate: today()-1000),
    a!map( id: 44, name: "Diana Hellstrom", dept: "Engineering",     role: "UX Designer",          team: "User Experience",          pto: 49, startDate: today()-1200),
    a!map( id: 55, name: "Francois Morin",  dept: "Sales",           role: "Account Executive",    team: "Commercial North America", pto: 15, startDate: today()-700),
    a!map( id: 66, name: "Maya Kapoor",     dept: "Sales",           role: "Regional Director",    team: "Front-End Components",     pto: 15, startDate: today()-1400),
    a!map( id: 77, name: "Anthony Wu",      dept: "Human Resources", role: "Benefits Coordinator", team: "Accounts Payable",         pto: 2,  startDate: today()-300),
  },
  /* local!teamList would normally come from a constant or data source. */
  local!teamList: {
    "Accounts Payable",
    "User Acceptance Testing",
    "User Experience",
    "Commercial North America",
    "Front-End Components"
  },
  /* This variable is for storing the grid's selection. */
  local!selection,
  /* This variable is used to for the full row of data on the selected item
     to be passed to the details section of the interface. */
  local!selectedEmployee,
  local!readOnly: true,
  /*
  *  You can view values of your local variables in the
  *  Local Variables pane on the right side of your interface,
  *  so you can see you the changes being made to the data in realtime
  */
  {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Employees",
              contents: {
                a!gridField(
                  data: local!employees,
                  columns: {
                    a!gridColumn(
                      label: "Name",
                      value: fv!row.name
                    ),
                    a!gridColumn(
                      label: "Team",
                      value: fv!row.team
                    )
                  },
                  pageSize: 10,
                  selectable: true,
                  selectionStyle: "ROW_HIGHLIGHT",
                  selectionValue: local!selection,
                  selectionSaveInto: {
                    /* Using the index function to return the last-selected item ensures that
                       only one item will be selected at a time, regardless of how fast the user
                       clicks. */
                    a!save(local!selectedEmployee, index(fv!selectedRows, length(fv!selectedRows), null)),
                    /* We use the same method as above to limit the selection variable. */
                    a!save(local!selection, index(save!value, length(save!value), null))
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
              label: "Details",
              contents: {
                a!richTextDisplayField(
                  value: a!richTextItem(
                    text: "No employee selected.",
                    color: "SECONDARY",
                    size: "MEDIUM",
                    style: "EMPHASIS"
                  ),
                  showWhen: isnull(local!selection)
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
                      },
                      width: "MEDIUM"
                    ),
                    a!columnLayout(
                      contents: {
                        /* In the following fields, we display from, and save to
                           local!selectedEmployee. */
                        a!textField(
                          label: "Role",
                          value: local!selectedEmployee.role,
                          saveInto: local!selectedEmployee.role,
                          readOnly: local!readOnly
                        ),
                        /* Because dropdown components can't be readOnly, we use a textField to
                           display the value and an if() statement to swap it out for the dropdown
                           when it's time to edit. */
                        if(
                          local!readOnly,
                          a!textField(
                            label: "Team",
                            value: local!selectedEmployee.team,
                            readOnly: true
                          ),
                          a!dropdownField(
                            label: "Team",
                            choiceLabels: local!teamList,
                            choiceValues: local!teamList,
                            value: local!selectedEmployee.team,
                            saveInto: local!selectedEmployee.team,
                            disabled: local!readOnly
                          )
                        ),
                        /* The link enables editing in the other components, and is hidden when
                           editing is enabled. */
                        a!linkField(
                          labelPosition: "COLLAPSED",
                          links: a!dynamicLink(
                            label: "Reassign",
                            value: false,
                            saveInto: local!readOnly
                          ),
                          showWhen: local!readOnly
                        )
                      },
                      width: "WIDE"
                    )
                  },
                  showWhen: not(isnull(local!selection))
                )
              }
            ),
            a!buttonLayout(
              primaryButtons: {
                a!buttonWidget(
                  label: "Update",
                  value: local!selectedEmployee,
                  saveInto: {
                    /* When the user clicks UPDATE, we use the updatearray() function to update
                       local!employees with the new values in local!selectedEmployee. */
                    a!save(
                      local!employees,
                      updatearray(
                        local!employees,
                        where(tointeger(local!employees.id)=local!selectedEmployee.id),
                        local!selectedEmployee
                      )
                    ),
                    a!save(local!readOnly, true)
                  },
                  style: "SOLID"
                )
              },
              secondaryButtons: {
                a!buttonWidget(
                  label: "Cancel",
                  value: true,
                  saveInto: {
                    local!readOnly,
                    /* If the user has made any changes to local!selectedEmployee, when they click
                       CANCEL, we need to reset local!selectedEmployee to previous values in local!employees
                       in order to keep the selectedEmployee details true. If you don't want to persist the
                       selection, you can simply reset the selections instead with:
                       a!save(local!selectedEmployee, null), a!save(local!selection, null) */
                    a!save(
                      local!selectedEmployee,
                      cast(typeof({a!map()}), /* Casting the value to "list of map" simplifies subsequent interactions. */
                        index(
                          local!employees,
                          where(tointeger(local!employees.id)=local!selectedEmployee.id),
                          null
                        )
                      )
                    )
                  },
                  submit: true,
                  style: "OUTLINE",
                  validate: false
                )
              },
              showWhen: not(local!readOnly)
            )
          }
        )
      }
    )
  }
)
```

## Test it out

1.  Click on an employee's name in the grid's left column. Notice that an editable section appears.
2.  Change the employee's Team and/or Role and click the **Update** button.
3.  Click on an employee's name, change the department and click **Cancel**. Notice that the employee's department has not changed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...