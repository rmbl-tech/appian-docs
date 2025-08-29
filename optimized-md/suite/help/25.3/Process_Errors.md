---
source_url: https://docs.appian.com/suite/help/25.3/Process_Errors.html
original_path: Process_Errors.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Errors

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

While a process instance is running, it can encounter several different types of errors. Depending on the type of error, the affect on the runtime behavior of the process will be different.

The three types of process errors are:

-   [Errors on unattended nodes](#errors-on-unattended-nodes)
-   [Errors on attended tasks](#errors-on-attended-tasks)
-   [Transitory errors](#transitory-errors)

This page describes each type of process error that you can encounter and where to view the errors.

-   See the [**Monitor** view](monitoring_view.html) page for detailed reference information about monitoring the process activity on your system in Appian Designer.
-   To learn more about how to interact with specific processes, see the [Monitoring, Debugging, and Editing Processes](Monitoring_and_Editing_Processes.html) page.
-   For guidance on identifying and fixing common process issues, see [Troubleshooting Process Models](Testing_and_Debugging_Problems_with_Process_Models.html).

### Errors on unattended nodes

An unattended node is a node that uses system logic to perform a task.

If an error occurs on an unattended node:

-   The process is not paused.
-   Parallel paths in the process continue to proceed.
-   An [alert](process-model-object.html#alerts-tab) is sent to the appropriate recipients. The alert consists of an explanation of the exception and a link to view that process in the [**Monitor** view](monitoring_view.html) of Appian Designer.
-   These nodes are not included in the `num_problem_tasks` [process metric](Process_and_Report_Data.html#process-metrics) in process reports.

### Errors on attended tasks

An attended node is a node that requires a user to perform a task.

If an error occurs in a process that affects the entire process:

-   The entire process is paused, and its process status is set to "Paused by Exception".
-   An [alert](process-model-object.html#alerts-tab) is sent to the appropriate recipients. The alert consists of an explanation of the exception and a link to view that process in the [**Monitor** view](monitoring_view.html) of Appian Designer.
-   These nodes are included in the `num_problem_tasks` [process metric](Process_and_Report_Data.html#process-metrics) in process reports.

Once the necessary edits to the failed node have been applied, the Process Administrator can resume the process. The task within the process that caused the exception must be [started](Monitoring_and_Editing_Processes.html#start-a-flow-object) again.

### Transitory errors

A number of internal and external operations do not immediately generate alerts if a transitory exception occurs. Instead, the failed operation is retried. This only applies to operations that can be safely retried (meaning no data is modified when the exception is encountered).

An alert is generated once all configured retries have been attempted. See [Automatic Error Handling](Automatic_Error_Handling.html) for more information.

## Causes of errors

Task errors and process errors will generate an [alert](process-model-object.html#alerts-tab).

### Task errors

The following task errors will, by default, create an alert:

-   The node inputs for an activity are invalid.
-   A server error has occurred.
-   The amount of time allocated for the completion of an unattended activity was insufficient to allow the activity to complete.
-   An error occurred in executing a node input.
-   The execution engine has reached maximum load.
-   The subprocess started by this activity has been canceled.
-   The subprocess started by this activity has been deleted.
-   The user does not have privilege to the process that the activity attempted to start.
-   This activity contains node outputs in excess of defined limits.
-   The subprocess could not be started because the input mapping was missing required process parameters.
-   The subprocess could not be started because the input mapping contained process parameters with incorrect types.
-   An invalid expression has been encountered in a task.
-   An unattended task has failed.

### Process errors

The following process errors will, by default, create an alert:

-   An attempt was made to start a process without a Start Node.
-   A timeout error occurred in the evaluation of a function within an expression.
-   An invalid expression has been encountered.
-   This activity contained an expression that generated data in excess of defined limits.
-   A node tries to spawn too many instances at once.
-   An error occurred when the Analytics Server attempted an incremental update.
-   This process has been inactive for a time period exceeding defined limits.

## Viewing processes with problems

Process errors are visible from:

-   The [**Monitor** view](monitoring_view.html#Processes_List) in Appian Designer.
-   The **Errors** tab of the **Process Details** dialog while monitoring a process in the modeler.
-   The node details dialog while monitoring a process in the modeler.
-   [Alerts](process-model-object.html#alerts-tab) that are configured from the **Alerts** tab of a process model.

## Resolved and unresolved errors

When errors occur, they are initially marked as unresolved. They become resolved when the following events happen:

-   The process is completed.
-   The process is canceled.
-   A node in a process is manually started by right-clicking on the node in the modeler and selecting **Start**. Existing instances of this node that are in the Paused by Exception state because of a node error will be canceled and their corresponding errors resolved.

By default, in Appian Designer and the Process Modeler, only unresolved errors are shown for the developer's convenience. However, you can view all errors by selecting the **Show resolved errors** checkbox in the **All Process Errors** and **Process Details** dialogs in Appian Designer and the Process Modeler, respectively.

Resolved errors will also display the resolution date,time, and the user who resolved the error.

![resolved all errors](images/resolved_errors_all_errors_dialog.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...