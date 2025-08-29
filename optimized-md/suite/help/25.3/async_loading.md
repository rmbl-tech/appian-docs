---
source_url: https://docs.appian.com/suite/help/25.3/async_loading.html
original_path: async_loading.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Asynchronous Loading

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Load Appian UIs Faster with Async Variables

Check out this video on the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity) to learn how to find slow-loading components and use Async Variables to load their data in the background.

This page explains how async loading works, along with how and when to use two different methods for async loading.

## About async loading

Asynchronous (async) loading can provide a better user experience by allowing users to interact with key elements of the interface while they are waiting for slower-loading components to display. By reducing the initial wait time, users experience a more responsive interface, keeping them engaged and productive. This is especially useful in [dashboards](sail/dashboards.html) and [employee home pages](sail/employee-home-pages.html).

There are two ways to enable async loading in your interfaces:

-   Configure [read-only grid](Paging_Grid_Component.html), [chart](SAIL_Components.html#charts), and [KPI](KPI_Component.html) components to load independently using the _loadDataAsync_ parameter
-   Use the [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) function to create an async variable. This allows you to load data asynchronously for use anywhere in your interface, including in more than one component.

In both cases, the components waiting on data will display placeholder skeletons, so users know they can expect content to display soon.

![gif of async dashboard](images/async_db_gif.gif)

## How async loading works

Normally, when an interface evaluates, it must wait for all of the components and data queries to load before it can display the whole interface, as in the following diagram:

[![diagram that illustrates nonasync loading](images/nonasync_loading.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img805)

[![](images/nonasync_loading.png)](#_)

Async loading allows the rest of the interface to display while it waits for the data to load in the background, which works like this:

1.  All non-async components evaluate. The non-async components load as normal and the async component displays a placeholder skeleton.
2.  After the async data loads, the whole interface reevaluates and all components display, including the async component.

    **Tip:**  For read-only grids that use the _loadDataAsync_ parameter, the user filters load async as well as the data in the grid.

3.  If you have more than one async component, they will load independently from each other and the interface will reevaluate after the data loads for each async component.

[![diagram that illustrates async loading with two async components](images/async_loading_two_components.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img806)

[![](images/async_loading_two_components.png)](#_)

## How to enable async loading

You can enable async loading in your interface using one of two methods: [use the a!asyncVariable() function](#create-an-async-variable-using-the-aasyncvariable-function) to create async variables, or [use the _loadDataAsync_ parameter](#use-the-loaddataasync-parameter-on-grids-charts-and-kpis) (only for read-only grid, chart, or KPI components).

### Choosing between a!asyncVariable and loadDataAsync

[Read-only grid](Paging_Grid_Component.html), [chart](SAIL_Components.html#charts), and [KPI](KPI_Component.html) components offer two ways to load their data asynchronously. Use the following table to decide which method is best for your use case.

| Method | When to use | How it works |
| --- | --- | --- |
| _loadDataAsync_ parameter | When a read-only grid, chart, or KPI component's data is sourced from a record type and is **not used elsewhere** in the interface. | Use a record type for the _data_ parameter and set `loadDataAsync` to `true`. |
| `a!asyncVariable()` | When you need to use the **same data in multiple components** on an interface. | Define your data query inside an `a!asyncVariable` and use the local variable in the component's `data` parameter. |

**Note:**  If you use an async variable as the data source for a read-only grid, chart, or KPI, the component will always load asynchronously, even if _loadDataAsync_ is set to false.

### Create an async variable using the a!asyncVariable() function

You can create an async variable by using the `a!asyncVariable()` function to define a local variable. Any component that uses the async variable will wait for the data to load and display a placeholder in the meantime. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.

This method allows you to load data asynchronously for use anywhere in an interface.

To use this method:

1.  In an [a!localVariables()](fnc_evaluation_a_localvariables.html) function, wrap the expression for your data (such as a query) in the `a!asyncVariable()` function. For example:

    ```
    1
    2
    3
    4
    5
    6
    7
    a!localVariables(
      local!asyncData: a!asyncVariable(
        value: a!queryRecordType(
          ...
        )
      )
    )
    ```

2.  Use the resulting local variable in one or more components.

See the [a!asyncVariable() Function](fnc_evaluation_a_asyncvariable.html) page for examples.

### Use the loadDataAsync parameter on grids, charts, and KPIs

This method applies specifically to read-only grids, charts, and KPIs when they use a record type in the _data_ parameter.

**Tip:**  If the data for the grid, chart, or KPI is used elsewhere in the interface, consider using an async variable in the _data_ parameter instead. That way, you only need to query the data once.

To enable async loading using _loadDataAsync_:

1.  For the component's _data_ parameter, use a record type reference.
2.  Set the _loadDataAsync_ parameter to true.

For example:

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
a!gridField(
  labelPosition: "COLLAPSED",
  data: 'recordType!{SYSTEM_RECORD_TYPE_USER}User',
!  loadDataAsync: true,
  columns: {
    a!gridColumn(
      label: "First And Last Name",
      sortField: 'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{SYSTEM_RECORD_TYPE_USER_FIELD_firstAndLastName}firstAndLastName',
      value: fv!row['recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{SYSTEM_RECORD_TYPE_USER_FIELD_firstAndLastName}firstAndLastName']
    ),
    a!gridColumn(
      label: "Title",
      sortField: 'recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{SYSTEM_RECORD_TYPE_USER_FIELD_title}title',
      value: fv!row['recordType!{SYSTEM_RECORD_TYPE_USER}User.fields.{SYSTEM_RECORD_TYPE_USER_FIELD_title}title']
    )
  }
)
```

## When to enable async loading

Async loading is most beneficial for parts of an interface that are slow to load because they are waiting on data from a query or integration. This is especially helpful for integrating with slow external systems that you can't control. A good rule of thumb is to use async loading for any data that takes longer than 500 ms to retrieve.

**Note:**   In [offline mobile and portal interfaces](fnc_evaluation_a_asyncvariable.html#using-in-offline-mobile-and-portal-interfaces), data that is configured to load asynchronously will load with the rest of the interface, instead of loading in the background.

### Performance and resource considerations

To maintain application performance and scalability, use `a!asyncVariable()` strategically, not for every query. Each async variable requires additional server resources, so using them too often can negatively impact your environment's performance and the user experience.

As a best practice:

-   **Start with the slowest loading data**. Focus your efforts on the parts of the interface that will provide the most noticeable improvement.
-   **Limit the number of async variables to 15 per interface**. This will help you avoid potential performance issues.
-   **Don't make a variable async if it's already fast**. If a query consistently returns in under 500ms, the flash of a loading placeholder can feel more jarring to a user than a brief, synchronous load.

### Identifying slow-loading components

Use the interface object's [Performance Details](Performance_View.html) to identify slow-loading components that could benefit from being loaded async.

To identify slow-loading components:

1.  In the interface object header, click **Performance Details** .
2.  In the header, click **TEST** to perform an initial evaluation.
3.  Under **Parameters and Direct Children**, identify the slowest loading local variables or components.

**Note:**  The interface [performance details](Performance_View.html) don't measure the true evaluation time for async variables. Async variables will always appear with a time of `<1` ms (less than 1 millisecond), regardless of how long its data actually takes to load.

When using the performance details, remember that performance in your development environment will likely be different from production. To get a more accurate assessment, you may need to mimic production-level data volumes in your testing environment. See [Best Practices: Database Volume Testing](https://community.appian.com/success/w/guide/3324/best-practices-database-volume-testing) on Appian MAX for more information.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...