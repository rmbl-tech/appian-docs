---
source_url: https://docs.appian.com/suite/help/25.3/Process_Reports.html
original_path: Process_Reports.html
version: "25.3"
title: "Process Report Object"
page_id: "Process_Reports"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Report Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides detailed design information about the process report design object and its configuration options. For information on Tempo reports, see [Tempo Reports](Tempo_Report_Design.html).

Appian process reports pull data from process models, process instances, or active tasks and other activities. Each process execution engine is paired with an analytics engine to gather the real-time report data contained in your active processes. These reports can then be used with [a!queryProcessAnalytics()](fnc_system_a_queryprocessanalytics.html) and [interfaces](interface_object.html) to display data to users.

Process reports are divided between the available process analytics engines for calculations and data processing. Any [archived](Archiving_Processes.html) or deleted processes are not available for inclusion in a process report. Keep in mind that complex reports can be resource intensive to generate. See [Report Performance](Report_Performance_Details.html) for guidance on how to keep reports from consuming too many resources.

To filter on process reports in the [**Build** view](build-view.html), select the **Report** filter in the [Designer Search](find_and_search_in_appian.html). The filtered results will include both process reports and Tempo reports.

### See also

[Configuring Process Reports](Configuring_Process_Reports.html)

## Process report types

The three types of process reports expose different data and metrics from the [analytics engines](#analytics-engine-overview).

### Process model report type

Process model reports gather data from different process models. There are three context options for these report types:

-   **All Process Models**
-   **Models created by a particular user**
-   **Models last updated by a particular user**

By default, when a process model report is created, it will start with the following columns of data:

-   Process model name
-   Process model description
-   Process model creator

### Process report type

Process reports gather process data from all executed process models, from each execution of a single process model, or from each process executed by a single user. There are three context options for these report types:

-   **All Processes**
-   **Processes initiated by a particular user**
-   **Processes by process model**

By default, when a process model report is created it will start with the following columns of data:

-   **process name**
-   **process status**
-   **process start time**

### Task report type

Task report types gather task-related data. Select this report type if you need to report on task completion and status. Task reports list tasks that are `Accepted`, `Assigned`, and `Paused`. The context for task report type are as follows:

-   **Tasks attributed to user**: Lists tasks with `Accepted`, `Assigned`, and `Paused` status for specified users.
-   **Tasks assigned to group**: Lists tasks with `Assigned` and `Paused` status for specified groups.
-   **Tasks by owner**: Lists tasks with `Accepted`, `Assigned`, `Paused`, `Completed`, `Cancelled`, and `Cancelled by Exception` status for specified users.
-   **Tasks by process model**\- lists tasks with `Accepted`, `Assigned`, `Paused`, `Completed`, `Cancelled`, and `Cancelled by Exception` status for selected process models.
-   **Tasks by process**\- lists tasks with `Accepted`, `Assigned`, `Paused`, `Completed`, `Cancelled`, and `Cancelled by Exception` status for selected process instances.

By default, when a task report is created it will start with the following columns of data:

-   **task name**
-   **task status**
-   **process name**
-   **task start time**

See the [task report tutorial](Task_Report_Tutorial.html) for a walkthrough of how to use the [task report pattern](task-report-pattern.html) to configure an interface to display a custom task report.

## Prebuilt system reports

The System Reports folder of the Default Community allows users to select one of several out-of-the-box process reports. The following categories of existing reports are available for use as report templates.

-   [Process model reports](#process-model-reports)
-   [Process optimization reports](#process-optimization-reports)
-   [Process reports](#process-reports)
-   [Summary reports](#summary-reports)
-   [Task reports](#task-reports)

### Process model reports

| Report Name | Description |
| --- | --- |
| All Process Models | Each process model is listed, showing its name, description, creator, and when it was created. |
| Process Details per Process Model | This report requires that you select a process model. Once a process model is selected, statistics are displayed for all instances of the selected process model. |
| Process Model Versions | This report first requires you to select a process model (the report context). Once a Process Model is selected, the different versions of the process model are displayed, along with statistics—such as the number of completed processes—and running processes for each version of the process model. |
| Running Processes | This report requires you to select a process model (the report context). Once a Process Model is selected, all running processes of the selected process model are displayed, along with statistics for each process instance (each activated process). |

### Process optimization reports

| Report Name | Description |
| --- | --- |
| Default Process Model Optimization Metrics | Select a process model (the report context). The average lag time and average completion time of the tasks from each process are displayed. |
| Default Process Optimization Metrics | Select a process instance as the report context. The actual lag time and actual completion time of the tasks in the selected process are displayed. These report columns are also displayed as metrics within the Process Modeler when [editing a running process](Monitoring_and_Editing_Processes.html#edit-mode) and the View > Display node statistics option is selected. |

### Process reports

| Report Name | Description |
| --- | --- |
| Active Processes | Active processes that you can view are displayed on this report. |
| All Processes | Processes that have been started are displayed. Processes that are active, processes that have been completed, and canceled processes are listed. |
| Cancelled Processes | Processes that have been canceled are displayed. |
| Completed Processes | Processes that have completed execution are displayed within this report. |
| Starred Processes | Processes that have been marked as a favorite by the currently logged in user, are displayed in this report. |
| Paused Processes | Processes that have been paused are displayed within this report. |
| Processes Started by Me | Processes started by the currently logged in user are listed. |
| Processes with Problems | Processes that have been started by the currently logged in user are displayed. |
| Subprocesses per Process | This report first asks you to select a process (the report context). Subprocesses that have been triggered by the given process are displayed. |

### Summary reports

| Report Name | Description |
| --- | --- |
| Favorite Process Models | Process models that you have selected as favorites are listed, including their descriptions, who created them, and when they were created. |
| Most Active Process Models | The most-frequently used process models are listed based on the number of times each process model is launched. Process models are only listed in this report when the following conditions are met: (1) the model must have been started at least once, (2) the logged in user viewing the report data my have at least viewer access to a process instance, and (3) processes may not have any task that are cancelled by exception. |
| Statistics Across Processes | Executed processes are listed, regardless of the current state. Statistics for each process are also included. |

### Task reports

| Report Name | Description |
| --- | --- |
| Active Tasks | All active tasks assigned to the currently logged in user appear within the report. |
| All Tasks | All tasks that have been assigned to you (completed, canceled, or active) appear within this report. |
| Completed Tasks | All tasks that you have completed appear on this report. |
| Current Tasks for Process | This report displays active tasks for a selected process (the report context). |
| Starred Tasks | Tasks that have been selected as a favorite by the currently logged in user are displayed. |
| High Priority Tasks | All tasks issued by a process can have one of three priority levels: `Low`, `Medium`, or `High`. If no priority level is set, this field remains blank. Task priority must be configured in the Process Modeler, through the **Configure <ACTIVITY NAME>** dialog, or as a default for all tasks in a process in the Process Model properties dialog. This report displays all active tasks, assigned to the currently logged in user, that have been designated as high priority. |
| Overdue Tasks | Lists all active tasks that have exceeded the deadline date. |
| Tasks Due Today | Lists all tasks that have their deadline date set to today. |
| Task for Group | Using a picker, select a group in which you are a member of. You can be a group member or an administrator. All tasks that have been assigned to the group are displayed on the report. |
| Tasks for Group Members | This report requires you to first select a group. This report displays all tasks assigned to the group, but not yet accepted by anyone and all tasks accepted by any group member (regardless of original assignment). |
| Tasks per Process Model | This report requires you to first select a process model. Using a picker, you can select one or more process models. Upon selecting a process model, all tasks issued by processes of the given process model(s) are displayed within the report. |

## Create

To create a new process report, in the [**Build** view](build-view.html), click **NEW > Process Report**. The **Create Process Report** dialog appears.

![blank Create Process Report dialog](images/create_process_report_blank.png)

You can either duplicate an existing process report or create one from scratch.

Duplicating an existing report will create a copy of a previously created report. Developers can change the name, description, and folder where the report is saved, but not the report type or context type of the duplicated report.

When creating from scratch, you'll need to configure the following properties:

| Property | Description |
| --- | --- |
| **Name** | The name of the process report as it appears in Appian Designer and pickers. Follow the [recommended naming standard](Standard_Object_Names.html#process-objects) when creating this name. |
| **Description** | A description of the process report. |
| **Report Type** |
The type of process report to be created. Supported types include:

-   [**Process Models**](#process-model-report-type)
-   [**Process**](#process-report-type)
-   [**Task**](#task-report-type)

 |
| **Context Type** | The process report context. Contexts are specific to the report type you selected. For a list of supported contexts by type, see the [report type descriptions](#process-report-types). |
| **Save In** | The document folder to save the process report. Process reports are created as Appian Report Files and will have the file extension of `.arf`. |

## Edit

Once a process report is created, you can add, remove, or edit columns of data. Additionally, you can add filters to the query.

### Formatting a report

Process report data can be formatted and displayed in various ways using [columns](#data) (found on the **Data** tab) and [filters](#filters). You can also define drill-down paths for report data that allow you to link to other data points.

#### Data

You can define additional columns for your reports, remove columns, or set whether a column of data is displayed from the data tab. Some data columns are used only for sorting. See [Add Report Data](Configuring_Process_Reports.html#add-report-columns) to find out how to add and edit columns to a process report.

When clicking **New Data** or an existing column name, the **Add/Edit Data** modal will appear with the following parameters:

-   **Display name**: Name of the column.
-   **Definition**: Depending on the report context, contains process & task properties as well as variables and activity class parameters.
-   **Formatting**: Chooses the format in which the data will be represented
-   **Link to more information**: When selects, provides a link to other dashboards, as well as providing the link value.

##### Grouping and aggregation

When a column is selected for grouping, rows that have the same values within the same column will collapse into a single row.

The collapsed data in the other columns (which aren't selected for grouping) list a number indicating how many rows are represented.

You can perform calculations on rows that are collapsed by grouping, which is called aggregation.

![process reports grouping](images/process_report_grouping.png)

**Note:**  When selecting columns for grouping, move the grouped row up to the first column

Rows not grouped will have an additional parameter called **Column Aggregation**. Aggregations are calculations that you can perform on rows collapsed by grouping.

| Option | Description |
| --- | --- |
| Sum | This function adds each value in the column. Null values are excluded. Numerical values can be formatted using text or number formats. |
| Average | This function adds each value and divides the total by the number of items. If the column contains only null values, no results are displayed. Numerical values can be formatted using text or number formats. |
| Count | This function totals the number of items there are in the column of data. |
| Count (Exclude Null) | This function totals the number of items there are in the column of data, excluding any empty values. |
| Geometric Mean | To calculate the geometric mean of your data, each item in your data is multiplied, then the nth root is taken of the product with n being the number of items. For example, when the data set includes pv1 and pv2, the geometric mean solves for n such that n squared = pv1 \* pv2. |
| Max | This function returns the largest value in the column. |
| Min | This function returns the smallest value in the column. |
| Standard Deviation | This function calculates the standard deviation of the selected data by taking the square root of its variance. |
| Variance | This function calculates the amount of variation within the values listed in the column, accounting for all possible values and how likely it is that any given value might appear on the list. |
| Percent True | This function returns the percentage of true values for Boolean valued array/column aggregations. |
| Percent False | This function returns the percentage of false values for Boolean valued array/column aggregations. |
| Concatenate | This function merges the selected data, including any repeated values. |
| Concatenate w/o Repetition | This function merges the selected data and omits repeated values. |

#### Filters

Report filters allow you to restrict the data that appears within a report. When editing a report, new filters can be added on the **Filters** tab of the **Report Options** dialog.

You can also create a set of quick filters that allow users to toggle between different views of the data from the Report toolbar.

The report toolbar displays dynamic filters for certain report data formats. Dynamic filters allow users to filter report rows based on values they type.

##### Adding filters

To add a new filter rule to a report, do the following:

1.  In the **Report Options** dialog, go to the **Filter** tab.
2.  Click **New Rule**. Two dropdown lists and a text field appear at the bottom of the **Default Filters** list for configuring the new filter rule.

    ![first dropdown list](images/Dropdown1.gif)

3.  From the first dropdown list, select a column of data to use in your filter.
    -   Only columns that appear within the report (or view) display in the list.
4.  From the second dropdown list, specify a comparison to use when evaluating the column of data.
5.  In the third field, enter a filter comparison value. The text box for your filter changes based on the format of the column of data that you selected. For example, if the column of data you select for your filter is formatted as a user or group, the text box allows you to select a user or group. If a column has a document format, the text box allows you to select a document.
    -   Within the text box, you can use the asterisk (**\***) or the question mark (**?**) as wildcard characters. An asterisk can be used as a substitute for several characters. A question mark can stand in for a single character.
    -   To enter multiple values in the text-field, separate each entry by a comma (**,**) as shown in the following example:

        ![in filter GIF](images/In_filter.gif)

    -   The data type of the property and the content in the text field must match. If there is a mismatch between the data types, an error message is displayed when the you save your changes.
    -   Do _not_ enclose text entered in the box within quotation marks. (This differs from Text box fields in other areas of Appian, such as Process Modeler activities, that do accept text within quotation marks.)
    -   The End Time filter may not be effective in filtering active (running) processes.
    -   Datetime columns only display the _Date_ when filtering. The time defaults to 12:00 AM for that date. As a result, all datetimes greater than that date at 12:00 AM are listed.
6.  Create additional filter rules until you are done.
7.  Click **Save** to save and close the dialog.

The new filters appear for the report view, but you still need to save the report to apply the changes to end users.

### Report toolbar

The report toolbar lets developers access options for viewing and editing a report.

-   The toolbar display is configurable by the report designer, who may decide to not display it on a page that includes your report.
-   Certain options are only displayed when you have sufficient user rights.

| Item | Description |
| --- | --- |
| ![Save Icon](images/Save_view.gif) | Save the current report view. You must have administrator rights for this option to be displayed. |
| ![Save a Copy Icon](images/Save_a_copy.gif) | Save a copy of the report view, in order to create a customized version. **Not Recommended**. Use the **duplicate existing process report** option when creating a new report instead. |
| ![Print Icon](images/Print_view.gif) | Print a report view. |
| ![Export Icon](images/Export_view.gif) | Export the data displayed within the report view to Microsoft Excel. All rows and columns are evaluated, serialized, and returned when the report is exported. This includes more calculation than simply viewing the report and may cause a report that normally renders with no issue in Appian to time out. When exporting a report, up to 5000 rows are exported (by default). |
| ![Refresh Icon](images/Refresh_view.gif) | Refresh the report view. |
| ![Edit Report Icon](images/Edit_view.gif) | Configure the report view. Click **Edit** to display the report View Options dialog in a new window. This dialog allows you to add report data or edit report filters. |
| ![Paging Controls](images/Report_paging_controls.gif) | Appears, when a report contains more rows of data than the number of rows per page set by the report designer (which is 25 rows, by default) the report paging controls appear in the toolbar. Drilling down into subsequent pages of a report can be slower than viewing the first page, as the report is regenerated each time.The total number of pages rendered for your report is limited (approximately 10,000 rows worth of pages in a standard configuration). If the calculated number of rows for the report exceeds the number of rows that can be displayed, the paging controls do not allow you to view report pages that would exceed the report limit. |
| ![Columns Icon](images/Columns_button.gif) | Displays the list of data columns that will be included in the process report. [Report Data](Configuring_Process_Reports.html) can be added or updated by clicking on the **Add or Update Columns** link. |
| ![Filters Icon](images/Filters_button.gif) | Display the [filter options](#filters) for your report. |
| ![Report Performance Icon](images/Report_performance_icon.gif) | Click to view the [Report Performance Details](Report_Performance_Details.html) |
| ![Dynamic Filters Icon](images/Show_dynamic_filters.gif) | Display dynamic filters. Clicking this button displays filter options above report columns that contain data in the following formats: Text, Number, Date, Time, Username, User or Group Name. **Note** Dynamic filters only work in the report view. |
| ![Hide Dynamice Filter Toolbar](images/Hide_dynamic_filter_toolbar.gif) | Hides the dynamic filter toolbar. |
| ![Row Count](images/Row_count.gif) | A count of the total number of rows in the report is displayed when rows are not combined by grouping. |

## Security

Security can be configured for the process report object, as well as for the various objects and data referenced within a process report. See [Layered Object Security](object-security.html#layered-object-security) to learn more.

### Process report security

**Note:**  In order for a user to see or query a process report's data they must have at least **Viewer** permissions to the process report. Also, a user will only see process instances in a process report to which they have permissions. See [Process Security](process-model-object.html#process-security) to learn more.

The [security](object-security.html) role map of a process report controls which users can see or modify it and its properties. Process reports always inherit security from their parent folders. See [Editing Object Security](object-security.html#editing-object-security) to modify a process report's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a process report's security role map:

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| View the process report\* | Yes | Yes | Yes | No |
| Update the process report | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Rename the process report | Yes | Yes | No | No |
| Delete the process report | Yes | No | No | No |
| Update the security | Yes | No | No | No |

\*Users must have at least **Viewer** permissions to the process report in order to query data using [a!queryProcessAnalytics](fnc_system_a_queryprocessanalytics.html) or the [Execute Process Report](Execute_Process_Report_Smart_Service.html) smart service.

### Data security

Security for the data displayed in an process report is based on the security of the underlying data source. Users must have at least **Viewer** permissions to the data to view it within the report and any expressions or interfaces using the process report.

## Versions

Each time you modify and save a process report, a new version is created. All objects that use the process report will use the latest version. All versions are accessible to developers who can view the process report, and a process report can be reverted back to a previous version at any time.

For information on how to manage object versions, see [Managing Object Versions](Managing_Object_Versions.html).

## Analytics engine overview

Process Analytics operates on a separate server that aggregates information from different servers. It requests regular updates from the execution servers and receives changes from the design server.

![analytics flow](images/Analyticsflow.gif)

In order to assure that the analytics server is in sync with the execution data, it will issue a database update call to all of the execution servers.

### Design time constraints

The following settings must be configured during process model design time; these settings impact all reports produced by the analytics engine. Each of these settings will impact on any report produced by the analytics engine for a given process model or task.

#### Hidden process variables

Certain information in a process (such as the salary for a new employee in an employee on-boarding process, for example) should be accessible to only a few participants in the process (such as the hiring manager). These variables can be designated as "hidden" at design time and are not then visible to anyone. These designated process variables are not subject to ordinary analytics and cannot be used in a report.

#### Target completion time

While designing a process, the Process Modeler must specify a target completion time for the given process and target and lag times for a process through the Process Model Properties configuration screen and the node properties screen respectively. Setting such metrics enables real-time analytics to flag certain performance outliers and enables the system or an appropriate user to trigger an escalation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...