---
source_url: https://docs.appian.com/suite/help/25.3/refresh-behavior-interfaces.html
original_path: refresh-behavior-interfaces.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Refresh Behavior in Interfaces

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains the different ways to configure refresh behavior on your interface objects.

## About Refresh Behavior

When viewing your interfaces and reports, it's important that you see the latest available data. This is especially true when making important business decisions based on that data.

To keep your data up-to-date, you can configure a combination of five different types of refresh behavior in your interfaces:

-   **Refresh always**: Refresh the data after each user interaction and each interval refresh.
-   **Refresh interval**: Refresh the data after the specified time interval (in minutes).
-   **Refresh on referenced variable change**: Refresh the data when any variable the object depends on changes.
-   **Refresh on variable change**: Refresh the data when the specified variable (or variables) change.
-   **Refresh after**: Refresh the data each time a [record action](record-actions.html) dialog is submitted.

It’s easy to configure your desired refresh behavior in your charts and read-only grids using the available [refresh parameters](#using-refresh-parameters-in-grids-and-charts).

For your other interface components, like date or text fields, you can use the [a!refreshVariable()](#local-variables) function and local variables to define the same refresh behavior.

## Using refresh parameters in grids and charts

The refresh parameters in [read-only grids](Paging_Grid_Component.html) and [charts](Chart_Configuration_Using_Records.html) allow you to easily define how the data in the _data_ parameter is refreshed. This means the refresh behavior will apply to any data used to populate the grid or chart.

For example, let’s say you have a read-only grid that uses the Case record type to display support case information, and you need the grid to be instantly refreshed anytime a new support case is logged.

By default, **Refresh after referenced variable changes behavior** is selected. This will automatically refresh the grid's data each time the value of any field referenced in the _data_ parameter is updated. By selecting **Refresh after record action completes** (the _refreshAfter_ parameter), you can also refresh the data each time a record action completes.

In this example, that means that whenever the **New Case** action completes, all grid data will be refreshed.

![refresh-grid-actions](images/refresh-grid-actions.png)

In expression mode, this looks like:

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
a!gridField(
    label: "Support Cases",
    labelPosition: "ABOVE",
!   data: recordType!Case,
    columns: {
      a!gridColumn(
        label: "Title",
        sortField: recordType!Case.fields.id,
        value: fv!row[recordType!Case.fields.id],
        align: "END",
      ),
      a!gridColumn(
        label: "Customer",
        sortField: recordType!Case.relationships.customers.fields.name,
        value: fv!row[recordType!Case.relationships.customers.fields.name],
        align: "START"
      )
      a!gridColumn(
        label: "Status",
        sortField: recordType!Case.fields.casestatus,
        value: fv!row[recordType!Case.fields.casestatus]
      )
    },
    pageSize: 10,
    showSearchBox: true,
    showRefreshButton: true,
!   refreshAfter: “RECORD_ACTION”,
    recordActions: {
      a!recordActionItem(
        action: recordType!Case.actions.newCase
      )
    }

  )
```

Although charts also provide the same refresh parameters as the read-only grid, chart configuration differs depending on your source, which means certain configurations don’t use the _data_ parameter.

When you use record type as the source of your chart, you will use the _data_ parameter to reference a record type or use the `a!recordData()` function to reference a record type and define any additional filters. Since a records-powered chart uses the _data_ parameter, you can easily configure the refresh parameters in your chart, just like you would in a read-only grid.

For example, you can configure the same refresh behavior in a pie chart by simply selecting the **Refresh after record action completes** checkbox and adding a [record action component](Record_Action_Component.html) to the page.

![refresh-chart-action](images/refresh-chart-action.png)

However, when you perform your own query to populate a chart, you’ll use the _categories_ and _series_ parameters to provide the list of data labels and values. Since this configuration doesn't use the _data_ parameter in the chart component, you should use `a!refreshVariable()` and local variables to configure refresh behavior on charts that don't use a record type as the source.

For more information on using refresh parameters in charts, see the different chart component pages:

-   [Bar Chart Component](Bar_Chart_Component.html)
-   [Column Chart Component](Column_Chart_Component.html)
-   [Line Chart Component](Line_Chart_Component.html)
-   [Pie Chart Component](Pie_Chart_Component.html)

## Using a!refreshVariable

For your other interface components, like a date field or a chart that doesn't use a record type as the source, you can use local variables and the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function to define a component's value and refresh behavior.

By default, all variables defined within the [a!localVariables()](fnc_evaluation_a_localvariables.html) function refresh when a referenced variable in the value configuration changes. The `a!refreshVariable()` function allows you to change these refresh behaviors.

To configure `a!refreshVariable()`, you need to specify the _value_ and the refresh behavior. Unlike the refresh parameters, which automatically refresh the values in the _data_ parameter, you must specify which value to refresh.

For example, say you have an interface that displays an employee's name, username, and the last time their username was updated. You want to make sure that anytime the username is updated, that new username value appears in the form.

Using local variables and the `a!refreshVariable()` function, you can have `local!usernameEditedTimestamp` update each time you change `local!username`, even though its value doesn't directly depend on it.

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
a!localVariables(
  local!name: "John Smith",
  local!username: "john.smith",
  local!usernameEditedTimestamp: a!refreshVariable(
    value: now(),
    refreshOnVarChange: local!username
  ),
  {
    a!textField(
      label: "Name",
      value: local!name,
      saveInto: local!name
    ),
    a!textField(
      label: "Username",
      value: local!username,
      saveInto: local!username
    ),
    a!dateTimeField(
      label: "Username Last Edited",
      value: local!usernameEditedTimestamp,
      readOnly: true
    )
  }
)
```

For more information about how to use `a!localVariables()` and `a!refreshVariable()`, including detailed examples, see [Local Variables](Local_Variables.html). The [Configuring Refresh Behavior](Local_Variables.html#configuring-refresh-behavior) section contains specific information about the different parameters of `a!refreshVariable()` and how to use them.

## Combining refresh configurations

All refresh configurations can be combined to increase the frequency with which the variable is refreshed. The table below describes the behavior when different configurations are combined.

| Refresh Condition... | Refresh Configurations |
| --- | --- |
| **refreshAlways** | **refreshOn Referenced VarChange** | **refreshOn VarChange** | **refresh Interval** | **refresh After** |
| the user interacts with any component in the interface
**or**
any timer in the interface goes off, including this one
**or**
a specified event completes | ✓ | any value | any value | ✓ | ✓ |
| any variables referenced in the _value_ or _data_ parameter are updated
**or**
any variables listed in the _refreshOnVarChange_ parameter are updated
**or**
this timer goes off
**or**
a specified event completes | ✗ | ✓ | ✓ | ✓ | ✓ |
| any variables referenced in the _value_ or _data_ parameter are updated
**or**
this timer goes off
**or**
a specified event completes | ✗ | ✓ | ✗ | ✓ | ✓ |
| any variables listed in the _refreshOnVarChange_ parameter are updated
**or**
this timer goes off
**or**
a specified event completes | ✗ | ✗ | ✓ | ✓ | ✓ |
| any variables referenced in the _value_ or _data_ parameter are updated
**or**
any variables listed in the _refreshOnVarChange_ parameter are updated
**or**
a specified event completes | ✗ | ✓ | ✓ | ✗ | ✓ |
| any variables referenced in the _value_ or _data_ parameter are updated
**or**
this timer goes off | ✗ | ✓ | ✗ | ✓ | ✗ |
| any variables referenced in the _value_ or _data_ parameter are updated
**or**
this timer goes off | ✗ | ✗ | ✓ | ✓ | ✗ |
| any variables referenced in the _value_ or _data_ parameter are updated
**or**
any variables listed in the _refreshOnVarChange_ parameter are updated | ✗ | ✓ | ✓ | ✗ | ✗ |

## Performance considerations

Configuring an interface to refresh on an interval means your interface may evaluate more than it would when only relying on a user interaction. Any additional evaluations will cause additional load on your system as well as any external systems that are called when refreshing the data.

System load will vary based on the number of active auto-refreshing interfaces that are open at one time. An interface will not continue refreshing while it is inactive. An interface is inactive when the user:

-   Navigates away from the interface by navigating to another interface within Appian or an external interface.
-   Minimizes the browser window containing the auto-refreshing interface.
-   Navigates to a different tab within the same browser window as the auto-refreshing interface, such that the tab containing the auto-refreshing interface is no longer visible.
-   Closes the browser tab or window.
-   Shuts down, restarts, or locks the computer with the auto-refreshing interface.

Therefore, if a user has multiple auto-refreshing tabs open at the same time, the performance impact will not scale based on the number of tabs. However, if a user has many auto-refreshing interfaces open in separate, visible windows, each interface will continue refreshing and will impact overall system load. Similarly, concurrent usage of auto-refreshing interfaces across multiple users will also affect system load.

### Monitoring performance

The [Interface Performance logs](Logging.html#interface-performance-logs) provide information about the number of evaluations caused specifically by a refresh interval and the evaluation times for those evaluations. With this information you can determine:

-   How much additional load is added by the interval refresh by comparing the number of interval evaluations to the overall number of evaluations
-   If the performance of interval evaluations is comparable to user-initiated evaluations by comparing the evaluation time metrics for interval evaluations to the overall metrics

See [Interface Evaluation Lifecycle](SAIL_Performance.html) for more information about how interfaces are evaluated.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...