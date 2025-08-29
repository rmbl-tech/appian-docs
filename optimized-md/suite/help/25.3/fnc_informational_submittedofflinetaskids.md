---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_submittedofflinetaskids.html
original_path: fnc_informational_submittedofflinetaskids.html
version: "25.3"
title: "a!submittedOfflineTaskIds() Function"
page_id: "fnc_informational_submittedofflinetaskids"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!submittedOfflineTaskIds() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!submittedOfflineTaskIds()**

In an offline interface in Appian Mobile, returns a list of offline tasks ids that the user has submitted since their last data sync. If evaluated anywhere else, returns an empty list. Use this to automatically remove tasks from an offline task report after a user submits them.

For a walkthrough of how to use this in a custom task report in an offline interface, see the [Offline Mobile Task Report](recipe-offline-task-report.html) recipe.

## Parameters

No parameters.

## Returns

List of Integer

If you evaluate this function in an interface object or expression rule, it will always return null. It only returns a list of task IDs when evaluated in an offline interface in Appian Mobile.

## Examples

This example shows a simple list of process task links. In order to test this example, you will need to set it up as an offline interface and view it in Appian Mobile.

To test this example as an offline interface in Appian Mobile:

1.  [Create a task report and constant](recipe-offline-task-report.html#create-a-task-report-and-constant).
2.  [Create an interface and enable it for offline mobile](recipe-offline-task-report.html#create-an-interface-and-enable-it-for-offline-mobile).
    -   Use the below [interface expression](#interface-expression) for the interface.
3.  [Create a site and test the interface in Appian Mobile](recipe-offline-task-report.html#create-a-site-and-test-the-interface-in-appian-mobile).
4.  Complete a task and verify it is automatically removed from the list.

### Interface expression

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
a!localVariables(
  /* The task name and id returned by a!queryProcessAnalytics() and cast to a map */
  local!myTasks: cast(
    a!listType(typeof(a!map())),
    a!forEach(
      items: a!queryProcessAnalytics(
        /* Replace this constant with a Document constant that uses a task report
        for the value */
        report: cons!MY_ACTIVE_TASKS
      ).data,
      expression: a!map(
        /* NOTE: In the data returned from a!queryProcessAnalytics(),
        "c0" refers the the task name and "dp0" refers to the task id.
        This could be different on your task report. */
        taskName: fv!item["c0"],
        id: fv!item["dp0"]
      )
    )
  ),
  /* a!processTaskLink() is partially compatible with offline mobile
  so we call it in a local variable at the top of the interface */
  local!processTaskLinkList: a!forEach(
    items: local!myTasks,
    expression: a!map(
      id: fv!item.id,
      link: a!processTaskLink(
        label: fv!item.taskName,
        task: fv!item.id
      )
    )
  ),
  /* a!submittedOfflineTaskIds() will always return null when evaluated in an interface object.
  You must test this interface in an offline interface in Appian Mobile. */
  local!submittedTasks: a!submittedOfflineTaskIds(),
  /* Compare the task ids in local!myTasks with tasks that have been submitted
  and create a list of task ids that are in both */
  local!openTasks: if(
    a!isNullOrEmpty(local!myTasks),
    {},
    difference(local!myTasks.id, local!submittedTasks)
  ),
  {
    a!forEach(
      local!processTaskLinkList,
      a!linkField(
        links: fv!item.link,
        showWhen: contains(local!openTasks, fv!item.id)
      )
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
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...