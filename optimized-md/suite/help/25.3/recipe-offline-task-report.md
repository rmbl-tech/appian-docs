---
source_url: https://docs.appian.com/suite/help/25.3/recipe-offline-task-report.html
original_path: recipe-offline-task-report.html
version: "25.3"
title: "Offline Mobile Task Report"
page_id: "recipe-offline-task-report"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Offline Mobile Task Report

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

Display a task report for a user that will work in Appian Mobile, even when the user is offline.

![](images/offline_task_report.png)

You can create offline mobile [tasks](how-offline-mobile-works.html#tasks) that users can access on Appian Mobile even if they don't have an internet connection.

To display these tasks in a [custom task report](how-offline-mobile-works.html#custom-task-report), you'll need to create an [offline-enabled interface](how-offline-mobile-works.html#offline-enabled-interfaces) that follows the [Design Best Practices for Offline Mobile](offline-mobile-design-best-practices.html).

Specifically, you will need to:

-   [Query the data you need at the top of the interface](offline-mobile-design-best-practices.html#query-all-data-in-a-local-variable-at-the-top-of-the-interface).
-   [Get the value for partially supported functions at the top of the interface](offline-mobile-design-best-practices.html#get-the-value-for-the-function-in-a-local-variable-at-the-top-of-the-interface), like the [process task link](Process_Task_Link_Component.html) component and [user()](fnc_people_user.html) function.
-   Use [a!submittedOfflineTaskIds()](fnc_informational_submittedofflinetaskids.html) to automatically remove tasks from an offline task report after a user submits them.

You will do this by creating local variables at the top of the interface expression. When a user refreshes their tasks while they are online, the local variables will be evaluated and their data will be cached on the device. That way, the data will be available even if the user is offline. For more information about how offline mobile works with data, see [How Offline Mobile Works](how-offline-mobile-works.html).

### See also

-   For more information about creating and configuring [task reports](Process_Reports.html#task-report-type), see:
    -   [Task Report Tutorial](Task_Report_Tutorial.html)
    -   [Configuring Process Reports](Configuring_Process_Reports.html)
    -   [Process Report Object](Process_Reports.html)
    -   [Process and Process Report Data](Process_and_Report_Data.html)
-   For the drag-and-drop pattern that can be used in non-offline mobile interfaces, see the [Task Report Pattern](task-report-pattern.html).

## Create a task report and constant

For this recipe, you'll need to create a task report and a constant to reference the task report.

For simplicity, we'll duplicate the Active Tasks prebuilt system report. But if you'd like, you can use one of the other [prebuilt system task reports](Process_Reports.html#task-reports), or [create](Process_Reports.html#create) and [edit](Process_Reports.html#edit) a custom process report.

To create a new task report and constant:

1.  In the **Build** view of your application, click **NEW** > **Process Report**.
2.  Select **Duplicate existing process report**.
3.  For **Process Report to Duplicate**, select a default process report that displays tasks for the logged in user, such as **active\_tasks** or **My Tasks**.
4.  Enter a **Name** for the report.
5.  For **Save In**, select a folder to save the report in.
6.  Click **CREATE**.
7.  [Create a constant](Configuring_Process_Reports.html#create-constants) of type **Document** and select the process report for the **Value**.

## Create an interface and enable it for offline mobile

1.  Create an [interface](interface_object.html).
2.  Select **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
3.  Copy and paste the [interface expression](#interface-expression) into the **Interface Definition**.
4.  Replace the `cons!MY_ACTIVE_TASKS` constant with the [constant you created](#create-a-task-report-and-constant).
5.  Click the settings icon \> **Properties**.
6.  Select **Make Available Offline** and click **OK**.

### Interface expression

This expression is based off of the [Task Report Pattern](task-report-pattern.html), but it doesn't use `a!forEach()` to dynamically create the grid columns. Use this pattern if you know which columns your task report has and want the expression to be a bit more straightforward. You may need to update the columns with the column ids from your task report.

See [Configuring Process Reports](Configuring_Process_Reports.html#display-report-data-in-an-interface) for more information displaying task report data in an interface.

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
a!localVariables(
  local!statusFilter: null,
  /* The task data returned by a process analytics query, cast to a list of maps */
  local!taskReportData: cast(
    a!listType(typeof(a!map())),
    a!queryProcessAnalytics(
      /* Replace this constant with a Document constant that uses a task report for the value */
      report: cons!DNI_OFFLINE_TASKS,
      query: a!query(
        pagingInfo: a!pagingInfo(
          startIndex: 1,
          batchSize: - 1,
          sort: a!sortInfo(field: "c2")
        ),
        filter: a!queryFilter(
          field: "c5",
          operator: "in",
          value: local!statusFilter,
          applyWhen: a!isNotNullOrEmpty(local!statusFilter)
        )
      )
    ).data
  ),
  /* Because a!processTaskLink() is partially compatible with offline mobile,
  call it in a local variable at the top of the interface */
  local!dataWithTaskLinks: a!forEach(
    items: local!taskReportData,
    /*For each row of data in local!taskReportData, insert a new field called "link"
    with the value of a!processTaskLink() for that row. */
    expression: a!update(
      data: fv!item,
      index: "link",
      value: a!processTaskLink(label: fv!item.c0, task: fv!item.dp0)
    )
  ),
  /* Because user() and group() are partially compatible with offline mobile,
  call it in a local variable at the top of the interface */
  local!dataWithAssignees: a!forEach(
    items: local!dataWithTaskLinks,
    /* For each row of data in local!dataWithTaskLinks, insert a new field called "assigned"
    with the user() or group() assigned to the task in that row. */
    expression: a!update(
      data: fv!item,
      index: "assigned",
      /*Because tasks can be assigned to multiple users or groups, use a!forEach() to evaluate the
      if() logic for each user or group assigned to a task*/
      value: a!forEach(
        items: fv!item.c8,
        expression: if(
          /* Check if User (which returns 4 for the runtime type number), otherwise its a Group */
          runtimetypeof(fv!item) = 4,
          if(a!isNotNullOrEmpty(fv!item), user(fv!item, "firstName") & " " & user(fv!item, "lastName"), ""),
          if(a!isNotNullOrEmpty(fv!item), group(fv!item, "groupName"), "")
        )
      )
    )
  ),
  /* Return a list of tasks that have been submitted. Note: This will return an empty list unless
  evaluated in an offline-enabled interface in Appian Mobile. */
  local!submittedTasks: a!submittedOfflineTaskIds(),
  /* Create a list of task ids from local!taskReportData and compare it to local!submitedTasks
  Return a list of task ids that are not in local!submittedTasks. */
  local!openTasks: difference(
    a!flatten(
      /* Cast the task ids from local!taskReportData to a list of integers*/
      cast(
        a!listType(typeof(0)),
        local!taskReportData.dp0)),
    local!submittedTasks
  ),
  /* Use the list of task ids from local!openTasks to return local!dataWithAssignees without submitted tasks */
  local!dataWithoutSubmittedTasks: if(
    a!isNullOrEmpty(local!taskReportData),
    {},
    /* Get the offline task data for the indices where the task ids are in local!openTasks */
    index(
      local!dataWithAssignees,
      wherecontains(
        local!openTasks,
        local!dataWithAssignees.dp0
      )
    )
  ),
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
                  choiceLabels: { "Assigned", "Accepted" },
                  choiceValues: { 0, 1 },
                  labelPosition: "COLLAPSED",
                  placeholder: "All statuses",
                  value: local!statusFilter,
                  saveInto: local!statusFilter
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(contents: {})
          },
          marginBelow: "NONE"
        ),
        a!gridField(
          labelPosition: "COLLAPSED",
          /* local!dataWithoutSubmittedTasks contains the new "link" and "assigned" fields
          and doesn't contain submitted tasks */
          data: local!dataWithoutSubmittedTasks,
          columns: {
            a!gridColumn(
              label: "Name",
              value: a!linkField(
                /* Reference the value for a!processTaskLink() using the new field name, "link" */
                links: fv!row.link
              )
            ),
            a!gridColumn(label: "Process", value: fv!row.c3),
            a!gridColumn(
              label: "Status",
              value: a!match(
                value: fv!row.c5,
                equals: 0,
                then: a!richTextDisplayField(
                  value: {
                    a!richTextIcon(icon: "user-o", color: "#666666"),
                    " Assigned"
                  }
                ),
                equals: 1,
                then: a!richTextDisplayField(
                  value: {
                    a!richTextIcon(icon: "user-check", color: "ACCENT"),
                    " Accepted"
                  }
                ),
                default: fv!value
              )
            ),
            a!gridColumn(
              label: "Assigned To",
              /* Reference the user and group names using the new field name, "assigned" */
              value: fv!row.assigned
            ),
            a!gridColumn(label: "Assigned On", value: fv!row.c2)
          },
          pageSize: 10,
          borderStyle: "LIGHT",
          rowHeader: 1
        )
      }
    )
  }
)
```

## Create a site and test the interface in Appian Mobile

Offline mobile interfaces evaluate differently in Appian Mobile than they do in a browser. In a browser, they evaluate like any other interface. In Appian Mobile, they sync with the server when the interface loads, then store that data on the device so that the user can access it whether they are online or offline.

In order to verify the offline-enabled task report works correctly on Appian Mobile, you need to test it in the Appian Mobile app.

To test the task report in Appian Mobile:

1.  [Create a site object](sites_object.html#create-the-object) and add the [offline interface](#create-an-interface-and-enable-it-for-offline-mobile) as a site page.
2.  On a mobile device, open the Appian Mobile app.
3.  Open the mobile menu and tap **Data Sync**.
4.  Tap **START SYNC** and remain online until the sync completes.
5.  Navigate to the site you created and select the page with the task report.
6.  Select a task and use the paging in the grid. Verify that there are no errors.
7.  Complete a task and verify it is automatically removed from the list.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...