---
source_url: https://docs.appian.com/suite/help/25.3/Monitoring_and_Editing_Processes.html
original_path: Monitoring_and_Editing_Processes.html
version: "25.3"
title: "Monitoring and Editing Processes"
page_id: "Monitoring_and_Editing_Processes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Monitoring and Editing Processes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

In addition to building process models, you can also use the Process Modeler can also be used to monitor the execution of process instances, test your process models, and edit active process instances. This page will walk through the different ways you can interact with process instances from the modeler.

-   See the [**Monitor** view](monitoring_view.html) page for detailed reference information about monitoring the process activity on your system in Appian Designer.
-   For guidance on identifying and fixing common process issues, see [Troubleshooting Process Models](Testing_and_Debugging_Problems_with_Process_Models.html).
-   For more details on the types of process errors that you could encounter, see the [Process Errors](Process_Errors.html) reference page.

## Interpreting process flows

Each process flow is composed of flow objects. A flow object is any object that can be added to the sequence flow of a process model in the Process Modeler, including flow connectors, activities, gateways, and so on.

When in [Monitor mode](#monitor-mode) or [Edit mode](#edit-mode), the process flow objects display with different colored borders, depending on their status.

| Format | Status |
| --- | --- |
| Blue | Completed flows and flow objects. (See the **Start Event** object below.) |
| Green | Active flow objects. (See the **Participation** object below.) |
| Red | Paused flow objects. |
| Red with a slash (Ø) through the object | Flow objects that are canceled by exception. |
| No color | Flow objects that are not yet activated by the sequence flow. (See the **Script Task** object below.) |

![Process Flow](images/Editing_a_process.png)

When viewing process models with exception flows, all exception flows appear in red before they have been executed. Upon execution, the flow color changes to purple as shown below:

![Exception Flow](images/Exception_flow_taken_diagram.png)

When a node is skipped due to an exception flow, it appears shaded with diagonal lines. This is shown in the **Team Information** node above.

## Monitor mode

While viewing a process instance in **Monitor** mode, you can monitor and administer active flow objects.

### Viewing a process in monitor mode

To access Monitor mode for a process instance:

1.  In the [navigation pane](common-view-elements.html#navigation-pane), click **Monitor**.
2.  Locate the process instance that you want to monitor.
3.  Click on the **Name** link.
4.  The process instance opens in Monitor mode in the Process Modeler. The current status of the flow objects are displayed.

If you want to make updates to the process instance's process model as a result of what you've found in Monitor mode, follow the instructions in the [Navigation in the Process Modeler](#navigation-in-the-process-modeler) section to open the model while viewing the process.

In Monitor mode, the Process Modeler displays a different set of toolbar options.

### Pausing a process

To pause a process instance, select **Modify > Pause** from the toolbar.

When an instance is paused, the following occurs:

#### Tasks

-   Active tasks assigned to a user no longer show up in the user's **Tasks** list.
-   Task show up with the "Paused" status in the **All Tasks** report.
-   Tasks submitted while the process instance is paused display an error upon submission.
-   Users cannot save tasks related to the process instance. If a user is actively working on a task when a process instance is paused, the user will not be able to save or submit the task. If the process instance resumes before the user clicks on either save or submit, the user can successfully submit the task.

#### Message events

-   Active receive message event nodes will not receive any messages while the process instance is paused, and the messages will not be queued.
-   Messages sent after the process instance resumes will be received.

#### Timer events and active nodes

-   Active timer events and active nodes scheduled to execute while the process instance is paused only execute when the instance is resumed.
-   Active timer event nodes and active nodes configured to recur at a certain interval continue to generate new instances of the activity while the process instance is paused. The instances only execute when the process instance is no longer paused.
    -   For example, if you pause a process for 10 minutes, and a node is configured to repeat every 1 minute, if the node is an unattended smart service, the smart service runs 10 times when the process is resumed.
    -   If the node is an unattended script task that stores a value into a process variable, the value is written to the process variable 10 times when the process resumes.

#### Synchronous subprocesses

-   Active synchronous subprocess nodes with Output Variable mappings write values from the subprocess to the parent process while the parent process is paused.
-   Any subprocesses do not pause with the parent process.
-   The output flow from the subprocess node will only be taken when the process resumes.
-   When the output flow of a subprocess node is configured to "keep process variables synchronized across this flow", the synchronization is preserved after the parent process resumes.

### Resuming a paused process

To resume a process instance, select **Modify > Resume** from the toolbar.

### Changing process variables

It's possible to change the value of process variables in a process instance. The approach differs based on the type of the variable.

To change process variables of system data types:

1.  From the toolbar, select the **Process Model Properties** icon to view the process variables.
2.  Select a process variable to update it.
3.  For a process variable of type multiple, insert the value with a comma separator. For example, to add an array of two values to a process variable of type Text, enter `text string 1, text string 2`.

To change process variables of custom data types, you need to add a script task to your process model that stores the new value into the variable:

1.  [Edit the process](#edit-mode).
2.  Drag and drop a script task onto the canvas.
3.  Add a node input, and choose the custom data type as its type.
4.  Set the new values.
5.  Save the node input into the process variable that you want to update.
6.  Apply your changes to the process instance.
7.  [Switch to Monitor mode](#navigation-in-the-process-modeler).
8.  Close the tab open in Edit mode.
9.  Right-click on the new script task and select **Start**.

To change an encrypted text value, you can use a technique similar to modifying values of custom data types:

1.  [Edit the process](#edit-mode).
2.  Drag and drop a User Input task onto the canvas.
3.  Add a node input of type Encrypted Text.
4.  Configure an interface that displays the encrypted text value and saves the updated value back into the node input.
5.  Save the node input into the process variable that you want to update.
6.  Apply your changes to the process instance.
7.  [Switch to Monitor mode](#navigation-in-the-process-modeler).
8.  Close the tab open in Edit mode.
9.  Right-click on the new User Input task and select **Start**.

### Updating a flow object in Monitor mode

A designer has the following options for flow objects when monitoring a process instance.

#### Pause a flow object

To pause a flow object, right-click an active node (indicated by a green border) and select **Pause**. The border of the paused node will become red.

When a node within a process instance is paused, the instance is still active. There can be more than one active flow in a instance. When a flow reaches a node that is paused, and there is only one active flow in the instance, the entire process instance is paused. The node must be resumed for the instance to continue.

#### Start a flow object

To start a new instance of a node, right-click the object and select **Start**.

Follow the same steps to resume an activity that was canceled by exception.

#### View activated instances

To view activated instances of a node, right-click the activity in Monitor mode to see an indicator of how many instances there are.

![Number of Instances](images/Monitor_mode_node_instances.gif)

Select **Instances** to display the **Spawned Nodes** dialog, which lists details about each activated instance.

![Spawned Nodes](images/Spawned_nodes_IFM.png)

The following actions are available for a selected object instance, depending on its status:

|
Action

 |

Description

 |
| --- | --- |
|

**View Node Details**

 |

Opens the Properties dialog, which allows a designer to [view errors](Process_Errors.html#errors-on-attended-tasks) and change task properties, including the assignee, priority, deadline, and escalation settings.

-   When changing the assignment, the **Reassign Automatically** option removes the current assignment and send the task back to all original assignees. This option is mainly used for tasks that were originally assigned to a group.
-   When setting a new deadline, a future date must be selected. To remove an existing task deadline, clear the **Set deadline** checkbox.
-   Existing escalations can be skipped or triggered. Skipped escalations are canceled. Triggered escalations are executed immediately, using the configured settings.

 |
|

**Pause**

 |

Allows a designer to pause an active instance.

 |
|

**Resume**

 |

Allows a designer to resume a paused instance.

 |
|

**Cancel**

 |

Allows a designer to cancel active and paused instances or instances with errors. Once a quick task has been activated, it can be disabled or canceled by canceling all the active instances.

Appian also cancels any synchronous subprocesses running without autoscale enabled. Any pending tasks associated with those subprocesses will also be canceled.

These processes will _not_ be canceled:

-   Any synchronous subprocesses running with autoscale enabled.
-   Any synchronous processes started with the Start Process smart service. Any pending tasks associated with these processes will also not be canceled.

 |
|

**Trigger Schedule**

 |

Allows a designer to trigger the selected node immediately, if it's scheduled to start at a specific time.

 |
|

**Open Sub-Process Model**

 |

Shows the process model triggered by the subprocess node.

 |
|

**Open Sub-Process**

 |

Opens the selected subprocess instance in monitoring mode.

 |

After making changes, click **Close** to exit the dialog.

#### View and complete a form

To view and complete a form, right-click a flow object and select **View Form** to display the form. Users with the right to do so can complete the form.

## Edit mode

While viewing a process instance in **Edit** mode, you can make structural and configuration changes to the sequence flow in an active instance.

### Viewing a process in edit mode

To access Edit mode for a process instance:

1.  In the [navigation pane](common-view-elements.html#navigation-pane), click **Monitor**.
2.  Locate the process instance that you want to monitor.
3.  Click on the **Name** link.
4.  The process instance opens in Monitor mode in the Process Modeler. The current status of the flow objects are displayed.
5.  Click the dropdown in the top right of the Process Modeler and select **Edit Process View**.
6.  The process instance opens in Edit mode in a new tab of the Process Modeler.

In Edit mode, the Process Modeler displays a different set of toolbar options.

### Editing a running process

When you open a running process for editing, it [pauses the process](#pausing-a-process).

If there are multiple process instances at different steps, the following rules apply:

-   Instances are affected by changes to rules or other node changes once they reach the process step that corresponds with the node where the changes were made.
-   If you change the rules for a particular node, users who have already completed the corresponding process action are not affected. Only instances that have not yet reached the updated step are affected by the new rules.
-   Additional nodes and connectors can be added and business rules can be changed to send instances down a new process flow. Such changes are often best configured using an [Exception flow](Process_Node_and_Smart_Service_Properties.html#exceptions-tab).
-   Activating a timer event locks in a schedule for that event, which cannot be changed in an active process flow. You must delete and recreate the event to apply new timer settings.
-   To save the selected process instance as a new version, you must have the right to save changes in the Process Model Folder where the process model is stored. This is in addition to having administrator level access to an instance, and editor level access to the process model.

Two users cannot make changes to the same process instance at the same time; however, multiple users can edit different running instances of the same process model.

-   Depending on the [security rights](process-model-object.html#process-security) of the user, if a user attempts to change a process instance that is being edited, a message is displayed asking them whether they want to edit the instance anyway. If they choose to proceed, the first editor of the instance is prevented from making further edits. The new user can then make changes.
-   If the new user decides not to proceed with editing, the process instance opens in the Process Modeler in read-only mode.

#### Saving changes

Once you have made the desired changes, they can be applied to the process instance or saved to the process model. Both options are available under the **File** menu:

| Option | Description |
| --- | --- |
| **Apply Changes** | Changes are only applied to this particular instance of the process. They are not saved for later use. Future executions of the process will not reflect the changes made. |
| **Save New Version** | Changes are saved as a minor version update to the latest published version of the process model. Minor version updates must be published before they appear in new instances of the process model. The changes are also applied to this particular instance of the process. |

Once a process instance is modified, it is validated. Any validation errors are displayed on the Modeler interface. Validation errors must be resolved before changes can be applied to the instance or process model successfully.

## Debug mode

To iteratively develop and test your process models, you can debug a process instance directly within the Process Modeler.

Running a process in debug mode starts the process and performs the configured actions in the same manner as if it were started by a user. Any emails or alerts that you configure will be sent to the specified users. The process instance is opened in [monitor mode](#monitor-mode).

**Note:**  To avoid any problems when debugging your process model, make sure to **Save & Publish** it before selecting **Start Process for Debugging**.

If your process model uses a start form, it will launch the latest published version of your process model, but use the start form from its latest draft.

If your process model doesn't have a start form, Process Modeler will launch the latest draft when you **Start Process for Debugging**.

### Running your process in Debug mode

To run your process in Debug mode:

1.  With the process open in the Process Modeler, click **File > Save & Publish**.
2.  Click **File > Start Process for Debugging**.
3.  For each attended node, right-click the node and select **View Task Form**.
4.  Complete the form.
5.  Click **Submit**. Any errors are displayed. If your forms are activity-chained, the subsequent form is displayed. If the activity chain enters a **Subprocess** node, the subprocess opens in a new tab.
6.  View the task form for each attended node in your process.

### Viewing process errors in the Process Modeler

While viewing a process instance in the Process Modeler, you can view error messages for any problems that have occurred in the process to assist in debugging.

There are two ways to view the errors that have occurred in a process while in the modeler:

-   Double-click the node where the error occurred. The properties dialog of the node includes a tab called **Error**, which displays the error message.

    If the node was executed multiple times, you can drill down to the error message of an individual instance by right-clicking on the node, selecting the **Instances** option, and then finding the appropriate instance in the **Spawned Nodes** dialog.

    ![images:node_error_in_modeler.png](images/node_error_in_modeler.png)

-   The [**Process Details** dialog](#viewing-process-details) includes a tab called **Errors**. This view will show any unresolved errors that have occurred in the process. Select the **Show resolved errors** checkbox to see a full history of errors that have occurred in the process instance.

    ![images:process_details_error_dialog.png](images/process_details_error_dialog.png)

## Viewing process details

Once a process is started, process details are available to users with appropriate privileges when monitoring or editing the process instance.

The **Process Details** dialog serves as an administrative tool for process owners and other actors, who can use it to perform actions that affect the flow of a process. The actions that can be performed through this interface vary according to the security settings a user has for the corresponding process.

To view the **Process Details** dialog:

1.  In the Process Modeler, click the **Process Details** button in the toolbar. The process details dialog opens, with the tabs described below.

![images:process_details_highlight.png](images/process_details_highlight.png)

### Process history

The **Process History** tab allows you to view executed actions associated with the process, as well as the changes made by the process.

Process history data includes the following information:

| Property | Description |   |
| --- | --- | --- |
| Date Time | When the action occurred. The process data is sorted by this column in descending order (most recent action is listed on top). |   |
| Object | The process node that executed the action. |   |
| Action | The action that occurred. For example, Start, Complete, Retry, or Modify Variable. |   |
| Actor | The user or system that performed the activity. |   |
| Properties | The properties of the action taken, including the type and value of the process variable written by an action. If the variable's type is a record type, fields with changed values are indicated by a yellow arrow icon. Unchanged fields are marked with a gray circle. These icons have a special meaning when viewing [certain node outputs](Write_Records_Smart_Service.html#view-node-output-in-process-history). |   |

For changes to process variables that hold multiple values (or multiple items in a custom data type), only the first 100 items are retained in process history.

**Note:**  Process history can also be viewed from the [Process Activity](monitoring_view.html#process-activity) tab under the [**Monitor** view](monitoring_view.html). Archived processes are available in the Process Activity tab for Appian Cloud sites created with version Appian 21.1+. If you are an Appian Cloud customer and do not see archived processes, contact Appian Support. For self-managed customers, follow the steps [here](Configuring_Archived_Processes.html).

### Process variables

The **Variables** tab allows you to view and update process variables in the active process instance.

Each process variable is listed, along with its [data type](Appian_Data_Types.html), multiplicity, and current value. To edit a process variable, click the **Edit** link for the process variable.

**Note:**  If this link does not appear, you do not have sufficient user rights to edit the variable.

After clicking the link, the **Edit Process Variable** dialog is displayed. You can directly update the process variable value from here. Changes are immediately reflected in the process instance.

#### Updating complex data type and encrypted text variables

You cannot directly edit process variables that are complex data types or [Encrypted Text](Appian_Data_Types.html#encrypted-text).

In order to modify the value of a complex data type in a running process, you need to add a script task to your process model that stores the new value into the variable. To do this, use the Edit Process feature.

It is not possible to change an encrypted text value to another encrypted text value from the Process Details dialog. Instead, you can use a similar technique as the one described above for modifying values of complex data types. To do this, use the Edit Process feature to add a User Input task with a SAIL form that displays the encrypted text value and saves the updated value back into the process variable.

### Process nodes

The **Process Nodes** tab lists each node in a process. If an activity is executed multiple times, then multiple entries are listed for that activity.

By default, this list does not include nodes associated with any subprocesses. You can view the subprocess nodes by selecting the **Show nodes from subprocess** checkbox. These nodes can be distinguished by the Process ID and Process Name columns. All nodes from a subprocess will have different IDs and names than nodes that reside in the parent process.

**Note:**  When this checkbox is selected, nodes from nested subprocesses are also displayed. Up to 10 levels of nested nodes are displayed.

Each of the nodes is listed in a table that displays the following columns:

-   Node Name
-   Status
-   Owner
-   Priority
-   Time: when the node was started
-   Duration: how much time was spent during node execution
-   Process ID: The local ID of the process associated with the node.
-   Process Name: The name of the process associated with the node.

**Note:**  [Gateway nodes](Gateways.html) can be evaluated multiple times in a process instance if they are set up on a loop of a process model. In such cases, the node is only listed once on this tab. The duration for the gateway node is the time from when the node is first initialized to when it is completed for the last time. This includes the time lapsed between the first and last evaluation.

Each node listed on this tab has additional actions available to Managers, Editors, and Administrators of the process. Selecting the checkbox associated with a node displays the actions that are available to the user.

The following options are only available to Process Administrators, System Administrators, and the Administrator account:

-   Start
-   Pause (only applies to active nodes)
-   Cancel (only applies to active nodes)

### Current tasks

The **Current Tasks** tab displays all active tasks for the process. To view or complete a task that you have permissions to, click the task name. Depending on permissions, you can also reassign or cancel a task from this tab by selecting the checkbox next to it.

### Errors

The **Errors** tab displays all active errors for the given process. Each of the errors is listed in a table that displays the following columns:

-   Node Instance
-   Error
-   Occurred date and time

By default, this list does not include resolved errors and errors associated with any subprocesses. You can view the resolved errors by selecting the **Show resolved errors** checkbox.

See also: [Process Errors](Process_Errors.html)

### Subprocesses

The **Subprocesses** tab displays all subprocesses that have been triggered by the given process are displayed. Clicking on a subprocess will open the subprocess in Monitor mode.

See also: [Subprocess](Sub-Process_Activity.html)

### Quick Tasks

The **Quick Tasks** tab displays all of the quick tasks that have been activated by the current process. The grid lists the task name, the date and time at which the task was enabled, and the users who have the right to view and complete the quick task.

By default, the tasks displayed within the grid are sorted by **Task Name** in descending order. You can sort the table by any of the column headers.

To view or complete a quick task, click the task name. After submission of a quick task, a new task instance is automatically generated and listed on the tab.

See also: [Creating a Quick Task](Process_Model_Recipes.html#creating-a-quick-task)

## Navigation in the Process Modeler

When viewing a process instance in the Process Modeler, you can easily navigate to the process instance's parent instance and its process model or switch between the different modes.

To navigate to the process instance's parent process:

1.  Open the **File** menu.
2.  Click **Open Parent Process**.
3.  The process instance's parent will open in a new tab in the Process Modeler in Monitor mode.

To navigate to the process instance's process model:

1.  Open the **File** menu.
2.  Click **Open Process Model**.
3.  The process instance's process model will open in a new tab in the Process Modeler.

To switch between **Monitor** mode and **Edit** mode:

1.  Click the dropdown in the top right of the Process Modeler.
2.  Select the mode to switch to, either [Monitor](#monitor-mode) or [Edit](#edit-mode).
3.  The process instance opens in the selected mode in a new tab of the Process Modeler.

Once you have completed monitoring or editing a process instance, you can exit the Process Modeler by clicking **x** on the top-right corner of the tab.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...