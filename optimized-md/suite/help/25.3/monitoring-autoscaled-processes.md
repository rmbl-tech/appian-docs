---
source_url: https://docs.appian.com/suite/help/25.3/monitoring-autoscaled-processes.html
original_path: monitoring-autoscaled-processes.html
version: "25.3"
title: "Monitoring Autoscaled Processes"
page_id: "monitoring-autoscaled-processes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Monitoring Autoscaled Processes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td style="padding-right: 20px; padding-left: 10px; margin-left: 0px;"><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>This Appian Cloud capability is separately licensed and is only available for Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

As your [autoscaled processes](autoscale-processes.html) move through the different stages of work, you will want to keep an eye on them to ensure they are performing as expected. Being proactive in monitoring your autoscaled processes is important to catch spikes in errors and remediate long process wait times. On this page, you'll learn to use monitoring features to identify and investigate these issues so you can take corrective action.

## View autoscaled process activity

The **Autoscaled Process Activity** tab, accessed from the [Monitor view](monitoring_view.html), is the central place to view information about the autoscaled processes that ran in a selected time period. High-level KPIs offer a view of how your process models are performing collectively. This data can be explored in more detail with the **Process Models** grid which breaks down these KPIs for each process model.

### Understand the available metrics

This annotated screenshot and the following descriptions define the buttons and grid columns appearing on this tab.

[![Autoscaled Process Activity tab](images/epex/autoscaled-process-activity-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img858)

[![](images/epex/autoscaled-process-activity-tab.png)](#_)

1.  **Time period**: The time period you want to explore with the KPIs and grid data. You can select from preset date ranges or choose a custom range of up to seven days. The custom range can be used to find process models with errors (up to 14 days old). See [Process data retention](#process-data-retention) for more information about data storage.
    Only process models with activity in this period are shown in the grid. Learn more about how the [time period impacts the metrics on this tab](#understand-the-time-periods-for-process-monitoring).
2.  **Errors KPI**: The number of errors that have occurred in processes during the selected time period. This number is _not_ restricted to processes that started running in that period; it includes all errors that occurred even if the process started before the selected period.
3.  **Started Processes KPI**: The number of processes that were taken from the queue and started running during the selected time period. Processes that were only queued are not included.
4.  **Search by process UUID**: Opens a dialog that lets you [search for a process by its unique identifier](#search-by-uuid), view information about when the process ran, and cancel or delete the process.
5.  **Process model search**: Allows you to search for a process model by name.
6.  **Process Model**: Lists the process models that ran during the selected time period. Click the link to see a [list of processes](#view-metrics-for-processes) run from this process model.
7.  **Errors**: The number of errors that occurred in all processes during the selected time period. This number does not change if processes are deleted.
8.  **Queued Processes**: The total number of processes added to the queue during the selected time period. This number does not change when processes start or complete.
9.  **Started Processes**: The number of processes that started running during the selected time period. This number does not change when processes end.
10.  **Completed Processes**: The number of processes that ended during the selected time period. This includes processes that completed or completed with errors. This count will not change if you delete a process.
11.  **Avg. Completion Time**: The average amount of time it took for individual processes to run during the selected period. This calculation includes all completed processes (with and without errors).

### Understand the time periods for process monitoring

Because autoscale is built to run large volumes of processes, the metrics on this page aggregate your environment's process data as a snapshot in time. The data is static, so deleting or canceling processes will not have an effect on the KPIs or values shown in the grid.

By default, the data shown on the tab is the last hour of process activity. In the following image, this hour-long snapshot is the clear area between the gray ends of the timeline.

[![Autoscaled Process Activity timeline](images/epex/autoscaled-process-activity-timeline.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img859)

[![](images/epex/autoscaled-process-activity-timeline.png)](#_)

Events occurring outside the snapshot's period—like the five queued events that happened before the last hour—are not included in the metrics.

## View metrics for processes

When you click a process model name in the **Process Models** grid, you will see a list of recent processes for that process model.

This annotated screenshot and the following descriptions define the buttons and grid columns appearing on this tab.

[![images/epex/autoscaled-process-activity-processes.png](images/epex/autoscaled-process-activity-processes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img860)

[![](images/epex/autoscaled-process-activity-processes.png)](#_)

1.  **Search**: Allows you to [search to find a specific process by name](#search-by-name). The search is case sensitive.
2.  **Status**: The [status of the processes](#process-states) you want to see in the grid. You can select stopped, active, completed, or canceled processes.
3.  **Error State**: Whether the processes shown in the grid have errors.
4.  **Start Time**: The start time of processes you want to see in the grid.
5.  **Show process details**: Toggles the Process UUID and Queued Time for each process.

The grid has a number of columns with details about your processes.

| Column | Description |
| --- | --- |
| Select (checkbox) | Selects the process to cancel or delete. |
| State (icon) | The current [state of the process](#process-states). |
| Process Name | The name of the process. Click the name to open a process in the [process modeler's monitoring mode](#view-process-details). |
| Model Version | The [version of the process model](process-model-object.html#versions). |
| Errors | The number of errors that the process encountered. |
| Process UUID | The unique identifier of the process. Only shown when **Show process details** is selected. This value is accessible using the `pp!instanceUuid` process property. |
| Started By | The user or other actor that started the process. |
| Queued Time | The date and time the process was added to the queue. Only shown when **Show process details** is selected. |
| Time in Queue | The amount of time the process waited in the queue. |
| Start Time | The date and time the process's work was started. You can sort the grid by earliest or most recent start time by clicking the header cell. This value is also accessible using the `pp!startTime` process property. |
| End Time | The date and time the process reached all end nodes or a terminate event. If the process is Active with Errors or otherwise incomplete, no data is shown. |
| Process Duration | The amount of time between the process start time and end time. |

### Deleting processes

Appian automatically deletes older autoscaled processes, but you can manually delete processes if needed. You can specify the processes you want to delete using the filters for **Status**, **Error** and **Start Time**.

To delete a process or group of processes:

1.  Select the processes in the grid (up to 25 for each page of results).
2.  Click **Delete**.

### Canceling active processes

When running processes at high scale, you may need or want to prevent a set of active processes from completing. For example, if an infinite loop was inadvertently created in one of your process models, it would be important to cancel any active instances of this broken process. Or you may want to cancel processes that cannot progress because a synchronous child process failed.

You can use the grid to select each process you want to cancel, or you can let Appian select all processes matching your filter selections.

To cancel a specific process or group of active processes:

1.  Choose the processes you want to delete by selecting their checkboxes (up to 25 for each page of results).
2.  Click **Cancel**.
3.  Click **Cancel Process**.

[![Autoscaled process activity tab with individual processes selected](images/epex/autoscaled-process-activity-cancel.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img861)

[![](images/epex/autoscaled-process-activity-cancel.png)](#_)

You can also cancel all of the active processes matching your filter selections in a single operation. Your selection can include processes in any status, but only the active processes will be canceled.

[![Autoscaled process activity tab with the maximum number of processes selected](images/epex/autoscaled-process-activity-bulk-cancel.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img862)

[![](images/epex/autoscaled-process-activity-bulk-cancel.png)](#_)

To cancel all processes all matching your filters:

1.  Use the **Name**, **Status**, **Error**, and **Start Time** filters to find the processes you want to cancel.
2.  Select all 25 processes on the first page of results.
3.  In the banner, click **Select all processes that match current filter criteria**.
4.  Click **Cancel**.
5.  On the confirmation dialog, verify the filters are correct, and then click **Cancel Processes**.

## Search for processes

Running processes at high scale results in a large amount of monitoring data, so Appian gives you different ways to search and filter this critical information resource. Depending on what you need to know or view, you can use one of these approaches: searching by name or searching by UUID.

### Search by name

When viewing the [grid of recent processes for a process model](#view-metrics-for-processes), you can use the search and filters to narrow down the list of processes by their names.

There are a few important strategies to keep in mind for the most efficient searches across this large dataset. When searching, keep these tips in mind:

-   Constrain the data to be searched.

    Start by selecting a status and narrowing the time range as much as possible. This will shrink the group of processes that Appian needs to search once you enter the search term.

-   Multi-word search terms are always treated as the whole phrase and must match exactly.

    For example, if you search for `silver sedan`, only processes with that string would be returned. If the name includes only `silver` or `sedan`, the process would not appear in the results.

-   Search is case sensitive.

    Let's say the process names include the customer's first and last name (such as `Clark Simon`). If you searched for either `clark` or `simon`, Appian would not find matching processes for that customer.

### Search by UUID

You can also search for a process using its unique identifier (UUID). This search method is most helpful when you're trying to troubleshoot a problem in a specific process.

Appian does not automatically send alerts or notifications for autoscaled process errors. Instead, we recommend using the process's UUID—available as the process property `pp!instanceUuid`—to design a recordkeeping or alerting solution that works best for your application.

For example, you may want to include the UUID in the process name so it's highly visible. You could also write the value to a data source or set up an error flow in the process model to send an email with the UUID.

However you make the UUID available, finding the process is straightforward.

To search for a process by its UUID:

1.  On the Autoscaled Process Activity tab, click **SEARCH BY PROCESS UUID**.
2.  In the Search by Process UUID field, enter a UUID.

On the Search for Process dialog, you can see basic information about the process.

[![images/epex/autoscaled-process-activity-search-by-uuid.png](images/epex/autoscaled-process-activity-search-by-uuid.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img863)

[![](images/epex/autoscaled-process-activity-search-by-uuid.png)](#_)

## Monitor a process

You can explore and debug a specific process using the data available in the process modeler's [**Monitor** mode](Monitoring_and_Editing_Processes.html#monitor-mode). This mode lets you examine the flow of the process, view the process's variables, and check any errors that occurred.

[![images/epex/autoscaled-process-monitoring-view.png](images/epex/autoscaled-process-monitoring-view.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img864)

[![](images/epex/autoscaled-process-monitoring-view.png)](#_)

The process's nodes and flow arrows are shown with different colored borders depending on their status.

| Format | Status |
| --- | --- |
| Blue | Completed |
| Green | Active |
| Red with a slash (Ø) through the object | The node was canceled or one or more errors occurred. If the process spawns multiple instances of a node, each instance must encounter an error for the red slash to appear. |
| No color | Not yet activated |

### View process details

To see more information about the variables and any errors, click **Process Details** on the process modeler toolbar.

The Variables tab shows the final value of each process variable. You can change the **Format Value** from the default of Formatted to Raw or Expression.

[![images/epex/autoscaled-process-details-variables.png](images/epex/autoscaled-process-details-variables.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img865)

[![](images/epex/autoscaled-process-details-variables.png)](#_)

The History tab shows the status of the whole process above the grid and the status of each node in its own row. The Node column shows the display name and the type of each node.

If one of the nodes starts a separate autoscaled process, click **Open Monitoring** to open the other process in monitoring mode.

[![images/epex/autoscaled-process-details-history.png](images/epex/autoscaled-process-details-history.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img866)

[![](images/epex/autoscaled-process-details-history.png)](#_)

Changes to process variables are recorded at each node where a change is made. Click the name of a variable to see its value as it was at the end of that node.

[![images/epex/autoscaled-process-details-variables-changed.png](images/epex/autoscaled-process-details-variables-changed.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img867)

[![](images/epex/autoscaled-process-details-variables-changed.png)](#_)

The Errors tab lists any nodes that encountered an error and the details of the problem.

[![images/epex/autoscaled-process-details-errors.png](images/epex/autoscaled-process-details-errors.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img868)

[![](images/epex/autoscaled-process-details-errors.png)](#_)

### View step-by-step playback

When investigating a problem in production or debugging a process, it's important to see how the process ran and how its data changed at each step. The step-by-step playback tool lets you click through each node, examine the variables that were updated, and check that the duration is within the expected timeframe.

Click **Step-by-Step Playback** on the process modeler toolbar to open the playback pane.

[![Process step-by-step playback](images/sbs-full.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img869)

[![](images/sbs-full.png)](#_)

The start node is shown by default. Click **NEXT NODE** to highlight the next node in the flow. For a process with many nodes, click **SKIP 10 NODES** to jump ahead to a later point in the process.

The **NODE DETAILS** tab shows the node's name and its execution time data. If the node is a Start Process node, a link is shown so you can open the other process for monitoring.

[![Process step-by-step playback - node details tab](images/sbs-node-details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img870)

[![](images/sbs-node-details.png)](#_)

If the current node did not run successfully, the Errors section provides the error message so you can understand what went wrong.

The **VARIABLES CHANGED** tab lists any variables whose value changed when the node ran. Expand each variable to see the data type and final value of the changed variables. You can also how the variables are displayed from the default of **Formatted** to **Raw** or **Expression**.

[![Process step-by-step playback - variables tab](images/sbs-variables.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img871)

[![](images/sbs-variables.png)](#_)

## Email error alerts

When an autoscaled process encounters an error, an email alert is automatically sent to the process's administrators. This email provides basic information about the error and a link to the Autoscaled Process Activity page so you can investigate further. If your team uses an incident management tool like PagerDuty or OpsGenie, you can use these emails to start an incident response.

### How email alerts work

Let's say you have an autoscaled process that [writes to a data store](Write_to_Data_Store_Entity_Smart_Service.html). If there is a network issue and Appian can't connect to the database, your process model could see a large number of errors in a brief period.

To inform you of the problem quickly, an email will be sent when a process model begins to encounter errors. After that, if errors continue to occur for that process model, Appian sends a digest of these every 5 minutes until the errors stop occurring.

To see all the instances of an error, on the Autoscaled Process Activity tab, [filter the list of processes](#view-metrics-for-processes) to show those with the Errored status.

### Email alert permissions

To access the process model from the link in the email, you must have the [Designer user role](User_Roles.html#designer-role) assigned, which gives access to Appian Designer.

To receive email error alerts for an autoscaled process model, make sure:

-   [Outbound emails](Appian_Administration_Console.html#outbound-email-toggle) are turned on for the environment.
-   You have **Administrator** permissions to the process model object in that environment.

## Process states

When you click on a specific process model, you will see a grid of all processes included in the selected time period. In this grid, each process can have one of the following states:

| Icon | State | Description |
| --- | --- | --- |
| ![Active process icon](images/epex/autoscaled-process-states-active.png) | Active | The process is currently running |
| ![Active with errors process icon](images/epex/autoscaled-process-states-active-errors.png) | Active with Errors | The process is currently running but one or more errors have occurred |
| ![Canceled process icon](images/epex/autoscaled-process-states-canceled.png) | Canceled | The process was manually canceled |
| ![Canceled with errors process icon](images/epex/autoscaled-process-states-canceled-errors.png) | Canceled with Errors | The process was manually canceled and one or more errors occurred |
| ![Completed process icon](images/epex/autoscaled-process-states-completed.png) | Completed | The process ran and reached one end event with a terminate trigger or reached all end events defined in the process model |
| ![Completed with errors process icon](images/epex/autoscaled-process-states-completed-errors.png) | Completed with Errors | An error occurred, but the process ran and reached one end event with a terminate trigger or reached all end events defined in the process model |
| ![Stopped with errors process icon](images/epex/autoscaled-process-states-stopped-errors.png) | Stopped with Errors | Appian encountered an error and cannot make further progress in the flow |

## Process data retention

Autoscaled processes create large volumes of data to power your troubleshooting with the process activity and process history. Appian automatically removes older data at regular intervals to ensure your site remains performant.

The following data retention rules are in place for autoscaled processes:

-   Data for processes that ended without errors is automatically deleted after seven days.
-   Data for processes that ended _with_ errors is automatically deleted after 14 days.
-   Data for active processes is automatically deleted after 90 days.
-   Aggregated data for the Autoscaled Process Activity tab is automatically deleted after 30 days.

When [viewing process model activity](#view-autoscaled-process-activity), you can use a custom range to select any seven-day time period. This lets you view metrics for older processes with errors.

### Logging

When you run autoscaled processes, Appian logs data for each runner in its own folder of the `shared-logs/actor-executors` directory. The logs available in each `appian-actor-executor` folder are a subset of those available for the main Appian application.

-   [`audit/decryption.csv`](Logging.html#decryption)
-   [`data-server/client.log`](Logging.html#data-service)
-   [`perflogs/`](Logging.html#monitoring-performance-and-usage)
-   [`search-server/search-server-replication.log`](Logging.html#search-server-replication-performance-logs)
-   `app-server-jwq-monitor.log`
-   [`data-server-client-errors-detail.log`](Logging.html#data-service)
-   [`data-type-locks.log`](Logging.html#data-type-locks)
-   [`deployment.log`](Logging.html#deployment-log)
-   `engine-client.log`
-   `object-template.log`
-   [`tomcat-stdOut.log`](Logging.html#application-server)

**Note:**  If your site has [log streaming](Log_Streaming_for_Appian_Cloud.html) enabled, logs for autoscaled process errors can be sent to a log receiver.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...