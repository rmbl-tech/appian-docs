---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Process_Reports.html
original_path: Configuring_Process_Reports.html
version: "25.3"
title: "Configuring Process Reports"
page_id: "Configuring_Process_Reports"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Process Reports

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

[Process Reports](Process_Reports.html) can expose process model, process, or task data that can be queried and displayed as reports.

This page explains how to create and configure a process report so you can query data about a process using the [a!queryProcessAnalytics()](fnc_system_a_queryprocessanalytics.html) function. Then, we’ll display this data in a grid in an interface.

There are several out-of-the-box system default reports available to use. If you decide to go with one of these process reports, skip to the [Calling the Process Report](#call-the-process-report) section.

## Create a process report

Let's start by creating a process report.

For this example, we’ll create a process report that collects information on orders placed today.

To create the process report:

1.  In your application, go to the [**Build** view](build-view.html).
2.  Click **NEW** > **Process Report**.
3.  In the **Create Process Report** dialog, we’ll use the following values:

    ![images:report_ht_create_modal.png](images/report_ht_create_model.png)

    **Tip:**  Not familiar with these properties? Learn about them [here](Process_Reports.html).

4.  Click **CREATE**. The new report displays in the list of objects.

Since we selected a **Context Type** of **Processes by process model**, we will need to to select a process model to compare in our report.

To select the process model:

1.  Open the new process report.
2.  In the **Choose Process Models** dialog, select the process model you want to compare.
3.  Click **OK**. The report will populate with data from the selected process model.

### Add report columns

By default, the process report displays the process name, status, and start time. We’ll go ahead and add another column to the report.

To add a column to a process report:

1.  In the report toolbar, click **Edit**.
2.  In the **Report Options** dialog, go to the **Data** tab.
3.  Click **New Data**.

    ![images:report_ht_adding_data.png](images/report_ht_adding_data.png)

4.  In the **Add/Edit Data** dialog, configure the following properties:

    | Properties | Description |
    | --- | --- |
    | **Display Name** | The name of the new column. |
    | **Definition** | The expression defining the data displayed in the new column. You can use process properties, process variables, or process metrics in the definition. If you use a variable of type [record data type](Appian_Data_Types.html#record-data-types), you must pass the entire variable into the definition; you cannot index into specific record fields from the report. |
    | **Formatting** | The format in which the data is displayed in the column of the process report. This formatting will not apply when querying the process data using `a!queryProcessAnalytics()`. |
    | **Link to More Information** | [Links to other useful data points](Task_Report_Tutorial.html). However, for the purpose of this report, we don't need to specifically link to other process data.

    These links will return in the _d(n)_ part of the datasubset when we use `a!queryProcessAnalytics()`, which can be used to create links to other things. Specifically, when creating task reports, linking to `tp!id` can be useful to create a link to a task in someone's task queue. Learn more about using [task prefixes](Process_and_Report_Data.html). |

    For example, we’ll add a new column called **Order**, which will populate with the value stored in the Order process variable from our process model.

    ![images:report_ht_populated_data.png](images/report_ht_populated_data.png)

5.  Click **SAVE** to close the **Add/Edit Data** dialog.
6.  Click **SAVE** to close the **Report Options** dialog.

The new column displays in the report.

**Note:**  If you referenced a [record data type](Appian_Data_Types.html#record-data-types) as a column in the report, it will not display in the report designer; however, you can still query this data using `a!queryProcessAnalytics()`.

[![images/report_ht_all_columns.png](images/report_ht_all_columns.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img834)

[![](images/report_ht_all_columns.png)](#_)

### Set up a report filter

Now that we've added the columns we want, we will filter our report so it only returns orders placed today. We’ll use default filters in the report to accomplish this.

To configure a new filter:

1.  In the report toolbar, click **Edit**.
2.  In the **Report Options** dialog, go to the **Filter** tab.
3.  To only include orders created today, select **Started within the last 0 days**.
4.  In the text box, enter `1`.

    ![images:report_ht_filter.png](images/report_ht_filter.png)

5.  Click **SAVE**.
6.  In the report toolbar, click to save the process report.

Now that we have our process report configured, let’s use it to query process data and display the data in an interface.

## Call the process report

To query our process report, we’ll use the [a!queryProcessAnalytics()](fnc_system_a_queryprocessanalytics.html) function. This function executes a process report and returns the resulting data.

To use this function, we first need to create two new constants:

-   One constant that points to our process report.
-   Another that points to the contextual process model.

Once we have our constants, we’ll create a new expression rule and call the `a!queryProcessAnalytics()` function.

### Create constants

To create a constant for the process report:

1.  In the **Build** view, click **NEW** > **Constant**.
2.  In the **Create New Constant** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the constant. |
    | **Description** | A short description about the constant. |
    | **Type** | Select **Document**. |
    | **Value** | Select the newly created process report. |
    | **Save In** | The folder to save the constant in. |

3.  Click **CREATE**.

Next, create a constant for the process model used in the report:

1.  In the **Build** view, click **NEW** > **Constant**.
2.  In the **Create New Constant** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name of the constant. |
    | **Description** | A short description about the constant. |
    | **Type** | Select **Process Model**. |
    | **Value** | Select the process model used as context in your report. |
    | **Save In** | The folder to save the constant in. |

3.  Click **CREATE**.

### Create an expression rule

Now that we have our constants, let’s create a new expression rule and query our process report:

1.  In the **Build** view, click **NEW** > **Expression Rule**.
2.  Name and create your new rule.
3.  In the expression box, enter `a!queryProcessAnalytics()` and use your new constants to populate the _report_ and _contextProcessModels_ parameters.

    For example:

    ```
    1
    2
    3
    4
     a!queryProcessAnalytics(
       report: cons!CMF_TODAYS_ORDERS,
       contextProcessModels: cons!CMF_NEW_ORDER_MODEL
     )
    ```

4.  To page through the results in a read-only grid, we’ll add paging information using the _query_ parameter and a rule input:
    -   In the **RULE INPUTS** pane, click **New Rule Input**.
    -   For **Name**, enter `pagingInfo`.
    -   For **Type**, choose the **PagingInfo** data type.
    -   In the `a!queryProcessAnalytics()` function, add the _query_ parameter.
    -   In the _query_ parameter, enter `a!query( pagingInfo: ri!pagingInfo)`.

The expression currently looks like this:

```
1
2
3
4
5
6
7
a!queryProcessAnalytics(
  report: cons!CMF_TODAYS_ORDERS,
  contextProcessModels: cons!CMF_NEW_ORDER_MODEL,
  query: a!query(
    pagingInfo: ri!pagingInfo
  )
)
```

### Test the expression

With your function configured, let’s test out our report results.

To test the expression:

1.  In the **Test Inputs**, for the **pagingInfo** rule input, enter the following:

    ```
    1
    2
    3
    4
     a!pagingInfo(
         startIndex: 1,
         batchSize: 10
     )
    ```

2.  Click **TEST RULE**.

The results will look something like this:

[![images/report_ht_expression_rule.png](images/report_ht_expression_rule.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img835)

[![](images/report_ht_expression_rule.png)](#_)

## Display report data in an interface

Now that we’ve queried data about our process, we can display that data however we want in an interface.

To reference the process data in an interface, we’ll call our [expression rule](#create-an-expression-rule) as a local variable and use it to display data using the process report datasubset.

A process report datasubset is almost identical to a typical [datasubset](Appian_Data_Types.html#datasubset) with two exceptions:

-   The process report datasubset also contains the `name`, `description`, and `columnConfigs` fields. The `columnConfig` fields help identify which data is which.
-   The `data` field will always have `c(n)` and `d(n)` subelements:
    -   `c(n)` refers to the data columns we started with and added to the process report.
    -   `d(n)` refers to linked data on any columns where designers selected _Link to more information_ option.

In this example, we’ll reference the `name`, `company`, `totalAmount`, `status`, and `orderDate` in a read-only grid.

To create this grid:

1.  From the **Build** view, click **NEW** > **Interface**.
2.  Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg).
3.  Create a local variable to reference your expression rule.

    For example:

    ```
    1
    2
    3
    4
    5
     a!localVariables(
     local!datasubset: rule!CMF_queryProcessReport(
        pagingInfo: a!pagingInfo(startIndex: 1, batchSize: -1)
      )
     )
    ```

    This local variable is how we'll reference our process data in the interface.

4.  Add an [a!gridField()](Paging_Grid_Component.html) function and use the local variable in the _data_ parameter. Append `.data` to the end of the local variable to only return the _data_ property from the datasubset.

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
     a!localVariables(
     local!datasubset: rule!CMF_queryProcessReport(
         pagingInfo: a!pagingInfo(startIndex: 1, batchSize: -1)
      ),
     a!gridField(
        label: "Sample data",
        data: local!datasubset.data,
      )
     )
    ```

5.  Add the _columns_ parameter to `a!gridField()`.
6.  For each column in the grid, use the [a!gridColumn()](Grid_Column_Component.html) function. For the _value_ parameter, use the [index()](fnc_array_index.html) function to display each row data from a specific field from the datasubset.

    For example, to display the **Name** column:

    ```
    1
    2
    3
    4
     a!gridColumn(
         label: "Name",
         value: index(fv!row, "c0", null)
     )
    ```

    If the column is of type record data type, you'll need to index into the column and then index into the specific [record field reference](reference-records.html#reference-record-fields). For example, to display the order date from the **Order** column:

    ```
    1
    2
    3
    4
    5
    6
    7
    8
      a!gridColumn(
      label: "Ordered On",
      value: index(
          index(fv!row, "c3", null),
          recordType!Order.fields.orderDate,
          null
       )
      )
    ```

The finished grid would look something like this:

[![images/report_ht_finished_grid.png](images/report_ht_finished_grid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img836)

[![](images/report_ht_finished_grid.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...