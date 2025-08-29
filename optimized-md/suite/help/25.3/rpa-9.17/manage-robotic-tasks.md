---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-robotic-tasks.html
original_path: rpa-9.17/manage-robotic-tasks.html
version: "25.3"
title: "Manage Robotic Tasks"
page_id: "rpa-9.17/manage-robotic-tasks"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Robotic Tasks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The RPA Console and the Operations Console give you comprehensive control over robotic task management. The RPA Console offers a detailed, real-time view of tasks as they're executed, allowing for immediate management actions. Meanwhile, the Operations Console provides a broader perspective, ideal for overseeing overall task performance and operational trends. Both consoles empower you with the tools needed to direct your robotic tasks efficiently and effectively.

## View execution details

### RPA console view

In the RPA console, you'll see the list of robotic tasks that are currently running or staged to run. This list is only available when there is at least one robotic task running.

[![images/rpa-list-of-rps-execution.png](images/rpa-list-of-rps-execution.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1369)

[![](images/rpa-list-of-rps-execution.png)](#_)

Use any column to sort the list. By default, the list is sorted by execution priority. You'll see the following information in the list:

-   **Robotic task**: The robotic task's name.
-   **Priority (P)**: The robotic task's priority. You can set the priority level when you [create a new robotic task](robotic-task-creation.html).
-   **Description**: The execution's description.
-   **Robot**: The robot associated with the execution.
-   **Execution**: The execution's unique identifier.
-   **Start**: Date and time when the execution began.

You can also see the execution's progress in this list. Use the pause button ![2237070.png](images/2237070.png) to pause a robotic task or the stop button ![2237071.png](images/2237071.png) to end it.

To view the execution history of a specific robotic task, navigate to the Operations Console and click on the robotic task's Name from the executions list. The robotic task's individual executions display in the RPA console.

[![images/rpa-console-rt-exec-details.png](images/rpa-console-rt-exec-details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1370)

[![](images/rpa-console-rt-exec-details.png)](#_)

### Operations Console view

In the Operations Console, you can see the currently running robotic tasks and which robots are executing them under the Robots tab.

[![images/running-robotic-task.png](images/running-robotic-task.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1371)

[![](images/running-robotic-task.png)](#_)

Click a specific robot to view all of the robotic tasks it has executed.

[![images/robotic-task-executions.png](images/robotic-task-executions.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1372)

[![](images/robotic-task-executions.png)](#_)

#### Filters and controls

To help you manage and navigate through the robotic tasks more efficiently, the Operations Console provides a set of filters and controls to help you customize what you're viewing. Here's how you can use these options.

-   **Robotic Tasks**: Use this search bar to quickly find specific robotic tasks by name.
-   **Status**: A dropdown menu allowing you to filter tasks based on their status. Every execution of a robotic task is assigned a status to reflect its current or final execution state. Here are the potential statuses for these tasks: Completed, Error, Aborted, Running, Reserved, and Enqueued.
-   **Time**: Adjust the timeframe for the robotic tasks displayed, such as viewing tasks from the last 7 days. The time adjusts from when the robotic task execution began.
-   **RESET**: Clears current filters to show all tasks.

## Manage robotic task executions

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

When performing maintenance, administrators can temporarily disable execution of all robotic tasks in Appian RPA.

![robotic-task-lock.png](images/robotic-task-lock.png)

To enable or disable the execution of robotic tasks:

1.  Go to the **Robotic tasks** tab in the RPA console.
2.  In the toolbar, click the **Enable/disable execution of robotic tasks** ![rpa-toggle-executions-icon.png](images/rpa-toggle-executions-icon.png) icon. The **State change** page displays.
3.  In the **Custom additional message** box, enter the text of the message you want to show.
4.  Click **OK**.

## View the execution log

With the execution log in the RPA console, you can follow the robotic task's progress through its workflow. The log shows its activity, informational messages, exceptions, and errors. Developers can code robotic tasks so they display information in the execution log at certain points in the execution.

![rpa-execution-log.png](images/rpa-execution-log.png)

Learn more about [how to read the execution log](troubleshoot.html#execution-details).

## Access log files

Under **Settings** > **Maintenance** in the RPA console, you can view log files generated either by the console, the server, or the robots.

The page includes a list of all log trace files stored on the server. To download a file, click **Download file** in the **Actions** column.

When the files are no longer needed, you can remove the selected files to save space on the server. To remove a tile, click **Delete file** in the **Actions** column.

![rpa-maintenance-log.png](images/rpa-maintenance-log.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...