---
source_url: https://docs.appian.com/suite/help/25.3/recipe-display-processes-by-process-model-with-status-icons.html
original_path: recipe-display-processes-by-process-model-with-status-icons.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Display Processes by Process Model with Status Icons

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

Use an interface to display information about instances of a specific process model.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

![](images/SAIL_Recipe_Process_Grid.png)

This scenario demonstrates:

-   How to use `a!queryProcessAnalytics()` to query process data
-   How to display process report data in a grid
-   How to use the process report's configured formatting to customize display
-   How to us `a!forEach()` to dynamically create a grid's columns

## Setup

For this recipe, you'll need a constant pointing to a process report and a process model that has been at least started a few times. If you don't have a process model, you can follow the [Process Modeling Tutorial](Process_Modeling_Tutorial.html). Once you have some processes, you can follow these steps to create a process report with the default columns and associate it with a constant:

1.  In the **Build** view of your application, click **NEW > Process Report**.
2.  Select **Create from scratch**.
3.  Name the report **Processes for Process Model A**.
4.  Under **Report Type**, select **Process**.
5.  Under **Context Type**, select **Processes by process model**.
6.  Specify a folder to contain the report, and then click **Create**.
7.  Open the process report in a new tab. You will see the **Choose Process Models** dialog open.
8.  In the **Choose Process Models** dialog, select the desired process model, and then click **OK**.

The main expression uses two supporting constants, so let's create them first.

-   `UC_PROCESSES_FOR_PM_REPORT`: Constant of type _Document_ whose value is `Processes for Process Model A`.
-   `UC_PROCESS_MODEL`: Constant of type _Process Model_ whose value is the process you created.

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
a!localVariables(
  local!pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: -1
  ),
  local!report: a!queryProcessAnalytics(
    report: cons!UC_PROCESSES_FOR_PM_REPORT,
    contextProcessModels: {
      cons!UC_PROCESS_MODEL
    },
    query: a!query(
      pagingInfo: local!pagingInfo
    )
  ),
  a!gridField(
    label: local!report.name,
    instructions: local!report.description,
    data: local!report.data,
    columns: a!forEach(
      items: local!report.columnConfigs,
      expression: a!gridColumn(
        label: fv!item.label,
        sortField: fv!item.field,
        value: if(
          fv!item.configuredFormatting = "PROCESS_STATUS_ICON",
          a!imageField(
            images: choose(
              /*Process status go from 0-4, so add 1 to index into the choose list */
              1 + tointeger(index(fv!row, fv!item.field, {})),
              a!documentImage(
                document: a!iconIndicator( icon: "PROGRESS_RUNNING" ),
                altText: "Active",
                caption: "Active"
              ),
              a!documentImage(
                document: a!iconIndicator( icon: "STATUS_OK" ),
                altText: "Completed",
                caption: "Completed"
              ),
              a!documentImage(
                document: a!iconIndicator( icon: "PROGRESS_PAUSED" ),
                altText: "Paused",
                caption: "Paused"
              ),
              a!documentImage(
                document: a!iconIndicator( icon: "STATUS_NOTDONE" ),
                altText: "Cancelled",
                caption: "Cancelled"
              ),
              a!documentImage(
                document: a!iconIndicator( icon: "STATUS_ERROR" ),
                altText: "Paused By Exception",
                caption: "Paused By Exception"
              )
            ) ),
            index(fv!row, fv!item.field)
        )
      )
    ),
    rowHeader: 1,
    pageSize: 20
  )
)
```

## Test It Out

1.  Sort and (if you have enough processes) page your grid
2.  In another window or tab, complete a process and then refresh your interface to see the status change

## Notable Implementation Details

-   This example shows how to specially handle one kind of formatting, but the same pattern can be applied to provide an interface interpretation of other process report configurations.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...