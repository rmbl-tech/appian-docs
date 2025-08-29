---
source_url: https://docs.appian.com/suite/help/25.3/task-report-pattern.html
original_path: task-report-pattern.html
version: "25.3"
title: "Task Report Pattern"
page_id: "task-report-pattern"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Task Report Pattern

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

Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type). This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

_For a task report recipe that works in offline mobile, see [Offline Mobile Task Report](recipe-offline-task-report.html)._

![screenshot of the task report pattern](images/patterns/task_report_pattern_refresh.png)

## Design structure

This page will break down this expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs. For an example of how to modify this pattern or how to see a task report in a site, see the [Task Report Tutorial](Task_Report_Tutorial.html).

The main components in this pattern are [dropdown](Multiple_Dropdown_Component.html), [read-only grid](Paging_Grid_Component.html), [process task link](Process_Task_Link_Component.html), and [rich text display](Rich_Text_Component.html) components. The image below displays how the pattern looks on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

[![images/patterns/task_report_pattern_annotated.png](images/patterns/task_report_pattern_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img2)

[![](images/patterns/task_report_pattern_annotated.png)](#_)

### Pattern expression

When you drag and drop the Task Report pattern onto your interface, 200 lines of expressions will be added to the section where you dragged it.

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
a!localVariables(
  local!statusFilter: null,

  /* https://docs.appian.com/suite/help/latest/Task_Report_Tutorial.html */
  /* Basic steps to follow:                                              */
  /* 1. Create a Process Report object                                   */
  /* 2. Duplicate an existing process report, e.g. active_tasks          */
  /* 3. Create a Document constant for the report, e.g. TASKS_REPORT     */
  /* 4. Replace the value parameter of the refresh variable              */
  /*    local!taskReportData with a process analytics query e.g.         */
  /*    a!queryProcessAnalytics(                                         */
  /*      report: cons!TASKS_REPORT,                                     */
  /*      query: a!query(                                                */
  /*        pagingInfo: a!pagingInfo(                                    */
  /*          startIndex: 1,                                             */
  /*          batchSize: -1,                                             */
  /*          sort: a!sortInfo(                                          */
  /*            field: "c2",                                             */
  /*            ascending: false                                         */
  /*          )                                                          */
  /*       ),                                                            */
  /*       filter: a!queryFilter(                                        */
  /*         field: "c5",                                                */
  /*         operator: "in",                                             */
  /*         value: local!statusFilter,                                  */
  /*         applyWhen: a!isNotNullOrEmpty(local!statusFilter)           */
  /*       )                                                             */
  /*     )                                                               */
  /*   )                                                                 */

  /* The variable used to refresh the task report data */
  local!refreshTrigger: true,

  /* Placeholder variable for the task data returned by a process analytics query */
  local!taskReportData: a!refreshVariable(
    refreshOnVarChange: local!refreshTrigger,
    value: {
      startIndex: 1,
      batchSize: 7,
      sort: {field: "c2", ascending: false},
      totalCount: 10,
      data: a!localVariables(
        local!data: {
          a!map(c5: 0, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #38",  dp0: 268440077, dp2: null, dp4: null, dp3: 268435772, dp5: 268435772, dp7: null, dp8: null),
          a!map(c5: 0, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #39",  dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 0, c4: 1, c3: "Document Processing",  c8: loggedInUser(), c7: null, c2: now(), c0: "Review Document: Invoice #123", dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 0, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #40",  dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 1, c4: 1, c3: "Document Processing",  c8: loggedInUser(), c7: null, c2: now(), c0: "Review Document: Invoice #124", dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 1, c4: 1, c3: "Document Processing",  c8: loggedInUser(), c7: null, c2: now(), c0: "Review Document: Invoice #125", dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 1, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #41",  dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null)
        },
        if(
          a!isNullOrEmpty(local!statusFilter),
          local!data,
          index(
            local!data,
            wherecontains(local!statusFilter, local!data.c5),
            {}
          )
        )
      ),
      identifiers: {123456781, 123456782, 123456783, 123456784, 123456785, 123456786, 123456787},
      name: "Employee Tasks",
      /* Maps field labels above to user friendly name */
      columnConfigs: {
        a!map(label: "Name",        field: "c0", drilldownField: "dp0", configuredFormatting: "NORMAL_TEXT", configuredDrilldown: "TASK_DETAILS"),
        a!map(label: "Process",     field: "c3", drilldownField: "dp3", configuredFormatting: "NORMAL_TEXT", configuredDrilldown: "PROCESS_DASHBOARD"),
        a!map(label: "Status",      field: "c5", drilldownField: "dp5", configuredFormatting: "TASK_STATUS", configuredDrilldown: "PROCESS_DETAILS"),
        a!map(label: "Assignee",    field: "c8", drilldownField: "dp2", configuredFormatting: "NORMAL_TEXT", configuredDrilldown: null),
        a!map(label: "Received On", field: "c2", drilldownField: "dp2", configuredFormatting: "DATE_TIME",   configuredDrilldown: null)
      }
    }
  ),
  /* Maps the "c5" / "Status" field values to status names */
  local!taskStatuses: {
    a!map(name: "Assigned",               icon: "user-o",             color: "#666666"),
    a!map(name: "Accepted",               icon: "user-check",         color: "ACCENT"),
    a!map(name: "Completed",              icon: "check-circle",       color: "POSITIVE"),
    a!map(name: "Not Started",            icon: "circle-o-large",     color: "#666666"),
    a!map(name: "Cancelled",              icon: "stop-circle",        color: "#fdb858"),
    a!map(name: "Paused",                 icon: "pause-circle",       color: "#666666"),
    a!map(name: "Aborted",                icon: "question-circle",    color: "#666666"),
    a!map(name: "Cancelled By Exception", icon: "minus-circle",       color: "#fdb858"),
    a!map(name: "Cancelled By Exception", icon: "times-circle",       color: "NEGATIVE"),
    a!map(name: "Submitted",              icon: "share",              color: "ACCENT"),
    a!map(name: "Running",                icon: "spinner",            color: "ACCENT"),
    a!map(name: "Error",                  icon: "exclamation-circle", color: "NEGATIVE")
  },
  {
    a!sectionLayout(
      label: "Employee Tasks",
      labelColor: "SECONDARY",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!multipleDropdownField(
                  label: "Status",
                  labelPosition: "COLLAPSED",
                  placeholder: "All statuses",
                  choiceLabels: { "Assigned", "Accepted", "Completed", "Not Started" },
                  choiceValues: enumerate(4),
                  value: local!statusFilter,
                  saveInto: local!statusFilter
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(
              contents: {
                a!buttonArrayLayout(
                  buttons: a!buttonWidget(
                    icon: "refresh",
                    value: not(local!refreshTrigger),
                    saveInto: local!refreshTrigger,
                    size: "SMALL",
                    style: "OUTLINE",
                    color: "SECONDARY",
                    accessibilityText: "Refresh task data"
                  )
                )
              }
            )
          },
          marginBelow: "NONE"
        ),
        a!gridField(
          label: "Employee Tasks",
          labelPosition: "COLLAPSED",
          data: local!taskReportData.data,
          columns: a!forEach(
            items: local!taskReportData.columnConfigs,
            expression: a!gridColumn(
              label: fv!item.label,
              sortField: fv!item.field,
              value: a!localVariables(
                local!fieldValue: index(fv!row, fv!item.field, {}),
                /* Display the data based on its configured formatting */
                a!match(
                  value: fv!item.configuredFormatting,
                  equals: "TASK_STATUS",
                  then: a!localVariables(
                    local!status: index(local!taskStatuses, local!fieldValue + 1, {}),
                    a!richTextDisplayField(
                      value: {
                        a!richTextIcon(
                          icon: index(local!status, "icon", "circle"),
                          color: index(local!status, "color", "#666666")
                        ),
                        "  ",
                        index(local!status, "name", "Other")
                      }
                    )
                  ),
                  equals: "DATE_TIME",
                  then: if(
                    a!isNullOrEmpty(local!fieldValue),
                    local!fieldValue,
                    text(local!fieldValue, "MMM D, YYYY, H:MM am/pm")
                  ),
                  /* Show a process link for task details */
                  whenTrue: fv!item.configuredDrilldown = "TASK_DETAILS",
                  then: a!linkField(
                    links: a!processTaskLink(
                      label: local!fieldValue,
                      task: index(fv!row, fv!item.drilldownField, {})
                    )
                  ),
                  /* Show username or group name for Assignee field                         */
                  /* Note: For task reports that only show tasks for the current user,      */
                  /* the "Assignee" column can be hidden. Task list can be named "My Tasks" */
                  whenTrue: fv!item.field = "c8",
                  then: a!richTextDisplayField(
                    value: a!forEach(
                      items: fv!row.c8,
                      expression: if(
                        /* Check if User type (4), otherwise it is a Group (5) */
                        runtimetypeof(fv!item) = 4,
                        a!richTextItem(
                          text: user(fv!item, "firstName") & " " & user(fv!item, "lastName") & char(10),
                          link: a!userRecordLink(user: fv!item),
                          linkStyle: "STANDALONE"
                        ),
                        /* Adding char(10) adds line breaks to the list of names */
                        group(fv!item, "groupName") & char(10)
                      )
                    )
                  ),
                  default: local!fieldValue
                )
              ),
              align: if(fv!item.configuredFormatting = "DATE_TIME", "END", "START")
            )
          ),
          pageSize: 10,
          borderStyle: "LIGHT",
          rowHeader: 1
        )
      }
    )
  }
)
```

### \[Line 1-32\] Provide instructions in comments

The first two lines in the expression begin the local variables, but are directly followed by 25 lines of comments. These comments contain a link to the [Task Report Tutorial](Task_Report_Tutorial.html) and a set of 4 steps to tell you how to create a task report.

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
a!localVariables(
  local!statusFilter: null,

  /* https://docs.appian.com/suite/help/latest/Task_Report_Tutorial.html */
  /* Basic steps to follow:                                              */
  /* 1. Create a Process Report object                                   */
  /* 2. Duplicate an existing process report, e.g. active_tasks          */
  /* 3. Create a Document constant for the report, e.g. TASKS_REPORT     */
  /* 4. Replace the value parameter of the refresh variable              */
  /*    local!taskReportData with a process analytics query e.g.         */
  /*    a!queryProcessAnalytics(                                         */
  /*      report: cons!TASKS_REPORT,                                     */
  /*      query: a!query(                                                */
  /*        pagingInfo: a!pagingInfo(                                    */
  /*          startIndex: 1,                                             */
  /*          batchSize: -1,                                             */
  /*          sort: a!sortInfo(                                          */
  /*            field: "c2",                                             */
  /*            ascending: false                                         */
  /*          )                                                          */
  /*       ),                                                            */
  /*       filter: a!queryFilter(                                        */
  /*         field: "c5",                                                */
  /*         operator: "in",                                             */
  /*         value: local!statusFilter,                                  */
  /*         applyWhen: a!isNotNullOrEmpty(local!statusFilter)           */
  /*       )                                                             */
  /*     )                                                               */
  /*   )                                                                 */

  /* The variable used to refresh the task report data */
  local!refreshTrigger: true,
```

### \[Line 34-73\] Define the local variable for task data

This is the first local variable that populates the placeholder data for the grid.

```sail
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

  /* Placeholder variable for the task data returned by a process analytics query */
  local!taskReportData: a!refreshVariable(
    refreshOnVarChange: local!refreshTrigger,
    value: {
      startIndex: 1,
      batchSize: 7,
      sort: {field: "c2", ascending: false},
      totalCount: 10,
      data: a!localVariables(
        local!data: {
          a!map(c5: 0, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #38",  dp0: 268440077, dp2: null, dp4: null, dp3: 268435772, dp5: 268435772, dp7: null, dp8: null),
          a!map(c5: 0, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #39",  dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 0, c4: 1, c3: "Document Processing",  c8: loggedInUser(), c7: null, c2: now(), c0: "Review Document: Invoice #123", dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 0, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #40",  dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 1, c4: 1, c3: "Document Processing",  c8: loggedInUser(), c7: null, c2: now(), c0: "Review Document: Invoice #124", dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 1, c4: 1, c3: "Document Processing",  c8: loggedInUser(), c7: null, c2: now(), c0: "Review Document: Invoice #125", dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null),
          a!map(c5: 1, c4: 1, c3: "New Purchase Request", c8: loggedInUser(), c7: null, c2: now(), c0: "Approve Purchase Request #41",  dp0: 268440067, dp2: null, dp4: null, dp3: 268435771, dp5: 268435771, dp7: null, dp8: null)
        },
        if(
          a!isNullOrEmpty(local!statusFilter),
          local!data,
          index(
            local!data,
            wherecontains(local!statusFilter, local!data.c5),
            {}
          )
        )
      ),
      identifiers: {123456781, 123456782, 123456783, 123456784, 123456785, 123456786, 123456787},
      name: "Employee Tasks",
      /* Maps field labels above to user friendly name */
      columnConfigs: {
        a!map(label: "Name",        field: "c0", drilldownField: "dp0", configuredFormatting: "NORMAL_TEXT", configuredDrilldown: "TASK_DETAILS"),
        a!map(label: "Process",     field: "c3", drilldownField: "dp3", configuredFormatting: "NORMAL_TEXT", configuredDrilldown: "PROCESS_DASHBOARD"),
        a!map(label: "Status",      field: "c5", drilldownField: "dp5", configuredFormatting: "TASK_STATUS", configuredDrilldown: "PROCESS_DETAILS"),
        a!map(label: "Assignee",    field: "c8", drilldownField: "dp2", configuredFormatting: "NORMAL_TEXT", configuredDrilldown: null),
        a!map(label: "Received On", field: "c2", drilldownField: "dp2", configuredFormatting: "DATE_TIME",   configuredDrilldown: null)
      }
    }
  ),
```

When you adapt this pattern to work for you, you need to remove this entire section (lines 35-73) and replace the pattern's placeholder data with your own data.

To replace the placeholder data:

1.  In the `a!refreshVariable()` function, delete the contents of the **value** parameter starting on line 37. Copy and paste the following expression from the commented expression in lines 11-29 of the pattern and use it for the contents of the _value_ parameter:

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
       a!queryProcessAnalytics(
         report: cons!TASKS_REPORT,
         query: a!query(
           pagingInfo: a!pagingInfo(
             startIndex: 1,
             batchSize: -1,
             sort: a!sortInfo(
               field: "c2",
               ascending: false
             )
          ),
          filter: a!queryFilter(
            field: "c5",
            operator: "in",
            value: local!statusFilter,
            applyWhen: a!isNotNullOrEmpty(local!statusFilter)
          )
        )
      ),

    ```

2.  Replace `cons!TASKS_REPORT` with a **Document** constant that points to a [task report](Process_Reports.html#task-report-type). See the [Task Report Tutorial](Task_Report_Tutorial.html#create-a-constant-for-the-my-tasks-process-report) for step-by-step instructions.
3.  To see your changes reflected in the interface preview, click **TEST**.

**Note:**  Clicking **TEST** forces the local variables in your interface preview to refresh. Do this any time you update a local variable to see your changes reflected in the interface.

To learn more about adapting this pattern to use your own data and reports, see the [Task Report tutorial](Task_Report_Tutorial.html).

#### Reference task report columns

Notice in the new local variable expression that the _field_ parameter values are `c5` and `c2`. This comes from the underlying process report, which identifies each column with a field id.

You can see these field ids and which column they refer to in the **LOCAL VARIABLES** pane in the interface object. This pane displays the query results for the `local!taskReportData` variable. Simply expand _taskReportData_, then _columnConfigs_ to see the column configuration parameters for each column in the task report.

These configurations list the **label**, **field**, **drilldownField**, **configuredFormatting**, and **configuredDrilldown** parameters for each column. Looking at this, we can see the field id `c2` is for the "Received" column and `c5` is for the "Status" column.

[![screenshot of the local variables pane to show the configurations associated with the task report columns](images/patterns/task-report-pattern-local-variables-configurations.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img3)

[![](images/patterns/task-report-pattern-local-variables-configurations.png)](#_)

You can also use these parameters with _fv!item_ within the `a!forEach()` function that creates the grid. For example, the pattern uses _fv!item.label_, _fv!item.field_, and _fv!item.configuredFormatting_ for formatting the grid columns.

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
...
a!gridField(
          label: "My Tasks",
          labelPosition: "COLLAPSED",
          data: local!taskReportData.data,
          columns: a!forEach(
            items: local!taskReportData.columnConfigs,
            expression: a!gridColumn(
!             label: fv!item.label,
!             sortField: fv!item.field,
              value: a!localVariables(
                local!fieldValue: index(fv!row, fv!item.field, {}),
                /* Display the data based on its configured formatting */
                a!match(
!                 value: fv!item.configuredFormatting,
                  equals: "TASK_STATUS",
                  then: a!localVariables(
                    local!status: index(local!taskStatuses, local!fieldValue + 1, {}),
                    a!richTextDisplayField(
                      value: {
                        a!richTextIcon(
                          icon: index(local!status, "icon", "circle"),
                          color: index(local!status, "color", "#666666")
                        ),
                        "  ",
                        index(local!status, "name", "Other")
                      }
                    )
                  ),
...
```

You can use this column configuration information to make changes to the task report. For example, you could sort the report by priority (`c4`) instead of the received date (`c2`).

### \[Line 74-88\] Define the local variable to make friendly names for statuses

This section of the expression creates user-friendly names for each standard task status and maps it to an icon and color. When you adapt this pattern to work with your own data and tasks, you can use all or some of these task statuses, depending on which are most relevant for your workflow.

```sail
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
    /* Maps the "c5" / "Status" field values to status names */
  local!taskStatuses: {
    a!map(name: "Assigned",               icon: "user-o",             color: "#666666"),
    a!map(name: "Accepted",               icon: "user-check",         color: "ACCENT"),
    a!map(name: "Completed",              icon: "check-circle",       color: "POSITIVE"),
    a!map(name: "Not Started",            icon: "circle-o-large",     color: "#666666"),
    a!map(name: "Cancelled",              icon: "stop-circle",        color: "#fdb858"),
    a!map(name: "Paused",                 icon: "pause-circle",       color: "#666666"),
    a!map(name: "Aborted",                icon: "question-circle",    color: "#666666"),
    a!map(name: "Cancelled By Exception", icon: "minus-circle",       color: "#fdb858"),
    a!map(name: "Cancelled By Exception", icon: "times-circle",       color: "NEGATIVE"),
    a!map(name: "Submitted",              icon: "share",              color: "ACCENT"),
    a!map(name: "Running",                icon: "spinner",            color: "ACCENT"),
    a!map(name: "Error",                  icon: "exclamation-circle", color: "NEGATIVE")
  },
```

### \[Line 89-126\] Create the status filter

This section of the expression creates the status filter using a [multiple dropdown field](Multiple_Dropdown_Component.html). When you adapt this pattern to work with your own data and tasks, change the choice labels and values in the dropdown to match your statuses.

```sail
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
    a!sectionLayout(
      label: "Employee Tasks",
      labelColor: "SECONDARY",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!multipleDropdownField(
                  label: "Status",
                  labelPosition: "COLLAPSED",
                  placeholder: "All statuses",
                  choiceLabels: { "Assigned", "Accepted", "Completed", "Not Started" },
                  choiceValues: enumerate(4),
                  value: local!statusFilter,
                  saveInto: local!statusFilter
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(
              contents: {
                a!buttonArrayLayout(
                  buttons: a!buttonWidget(
                    icon: "refresh",
                    value: not(local!refreshTrigger),
                    saveInto: local!refreshTrigger,
                    size: "SMALL",
                    style: "OUTLINE",
                    color: "SECONDARY",
                    accessibilityText: "Refresh task data"
                  )
                )
              }
            )
          },
          marginBelow: "NONE"
        ),
```

### \[Line 127-202\] Create the grid

This section of the expression creates the grid to display tasks, formats the status column, and adds [process links to each task](Process_Task_Link_Component.html). The grid uses the [a!forEach()](fnc_looping_a_foreach.html) function to loop through all the local variables associated with each placeholder task and display them as a row in the grid.

Lines 140-141 use [a!match()](fnc_logical_match.html) and the _value_ parameter to determine the type of data (either date, status, or text).

Lines 142-155 use the _equals_ and _then_ parameters in the `match()` function to format any values of type `TASK_STATUS` so that they show the status.

Lines 156-161 use the _equals_ and _then_ parameters to format any values of type `DATE_TIME` so that they show when the task was received.

Lines 162-169 use the _whenTrue_ and _then_ parameters to format the [process task links](Process_Task_Link_Component.html) for each task in the grid so that users can select a task and view its details.

Lines 170-189 use the _whenTrue_ and _then_ parameters to format the username or group shown in the **Assignee** column of the grid. The `if()` statement uses the [runtimetypeof()](fnc_informational_runtimetypeof.html) function to determine if the task report is assigned to a user or group, and returns a formatted name or group name as a result.

Line 190 uses the _default_ parameter to display the field value if none of the above conditions are met.

```sail
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
        a!gridField(
          label: "Employee Tasks",
          labelPosition: "COLLAPSED",
          data: local!taskReportData.data,
          columns: a!forEach(
            items: local!taskReportData.columnConfigs,
            expression: a!gridColumn(
              label: fv!item.label,
              sortField: fv!item.field,
              value: a!localVariables(
                local!fieldValue: index(fv!row, fv!item.field, {}),
                /* Display the data based on its configured formatting */
                a!match(
                  value: fv!item.configuredFormatting,
                  equals: "TASK_STATUS",
                  then: a!localVariables(
                    local!status: index(local!taskStatuses, local!fieldValue + 1, {}),
                    a!richTextDisplayField(
                      value: {
                        a!richTextIcon(
                          icon: index(local!status, "icon", "circle"),
                          color: index(local!status, "color", "#666666")
                        ),
                        "  ",
                        index(local!status, "name", "Other")
                      }
                    )
                  ),
                  equals: "DATE_TIME",
                  then: if(
                    a!isNullOrEmpty(local!fieldValue),
                    local!fieldValue,
                    text(local!fieldValue, "MMM D, YYYY, H:MM am/pm")
                  ),
                  /* Show a process link for task details */
                  whenTrue: fv!item.configuredDrilldown = "TASK_DETAILS",
                  then: a!linkField(
                    links: a!processTaskLink(
                      label: local!fieldValue,
                      task: index(fv!row, fv!item.drilldownField, {})
                    )
                  ),
                  /* Show username or group name for Assignee field                         */
                  /* Note: For task reports that only show tasks for the current user,      */
                  /* the "Assignee" column can be hidden. Task list can be named "My Tasks" */
                  whenTrue: fv!item.field = "c8",
                  then: a!richTextDisplayField(
                    value: a!forEach(
                      items: fv!row.c8,
                      expression: if(
                        /* Check if User type (4), otherwise it is a Group (5) */
                        runtimetypeof(fv!item) = 4,
                        a!richTextItem(
                          text: user(fv!item, "firstName") & " " & user(fv!item, "lastName") & char(10),
                          link: a!userRecordLink(user: fv!item),
                          linkStyle: "STANDALONE"
                        ),
                        /* Adding char(10) adds line breaks to the list of names */
                        group(fv!item, "groupName") & char(10)
                      )
                    )
                  ),
                  default: local!fieldValue
                )
              ),
              align: if(fv!item.configuredFormatting = "DATE_TIME", "END", "START")
            )
          ),
          pageSize: 10,
          borderStyle: "LIGHT",
          rowHeader: 1
        )
      }
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...