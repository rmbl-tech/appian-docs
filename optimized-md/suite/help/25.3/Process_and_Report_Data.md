---
source_url: https://docs.appian.com/suite/help/25.3/Process_and_Report_Data.html
original_path: Process_and_Report_Data.html
version: "25.3"
title: "Process and Process Report Data"
page_id: "Process_and_Report_Data"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process and Process Report Data

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes the [domain prefixes](#prefixes) and [functions](#functions) you can use to access process-related data in the [Expression Editor](expression-editor.html) during [process model design](working_in_design_mode.html) and [process report configuration](Process_Reports.html).

To learn more about the Expression Editor in process models, see [Expressions](expression-editor.html).

## Prefixes

Use the [domain prefixes](domain_prefixes.html) described in this section to reference process data in expressions.

Some process-only prefixes return process-level data, while others return node-level data. The level for each prefix is indicated in the table below.

| Prefix | Data | Level |
| --- | --- | --- |
| `pm!` | [Process model properties](#process-model-properties) | Process |
| `pp!` | [Process properties](#process-properties) | Process |
| `pv!` | [Process variables](#process-variables) | Process |
| `ac!` | [Activity class parameters](#activity-class-parameters) | Node |
| `tp!` | [Task properties](#task-properties) | Node |
| `msg!` | [Message properties](#message-properties) | Node |

**Note:**  Process report data is based on attended task nodes in the process model. Unattended task nodes aren't included in the data. In this page, _tasks_ refers to attended tasks, which require user input.

### Process model properties

Process model properties are variables that used internally (in Appian). These variables are supported for use in the Expression Editor when configuring processes or process report columns, and in a [record type](Record_Type_Object.html) that uses a process model as the source.

Use the `pm!` prefix to reference a process model property. For example, to reference the process model's **Time Zone**, use `pm!timeZone`.

To reference a process model property in a record type, use `pm.` in front of the property reference. You must also use the [record value](reference-records.html#reference-record-values-in-the-record-type) (`rv!`) domain. For example: `rv!record[recordType!Case.fields.pm.timeZone]`.

Process model properties include:

| Process Model Property | Reference | Type | Description |
| --- | --- | --- | --- |
| ID | `id` | Integer | System-assigned ID for the process model. Not to be confused with the UUID. |
| Name | `name` | Text | Name of the process model. |
| Description | `description` | Text | Description of the process model. |
| Version | `version` | Text | Version of the process model. |
| Creator | `creator` | User | Creator of the process model. |
| Time Zone | `timeZone` | Text | Time zone the process model was created in. |
| UUID | `uuid` | Text | Unique identifier for the process model application object. |

You can easily add process model properties to your expression using the **DATA** tab in the [process model Expression Editor](expression-editor.html#data-tab).

### Process properties

Process properties are variables that are used internally within the system to reference certain items associated with a process instance.

These properties may be available for selection in the expression editor for you to use in rules, expressions, and report columns. You can also reference process properties in a [record type](Record_Type_Object.html) that uses a process model as the source.

Use the `pp!` prefix to reference a process property. For example, to reference the process **Start Time**, use `pp!startTime`.

To reference a process property in a record type, use `pp.` in front of the property reference. You must also use the [record value](reference-records.html#reference-record-values-in-the-record-type) (`rv!`) domain. For example: `rv!record[recordType!Record.fields.pp.startTime]`.

Consider using the `pp!` prefix when designing process models and when configuring column data in [Process](Process_Reports.html#process-report-type) and [Task](Process_Reports.html#task-report-type) types of process reports.

Process properties include:

| Process Property | Reference | Type | Description |
| --- | --- | --- | --- |
| ID | `id` | Integer | System-assigned ID for the process. Process IDs are unique within an Appian instance. They are not reused, and can be used to reference the process throughout the application. |
| Name | `name` | Text | Name of the underlying process model. |
| Priority | `priority` | Text | The value set as the process priority. Note: this is a descriptive property. It is available to designers to use how they see fit, but the property itself does not affect how Appian handles the process. |
| Initiator | `initiator` | User | The user who started this process. |
| Designer | `designer` | User | Owner of the underlying process model. If there are multiple process administrators, the user who last updated the process model becomes the owner. |
| Start Time | `startTime` | Date/Time | Time the process was started. |
| Deadline | `deadline` | Date/Time | The date/time value set as deadline. Note: this is a descriptive property. It is available to designers to use how they see fit, but the property itself does not affect how Appian handles the process. |
| Time Zone | `timeZone` | Text | Time zone context used by the process. This value may differ from the configured process model time zone, such as when the designer selects the option to override the configured process model time zone with the process initiator's time zone. See also: [Time Zone Context](Time_Zone_Context.html) |

You can easily add process properties to your expression using the **DATA** tab in the [process model Expression Editor](expression-editor.html#data-tab).

### Process variables

If you accessed the Expression Editor through the Process Modeler, you can use the `pv!` prefix to reference all variables defined and added to the process model.

If you accessed the Expression Editor while configuring a column in a process report, you can reference all variables from the **Report Context** process model.

**Note:**  If after adding the variable to your expression, you do not create an expression for the variable, its current value is read.

You can easily add process variables to your expression using the **DATA** tab in the [process model Expression Editor](expression-editor.html#data-tab).

### Activity class parameters

Activity class parameters (or node inputs) are variables that can be used within a single node. Unlike process variables, activity class parameters cannot be passed to other nodes in a process model. If you need to access node data in a process report, you must first save the data into a process variable.

Use the `ac!` prefix to reference data from expressions configured in process model nodes.

You can easily add activity class parameters to your expression using the **DATA** tab in the [process model Expression Editor](expression-editor.html#data-tab).

### Task properties

When editing a task view or data in a task report, you can use the `tp!` prefix to reference properties that are specific to a task in a process. You can reference the task properties in the table below when editing [Task report](Process_Reports.html#task-report-type) data columns.

If you need to report on a task property in a process report, you can save its value to a process variable using a custom output when designing the task in the Process Modeler.

See also: [Creating a Custom Node Output](Process_Node_and_Smart_Service_Properties.html#custom-outputs)

| Select | or Type | To Return... |
| --- | --- | --- |
| id | `tp!id` | System-assigned ID number that can be used to reference the task.
-   Task IDs are unique within the system and valid until the task is deleted and/or its process is archived. When a task is deleted or its process archived, its task ID is no longer valid and may be reused for new tasks. If you unarchive a process, the process tasks receive new task IDs.
-   When retrieving the Task ID in a process report, an absolute ID that is relative to the execution engine on which the task resides is returned by the process engine. In all other cases, the Task ID property returns the relative ID of the task. This ID can be used to reference the task throughout the application.

 |
| uuid | `tp!uuid` | This property returns a system-assigned universally-unique ID that can be used to reference the task. |
| name | `tp!name` | This property returns the task name (the name that appears on the designer canvas). |
| description | `tp!description` | Task description. |
| display | `tp!display` | Task display name (the name that appears in the Task view in Appian). |
| priority | `tp!priority` | Task priority. |
| owner | `tp!owner` | Task owner.

-   When a task is assigned, the Task Owner property has a null value until the assigned user views the task or until a user in the assigned group accepts the task.
-   The Task Owner property can only be used to identify the user who completed a given task. If the task has been assigned to more than one user (if there were multiple users or a group of users) the Assignees property should be used to determine the users that accepted the task.

 |
| assignees | `tp!assignees` | List of users and groups who have been assigned the task.

-   The object returned takes the User or Group data type.

 |
| starttime | `tp!starttime` | Date and time when the task was issued. |
| deadline | `tp!deadline` | Date and time by which the task should be completed. |
| instance Index | `tp!instanceIndex` | Index number of the current spawned activity.

-   When multiple node instances are spawned for an activity, each activity is assigned an index number (starting with 1). This property allows you to reference the current index number of the spawned activity in an expression. It is particularly useful when you spawn one activity for each value in a multiple-value process variable.
-   When storing the result of each instance into a process variable, use the **is stored as** or the **is appended to list** operators, not the **is stored at index** operator. Use the `index()` function to match each process variable value with the index of the spawned activity. For example, the following expression could be used to call each element in a multiple value process variable: `index(pv!processVariable,tp!instanceIndex)`

See also: [Multiple Node Instances and the tp!instanceIndex Property](Process_Node_and_Smart_Service_Properties.html#other-tab) and [index()](fnc_array_index.html) |

You can easily add task properties to your expression using the **DATA** tab in the [process model Expression Editor](expression-editor.html#data-tab).

### Message properties

If a [Receive Message event](Receive_Message_Event.html) is configured in a process model, you can use the `msg!` prefix to reference [message properties](Receive_Message_Event.html#message-properties) that are unique to that event. The available message properties depend on the [message type](Receive_Message_Event.html#select-a-message-type).

## Functions

Adding functions to expressions in your process model is easy. Use the **FUNCTIONS** tab in the process model Expression Editor to quickly search, browse, and add functions to your expression.

### Task metrics

Task metric functions allow you to access task data when creating a process report related to tasks. These functions are only supported when you're defining a task report column of data.

| Select | or Type | To Return... |
| --- | --- | --- |
| Average Completion Duration | `task_avg_completion()` | Average elapsed time between assignment and completion of this task across all processes. |
| Completion Duration | `Completion()` | Absolute elapsed time between assignment and completion of this task. |
| Completion Time | `task_completion_time()` | Date and time when the task was completed. |
| Is Process On-Time | `is_process_ontime()` | `true` if the process this task belongs to is currently on-time (or was completed on-time) according to the process deadline. |
| Is Process Overdue | `is_process_overdue()` | `true` if the process this task belongs to is currently past due. |
| Is Task On-time | `is_task_ontime()` | `true` if the deadline for the task has \*not\* elapsed prior to task completion. |
| Is Task Overdue | `is_task_overdue()` | `true` if the deadline for the task elapsed prior to task completion. |
| Is Task Starred \[Deprecated\] | `is_task_favorite()` | `true` if this task is one of the current user's favorites. |
| Lag Time | `Lag()` | Absolute delay between assignment and acceptance of this task.
-   Time elapsed due to pausing the task is not accounted for.

 |
| Net Completion Duration | `NetCompletion()` | Net elapsed time, taking into account working hours, between assignment and completion of the task.

-   All non-working hours (until the next working hour) are added to any completion duration (according to the process calendar) if the task is completed after the end of any working day.

 |
| Net Lag Time | `NetLag()` | Net delay (taking into account working hours) between assignment and acceptance of a task.
Any fraction of a minute is considered to be a full minute worked.

-   If the net delay passes a working-hour threshold specified on the process calendar, the Net Lag includes all time that would elapse until the next working hour. For example, say 5:00 pm is the end of a working day on the process calendar, and a task is assigned at 4:49 pm. If the task is accepted at 5:01 pm, the Net Lag Time is calculated as if the task were accepted at 9:01 am the next working day (this could be several days later if several subsequent non-working days are designated in the process calendar).

 |
| Net Work Time | `NetWork()` | Net elapsed time between acceptance and completion of a task.

-   The times must fall within the working hours on the process calendar. If a completion takes place in non-working time, the completion time is advanced to the next working time open on the calendar. Any fraction of a minute is considered to be a full minute worked.

 |
| Process Completion Time | `process_completion_time()` | Date and time when the process (which issued the task) was completed. |
| Process Deadline | `process_deadline()` | Completion deadline of the process that this task belongs to. |
| Process Execution Engine Id | `process_ee_id()` | ID of the Execution Engine that the task's process is running on. |
| Process Model Average Completion Time | `pm_avg_completion()` | Average elapsed time between task assignment and completion across all tasks in all process instances of the parent process model of this task. |
| Process Model Average Lag Time | `pm_avg_lag()` | Average delay between task assignment and acceptance across all tasks in all process instances of the parent process model of this task. |
| Process Model Average Work time | `pm_avg_work()` | Average elapsed time between task acceptance and completion across all tasks in all process instances of the parent process model of this task. |
| Process Start Time | `process_start_time()` | Start date and time of the process that this task belongs to. |
| Task Assignees/Owner | `task_assignee_owner()` | Assignee(s) before a task has been accepted or the task owner after the task is accepted. |
| Task Assignment Time | `task_assignment_time()` | Time that this task was assigned. |
| Task Attributed To | `task_attributed_to()` | Specific user from the context that is assigned to this task. It is only applicable for task reports that have a user context. |
| Task Average Lag Time | `task_avg_lag()` | Average delay between task assignment and acceptance across all tasks in all process instances of this model. |
| Task Average Work Duration | `task_avg_work()` | Average elapsed time between task acceptance and completion across all tasks in all process instances of this model. |
| Task Deadline | `task_deadline()` | Completion deadline of the task. |
| Task Execution Engine Id | `task_ee_id()` | ID of the Execution Engine this task is running on. |
| Task Status | `task_status()` | Current status of this task. The following values are valid:

-   Not Active
-   Active
-   Completed
-   Cancelled
-   Paused
-   Paused by Exception

 |
| Total Completion Time (Process) | `total_completion_time()` | Total elapsed time between assignment and completion of all completed tasks in the process that this task belongs to. |
| Total Lag Time (Process) | `total_lag_time()` | Total delay between assignment and acceptance of all running or completed tasks in the process that this task belongs to. |
| Total Work Time (Process) | `total_work_time()` | Total elapsed time between acceptance and completion of all completed tasks in the process that this task belongs to. |
| Work Duration | `Work()` | Elapsed time between acceptance and completion of this task. |

### Process metrics

When editing a process view in the application, or editing process reports, you can reference properties that are specific to a process in a given process model. The different process metrics that are available for selection through the Expression Editor are explained in further detail.

Process metrics only appear in the Expression Editor in certain instances:

-   Process reports allow you to create and configure reports on all processes for a given process model.
-   Process metrics only appear when editing a process or process model report.

| Select | or Type | To Return... |
| --- | --- | --- |
| \# of Active Tasks | `num_active_tasks()` | Number of active tasks in this process. |
| \# of Cancelled Tasks | `num_cancelled_tasks()` | Number of canceled tasks in this process. |
| \# of Completed Tasks | `num_completed_tasks()` | Number of completed tasks in a process. |
| \# of On-time Tasks | `num_ontime_tasks()` | Current number of active tasks for this process, which are not past their deadline. |
| \# of Overdue Tasks | `num_overdue_tasks()` | Current number of active and past due tasks for this process. |
| \# of Problem Tasks | `num_problem_tasks()` | Number of problematic tasks in this process. Problematic tasks are canceled by exception. |
| Average Completion Time | `pm_avg_completion()` | Average elapsed time between task assignment and completion across all tasks in all process instances of this model. |
| Average Lag Time | `pm_avg_lag()` | Average delay between task assignment and acceptance across all tasks in all process instances of this model. |
| Average Work Time | `pm_avg_work()` | Average elapsed time between task acceptance and task completion for all running and completed tasks of this process. |
| Is Process Starred \[Deprecated\] | `is_pm_favorite()` | `true` if the process is selected by the current user as a favorite. |
| Is Process Model Starred \[Deprecated\] | `is_process_favorite()` | `true` if the process model is selected by the current user as a favorite.
-   Process models selected using this metric do not display the **Star** marker when shown in a process report.

 |
| Is Process On-Time | `is_process_ontime()` | `true` if the process is currently on-time (if running) or if it was completed on-time. |
| Is Process Overdue | `is_process_overdue()` | `true` if the process is currently past due, or if it was completed past its deadline. |
| Last Node Executed | `process_last_node()` | Name of the last node executed prior to process completion.

-   It is used to determine which end event in a process caused it to complete. If a process ends due to execution of another node, this metric is not populated with a value.

 |
| Parent Process ID | `parent_process_id()` | ID of the parent process. If the process does not have a parent \`null\` is returned. |
| Parent Process Model ID | `parent_pm_id()` | ID of the underlying parent process model. |
| Parent Process Model Name | `parent_pm_name()` | Name of the parent process model. |
| Parent Process Name | `parent_process_name()` | Name of the parent process.

-   If the process is not a subprocess, it returns a \`null\` value.

 |
| Process Completion Time | `process_completion_time()` | Date and time when the process was completed. |
| Process Deadline | `process_deadline()` | Completion deadline of the process. |
| Process Duration | `process_duration()` | Elapsed time between process start and completion. |
| Process Execution Engine Id | `process_ee_id()` | ID of the Execution Engine this process is running on. |
| Process Priority | `process_priority()` | Designated priority of the process. |
| Process Status | `process_status()` | current status of the process. |
| Running Completion Time | `running_completion_time()` | Total elapsed time between task assignment and task completion for all tasks of this process.

-   If a task is not yet accepted, completion time is calculated using the current time.

 |
| Running Lag Time | `running_lag_time()` | Total delay between task assignment and task acceptance for all tasks of this process.

-   If a task is not yet accepted, lag time is calculated using the current time.

 |
| Running Work Time | `running_work_time()` | Total elapsed time between task acceptance and task completion for all tasks of this process.

-   If a task is not yet accepted, work time is calculated using the current time.

 |
| Subprocess Id List | `sub_process_ids()` | List of ID numbers of subprocesses of this process. |
| Total Completion Time | `total_completion_time()` | Total elapsed time between task assignment and task completion for all tasks of this process. |
| Total Lag Time | `total_lag_time()` | Total delay between task assignment and task acceptance for all tasks of this process. |
| Total Work Time | `total_work_time()` | Total elapsed time between task acceptance and task completion for all tasks of this process. |

### Process model functions

The expression functions below are available in the Expression Editor when the Expression Editor is accessed within the Process Modeler. These expression functions serve to replace certain process model metrics, which are no longer available. They cannot be used when defining a process report column.

| Call | To Return ... |
| --- | --- |
| [numtasksforprocessmodelforstatus()](fnc_scripting_numtasksforprocessmodelforstatus.html "Scripting Functions") | Number of active tasks in process instances of a process model. |
| [numprocessesforprocessmodelforstatus()](fnc_scripting_numprocessesforprocessmodelforstatus.html "Scripting Functions") | Number of canceled process instances of a process model. |
| [numtasksforprocessmodelforstatus()](fnc_scripting_numtasksforprocessmodelforstatus.html "Scripting Functions") | Number of canceled tasks in process instances of a process model. |
| [numprocessesforprocessmodelforstatus()](fnc_scripting_numprocessesforprocessmodelforstatus.html "Scripting Functions") | Number of completed process instances of a process model. |
| [numtasksforprocessmodelforstatus()](fnc_scripting_numtasksforprocessmodelforstatus.html "Scripting Functions") | Number of completed tasks in process instances of a process model. |
| [numontimeprocessesforprocessmodel()](fnc_scripting_numontimeprocessesforprocessmodel.html "Scripting 	Functions") | Number the count of processes that are on-time (where the deadline has not yet passed) for currently running instances of this process model or the number of process instances that were completed on-time for completed processes. |
| [numontimetasksforprocessmodel()](fnc_scripting_numontimetasksforprocessmodel.html "Scripting Functions") | Number of tasks in process instances of this process model that are currently on-time (if the task is still active), or completed on-time. |
| [numoverdueprocessesforprocessmodel()](fnc_scripting_numoverdueprocessesforprocessmodel.html "Scripting Functions") | Number of overdue running process instances of this process model. |
| [numoverduetasksforprocessmodel()](fnc_scripting_numoverduetasksforprocessmodel.html "Scripting Functions") | Number of tasks in process instances of this process model that are currently past due. |
| [numprocessesforprocessmodelforstatus()](fnc_scripting_numprocessesforprocessmodelforstatus.html "Scripting Functions") | Number of paused process instances of this process model. |
| [numtasksforprocessmodelforstatus()](fnc_scripting_numtasksforprocessmodelforstatus.html "Scripting Functions") | Number of tasks with problems in process instances of this process model. |
| [averagetaskcompletiontimeforprocessmodel()](fnc_scripting_averagetaskcompletiontimeforprocessmodel.html "Scripting Functions") | Average elapsed time between task assignment and task completion for all running and completed tasks of a process model. |
| [averagetasklagtimeforprocessmodel()](fnc_scripting_averagetasklagtimeforprocessmodel.html "Scripting Functions") | Average delay between task assignment and task acceptance for all running and completed tasks of this process model. |
| [averagetaskworktimeforprocessmodel()](fnc_scripting_averagetaskworktimeforprocessmodel.html "Scripting Functions") | Average elapsed time between task acceptance and completion across all tasks in all process instances of this model. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...