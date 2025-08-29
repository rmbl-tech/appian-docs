---
source_url: https://docs.appian.com/suite/help/25.3/Process_Node_and_Smart_Service_Properties.html
original_path: Process_Node_and_Smart_Service_Properties.html
version: "25.3"
title: "Process Node Properties"
page_id: "Process_Node_and_Smart_Service_Properties"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Process Node Properties

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page covers the various features and settings found in the dialog displays of process model properties. To learn more about the properties available for particular nodes and smart services, check out the individual node or smart service [page](Smart_Services.html). See [process model properties](process-model-object.html#process-model-properties) if you are looking for more information regarding those tabs.

## General tab

**Note:**  When multiple languages are enabled in the application, subtabs representing each enabled language will appear.

The **General** tab can be found on every node and smart services and contains some or most the following parameters:

| Options | Where Found | Description |
| --- | --- | --- |
| **Name** | All activities | The name of the activity as it appears in the Process Modeler. |
| **Description** | All activities | A description of the node activity. |
| **Task Display Name** | All activities except for events | The name of the task (or activity) as it appears in a user task queue or task reports. Can be created using an expression. |
| **Default Task Priority** | All attended activities | The default task of a particular activity. |
| **Quick Task** | All attended activites | Sets an activity as a [Quick Task](Process_Model_Recipes.html#creating-a-quick-task), which will allow the activity to be available on-demand. When the activity has no incoming flow, the quick task will be available as soon as the process starts. If there is an incoming flow, the quick task will not be available until activated by the incoming flow. |
| **Persistent\_ID** | Certain events | (_Read Only_) and id associated with the activity. Used for [email](Sending_an_Email_Message_to_a_Process.html) and [JMS](Working_with_the_Java_Messaging_Service.html) routing. |
| **End Condition** | End event only | Simliar to the task display name, the name of a certain end event. Used when reporting on completed processes and the end event reached needs to be known. |
| **Activity Chaining** | Start event only | Allows activity chaining through the start event from a previous process. |

## Data tab

The **Data** tab within a node's properties can be found in all activities except for [subprocesses](Sub-Process_Activity.html), [events](Smart_Services.html#Standard_Nodes) and [gateways](Smart_Services.html#Standard_Nodes). The **Data** tab contains two configurable sections: [Node Inputs](#node-inputs) and [Node Outputs](#node-outputs).

To see specific details about configurations in the **Data** tab of a particular smart service, visit that smart service's reference page.

### Node inputs

![blank Node Inputs](images/node_inputs_blank.png)

The node inputs section of the **Data** tab support the display, creation, and management of activity class parameters. Clicking on **New Input** will create a new activity class parameter. The selected nodes will appear highlighted.

![example activity class](images/example_activity_class.png)

From this the following field properties can be defined:

| Field Property | Description |
| --- | --- |
| **Name** | The name of the activity class parameter. |
| **Type** | The [data type](Appian_Data_Types.html) of the activity class. |
| **Multiple** | Checked if the activity class should support multiple values. |
| **Value** | The default value of the activity class. Evaluated at the start of the activity. |
| **Required** | Checked if the activity class should be required _and_ the source of the activity classes value does not perform this validation. |
| **Save Into** | The process variable to save into. Can be selected or can be created by clicking on the **New Variable** icon ![images:New_process_variable_button.gif](images/New_process_variable_button.gif). When you create a process variable using this method, the data type of the process variable you create cannot be changed. It is automatically assigned the same data type as the node input. |

Activity class parameters can be saved into process variables for use in other nodes, or they can provide data for the node to process.

**Tip:**  **When should I create a new activity class parameter?** For attended nodes, where a user is expected to submit a form before continuing a process, create an activity class parameter for data _produced_ from the form (read-only data does not need an activity class parameter). For unattended nodes, where the system will execute the activity, create activity class parameters when the node requires additional values before executing (for example, CDT data for the write to data store entity smart service).

To delete an activity class parameter, select the node input and click the **Delete Input** button. If the activity class parameter is marked as required, it will not be deleted.

Appian Smart Services include activity class parameters that have already been created to help you configure the activity. These activity class parameters cannot be deleted. However, depending on the smart service, additional activity class parameters should be created.

**Note:**  There is no guarantee as to the order in which expressions for node input values will be evaluated. It should be assumed that they are evaluated simultaneously. Therefore, you should not use or reference node inputs in an expression for the **Value** field of another node input within the same node.

Expressions for node input values are evaluated **before** expressions on the form. If the default values of form fields are mapped to activity class parameters, they are evaluated at the same time as the node inputs. Therefore, they must not reference other activity class parameters.

#### Saving activity class parameters to process variables

You can save the value of an activity class parameter into a process variable of the same data type and cardinality (whether or not the variable accepts multiple values) using the **Save Into** field that appears on the property sheet associated with the activity class. If the process variable has the same data type but stores multiple values, it does not appear on the **Save Into** list. If so, you must use a [custom node output](#node-outputs) to update the process variable with your node input data.

The save evaluation occurs at the end of the activity. This means, you cannot store a value in a process variable and use that updated value within an expression in the same node. Values entered into a form are only saved into their configured process variables when the user submits the form. As a result, you cannot report on values entered into a form which is saved but not submitted.

When saving a value from a custom data type, you have a number of options.

-   Save the entire data set into a complex process variable.
-   Save individual elements into a complex process variable.
-   Save individual elements into a process variable with a system type.

### Node outputs

![images:node_output_blank.png](images/node_output_blank.png)

Node outputs can be used to store the data processed by your node using an expression. There are two types of node outputs: [Results](#results) and [Custom Outputs](#custom-outputs). The expression and save evaluations of either do not occur until the end of the activity.

#### Results

Many smart services automatically generate result data. Results are activity class parameters; however, they cannot be used in expression editors outside of the node outputs section.

Results can be mapped to process variables similar to node input activity class parameters. However, depending on the result, developers can select a particular type of save operation.

-   A pre-configured result that has a single value can only be stored as a single-value PV (using the **is stored as** operator).
-   Multiple results can be stored as multiple-value process variables, or appended to a list of multiple PVs.
-   Single-value preconfigured results cannot be appended to a list of multiple-value PVs.

If some other type of save operation is desired, developers can create a _Custom Output_ expressions to append a single return value to a multiple value process variable with a compatible data type.

#### Custom outputs

![custom output examples](images/custom_output_example.png)

Custom node outputs provide a more flexible way to handle data than node inputs. Developers can create a new custom output by clicking **New Custom Output**. The selected nodes will appear highlighted.

Within a custom output's **Expression** field, developers will have access to all process variables, activity class parameters, task properties, process properties, and process model properties.

Developers can select one of the following options from the **Operator** list. This list varies according to the data type of the target process variable. All data types allow you to use the following operators:

-   is stored as
-   is stored at index
-   is appended to list

If the output is mapped to a process variable with a **number** or **decimal** data type, the following additional operators are enabled:

-   is added to
-   is subtracted from
-   is multiplied by
-   is divided into

When selecting a process variable to save into, all process variables in the process model are available the **Target** field. If a single node output encounters an error that prevents it from writing its value to a process variable, none of the node outputs are written.

## Forms tab

**Note:**  When multiple languages are enabled in the application, subtabs representing each enabled languages will appear.

The **Forms** tab allows a developer to associate an interface to an attended activity. The **Forms** tab appears on all non-event and non-gateway activities.

![Forms Tab Default 2](images/Forms_Tab_Default_2.png)

For detailed information about how to design interfaces, including how to enable user interactions, how to save and validate user inputs, and how to submit user inputs to process, see the [Interface Object](interface_object.html) page.

### Form setup

On the **Forms** tab, you can select an existing interface or create a new interface.

#### Option 1: Select an interface

Use this method if you created an interface before creating your process model.

To select an existing interface:

1.  On the **Forms** tab, use the picker or the directory icon ![](images/Directory_Icon.png) to search for and select an interface.
2.  Select whether to automatically or manually create process variables:
    -   To automatically create process variables to match your interface's inputs, click **YES**.
    -   To manually create process variables to map to the interface inputs, click **NO**.

**Note:**  When making this selection, keep in mind:

-   Any Type is not a supported data type in the Process Modeler. No activity class parameters or process variables will be created for Any Type inputs, so you will have to manually map them.
-   Rule input names need to be at least three characters long in order to be automatically associated with a new activity class parameter.

![Forms_Tab_Imported_Inputs](images/Forms_Tab_Imported_Inputs.png)

The values seen in the rule input table are activity class parameters of the same data type. Rule inputs can also be mapped via an expression by clicking on the expression editor icon ![](images/Exp_editor.gif).

Activity Class Parameters can also be configured directly from the **Forms** tab by clicking on the add icon ![](images/Forms_Tab_Plus_Icon.png) in any rule input row. Besides the data type and multiple option being locked, you can perform the same functions within this modal as the [**Data** tab](#data-tab).

#### Option 2: Create interface

If you start development with a process model, you can create an interface from the **Forms** tab. The new interface uses existing activity class parameters.

To create an interface:

1.  On the **Forms** tab, click **Create Interface**.
2.  Add a name, description, a rules folder to save into, as well as an application to store the new interface. By default, the **Rule Input Name** column will correspond the node input names, but you can change these values as needed.

    For example:

    ![Forms Tab Create Interface](images/Forms_Tab_Create_Interface.png)

3.  Click **OK**. Appian generates a blank interface with rule inputs added.

To open the new interface, click **EDIT INTERFACE** on the **Forms** tab.

### Other form considerations

#### Allowing users to save a draft

The checkbox "Allow users to save a draft of in-progress tasks" creates a button on a user input form that will allow users to save a draft of their progress and come back to the form later. If a draft is saved, values will be stored in the activity class parameters. This allows users to save a draft of the data entered in a form, close their browsers, and come back to it later without losing information.

![](images/Forms_Tab_Allow_Users_Checkbox.png) ➔ ![](images/Save_Draft_Icon.png)

#### Capturing location on task submission

The checkbox "Capture location on submission (only supported in Appian Mobile)" captures the location where the User Input Task is submitted. The location is stored in a result called 'Submission Location' which can be accessed from **Data** tab under the [Node Outputs](#node-outputs) section. To reference the submission location elsewhere in the process model, the [**Submission Location** result parameter must be mapped](Configuring_the_User_Input_Task.html#capturing-task-submission-location) to a process variable.

![Forms Tab Capture Location Checkbox](images/Forms_Tab_Capture_Location_Checkbox.png)

#### Clearing interfaces

The **Clear** icon next to the interface picker resets the interface rule invoked on the **Forms** tab.

![Clear icon](images/Clear_Icon.png)

While this will clear out the interface used, any node inputs created during the process of interface integration will remain. If these node inputs are not desired anymore, they must manually be deleted from the [**Data** tab](#data-tab).

#### Updating interfaces

If you add or remove inputs from your interface, click the "Refresh" button on the **Forms** tab to keep the mappings in sync.

-   If you add a new rule input, you will be prompted to import it as a new input.
-   If you deleted an rule input, the mapping will be removed.
-   If you updated the data type of an existing mapping, the change will be indicated so you can make the appropriate changes.

## Scheduling tab

The **Scheduling** tab lets developers configure delay and periodicity values for the activity. The **Scheduling** tab appears on all non-event and non-gateway activities.

![Scheduling tab blank](images/scheduling_tab_blank.png)

You can start a node at a specific time on a certain date using the options on this tab. These options configure a timer event that starts when the node is first activated.

The node is then restarted every time the scheduled interval is reached, even if there are active instances of the node that are already running.

When an activity is scheduled, a clock marker is displayed on its border. The activity must be active in order for the schedule to be triggered. If an [End Event](End_Event.html#adding-a-terminate-process-trigger) is configured to terminate the process, the schedule is also terminated.

**Note:**  Scheduling cannot be configured when the process model has autoscale enabled.

### Scheduling an activity

To schedule an activity, select the **Don't start this node until:** checkbox. You can specify either a time period for the execution of the node relative to the completion time of the last node or the date and time specified through an expression, which is evaluated at run-time.

### Starting an activity on a regular interval

To repeat an activity on a particular schedule, select the **Repeat this node** checkbox. Calendar options of the following periodicities are enabled: _Daily_, _Weekly_, _Monthly_, _Yearly_, or at an **Interval**.

When setting a recurring you can select the time zone used for the schedule, after selecting (or typing) the time of day. The `pp!timezone` property is listed as the default [Time Zone Context](Time_Zone_Context.html) for setting a recurring interval. Developers can select the **Repeat until** checkbox to set the reoccurrence.

When activities have been configured to execute on a recurring schedule, it is possible to manually trigger or skip a recurrence.

## Assignment tab

The **Assignment** tab allows you to make a particular person or group responsible for a particular task within a process model. The **Assignment** tab appears on all non-event and non-gateway activities.

![Assignment tab attended](images/assignment_tab_attended.png)

An activity can be attended (requiring that a user perform a task) or unattended (using system logic to perform the task).

### Attended activities

Developers can select users and groups for task assignment on this tab, or you can use a [swimlane](process-model-object.html#menu-bar-options) to set task assignment. If a lane assignment is configured, you must select the **Override lane assignment for this node** checkbox in order to specify different task assignees for this activity.

Developers should use either groups or a data-based user value (such as `pp!initiator`) to assign an activity to someone.

For attended activities, developers can specify whether or not the assignees of a task can reject it or reassign it by clicking the **Set re-assignment privileges for assignees** link. The following options are displayed (users with manager or higher privileges to the process can always reassign tasks):

| Option | Description |
| --- | --- |
| ![Task reassignment none.gif](images/Task_reassignment_none.gif) | Select this option to deny an assignee the ability to reject or reassign the task. |
| ![Task reassign.gif](images/Task_reassign.gif) | Select this option to only allow users to reject the task. Users cannot reassign the task. |
| ![Reassign to group.gif](images/Reassign_to_group.gif) | Select this option to allow users to reject or reassign the task back to one or more original assignees. |
| ![Task reassign all.gif](images/Task_reassign_all.gif) | This is the default option and allows users to reject or reassign tasks to anyone. |

### Unattended activities

With an automated (unattended) activity, developers are given the option of either selecting **Run as whoever started this process** (the Process Initiator) or **Run as whoever designed the process model** (the Process Designer).

The unattended activity will be executed with the permissions of the selected user.

![Unattended Node Assignment](images/Unattened_node_assignment.png)

If an activity is run unattended, the relevant node inputs on the **Data** tab must have assigned values. The activity must complete within 60 minutes or the process will pause by exception.

**Note:**  Unattended activities are executed in a first-in-first-out order with a lower priority than attended activities and other direct interaction from users. Resources allocated to unattended activities are capped to ensure that the system is responsive to any users interacting with it.

### Advanced options

There are two addition options on the **Assignment** tab allow developers to automatically correlate task assignments and assignees, as well as enable or disable email and mobile push [notifications](Notifications.html) to task assignees:

-   The **When executing more than once…** option allows you to assign multiple tasks (one to each user) when there are multiple users and multiple instances.
-   The **Notify task assignees of new task via email and mobile push notification…** option allows you to enable or disable email and mobile push [notifications](Notifications.html) for attended tasks on a per-task basis. By default, assignees receive email and mobile push notifications. Disabling this option gives you the ability to avoid sending notifications to users who regularly check their tasks and thus would perceive these notifications as unnecessary.

## Escalation tab

If a task or process node is delayed for any reason, configurations in the **Escalations** tab can automatically take a number of actions to solve the problem. An escalation can be configured for any attended node. Besides this configuration escalations can also be triggered manually, or by configuring an Escalation Timer Event.

![blank Escalations tab](images/escalation_tab_blank.png)

### Escalation timer levels

Clicking the **Add Escalation** button ![images/Add_escalation.gif](images/Add_escalation.gif). The Level 1 Escalation options appear. Multiple levels of escalation can be added.

**Note:**  If multiple escalation levels are selected, the timer on the second level escalation (and any subsequent level) will not start until the previous level is triggered.

The timer for the escalation is set by clicking the **Configure** link in the configure the timer event options. The **Timer Event** dialog is displayed, which is identical in configuration to a [timer event](Intermediate_Event_-_Timer.html).

### Escalating options

If an escalation is triggered, one of four actions can be triggered to occur:

-   **Reassign the task to someone**: The task can be reassigned to any user and or group.
-   **Change the priority of this task**: The task priority (tp!priority) can be raised or lowered.
-   **Send Alert**: The activity will send an alert to a number of recipients.
    -   When selected, an _Alert Message_ dialog will pop-up, which will allow developers to configure a custom alert message.
-   **Sent Message Event**: The task can trigger a [Send Message Event](Send_Message_Event.html) to another process.

## Exceptions tab

The **Exceptions** tab lets developers create alternative workflows from an activity based on configured conditions. The **Exceptions** tab appears on all non-event and non-gateway activities.

![blank Exceptions tab](images/exception_blank.png)

When an exception event is added, a marker representing the event appears on the border of the activity. One or more events can be added to an activity. To create an exception flow, connect the marker to a flow within the process model. The connection between the marker and the flow is shown in red, to indicate an (alternate) exception flow.

![exception flow example](images/exception_flow_example.png)

Three exception types can be configured:

| Exception Type | Icon on Canvas | Description | Configured Like |
| --- | --- | --- | --- |
| **Receive Message** | ![images:message-consumer.gif](images/message-consumer.gif) | Based on the receipt of a message from another process, stop this activity and proceed to the next node in the exception flow. | [Receive Message](Receive_Message_Event.html) |
| **Timer** | ![images:timer-consumer.gif](images/timer-consumer.gif) | Based on a certain amount of time, stop this activity and proceed to the next node in the exception flow. | [Timer](Intermediate_Event_-_Timer.html) |
| **Rule** | ![images:rule-consumer.gif](images/rule-consumer.gif) | Based on whether a condition has been met, stop this activity and proceed to the next node in the exception flow. | [Rule](Rule_Event.html) |

### Considerations

-   Activity-chaining cannot be configured on exception flows.
-   Other actions configured within an activity are skipped when an exception flow is taken.
-   Intermediate events are evaluated as soon as your process flow reaches the activity.
    -   The user who starts a process receives an alert whenever an exception is triggered.
    -   The triggers for intermediate events are evaluated upon activation of an activity. If the trigger is true, the activity is interrupted/cancelled, and the exception flow is activated.
    -   On an unattended activity, the activity and the exception triggers are started at the same time. It is not possible to determine which one completes first. This applies to Rule Events (as well as any Timer Events that have met their schedule conditions prior to node activation).
    -   Configuring the Exception Flow on the subsequent node in your process ensures that an exception rule is evaluated in proper sequence for an unattended node.
-   Although multiple events can be added, you can only configure one exception flow per activity. The execution of any of the events configured within the activity results in the same exception flow being taken.
-   All events configured within an activity are evaluated before it is executed. Should any of the events execute, the process activity is not executed. The normal flow is skipped and the exception flow is taken instead. When an exception flow is taken, the process initiator is sent a portal alert.
-   Exceptions cannot be configured when the process model has autoscale enabled.

## Other tab

The **Other** tab allows developers to configure [multiple instances](#multiple-instances), set deadlines for node completion and manage node execution options. The other tab appears on all non-event and non-gateway activities.

### Multiple instances

In your Process Model, you can run the same task [multiple times](Process_Model_Recipes.html#using-multiple-node-instances-in-your-process-flows). There is no set limit on the number of times that the task can be spawned, however, the default limit on the number of times a node can execute is 1000.

![images:mni_blank.png](images/mni_blank.png)

When a developer selects the **Automatically run multiple instances of this node** checkbox, they can choose to run instances by: integer value, a process variable that's a number, the number of values a process variable array value, or based of an expression.

Instances can run one at a time or all at the same time. When a developer selects **Run all instances at the same time**, a developer also has to choose when to move on:

-   Each time an instance finishes.
-   When the first instance completes
-   When all instances completes
-   When _n_ number of instances complete

For subprocess nodes, you can run more instances than the [configured Maximum Activity Instances Value](Post-Install_Configurations.html#maximum-activity-instances). This can be helpful if you are using robotic process automation (RPA) and you have a robotic task in a subprocess that needs to run more than 1000 times.

To enable this in a subprocess, select **Automatically run multiple instances of this node**, then select **Allow more than 1000 instances of this node**. Once enabled, Appian will run the instances in batches of 1000 for efficiency.

![MNI subprocess](images/mni_subprocess.png)

Enabling this configuration automatically selects **Run all instances at the same time** and **Move on when: All instances are done**. In [Execution Options](#execution-options), it also selects **When this node is completed: Delete previously completed/canceled instances**. These configurations cannot be changed when running more than 1000 instances.

**Tip:**  If you deselect **Allow more than 1000 instances of this node**, the above configurations will still be enabled. You may want to change these depending on your needs.

### Deadlines

You can set deadlines on each activity in a process model. This information is mainly used in reporting. For example, in a task report, a new data element can be added that lists the deadline of a task.

When a deadline is set within a node that is configured to run multiple instances, the deadline is applied to each instance of the node.

![task deadline wizard](images/Task_deadline_wizard.png)

Select the **Enable deadlines** checkbox to enable deadlines. A deadline can be relative to when a task was issued, or it can be set to a specific date.

### Execution options

You can configure various runtime and data-retention options for a node, in the Execution Options group box.

![task execution options](images/TaskExecutionOptions.png)

| Exception Option | Description |
| --- | --- |
| **Refresh default values every time the task form is viewed** | When this option is set, the default values in a task form are re-evaluated each time the task is viewed. If this checkbox remains cleared, the default values in the task form display the data only as it was evaluated when the task was first issued. |
| **Confirmation URL** | _Deprecated_ Applies to custom pages. |
| **Allow users to step back to this node from the next chained activity** | Allow users to go back to a previous chained node. |
| **When this node is completed: delete previously completed/canceled instances** | All completed instances are deleted, except the current (most-recently activated) one. Once deleted, prior instance data can no longer be used for reporting or for the auditing of completed processes. If the node is a synchronous Subprocess Node, this option also deletes the process instance that was started by the Subprocess node. |
| **Keep a record of the form as submitted for future reference** | When this option is selected, the node inputs and node outputs are saved for future reference (such as auditing an exact copy of the form that was submitted). If this option is not selected, the node inputs and node outputs are deleted upon node completion. Another way to retain important information from a process (for archival purposes) is to save the relevant data into process variables. This allows you to create a report or view the process history to examine the data. |
| **When this node is re-executed: do not create if active instances exist** | If a node is reactivated (such as in a looping process flow) additional copies of the task only start if there are no other active copies of the task. |
| **When this node is re-executed: Delete previous instances that are still active.** | If this option is selected, relaunching a task causes all prior instances of the selected task to be removed from the system. |

## Setup tab

Some activities also have a **Setup** tab. The **Setup** tab is used to pre-configure the activity with certain values and parameter. Many, but not all **Setup** tabs, will impact what is seen on the **Data** tab.

![blank Setup tab](images/setup_tab_blank.png)

The following table describes briefly what can be found on each setup tab. Click on each activity link for more specific information.

| Activity or Smart Service | Description of the setup tab |
| --- | --- |
| **[Write Records](Write_Records_Smart_Service.html)** | Tab where developers specify the data to write and the corresponding [record events](record-events.html) to write. |
| **[Subprocess](Sub-Process_Activity.html)** | Calls a process model from which developers can, among other things, associate parent process variable to child parameters. |
| **[Execute Process Reports](Execute_Process_Report_Smart_Service.html)** | Calls a process report and lets developers determine a max number of rows. |
| **[Send E-mail](Send_Email_Smart_Service.html)** | Tab where developers can specify sender information like the from/to and subject fields, enter an e-mail body message, use an e-mail template and runtime template, and define substitution keys. |
| **[HTML Doc from Template](HTML_Doc_From_Template_Smart_Service.html)** | Imports an HTML template and allows developer to associate process data to the template. |
| **[MS Word Doc from Template](Word_Doc_from_Template_Smart_Service.html)** | Imports a Word Doc template and allows developer to associate process data to the template. |
| **[Open Office Doc From Template](Open_Office_Writer_Doc_From_Template_Smart_Service.html)** | Imports an Open Office template and allows developer to associate process data to the template. |
| **[PDF from Template](PDF_Doc_From_Template_Smart_Service.html)** | Imports a pdf template and allows developer to associate process data to the template. |
| **[Text Doc from Template](Text_Doc_From_Template_Smart_Service.html)** | Imports an text file template and allows developer to associate process data to the template. |
| **[Call Integration](Call_Integration_Smart_Service.html)** | Calls an [integration object](Integration_Object.html) and sets up the activities' **Data** tab accordingly. |
| **[Call Web Service](Call_Web_Service_Smart_Service.html)** | Calls an external web service and sets up the activites' **Data** tab accordingly. |
| **[Query Database](Query_Database_Smart_Service.html)** | Setups the database connection and SQL statements to run. |

## Event tabs

[Events](Smart_Services.html) also have particular properties. The following table describes briefly what can be found on each event tab. Click on each activity link for more specific information.

| Event | Tab Name | Description |
| --- | --- | --- |
| **[End](End_Event.html)** | Setup | Setup a subprocess to start a child process when the end event is reached. |
| **[End](End_Event.html)** | Result | Lets developers configure a send message event or terminate event |
| **[Receive Message](Receive_Message_Event.html)** | Setup | Determine and configure the type of incoming message to activate the node. |
| **[Receive Message](Receive_Message_Event.html)** | Result | Configures how data will be saved into the process. |
| **[Rule](Rule_Event.html)** | Setup | Lets developers configure conditions to allow the flow to continue. |
| **[Send Message](Send_Message_Event.html)** | Setup | Determines the receive message event that this node will reach out to. |
| **[Send Message](Send_Message_Event.html)** | Data | Determine the data sent to the receive message event |
| **[Start](Start_Event.html)** | Triggers | Allows the start event to be triggered as a receive message event or a timer based event. |
| **[Timer](Intermediate_Event_-_Timer.html)** | Setup | Works similar to the [scheduling](#scheduling-tab) of other activities. |

## Gateway Decision tab

In addition to a **General** tab, each gateway also includes a **Decision** tab. With the exception of the AND gateway, the **Decision** tab contains a **Conditions** section where developers can create logical statements that control workflow. For more information about how to configure each gateway, see that [gateway's page](Smart_Services.html).

![images:decision_tab_blank.png](images/decision_tab_blank.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...