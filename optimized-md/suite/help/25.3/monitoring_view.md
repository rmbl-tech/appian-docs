---
source_url: https://docs.appian.com/suite/help/25.3/monitoring_view.html
original_path: monitoring_view.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Monitor View

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page covers all of the features of the **Monitor** view in Appian Designer.

To access this view, click **Monitor** in the [navigation pane](common-view-elements.html#navigation-pane) at the environment level or in an application.

When you access this view at the environment level, it contains information about deployments in the current environment. When you access the view from within an application, it contains information about deployments in the individual application.

## Purpose

The **Monitor** view helps you keep an eye on health and activity indicators for your applications.

## Elements

The **Monitor** view consists of the following tabs:

-   [Health Dashboard](#health-dashboard)
-   [Process Activity](#process-activity)
-   [Autoscaled Process Activity](#autoscaled-process-activity) (Only available in environments with [autoscale](autoscale-processes.html) enabled)
-   [Process Model Metrics](#process-model-metrics)
-   [Record Response Times](#record-response-times)
-   [Record Sync Status](#record-sync-status)
-   [Query Performance](#query-performance)
-   [Portal Monitoring](#prodlink-portal-monitoring) (Only available in environments with access to [Appian Portals](portals-home.html))

## Health Dashboard

The **Health Dashboard** tab provides an at-a-glance overview of the health of your environment or application. It includes both runtime and design-time information, and surfaces related metrics and key performance indicators.

The dashboard is composed of three sections:

-   (A) This section displays a high-level summary card for the contents of the [Process Activity](#process-activity), [Process Model Metrics](#process-model-metrics), [Record Response Times](#record-response-times), and [Record Sync Status](#record-sync-status) tabs.
-   (B) This section highlights application specific design-related metrics. This section is only displayed when viewing the Health Dashboard from [within an application](build-view.html).
-   (C) This section shows all of the active [Appian design guidance](appian-recommendations.html) that has been triggered for the objects within the environment or application.

[![images/monitoring_health_dashboard_sections.png](images/monitoring_health_dashboard_sections.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img256)

[![](images/monitoring_health_dashboard_sections.png)](#_)

**Security requirements**:

-   Only objects for which a developer has at least [**Viewer** permissions](object-security.html#permission-levels-in-role-maps) are reflected in the dashboard's various summary cards and displayed in its **Appian Design Guidance** grid.

    The only exception to this is the **Process Activity** section, which displays processes that a developer has **Initiator** or higher permissions to.

The annotated screenshot below provides a description of the metrics and information displayed on the **Health Dashboard** tab.

[![images/monitoring_health_dashboard_annotated.png](images/monitoring_health_dashboard_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img257)

[![](images/monitoring_health_dashboard_annotated.png)](#_)

| # | Card | Description |
| --- | --- | --- |
| 1 | **[Process Activity](#process-activity)** | Provides a summary of the contents visible on the **Process Activity** tab. This card includes a breakdown of all processes by status. It also displays the number of processes with unresolved errors and the number of processes that have completed within the last 24 hours. Click this card to go to the **Process Activity** tab. |
| 2 | **[Process Model Metrics](#process-model-metrics)** | Provides a summary of the contents visible on the **Process Model Metrics** tab. This card displays the number of process models with low, medium, and high memory usage. It also displays the number of process models whose instances have completed less than 10% of the time. Click this card to go to the **Process Model Metrics** tab. |
| 3 | **[Record Response Times](#record-response-times)** | Provides a summary of the contents visible on the **Record Response Times** tab. This card displays the number of record UIs ([record lists](record-list.html) and [views](record-view.html)) with low, medium, or high response times. Click this card to go to the **Record Response Times** tab. |
| 4 | **[Record Sync Status](#record-sync-status)** | Provides a summary of the contents visible on the **Record Sync Status** tab. This card displays the total number of synced record types and the number of record types whose latest sync status was **Completed**, **Failed**, or **Warning** (which represents the [Approaching Limit](#sync-status) status). Click this card to go to the **Record Sync Status** tab. |
| 5 | **Security Warnings** | Displays the number of objects with at least one [security warning](object-security.html#warnings). Clicking this card opens the [**Security Summary**](object-security.html#security-summary), where you can edit object security in bulk. This card is only visible from [within an application](build-view.html). |
| 6 | **Test Health** | Displays two separate test health metrics. On the left it shows the percentage of expression rules with at least one [test case](Expression_Rules.html#test-cases). On the right it shows the number of expression rules that have all of their test cases passing out of the total number of expression rules with test cases. Click this card to open the [**Manage Test Cases**](Expression_Rule_Testing.html#test-case-management) dialog, which allows you to run test cases in bulk and identify expression rules that are missing test cases. This card is only visible from within an application. |
| 7 | **[Unreferenced Objects](build-view.html#prodlink-unreferenced-objects-tab)** | Displays the number of unreferenced objects. Click this card to go to the **Unreferenced Objects** tab of the [**Build** view](build-view.html). This card is only visible from within an application. |
| 8 | **[Appian Design Guidance](appian-recommendations.html)** | Displays a grid of all of the objects that have at least one [warning or recommendation](appian-recommendations.html#warnings-vs-recommendations), whether active or dismissed. By default, the grid only shows objects with warnings or active recommendations and displays objects which contain warnings first. Each row in the grid displays:
-   **Name:** The name of the object and its type. Clicking the hyperlinked name opens the object in a new tab.
-   **Warnings and Recommendations:** The list of warnings and recommendations that have been triggered for the object. By default, only warnings and active recommendations – those that have not yet been resolved or explicitly dismissed – are displayed in the grid. To view dismissed recommendations, select the **Display dismissed recommendations** filter checkbox.
-   **Last Modified:** The timestamp that the object was last modified on, and the user who modified it.

 |
| 9 | Grid Filters | You can filter the design guidance grid by:

-   **Object Name search:** Filters objects in the grid by search term. The entered term is searched against all of the object names available in the grid.
-   **Object Types dropdown:** Displays objects in the grid of the selected type(s). Note that only object types that can have warnings or recommendations are listed in this dropdown.
-   **Packages dropdown:** Only displays objects in the grid that are in a selected package. This filter is only available when viewing the Health Dashboard within an application.
-   **All Warnings dropdown:** Displays objects in the grid that have the selected warning(s).
-   **All Recommendations dropdown:** Displays objects in the grid that have the selected recommendation(s).
-   **Last Modified user picker:** Displays objects in the grid that were last modified by the specified user or users.
-   **Include dismissed recommendations checkbox:** Displays all dismissed recommendations for the objects in the grid.

 |

**Note:**  Process models must be _published_ in order for their design guidance to appear on the Health Dashboard.

## Process Activity

The **Process Activity** tab shows a list of processes related to your environment or application that are currently on the system.

By default, the processes list displays only processes that have started in the last 7 days and have not been archived. See **Process Activity** [filters](#search-and-filters) to change the status and time range.

**Note:**  This tab does not show processes with [autoscale](autoscale-processes.html) enabled. To view those processes, go the [**Autoscaled Process Activity**](#autoscaled-process-activity) tab.

**Security requirements**:

-   Developers must have at least [**Initiator** permissions](process-model-object.html#process-security) to processes to see them on this tab.

The annotated screenshot and descriptions below define the features and metrics displayed on the **Process Activity** tab.

[![images/monitoring_process_activity.png](images/monitoring_process_activity.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img258)

[![](images/monitoring_process_activity.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Selection Checkbox** | Allows a developer to perform various [process options](#options) on the selected process instance. |
| 2 | **Status Icon** | A quick visual indicator for each process. Possible statuses include:
-   ![](images/running_blue.png) **Active**
-   ![](images/active_with_error_process.png) **Active with Errors**
-   ![](images/iconIndicatorStatusOk.png) **Completed**
-   ![](images/iconIndicatorProgressPaused.png) **Paused**
-   ![](images/iconIndicatorStatusError.png) **Paused by Exception**
-   ![](images/iconIndicatorStatusNotDone.png) **Canceled**
-   ![](images/iconIndicatorProcessArchived.png) **Archived\***

 |
| 3 | **Process Name** | The name of the process. Click the name to open the process in the Process Modeler. |
| 4 | **Process Model** | The version of the process model executed by the process instance. Click the process model to open the related process model version in the Process Modeler. |
| 5 | **Errors** | [Unresolved errors](Process_Errors.html#resolved-and-unresolved-errors) associated with the process. Click the error to open a Process Errors dialog that displays the process' error message and its details. |
| 6 | **Started By** | The initiator of the process. Click the user to open their user profile. |
| 7 | **Active Tasks** | The number of active tasks within a process. This column will only have a non-zero value for processes that have an **Active**, **Paused**, or **Paused by Exception** status. |
| 8 | **Start Time** | The date and time when the process was started. |
| 9 | **End Time** | The date and time when the process was completed or canceled. |
| 9 | **Show process details** | Checkbox which displays three additional columns in the list:

-   **Process ID**: The ID of the process.
-   **Engine**: The execution engine the process is currently running on.
-   **Memory** (AMU): The amount of memory that the process is consuming. Process memory is expressed in AMUs. This process memory calculation runs in the background and is not reflected in real-time. Any process instance marked as "N/A" represents a calculation that has not yet occurred. See [Process Model Metrics](#process-model-metrics) to learn more.

 |

**\*** Archived processes are available for Appian Cloud sites created with version Appian 21.1+. If you are an Appian Cloud customer and do not see archived processes, contact Appian Support. For self-managed customers, follow the steps [here](Configuring_Archived_Processes.html).

### Process error warnings

[![images/monitoring_process_activity_unresolved_errors.png](images/monitoring_process_activity_unresolved_errors.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img259)

[![](images/monitoring_process_activity_unresolved_errors.png)](#_)

A banner above the processes list notifies developers about all of the [unresolved errors](Process_Errors.html#resolved-and-unresolved-errors) which have occurred in the last 24 hours.

Click **View all process errors** to open a dialog with detailed information about each process error. For example, if there were unresolved process errors, you might see something like this:

[![images/resolved_errors_all_errors_dialog.png](images/resolved_errors_all_errors_dialog.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img260)

[![](images/resolved_errors_all_errors_dialog.png)](#_)

By default, the process errors list in the dialog only displays the unresolved errors that require attention. Resolved errors (including their resolution datetime and the user who resolved them) can be viewed by clicking the **Show resolved errors** checkbox in the dialog's upper right-hand corner.

### Search and filters

The left-hand pane of the **Process Activity** tab contains search and filter options:

[![images/monitoring_process_activity_filters.png](images/monitoring_process_activity_filters.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img261)

[![](images/monitoring_process_activity_filters.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Search** | Displays processes that meet the entered search term. By default, entered terms are searched against process names. Developers can also change the search option to **ID**, which will run the entered term against process IDs. |
| 2 | **Processes with Errors** | Only displays processes with at least one [unresolved error](Process_Errors.html#resolved-and-unresolved-errors). Only processes with **Active** or **Paused by Exception** statuses can have errors. |
| 3 | **Process Status** | Displays processes with the selected statuses. By default, the process list displays only processes that have not been archived. |
| 4 | **Started By** | Displays processes started by the one or more selected users. |
| 5 | **Process Model** | Displays processes from the one or more selected process models. |
| 6 | **Time Range** | Displays processes started within the specified time range. Options include:
-   All processes.
-   Processes started within the last 24 hours.
-   (Default) Processes started within the last 7 days.
-   Processes completed in the last 24 hours.
-   Processes completed in the last 7 days.
-   A custom time range. When **Custom** is selected, developers can choose to filter by process start and/or end time.

 |

### Options

When a process is selected, options will appear in the toolbar above the processes list. Multiple processes can be selected at once in order to perform operations in bulk, but note that not all options support bulk operations.

![/process options](images/all_process_options.png)

The following options are available in the toolbar:

-   **Security** _(Single-Choice)_ Allows a process administrator to adjust the security of an individual process. For more information, see [process security](process-model-object.html#process-security).
-   **Resume** _(Multiple)_ Allows process administrators to resume paused processes.
-   **Pause** _(Multiple)_ Allows process administrators to pause active processes.
-   **Cancel** _(Multiple)_ Allows process administrators to cancel active processes.
-   **Delete** _(Multiple)_ Allows process administrators to delete selected processes.
    -   This will also delete any synchronous subprocesses and pending tasks in the selected processes.
    -   When a non-adminstrator selects all processes and they have permission to delete at least one of the selected processes, the delete button will still be active. However, non-administrators will not be able to delete all processes.
-   **History** _(Single-Choice)_ Allows users with at least viewer access, to view the history of a process. For more information, see [process security](process-model-object.html#process-security).
-   **Unarchive** _(Multiple)_ Allows process administrators to unarchive archived processes.

#### Performing bulk operations on processes

In addition to being able to select and perform operations on multiple processes on a single page, developers can select and perform operations on processes across _multiple_ pages.

To do so:

1.  Select all processes on the current page. A grey banner will then appear.
2.  Click the link to select all processes that match the current filter criteria. This will select up to 10,000 processes.

![/monitoring process activity bulk operation select](images/monitoring_process_activity_bulk_operation_select.png)

### Customizable report

In addition to the search and filter options provided on the left-hand pane of the **Process Activity** tab, there is a link to the customizable report.

[![images/monitoring_customizable-report.png](images/monitoring_customizable-report.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img262)

[![](images/monitoring_customizable-report.png)](#_)

Click this link to open the **All Processes** report in a new tab. Changes to this report do not affect the **Process Activity** tab in Appian Designer and vice versa. This report does not allow you to view process errors.

See also:

-   To learn more about how to interact with specific processes, see the [Monitoring, Debugging, and Editing Processes](Monitoring_and_Editing_Processes.html) page.
-   For guidance on identifying and fixing common process issues, see the [Troubleshooting Process Models](Testing_and_Debugging_Problems_with_Process_Models.html) page.

## Autoscaled Process Activity

**Note:**  This tab is only available in environments with [autoscale](autoscale-processes.html) enabled.

The **Autoscaled Process Activity** tab is the central place to view information about processes with autoscale enabled.

Here, you can use the KPIs to quickly see how your processes are performing or click an item in the grid to dig into the details of a specific process model. Learn how to [understand the metrics on this tab](monitoring-autoscaled-processes.html).

[![images/epex/autoscaled-process-activity-tab-monitor-view.png](images/epex/autoscaled-process-activity-tab-monitor-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img263)

[![](images/epex/autoscaled-process-activity-tab-monitor-view.png)](#_)

## Process Model Metrics

The **Process Model Metrics** tab shows metrics related to the memory usage of process models on the system. Only process models that have run on the system are shown in this report.

By default, process models are sorted by those consuming the most to least total memory.

Process memory is expressed in AMUs. This process memory calculation runs in the background and is not real-time.

**Note:**  This tab does not include data for processes with autoscale enabled. To view that data, go to the [**Autoscaled Process Activity**](#autoscaled-process-activity) tab.

**Security requirements**:

-   Developers can only view metrics on this tab for process models that they have at least [**Viewer** permissions](process-model-object.html#process-model-security) to.
-   If they have at least **Viewer** permissions to process models in the _current_ environment, then they can also view their process model metrics from another environment.

The annotated screenshot and descriptions below define the features and metrics displayed on the **Process Model Metrics** tab.

[![images/monitoring_view_pmm.png](images/monitoring_view_pmm.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img264)

[![](images/monitoring_view_pmm.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Refresh button** | Refreshes the status of the **Process Model Metrics** tab. |
| 2 | **Select Another Environment button** | Allows you to view how your process models are performing in another environment. Click this button to open a dialog that displays a list of the connected environments that have been configured in your [DevOps Infrastructure](Appian_Administration_Console.html#infrastructure) in the Admin Console. Select a different environment to view the process model metrics of that environment directly in your current tab. |
| 3 | **Process Model** | The name of the process model. Click the name to open the process model in the Process Modeler. Note that any instances on the system whose process models have been deleted will be aggregated into one row and displayed with a process model name of `[deleted]`. |
| 4 | **Status Icon** | A quick visual indicator of each process model's memory usage based on the current total calculated AMU of all [active instances](#process-activity) of that model. Possible statuses include:
-   ![](images/monitoring_green_check_icon.png) The total calculated size is less than 100,000 AMU. The memory usage of this model's instances is generally considered low.
-   ![](images/monitoring_orange_circle_icon.png) The total calculated size is between 100,000 and 1,000,000 AMU. The memory usage of this model's instances could potentially affect the system.
-   ![](images/monitoring_red_exclamation_icon.png) The total calculated size is greater than 1,000,000 AMU. The memory usage of this model's instances is high.

The qualifications of **Low**, **Medium**, and **High** memory usage are based on average resource allocation and usage. Your systems and expected usage may not reflect these boundaries. If you have concerns, contact your system administrator.

 |
| 5 | **Total Memory (AMU)** | The total size of the process model's memory, derived from the aggregated memory usage of the individual process instances. This size is based on the instance memory that has currently been calculated. |
| 6 | **Avg. Process Instance Memory (AMU)** | The average amount of memory each instance of the process model is consuming, based on the instance memory that has currently been calculated. |
| 7 | **Instances** | The total number of instances that exist on the system for the given process model. Click the linked instance count to open the **Process Activity** view, filtered to show just the selected process model's instances with the **Time Range** filter defaulted to **All**. |
| 8 | **Completed** | The percent of instances that have completed for the given process model. |
| 9 | **Clean-up Days** | The number of days set in the [clean-up policy](process-model-object.html#data-management-tab) for the process model. This can be a number between 0 and 999, otherwise it will be **Never** if the process model is set to not automatically clean-up processes. |
| 10 | **Clean-up Type** | The [clean-up policy](process-model-object.html#data-management-tab) for the process model. This value displays either **Archive**, **Delete**, or **N/A** if the process model is configured to not automatically clean-up processes. |

### Monitoring process model AMU

It is important to look at all of the various dimensions available in the **Process Model Metrics** tab, when trying to optimize the performance of your process models and their instances on your system. While **Total Size** is a good initial indicator of potentially memory intensive process models, it is often necessary to look beyond just this value on its own.

For process models using a significant amount of memory:

-   **Is the average instance's memory high?** View the memory of the individual instances in the **[Process Activity](#process-activity)** tab to verify that there are no outliers that may be causing the average memory to spike. If all of the instances are consistently using a large amount of memory, then this might indicate that the model's design needs to be improved to reduce its overall memory footprint.
-   **Are there a lot of instances?** Consider updating the [clean-up policy](process-model-object.html#data-management-tab) to archive or delete completed processes more frequently, especially if the completion percentage is consistently high.
-   **Are the model's instances completing as expected?** A low completion percentage could mean that the model is often encountering errors or generating uncommonly long-lived processes, due to incorrect or inefficient model designs. As a result, this might indicate the model's design needs to be improved to reduce its overall memory footprint.

If you're updating the design of a [process model](process-model-object.html), consider the following factors which impact the memory footprint of your process models and their instances:

-   The definition of the process model itself
-   The definition of each process node
-   The number of process variables
-   The values of each process variable
-   The length of the process history
-   The values being stored in the process history
-   Any notes and attachments that the process may carry

## Record Response Times

The **Record Response Times** tab allows you to monitor the performance of your record interfaces (both [record lists](record-list.html) and [record views](record-view.html)), and identify those with the slowest interactions.

This tab displays the top 10 slowest response times for each record list or view, including details about when the slowest response times occurred and who executed them. For each of these response times, you can check the [performance details](Performance_View.html) to help you identify why a specific interaction might not be performant.

**Security requirements**:

-   Developers must have at least [**Viewer** permissions](record-security.html#prodlink-security) to the record type to view their response times on this tab.

The annotated screenshot and descriptions below define the features and metrics displayed in the **Record Response Times** tab.

[![images/record_response_times.png](images/record_response_times.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img265)

[![](images/record_response_times.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Refresh** button | Refreshes the status of the **Record Response Times** tab. |
| 2 | **Select Another Environment** button | Allows you to view how your record interfaces are performing in another environment. Click this button to open a dialog that displays a list of the connected environments that have been configured in your [DevOps Infrastructure](Appian_Administration_Console.html#infrastructure) in the Admin Console. Select a different environment to view the record response times and performance metrics of that environment directly in your current tab. |
| 3 | **Record UI** | The name of the record interface. Select the row to see more details about that specific record interface and its response times, including its top ten slowest responses. |
| 4 | **Category** | The type of record interface ([List](record-list.html) or [View](record-view.html)). |
| 5 | **Maximum Time (s)** | The slowest response time (in seconds) captured for the record interface, over the last 30 days. |
| 6 | **Health Icon** | A quick visual indicator of each record interface's response time health, based on the **average** response times that were collected for the interface over the last 30 days. Possible statuses include:
-   ![](images/monitoring_green_check_icon.png) Displays when the response times for this record are low.
-   ![](images/monitoring_orange_circle_icon.png) Displays when the response times for this record could potentially affect the system. Consider reviewing the record's performance details and design to reduce its overall latency.
-   ![](images/monitoring_red_exclamation_icon.png) Displays when the response times for this record are high. Review the record's performance details and designs to reduce its overall latency.

 |
| 7 | **Record List/View Name** | The name of the selected record interface. Click the link to view the record type containing the interface. |
| 8 | **User** | The user who executed the interface. Click the user to view their user properties. |
| 9 | **Response Time (s)** | The response time (in seconds) for the execution of the record interface. Click the response time link to see the real-time [performance](Performance_View.html) of the execution and evaluation metrics. |
| 10 | **Occurred** | The time at which the record interface interaction occurred. |
| 11 | **Delete History** button | Removes the response times and performance metrics for the selected record interface from the system. Response times and metrics cannot be restored after deletion. |
| 12 | **Metrics Collection** toggle | Turns on or off the collection of response time and performance metrics in the background. This toggle is only available to system administrators and is turned on by default. Turning metric collection off may improve your overall system performance. |

### Monitoring record response times

When record UIs have high average response times, use their [performance details](Performance_View.html) (#9 above) to troubleshoot and ensure that all of their rules and queries are performant.

## Record Sync Status

The **Record Sync Status** tab displays status information for all record types with [data sync](about-data-sync.html) enabled. This includes the source type, [sync status](#sync-status), time of the last sync, and the total rows synced for each record type.

From this tab, you can easily perform cross-environment monitoring for all synced record types that you have access to view by switching between your connected environments, both local and remote. Drill down into a specific record type to view its sync history and any errors or warnings that occurred during the course of the sync activity.

The annotated screenshot provides a description of each grid column on the **Record Sync Status** tab.

[![annotated screenshot of the records sync status page](images/monitoringViewRecordSyncStatus.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img266)

[![](images/monitoringViewRecordSyncStatus.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Refresh button** | Refreshes the entire page. |
| 2 | **Select Another Environment** button | Allows you [monitor record types in other environments](#monitor-record-types-across-environments). |
| 3 | Toolbar Options | When you select the checkbox next to a record type, different options will appear in the toolbar above the list:
-   **Start Full Sync** button: Start a manual sync of the selected record type. If you do not have permission to edit the record type, this button is disabled.
-   **Cancel Full Sync** button: Cancel an active full sync on a selected record type. This button only appears if you select a record type that is actively syncing. If you do not have permission to edit the record type, this button is disabled.

 |
| 4 | **Checkbox** | Allows you to start a full sync or cancel an active sync on the selected record type. |
| 5 | **Record Type** | A link displaying the name of the record type. Click the link to access the **[Sync History](#sync-history)** grid for the record type. |
| 6 | **Source Type** | The data source for the record type. The possible source options are:

-   [Database](configure-record-data-source.html#connect-to-a-database)
-   [Salesforce](configure-record-data-source.html#connect-to-salesforce)
-   [Web Service](configure-record-data-source.html#prodlink-web-service)
-   [Records](records-backed-record-types.html)

 |
| 7 | **Last Sync Status** | The current [sync status](#sync-history) of the record type. |
| 8 | **Link to Sync Alerts** | Opens the **[Sync Alerts](monitoring_view.html#record-sync-alerts-dialog)** dialog, which provides more information about why a sync failed or was canceled. |
| 9 | **Smart Search** | The [smart search indexing status](records-smart-search.html#indexing) for each record type that has smart search enabled. |
| 10 | **Last Sync Time** | The date and time of the most recent sync. |
| 11 | **Rows Synced** | The number of rows synced from the most recent sync type. |
| 12 | **Total Record Type Rows** | The number of rows currently synced in the record type. If the most recent sync failed, then a dash (-) is shown in this column. |

### Monitor record types across environments

**Note:**  You can only monitor synced record types across environments if the record types have been deployed to an environment that allows a connection from Appian to the selected environment. See [Managing Environments](Appian_Administration_Console.html#managing-environments) for more information.

As an administrator, you need a way to quickly view the sync status of the record types across your environments. This visibility allows you to easily resolve issues that cause your syncs to fail.

To view synced record types in a local environment, you must have at least **Viewer** permissions to the record types. When connecting to a remote environment, you only have access to the record types you have access to in the local environment.

To view the sync status of record types in different environments:

1.  In the **Record Sync Status**, click ![Switch Environment Icon](images/switch-environment.png) **Select Another Environment**.
2.  In the **Select Environment** dialog, select a local or remote connected environment to monitor.

    ![/Cross Environment Monitoring Select](images/Cross_Environment_Monitoring_Select.png)

3.  Click **VIEW RECORD SYNC STATUS**.

The **Record Sync Status** tab shows the sync status for all record types deployed in the selected environment.

### Sync history

When you click the name of a specific record type from the **Record Sync Status** tab, you're directed to the **Sync History** grid for the selected record type.

This grid shows information about the previous and currently running syncs for the record type. You can sort the grid by clicking on a column header.

Appian will remove syncs from the grid after one year. However, to ensure you always have the latest sync status for your record type, the most recent sync will always be available in the grid.

The annotated screenshot and descriptions below define the buttons and grid columns displayed in the **Sync History** grid:

[![annotated screenshot of the sync history grid](images/monitoringViewSyncHistoryGrid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img267)

[![](images/monitoringViewSyncHistoryGrid.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Back to all record types** button | Return to the [Record Sync Status](#record-sync-status) grid. |
| 2 | **Open record type in new tab** icon | Link to open the record type. |
| 3 | **Status** | The [sync status](#sync-status) of the record type. |
| 4 | **Link to Sync Alerts** | Opens the **[Sync Alerts](monitoring_view.html#record-sync-alerts-dialog)** dialog, which provides more information about why a sync failed or was canceled. |
| 5 | **Start Time** | Displays the date and time when the sync started in the user's timezone.

You may notice that a scheduled sync didn't occur at the exact time at which you scheduled it. There are a variety of possible causes:
-   [The record type failed to sync and is retying](Records_Monitoring_Details.html).
-   [The sync was scheduled in a different timezone](records-data-sync.html).
-   A daylight savings time change occurred.
-   Multiple record types were scheduled to sync at the same time, so each sync had to wait until the other completed.
-   Other processes that have significant resource use are scheduled to occur at the same time as the record type sync.

 |
| 6 | **End Time** | Displays the date and time when the sync ended in the user's timezone. |
| 7 | **Duration** | The total time (in seconds) that it took the record type to sync. |
| 8 | **Sync Type** | The type of sync that occurred. The possible sync types are:

-   [Manual Sync](records-data-sync.html#manual-full-syncs)
-   [Record Type Import](Deploy_to_Target_Environments.html#object-behavior-in-target-environments)
-   [Record Type Save](records-data-sync.html#manual-full-syncs)
-   [Recovery Sync](records-data-sync.html#recover-failed-syncs)
-   [Retry Sync](Records_Monitoring_Details.html#types-of-sync-errors)
-   [Scheduled Full Sync](records-data-sync.html#schedule-full-syncs)
-   [Scheduled Incremental Sync](records-data-sync.html#schedule-incremental-syncs)
-   [Smart Service](records-data-sync.html#smart-service-syncs)

 |
| 9 | **Initiated By** | Depending on the type of sync, this value can be `System`, `Administrator`, or the username of the user who started the sync. Only users with [**Editor** permissions](record-security.html#prodlink-security) to the record type will be able to view the **Initiated By** column. |
| 10 | **Synced Rows** | The number of rows synced from the specific sync type. |
| 11 | **Total Record Type Rows** | The total number of rows in the record type at the end of the sync. |
| 12 | **Total Source Rows** | Depending on the source of your record type, this column displays:

-   **Database**: The total number of rows in the database table at the time of the sync.
-   **Web service**: The total number of rows returned from either the [record data source expression](configure-record-data-source.html#create-a-record-data-source) or [changed data expression](records-data-sync.html), depending on the sync type.

 |
| 13 | **Refresh button** | Refreshes the entire page. |
| 14 | **Start Sync** button | Starts a manual full sync of the record type. If you do not have at least [**Editor** permissions](record-security.html#prodlink-security) to the record type, this button is disabled. |

### Sync status

A record type can have the following sync statuses:

| Icon | Status | Meaning |
| --- | --- | --- |
|  | Running | A manual or scheduled sync is taking place, the record type is saving, or the record type is being imported to the environment. |
|  | Canceling | Attempting to cancel a manual or scheduled full sync. |
|  | Completed | A full sync or an incremental sync successfully completed. Smart service syncs do not appear in this list. |
|  | Failed | An error occurred while attempting to sync the record type, so the record data is unavailable. |
|  | Failed and Skipped | An error occurred while attempting to sync the record type, so the sync was skipped. The record data is available and reflects the data that was available prior to the error. This status will only appear on record types that have [Skip Failed Syncs](records-data-sync.html#skip-failed-syncs) enabled. |
|  | Failed and Recovering | A smart service sync or an incremental sync failed and a full sync will start shortly to re-sync all source data. The record data is unavailable until the recovery sync completes. This status can will only appear on record types that have [Recovery Syncs](records-data-sync.html) enabled. |
|  | Failed and Retrying | The sync initially failed and the system will retry a few times before failing. After failing, the record data will be unavailable. |
|  | Canceled | A manual or scheduled sync was canceled. The record type returns to the previous sync status. If the previous sync status was **Failed**, then the record data will be unavailable. |
|  | Approaching Limit | The record type was able to sync but it's approaching the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources). |
|  | Limit Reached | The record type was able to sync but the synced row limit has been reached. |

### Record sync alerts dialog

When the sync status is **Failed**, **Failed and Skipped**, or **Canceled**, you can click on the link in the **Sync Status** column to open the **Record Type Sync Alerts** dialog. This dialog provides more information and details about the failed or canceled sync.

![screenshot of an error in the record sync alert dialog](images/monitoringViewRecordTypeSyncAlertsDialog.png)

Depending on the type of alert, the dialog can contain the following properties:

| Property | Description |
| --- | --- |
| **Record Type** | A link to the record type. |
| **Source Type** | The source type of the record type. Possible values are `Database`, `Salesforce`, `Web Service`, or `Records`. |
| **Initiated by** | Who started the sync. Depending on the type of sync, this value can be `System`, `Administrator`, or the username of the user who started the sync. |
| **Alert** | The cause of the alert. |
| **Caused By** | Any additional details provided by the source to help troubleshoot the error. |
| **Details** | A link to the process instance that updated the source and up to five primary keys from the source rows that were updated by the write operation, but not synced in Appian. This property is only displayed when a sync fails on a record type that uses a database table or Salesforce object as the source. |

For information on resolving errors with your sync, see [Troubleshooting Syncs](Records_Monitoring_Details.html).

## Query Performance

The **Query Performance** tab centralizes key information about each query to your record types. This allows you to quickly identify which parts of your application may experience slow queries.

This summary includes the names of users and [design objects](design-objects.html) involved in running the queries, as well as critical information from [system logs](Logging.html) throughout your environment.

This tab captures queries:

-   Run by developers in an interface or expression rule, which appear immediately.
-   Run by users interacting with your applications, which appear every 5 minutes.

Appian will remove queries from the Query Performance tab when:

-   They are older than 30 days.
-   There are more than 4 million queries in the grid, so the oldest queries are removed.

The annotated screenshot provides a description of all key elements on the **Query Performance** tab:

[![image](images/query-performance-monitor-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img268)

[![](images/query-performance-monitor-annotated.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Capture Query Performance** | By default, Appian does not capture information for display in the **Query Performance** tab. Use the **Capture Query Performance** option to enable the capture of information about queries to record types in your environment.

To avoid potential performance impacts in production environments, only enable this setting if you are actively troubleshooting. |
| 2 | **Switch Environments** | By default, Appian displays a grid of queries run in your current environment. Click **Switch Environments** to view the query performance in any of your connected environments. |
| 3 | **Refresh button** | Refreshes the entire page. |
| 4 | **Export to Excel** | Export the data from the selected environment to Microsoft Excel. You can only export a maximum of 100,000 rows. If the grid has more than this value, add a filter to limit the number of rows exported to Excel.

By default, all columns are exported in addition to a **Syntax ID** column, which provides an identifier for the query's syntax. |
| 5 | **Filters** | Filter by values in any column of the grid. |
| 6 | **Query ID** | A unique identifier for a query. Click the link to see the [query syntax](#query-syntax). |
| 7 | **Start Time** | The date and time at which the query started running. |
| 8 | **Execution Time** | The time (in milliseconds) that the query took to wait for resources and run. |
| 9 | **Wait Time** | The time (in milliseconds) the query waited for resources. |
| 10 | **Started By** | The username of the user who ran the query. |
| 11 | **Evaluation ID** | A unique identifier for a single evaluation of the interface or expression rule used to run the query. A single evaluation of an interface or expression rule can include multiple queries, which will be listed separately in this table.

Use this ID to evaluate the cumulative performance of all queries in an interface or expression rule. |
| 12 | **Interface** | The interface where the user ran the query. This column may contain an expression rule if the query was run from a process model, or may be blank if the query was run directly from a record view or record list. Click this link to open the identified design object. |
| 13 | **Expression Rule** | The design object used to run the query, usually an expression rule. This column may be blank if the query was run directly from a record view or record list. Click this link to open the identified design object. |
| 14 | **Record Type** | The record type used in the query. Click this link to open the identified record type. |
| 15 | **Component** | The component used to run the query. In some instances, this column may contain a function, record view, or record action, depending on how the interface or expression rule is configured. |
| 16 | **Total Field Count** | The number of fields included in the query. |
| 17 | **Error Code** | The Appian error code. This column is only populated if the query evaluation encounters an error. Learn more about [error codes for a!queryRecordType function](fnc_system_queryrecordtype.html). |
| N/A | **Syntax ID** | This column is only included when the grid is exported to Excel.

A unique identifier for the query's syntax. A query's syntax includes the record types, fields, and filters used to construct the query, but does not include the filter values used in a specific instance of the query. If a query is run multiple times, there will be different Query IDs for each execution, but the same Syntax ID.

In Excel, you can use the Syntax ID column to group by query syntax and see if certain query structures impact query performance. |

### Query syntax

When you click an ID from the **Query ID** column, a dialog appears containing the query syntax and a summary of the query's information.

The query syntax is an expression that illustrates the record types, fields, filters, and functions used in the query. Any local variables or rule inputs that were used in the original query are replaced by the actual fields queried or filters used. This allows you to more quickly evaluate how the query structure may have impacted performance.

[![images/querySyntax.png](images/querySyntax.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img269)

[![](images/querySyntax.png)](#_)

## Portal Monitoring

The Portal Monitoring tab allows you to view key metrics and details that are vital to understanding how users are interacting with your portals and what issues they may be experiencing. Regularly monitoring these metrics alerts you to any potential issues related to response times or availability and helps you deliver exceptional user experiences while maintaining high operational standards.

To view metrics for other [connected environments](portals-troubleshooting.html#viewing-metrics-and-errors-in-connected-environments), use the icon to switch between environments. This is especially helpful to view metrics for portals in a production environment without requiring access to the environment.

The annotated screenshot provides a description of all key elements on the **Portal Monitoring** tab. For more information about using the Portal Monitoring tab to troubleshoot issues in a portal, see [Troubleshooting a Portal](portals-troubleshooting.html#latency-traffic-and-error-rate-metrics).

**Security requirements**:

-   Developers must have at least [**Viewer** permissions](object-security.html#permission-levels-in-role-maps) to portals in the _current_ environment to view their metrics from another environment.

[![screenshot of portal monitor tab](images/portal-monitor-tab-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img270)

[![](images/portal-monitor-tab-annotated.png)](#_)

| # | Element | Description |
| --- | --- | --- |
| 1 | **Refresh button** | Refreshes the entire page. |
| 2 | **Select Another Environment** button | Allows you to view how your portals are performing in another environment. Click this button to open a dialog that displays a list of the connected environments that have been configured in your [DevOps Infrastructure](Appian_Administration_Console.html#infrastructure) in the Admin Console. Select a different environment to view the portal monitoring metrics of that environment directly in your current tab. |
| 3 | **Published Status** filter | Allows you to filter the grid by the publication status of the portal. Options are **Published**, **Not Published**, and **Published with errors**. By default, all statuses display. |
| 4 | **Time Period** filter | Allows you to filter the metrics that display on the grid by time period. Options are:
-   Last 24 Hours
-   Last 7 Days (Default)
-   Last 30 Days
-   Last 90 Days

 |
| 5 | **Portal Name** | Name of the portal object. You can click the link to open the portal object. |
| 6 | [Error Metrics](#error-rate) |

-   **Error Count**: The total number of errors that occurred on the portal. If a user encountered an error within the last 24 hours, a icon displays next to the error count. Click the error count to [view the Portal Errors grid](#view-portal-errors-grid) that lists the error messages.
-   **Error Rate**: This value represents the number of errors divided by the number of traffic requests to the portal.

 |
| 7 | **Traffic Requests** | The total count of all page loads and user interactions with the portal. |
| 8 | [Latency Metrics](#latency) |

-   **Median Latency (s)**: The median latency value.
-   **90th Percentile Latency (s)**: The slowest response time of the fastest 90 percent of requests.
-   **99th Percentile Latency (s)**: The slowest response time of the fastest 99 percent of requests.

 |
| 9 | **Published Status** | The published status of the portal: **Published**, **Not published**, **Published with errors**. |
| 10 | **Last Published** | Displays the date/time stamp of when the portal was last published and the user who published the portal. |

### Latency, traffic, and error rate metrics explained

While the goal is designing and publishing high-quality portals that provide an issue-free user experience, problems can occasionally occur. These metrics are meant to alert you when problems arise with the speed or availability of your portals.

A better understanding of these monitoring metrics will help you understand what's happening and where to begin troubleshooting if you see longer than expected latency times or high error rate percentages on this tab.

#### Latency

A simple way to think about latency is as a measure of the "waiting time" between when you do something and when you see a result or get some sort of feedback from the action you've taken.

In the context of portals, latency could be a measure of how long it takes for:

-   The initial portal page to load.
-   User-entered data to submit after they click a button.
-   A rule in an interface to evaluate.

The latency metrics displayed on the Portal Monitoring tab represent the delay between all traffic requests and the portal server's response to those requests.

#### Traffic requests

A traffic request occurs anytime a page loads or a user interacts with the portal, like when they click a button. Depending on the portal and the time period, traffic requests can number in the hundreds or even thousands.

The number of traffic requests also provides useful context for error rate and latency metrics. For example, a 50% Error Rate may not be as worrisome over a handful or traffic requests and a double-digit Error Count may not be reason for alarm if the portal has received thousands of traffic requests for a given time period.

Keeping an eye on traffic requests helps you ensure your portals can handle high user demand while remaining both available and performant.

#### Error rate

Traffic requests have the potential to result in an error. The error rate is a percentage value that represents the proportion of traffic requests that resulted in an error.

A high error rate can be an indicator that users are encountering serious problems when they interact with a portal. A icon displays next to the error count when a user has encountered an error within the last 24 hours.

### How to act on these metrics

See [Troubleshooting a Portal](portals-troubleshooting.html) for more information on how to act on these metrics, including [how to troubleshoot errors](portals-troubleshooting.html#troubleshooting-errors) and [how to troubleshoot latency issues](portals-troubleshooting.html#troubleshooting-latency-issues).

#### View Portal Errors grid

From the Portal Monitoring tab, you can view a [Portal Errors grid](portals-troubleshooting.html#portal-errors-grid) to help determine which objects could be causing the errors and where to look next for more information. You can also download the [Portal Error Log](portals-troubleshooting.html#portal-error-log), which can be accessed above the grid.

In Appian Cloud environments where [enhanced portal logs](portals-troubleshooting.html#environment-support-for-enhanced-portal-logs) aren't available, you won't be able to click the number in the Error Count column to view the Portal Errors grid. Instead, download the [Portal Server Log](portals-troubleshooting.html#portal-server-log) to troubleshoot errors.

To view error details from the Portals Monitoring tab:

-   For the portal that you want to view errors for, click the number in the **Error Count** column. The Portal Errors grid displays.

[![screenshot of portal error reporting dialog](images/portal-error-reporting.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img271)

[![](images/portal-error-reporting.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...