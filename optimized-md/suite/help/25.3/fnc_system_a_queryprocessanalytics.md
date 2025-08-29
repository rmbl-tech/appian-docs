---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryprocessanalytics.html
original_path: fnc_system_a_queryprocessanalytics.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryProcessAnalytics() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryProcessAnalytics**( _report, query, contextGroups, contextProcessIds, contextProcessModels, contextUsers_ )

Executes process reports and returns the resulting data.

**See also:** [Process Reports](Process_Reports.html), [Query](Appian_Data_Types.html#query)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`report`

 |

_Document_

 |

`.arf` document containing the [report configuration](Process_Reports.html).

 |
|

`query`

 |

_Query_

 |

An optional query object containing paging and extra filters, created with `a!query()`. If no query is provided, the default paging from the report is used.

 |
|

`contextGroups`

 |

_Group Array_

 |

One or more groups to pass to the report context.

 |
|

`contextProcessIds`

 |

_Integer Array_

 |

One or more process ids to pass to the report context.

 |
|

`contextProcessModels`

 |

_Process Model Array_

 |

One or more process models to pass to the report context.

 |
|

`contextUsers`

 |

_User Array_

 |

One or more users to pass to the report context.

 |

## Returns

PortalReportDataSubset

## Usage considerations

### Querying process reports

The user executing the function must be able to see the report configuration file. The report is executed using the same user security context that is running the expression.

If called multiple times in the same expression with the same parameters, only one query is made to the data store when the expression is evaluated and the result is reused for each identical call. This caching only applies within a single expression evaluation. Return values are not cached in separate expressions, or in separate evaluations of the same expression.

### Using the query parameter

When a _query_ is passed, the query's pagingInfo overrides the report's configured sorting and paging. The first valid SortInfo object in the _query_ paging field is used to sort the results; other SortInfo objects are ignored.

If the passed _query_ object has a filter or logical expression, these are applied in addition to the filters configured on the process report. Columns cannot be selected or aggregated via the _query_ parameter but can be configured in the process report.

### Using the context parameters

If any of the context parameters are populated with objects, those objects are provided to the report as its context. At most one context parameter type may be used.

#### Using the contextProcessModels parameter

_contextProcessModels_ should be given using one or more constants of type Process Model.

#### Using the contextUsers parameter

If no users are passed to _contextUsers_ and the report expects a user context, the report is provided the context of the user evaluating the expression. If _contextUsers_ is populated, only that user or user array is used for the report context.

### Using returned data

The portalreportdatasubset object returned by this function contains both the unformatted result data and the process report's display configuration.

The fields are as follows:

-   _name_ (Text): Configured name of the process report.
-   _description_ (Text): Configured description of the process report.
-   _startIndex_ (Integer): Index of the first returned result.
-   _batchSize_ (Integer): Number of items requested.
-   _sort_ (SortInfo Array): Sort configurations used.
-   _totalCount_ (Integer): Number of total results.
-   _columnConfigs_ (Dictionary Array): Array of dictionaries, one for each column in the returned data. See the Examples section below for an example of the array. Each dictionary has the following fields:
    -   _label_ (Text): Column name configured in the process report.
    -   _field_ (Text): Unique column identifier used to access the column's data from row Dictionaries and to specify a column in a SortInfo configuration.
    -   _drilldownField_ (Text): Unique column drilldown identifier used to access the column's drilldown value from row Dictionaries.
    -   _configuredFormatting_ (Text): Formatting configured in the process report. This formatting can be interpreted or ignored as the designer chooses.
    -   _configuredDrilldown_ (Text): Drilldown configured in the process report. The drilldown type can be interpreted or ignored as the designer chooses.
-   _data_ (Dictionary Array): Array of dictionaries, one for each returned row, containing the unformatted results of the report's column and drilldown expressions for that row. Use the _columnConfigs.field_ and _columnConfigs.drilldownField_ to get the keys to each column's data. See the Examples section below for an example of this format.
-   _identifiers_ (Any Type): Array of unique row identifiers.
-   _errorMessage_ (Text): The error message encountered executing the report, or null if no error occurred.

**Note:**  Sorting on hidden columns is supported even though they are not returned.

## Examples

**Note:**  Since constants are specific to each system, these examples will not evaluate in your test rules interface. Use them only as a reference.

### Using only the report parameter

In this example, we'll get the first page of the All Processes report by querying that report without providing any supplemental query configuration:

```
1
=a!queryprocessanalytics(report: cons!all_processes)
```

The following expression creates a Dictionary array that is equivalent to the returned _columnConfigs_ for the All Processes report:

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
{
  {
    label: "Name",
    field: "c0",
    drilldownField: "dp0",
    configuredFormatting: "NORMAL_TEXT",
    configuredDrilldown: "PROCESS_DASHBOARD"
  },
  {
    label: "Priority",
    field: "c7",
    drilldownField: "dp7",
    configuredFormatting: "PRIORITY",
    configuredDrilldown: ""
  },
  {
    label: "Status",
    field: "c8",
    drilldownField: "dp8",
    configuredFormatting: "PROCESS_STATUS_ICON",
    configuredDrilldown: ""
  },
  {
    label: "Started by",
    field: "c1",
    drilldownField: "dp1",
    configuredFormatting: "USER_NAME",
    configuredDrilldown: ""
  },
  {
    label: "Start Time",
    field: "c2",
    drilldownField: "dp2",
    configuredFormatting: "DATE_TIME",
    configuredDrilldown: ""
  },
  {
    label: "Active Tasks",
    field: "c9",
    drilldownField: "dp9",
    configuredFormatting: "NUMBER",
    configuredDrilldown: ""
  }
}
```

The following expression creates a Dictionary array that is equivalent to two example _data_ rows for the All Processes report:

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
{
  {
    c1: fn!touser("initiating.user"),
    c2: fn!datetime(2014, 12, 15, 6, 3, 8, 690),
    c0: "Example Process #1",
    c9: 0,
    c8: 0,
    c7: 1,
    dp0: 268435502,
    dp7: null,
    dp8: null,
    dp1: null,
    dp2: null,
    dp9: null
  },
  {
    c1: fn!touser("intiating.user2"),
    c2: fn!datetime(2014, 12, 15, 6, 2, 49, 960),
    c0: "Example Process #2",
    c9: 0,
    c8: 0,
    c7: 1,
    dp0: 268435497,
    dp7: null,
    dp8: null,
    dp1: null,
    dp2: null,
    dp9: null
  }
}
```

When using supplemental query configurations, you can return specific information from your report. For example, by adding a the _query_ parameter, we can override the default batch size of 25 with a larger value of 50:

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
=a!queryProcessAnalytics(
  report: cons!ALL_PROCESSES,
  query: a!query(
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 50
    )
  )
)
```

### Using the contextProcessModels parameter

Get the processes for a process model by passing a process model to the context:

```
1
2
3
4
a!queryProcessAnalytics(
  report: cons!PROCESSES_FOR_PM,
  contextProcessModels: cons!PURCHASE_REQUEST
)
```

### Using the contextUsers parameter

Get the tasks assigned to a specific user by passing a username to the context:

```
1
a!queryProcessAnalytics(report: cons!MY_TASKS, contextUsers: "user.name")
```

### Using the contextGroups and query parameters

Get the expense approval tasks from a given region, greater than a given amount, and assigned to users in a given group by passing a group as context and a query with a logical expression:

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
a!queryProcessAnalytics(
  report: cons!OPEN_REIMBURSEMENT_REQUESTS,
  contextGroups: cons!EXPENSE_APPROVERS,
  query: a!query(
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 20),
    logicalExpression: a!queryLogicalExpression(
      operator: "AND",
      filters: {
        a!queryFilter(field: "c2", operator: "includes", value: "East"),
        a!queryFilter(field: "c4", operator: ">", value: 10000)
      }
    )
  )
)
```

Related patterns

-   [Display Processes by Process Model with Status Icons](/suite/help/25.3/recipe-display-processes-by-process-model-with-status-icons.html) (_Grids, Images, Reports_): Use an interface to display information about instances of a specific process model.

-   [Display a User's Tasks in a Grid With Task Links](/suite/help/25.3/recipe-display-a-users-tasks-in-a-grid-with-task-links.html) (_Grids, Reports, Looping_): Display the tasks for a user in a Read-Only Grid and allow them to click on a task to navigate to the task itself.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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