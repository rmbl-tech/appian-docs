---
source_url: https://docs.appian.com/suite/help/25.3/Performance_View.html
original_path: Performance_View.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Performance Details

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian provides tools to analyze the performance of expressions within interface objects, expression rules, record type interfaces, web APIs, and decisions. There are two types of performance details you can view to optimize your expressions:

-   [Performance view](#performance-view): Live performance information
-   [Performance trends](#performance-trends): Historical performance trends

This page explains how to access performance details and interpret the results.

**Tip:**  To learn more about the performance of the queries to your record types, see the [**Query Performance** tab](monitoring_view.html#query-performance) of the **Monitor** view.

## Accessing performance information

The availability of performance view and performance trends differs based on the object type, which is outlined below.

| Object | Performance view (live performance information) | Performance trends |
| --- | --- | --- |
| [Interface](interface_object.html) | Click **Performance Details** | From the performance view, click **Performance Trends**. |
| [Interface](interface_object.html) | Click the Performance Details icon | Click **Settings** \> **Performance Trends**. |
| [Expression Rule](Expression_Rules.html) | In the [Ad Hoc Test](Expression_Rules.html#ad-hoc-test) pane, click **TEST RULE**, then click **View Performance** in the Test Output section. | Click **Settings** \> **Performance Trends**. |
| [Record Type](Record_Type_Object.html) | Go to the **Performance** page of the record type. | N/A |
| [Web API](Web_APIs.html) | After clicking **TEST REQUEST**, click **Settings** \> **Performance View**. | N/A |
| [Decisions](Decisions.html) | N/A | Click **Settings** \> **Performance Trends**. |

You can also view performance trends for all interfaces or expression rules in the environment from the [Rule Performance](Appian_Administration_Console.html#rule-performance) page of the Admin Console.

## Performance view

When you open the performance view, your expression is [reevaluated](interface-performance.html#interface-evaluations) and live performance details are displayed. This view provides insights into the total evaluation time and the individual contributions of each part of your expression, enabling you to identify and address performance bottlenecks.

Initially, measurements for the top-level rule or function in the expression are displayed.

Click links or charts to drill down to a particular function, rule, or parameter. As you drill down, breadcrumbs appear at the top and can be clicked to navigate back to a higher level.

The blue bar beneath the breadcrumb shows the current part of the expression's contribution to the overall evaluation time.

The performance view contains the following sections that are [common](#common-performance-view-sections) to each object type. In interface objects, these display in the **Evaluation Metrics** tab.

-   [Parameters and Direct Children](#parameters-and-direct-children)
-   [Descendant Functions and Queries](#descendant-functions-and-query-rules)
-   [Descendant Rules](#descendant-rules)

For [interfaces](#interface-performance-view-tabs), the performance view includes the following tabs:

-   [Evaluation Metrics](#evaluation-metrics) (which contains the common sections listed above)
-   [Save Metrics](#save-metrics)
-   [Query Metrics](#query-metrics)
-   [Performance Trends](#performance-trends)

[![performance view in an interface](images/Interface_Designer_Performance_View.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img798)

[![](images/Interface_Designer_Performance_View.png)](#_)

### Parallel evaluation

If your interface contains multiple queries, parts of the expression may [evaluate in parallel](expressions-parallel-evaluation.html). This means that the total time the interface took to evaluate may be less than the sum of the evaluation time of each function that is called. Because of this, percentages may add up to more than 100%.

When analyzing the performance of an interface that is being evaluated in parallel, the performance view will still help you identify bottlenecks by showing functions or rules that are outliers. As you make changes to the expression, however, you may not see a 1-to-1 improvement between the part you just improved and the overall evaluation time. If this occurs, review the performance view to see if there are others areas for improvement.

See [Parallel Evaluation of Expressions](expressions-parallel-evaluation.html) for an example.

### Common performance view sections

The following sections are common to each object type. See [Interface performance view tabs](#interface-performance-view-tabs) for information only available in the interface object performance view.

#### Parameters and Direct Children

This section displays information about the current function, rule, or parameter.

The grid displays the following columns:

[![images/parameters_and_directChildren.png](images/parameters_and_directChildren.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img799)

[![](images/parameters_and_directChildren.png)](#_)

| Column | Description |
| --- | --- |
| Name | The name of the function, rule, or parameter. |
| Type |
The column can have the following values:

-   **Evaluation**: The current function, rule, or parameter being evaluated.
-   **Save**: The current function, rule, or parameter being saved. This value only appears in the [Saved Metrics](#save-metrics) sub-tab in an interface.
-   **Parameter**: The parameter of the current function or rule.
-   **Child**: The rules or functions that are part of the evaluation.

 |
| Time (ms) | The time (in milliseconds) spent evaluating the function, rule, or parameter. |
| Percent | The percentage of the total time spent evaluating the function, rule, or parameter. |

The pie chart visually displays the data described in the **Percent** column. You can click on a linked name in the grid or a pie chart section to drill into that function, rule, or parameter.

**Tip:**  For interfaces and record types, the measured time is often shorter than the time you observe while waiting for the object to load. This is because what is measured is specifically the time spent evaluating your expression and does not include application server overhead, network transmission, or client rendering.

#### Descendant Functions and Query Rules

This section displays each function and query that contributed to the overall evaluation time of the current function, rule, or parameter.

By default, the grid displays all the functions and queries invoked while evaluating the entire expression. When you drill down, the grid is filtered to show only those functions and rules that contributed to the evaluation time of the current function, rule, or parameter.

The grid displays the following columns:

[![images/descendant_functions_and_queryRules.png](images/descendant_functions_and_queryRules.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img800)

[![](images/descendant_functions_and_queryRules.png)](#_)

| Column | Description |
| --- | --- |
| Function | The name of the function or query. |
| Count | Number of times the function or query was invoked while evaluating the current function, rule, or parameter. |
| Total Time (ms) | Cumulative time (in milliseconds) spent evaluating all invocations of this function or query. |
| Percent | Percent of the total time spent evaluating all invocations of this function or query. |
| Minimum Time (ms) | The shortest evaluation time (in milliseconds) of the function or query. |
| Maximum Time (ms) | The longest evaluation time (in milliseconds) of the function or query. |

#### Descendant Rules

This section displays each interface or expression rule that contributed to the overall evaluation time of the current function, rule, or parameter.

By default, the grid displays all interfaces or expression rules invoked while evaluating the entire expression. When you drill down, the grid is filtered to show only those interfaces and expression rules that contributed to the evaluation time of the current function, rule, or parameter.

The grid displays the following columns:

[![images/descendant_rules.png](images/descendant_rules.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img801)

[![](images/descendant_rules.png)](#_)

| Column | Description |
| --- | --- |
| Rule | The name of the interface or expression rule. |
| Count | Number of times the rule was invoked during the evaluation. |
| Total Time (ms) | Cumulative time (in milliseconds) spent evaluating all invocations of this rule. |
| Percent | Percent of the total time spent evaluating all invocations of this rule. |
| Minimum Time (ms) | The shortest evaluation time (in milliseconds) of the rule. |
| Maximum Time (ms) | The longest evaluation time (in milliseconds) of the rule. |

**Note:**  While function and query evaluation times are independent, rule evaluation times often overlap. If `rule!a` calls `rule!b`, then `rule!a`'s measured time will include the time spent evaluating `rule!b`. This means that adding all the percentages from the **Descendant Rules** grid often results in a total greater than 100%.

### Interface performance view tabs

Interfaces have four separate tabs in the performance view, including [Evaluation Metrics](#evaluation-metrics), [Save Metrics](#save-metrics), [Query Metrics](#query-metrics), and [Performance Trends](#performance-trends).

#### Evaluation Metrics

The **Evaluation Metrics** tab displays the most recent [evaluation](interface-performance.html#interface-evaluations) of your expression and includes the [common performance view sections](#common-performance-view-sections) outlined above.

#### Save Metrics

When the server receives a change to a component value, it must first evaluate the expression to locate and execute the component's save configuration (the _saveInto_ parameter). Save metrics show the performance of the component's save configuration. Then, the expression is evaluated again to display the new interface context; these metrics are shown on the **Evaluation Metrics** tab.

Only complex saves, where there are expressions (including rules) executed within the _value_ parameter of an [a!save](fnc_evaluation_save.html) function, will be displayed on the **Save Metrics** tab. For example, the following expression would appear in the tab:

```
1
2
3
4
5
6
7
a!localVariables(
  local!text,
  a!textField(
    value: local!text,
    saveInto: a!save(local!text, upper(save!value))
  )
)
```

Simple variable assignments, like setting the _saveInto_ parameter to be a variable, will not appear in the **Save Metrics** tab because these evaluations are negligible in the context of performance. For example, the following expression would not appear in the tab:

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
a!localVariables(
  local!text,
  local!number,
  a!textField(
    value: local!text,
    saveInto: {
      local!text,
      a!save(local!number, 1)
    }
  )
)
```

#### Query Metrics

The **Query Metrics** tab displays a grid of record type queries run during the interface's evaluation.

**Tip:**  To see detailed information about the record type queries run throughout your applications, go to the [**Query Performance**](monitoring_view.html#query-performance) tab in the **Monitor** view.

The grid displays the following columns:

[![images/queryMetricsTab.png](images/queryMetricsTab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img802)

[![](images/queryMetricsTab.png)](#_)

| Column | Description |
| --- | --- |
| **Query UID** | A unique identifier for the query. Click the link to see an expression that illustrates the record types, fields, filters, and functions used in the query. |
| **Execution Time** | The time (in milliseconds) that the query took to wait for resources and run. |
| **Wait Time** | The time (in milliseconds) the query waited for resources. |
| **Expression Rule** | The design object used to run the query, usually an expression rule. This column may be blank if the query was run directly from a record view or record list. Click this link to open the identified design object. |
| **Record Type** | The record type used in the query. Click this link to open the identified record type object. |
| **Component** | The component used to run the query. In some instances, this column may contain a function, record view, or record action, depending on how the interface or expression rule is configured. |

## Performance trends

Performance trends is available from:

-   The settings menu in expression rules and decision objects.
-   The performance details page in interface objects.

It offers a look at how the object performed in the past.

A moving window of thirty days of performance metrics are gathered and stored as end users interact with the interface or expression rule. The data in this view can help you understand how your expression is performing under real usage by showing the overall trends over time.

The historical performance trends are always for the top-level expression. It does not show the historical performance of the particular function, rule, or parameter within the expression.

Like the live performance details, this historical view captures only the time spent evaluating the expression. It does not capture network transmission or client rendering time, so the values shown in this interface are always slightly less than the load time experienced by end users of your interface.

The evaluation times recorded do not include the evaluation of the expression while it is tested through the interface or expression rule designers. The exception to this is when the interface or expression rule is embedded within a different expression and that expression is evaluated or tested in the interface or expression rule designers.

There are four aggregation levels offered for analyzing the historical performance of the interface.

### Minute

The per-minute aggregation level of the historical performance trends shows the performance of the interface or expression rule on a minute by minute basis. It is the highest granularity view of the performance data and is most suitable for analyzing performance changes during iterative interface and rule design. In this view, you are able to filter the results even further with a given start date, start time, end date, and end time.

The times are displayed in the time zone of the user viewing the grid. There are 2 graphs and a grid shown when this aggregation is selected:

-   **Evaluation Time by Minute (Graph)**: The minimum, average, and maximum time recorded across all evaluations each minute, in milliseconds.
-   **Executions by Minute (Graph)**: The number of times the expression was executed each minute.
-   **Executions by Minute (Grid)**: The count, minimum, average, and maximum evaluation time recorded in each minute, in milliseconds.

### Hour

The hourly aggregation analyzes the performance on an hourly basis, providing insight into how the performance changes hour by hour. It is the default aggregation level of the historical performance trends. In this view, you are able to filter the results even further with a given start date, start time, end date, and end time.

When viewing the hourly aggregation, the hours are displayed in the time zone of the user viewing the grid. The averages are calculated using the unweighted average of the per-minute averages corresponding to the hour. There are 2 graphs and a grid shown when this aggregation is selected:

-   **Evaluation Time by Hour (Graph)**: The minimum, average, and maximum time recorded across all evaluations each hour, in milliseconds.
-   **Executions by Hour (Graph)**: The number of times the expression was executed each hour.
-   **Executions by Hour (Grid)**: The count, minimum, average, and maximum evaluation time recorded in each hour, in milliseconds.

### Day

The daily aggregation analyzes the performance on a daily basis. The day boundaries are determined based on the viewing user's time zone (midnight to midnight in their time zone). The averages are calculated using the unweighted average of the per-minute averages corresponding to the day. Like the hourly aggregation, there are 2 graphs and a grid shown when this aggregation is selected:

-   **Evaluation Time by Day (Graph)**: The minimum, average, and maximum time recorded across all evaluations each day, in milliseconds.
-   **Executions by Day (Graph)**: The number of times the expression was executed each day.
-   **Executions by Day (Grid)**: The count, minimum, average, and maximum evaluation time recorded in each day, in milliseconds.

### Week

The weekly aggregation analyzes the performance on a week to week basis. The week boundaries are determined based on the viewing user's time zone, starting on Sunday (Sunday through Saturday). The averages are calculated using the unweighted average of the per-minute averages corresponding to the week. Like the hourly and daily aggregations, there are 2 graphs and a grid shown when this aggregation is selected:

-   **Evaluation Time by Week (Graph)**: The minimum, average, and maximum time recorded across all evaluations each week, in milliseconds.
-   **Executions by Week (Graph)**: The number of times the expression was executed each week.
-   **Executions by Week (Grid)**: The count, minimum, average, and maximum evaluation time recorded in each week, in milliseconds.

## Next steps: Review interface performance best practices

Review the [Interface performance best practices](interface-performance.html) to learn the best, most efficient ways to create fast interfaces.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...