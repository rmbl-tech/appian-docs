---
source_url: https://docs.appian.com/suite/help/25.3/Report_Performance_Details.html
original_path: Report_Performance_Details.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Report Performance Details

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Report generation

Reports are generated in the following manner:

-   Each analytics engine pulls data from its associated execution engine.
-   The job of calculating each report is divided among the available analytics engines (three in a standard topology).
-   Reporting jobs are first distributed among process analytics engines, then compiled on the application server by the report master component.

We recommend testing your reports in a staging environment to help you understand the impact of your report design and the approximate execution speed with different volumes of data.

## Viewing report calculation times and metrics

From the report, move the pointer over ![report performance icon](images/Report_performance_icon.gif) in the top-right corner of the toolbar.

-   The time taken to generate the report is displayed.
-   This calculation does not indicate the overall elapsed time taken to calculate the report. Rather, it indicates how much system time was spent by each engine running in parallel. For example, if your report took 2.000 seconds to display, and each of the three default engines spent 1.000 second calculating the results, the listed report generation time would be 4.000 seconds (1.000 second for each engine and 1.000 second for master calculations).
    ![report performance icon hover](images/Report_performance_icon_hover2.gif)

For more information, click ![report performance icon](images/Report_performance_icon.gif).

-   The Report Performance Details are displayed.
-   The calculation times for the various report components are listed with the longest-running listed first and the remaining items listed by execution order. With this, you can go back and adjust the various report components for optimal performance.
    ![report performance details](images/ReportPerformanceDetails_6_2.gif)

If you open the Performance Details for a report that has not been calculated, an empty table is displayed.

Unsorted report rows may be returned in a different order when the same report is run repeatedly, due to distributed calculations.

| Report Column | Description |
| --- | --- |
| Name | The name of the operation or function applied to the report data. |
| Type | The category of operation performed.
-   System: An internal function or operation.
-   Column: An operation applied to an individual column of data. Examine these operations when optimizing your report. The ordering of your column operations can significantly impact report generation performance.
-   Column (Sort): A sort operation applied to an individual column of data.
-   Sort: A sort operation that is applicable to the ordering of the report results overall.
-   Filter: An operation that removes displayed rows from the report to eliminate extraneous information.

 |
| Resource | This column lists the application component that performed the operation.
**Process-analytics#**: The operation was performed by the analytics engine listed (numbered 0-15). One analytics engine exists for each process execution engine configured in the system. The standard configuration uses three numbered analytics engines, starting with zero.

-   All operations within a given analytics engine must complete within two seconds.
-   The timeout setting can be configured by your server administrator.

**Master**: The operation was performed by object code running on the application server.

-   All operations for a report – including master operations – must complete within 30 seconds.
-   The timeout setting can be configured by your server administrator.
-   Master operations include sorting, merging, aggregation, and grouping.

 |
| Time (Seconds) | The elapsed time to perform each operation. The report is sorted using this criteria. |
| Rows Affected | The number of report rows changed by an operation. |
| Execution Order | The sequence in which the report operations are performed.

-   The first number indicates overall ordering of results returned.
-   The second number indicates the order of operations within a given process analytics engine, for a given result.

 |

## Optimizing Reports

All Appian reports are run in real-time and are not cached. The execution time for each report is a critical factor in user experience and site operation.

**Best Practice**: While the occasional slow report isn't a concern. As a best practice, reports that are run frequently must be tuned to maintain system performance.

The practices below allow you to minimize the calculation times for your reports.

### Filtering

-   The data set that must be rendered by the reporting engines becomes larger as users drill deeper into the report results. The report rendering performance can be much slower for the last page of a report than for rendering the first page. It is better (for usability as well as performance) to provide users with different reports that provide different filters for the same data set than to create a single monolithic report that users must page through.

-   Filter operations work best with dates and numerical data types. Text operations are generally slower with operations that require case-insensitivity being the slowest.

### Drilldown paths

Avoid using drilldown paths that evaluate expressions. For example, ff you have aggregated columns that drill down to other reports with explicitly defined filter parameters (as expressions), the drill paths evaluate for all items, not just those that are shown on the current page. Strictly speaking it will be evaluated for the page size times the number of engines.

### Sorting rows

After grouping, the sort column is the final data item that is applied to the remaining rows in your report.

-   In a report with grouping and aggregation, sorting by a grouped column has a minimal performance impact, whereas sorting by a non-grouped (aggregated) column has a significant negative impact on performance. Avoid sorting aggregated columns of data in such reports.

-   Avoid using functions or expressions in the sort column to maintain the highest level of report performance.
    -   For example, avoid using expressions using the [if()](fnc_logical_if.html) function in sorted columns.
    -   If an expression is used in a column definition, avoid combining data with different data types, such as an expression that tests an Integer against a Text value. Such columns may encounter a significant performance penalty when sorted.
    -   Report columns that hold different data types are also called Variant columns.
-   The unsorted columns in a report are only evaluated when displayed on the report page. That is, there might be 10,000 rows evaluated for the sort column, with the other columns only being evaluated for the first 25 rows. As such, the expressions used for columns not involved in filters, grouping, or sorting are significantly less-expensive to calculate. These expressions can include complex calculations without adversely impacting performance.

-   The best performance for sorting operations occurs when using dates and numerical data types. A default sort order based on Text data is slower than a sort order that is based on numerical data.

### Aggregation

Aggregation (and grouping) applies to all report rows that remain after filtering.

-   The columns used when performing aggregation functions should be simple report variables, whenever possible.

-   Keep in mind that any functions applied to your report variables must be evaluated within each aggregated row, in addition to the visible rows.

-   Text data incurs a performance penalty when aggregated, when compared against strictly numerical aggregations. Additional processing is required to handle text-to-number and number-to-text conversion. Report display-formatting does not impact performance.

### Minimize the use of expressions in aggregations and sorting

-   The use of expressions for the purpose of aggregation (grouping), or sorting should be avoided in long-running reports. Expressions must be applied to the entire set of data returned by the report.

-   Whenever possible, only use expressions with variables after running all filters, aggregations, and sorting operations, and only on the results that are actually displayed to the user.

## Designing process models with reporting in mind

### Reporting across process models

When creating a Task Report or a report which spans process models, ensure that process variable data you want to display in the report is stored in a process variable that is has the same name in all process models.

For example, if you want to display an ItemID in a Task Report, make sure the process variable is named "ItemID" in all processes that generate tasks that are included in the report.

### Reporting through subprocesses

Reporting down through subprocesses is more difficult than reporting on a single model. To include data from a subprocess in your reports, incorporate process variables by reference.

### Numbers versus text

A numeric comparison is calculated very quickly. A text comparison must apply relatively-expensive internationalization functions, as text is compared using the equality operator. Status Columns should use numbers (integers) instead of text.

### Comparing text values

If you do not require case-insensitivity in your text (for example, `"HELLO" = "HELLO"` returns `true` and `"hello" = "HELLO"` returns `true`), then use the `exact()` function to improve performance rather than the `=` operator.

For example, use this expression to add a data column that results in true or false:

```
1
exact(pv!ProcessVariable,desiredValue),true(),false()
```

Instead of this:

```
1
pv!ProcessVariable=desiredValue,true(),false()
```

See also: [exact()](fnc_text_exact.html) and [Comparison Operators](parts-of-an-expression.html#comparison-operators)

### Calculating report values with a process

In limited circumstances, rather than calculating a value each time the report is run, you might want to use an expression in your Process Model to run the calculation during process execution. The value can then be quickly read by your report without additional processing.

This would most likely be used if a report uses an expensive calculation for filtering or sorting many rows. The downside is the additional data storage and configuration involved.

## Report placement

### Quick tasks

Quick tasks should be used for forms. They should not be used to build read-only interfaces with forms.

### Frequently used pages

Avoid placing a slow report on a frequently used page such as the homepage. Each hit runs the report, which must complete before the page is displayed. This adds substantial load to the system as well as significant delay for the user.

## Timing out

If a report times out, perform the various steps below to enable your report to display within the allotted time.

1.  Review the optimization guidelines to identify ways that the report can be optimized to calculate within the time required.
    -   See above: [Optimizing reports](#optimizing-reports)
2.  View the Report Performance Details page to identify the report operations that were taking the longest time to execute.

3.  Examine the number of rows affected by each operation listed on the Report Performance Details page. Identify any long-running (non-system) operations that are applied to large numbers of rows, such as long-running sort operations.

4.  Optimize your report by refactoring slow operations, keeping the optimization guidelines in mind.

5.  Use filters to reduce the number of report rows being processed.

6.  Identify ways that you can split a large monolithic report (or expensive report operations) into separate reports.
    -   See below: [Relative weightings of functions and properties](#relative-weightings-of-functions-and-properties)
7.  Identify operations that might be best performed within a process and written to a variable for use in your report. This avoids both timeout errors and the overhead of having the system recalculate the result each time the report is viewed.

8.  Look at the list of expensive functions for operations that might be split out into a separate report or off-loaded to a process to better solve long-running operations.
    -   See below: [Relative weightings of functions and properties](#relative-weightings-of-functions-and-properties)

### Relative weightings of functions and properties

Each of the functions and properties used in an expression have some impact on the time it takes to generate your report. Some functions and properties have a greater impact than others.

View the report performance details information to observe which operations are consuming the most resources.

The following table lists the top 20 functions and properties available to reports that can involve complex calculations, which historically bear the highest relative cost in terms of report performance.

1.  Task Assignee Owner
2.  Currency Functions
    -   [a!currency()](fnc_text_currency.html)
    -   [a!swissFranc()](fnc_text_swissfranc.html)
3.  len
4.  tostring(datetime)
5.  appliedlag
6.  appliedcompletion
7.  netlag
8.  netcompletion
9.  task stddev duration
10.  gcd
11.  Process Stddev Duration
12.  Process Avg Duration
13.  Case Changing Text Functions
     -   proper
     -   upper
     -   lower
14.  symmetricdifference
15.  Text Trimming Functions
     -   left
     -   mid
     -   right
16.  exp
17.  Num Running Processes
18.  Num Active Processes
19.  Num Completed Processes
20.  Num Paused Processes

### Adding analytics resources

After optimizing your report design, you may want to consider adding a process execution and process analytics engine pair or configuring additional system resources to increase the throughput of system.

The factors to consider regarding adding system resources are:

-   **The volume of read requests and CPU load**
    If the average volume for a single analytics engine uses a large percentage of the available bandwidth for one CPU core, then adding system resources may be recommended.
-   **Projected memory growth**
    If you opt to add a gateway to an analytics engine, the size of the analytics engine grows twice as fast with two gateways as with a single gateway.
    -   **Available memory**
        If you opt to add a gateway to an analytics engine, the existing memory footprint of the analytics engine is roughly doubled.

See also: [Adding Execution and Analytics Engines](Adding_Execution_and_Analytics_Engines.html) and [High Availability and Distributed Installations](High_Availability_and_Distributed_Installations.html)

## Reaching the max number of pages or rows

Report processing distributes the report generation load across available process analytics engines. The standard limit for an exported, printed, or Java API-driven report is 10,000 rows in a standard configuration. For displayed reports, the number of report pages displayed is limited to approximately 10000 rows worth of report pages (in a standard configuration).

When this limit is exceeded, the following error message is displayed:

```
1
The result cannot be returned. The number of rows requested would exceed the configured limit per engine.
```

This error can be reported by the application server (when the report master divides the report for processing by the process analytics engines) or by the process analytics engine that is calculating its share of the report.

Reports that would exceed the maximum number of rows are still generated. Only pages that remain within the configured limit are rendered.

When your reports are configured to return large data sets, we recommend the following approaches to report design, which can assist you with viewing your desired data within the rows returned:

-   **Filter the report**: Sort the report using a column that returns the desired data in earlier pages of the report.

-   For example, if you need to view information for December in a report that spans an entire year, sort the date column in descending order, rather than trying to access the last page(s) of the report.

-   **Decrease the _Rows per Page_ value**: If you configure your report **Rows per Page** to be more than the maximum report rows (configured by your server administrator), you receive a `result cannot be returned..` error.

-   **Raise the Configured Limit**: The maximum report rows value can be raised by your server administrator to return more rows for a report. Before making such a change, we recommend testing the increased value in an environment that includes the same (or comparable) data sets to determine whether your available JVM memory allocation is sufficient.

-   Analytics Java APIs that return a ResultPage (such as getReportPage and getAccepted Tasks) are also constrained by the maximum number of rows.

See also: [Post-Install Configurations - Maximum Report Rows](Post-Install_Configurations.html#maximum-report-rows)

### Contacting Appian Technical Support

If you need to contact Technical Support for assistance, gather the following information beforehand:

-   Report Performance Details or both a basic user and a system administrator
    -   See above: [Viewing Report Calculation Times and Metrics](#viewing-report-calculation-times-and-metrics)
-   Appian logs
    -   Especially analytics engine log `db_PAX_XXXX-XX-XX.log` and the timestamp of when the issue was reproduced
-   The report ARF file
-   Type of users affected (basic users versus system administrators)
-   A brief explanation of what the report is intended to display

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...