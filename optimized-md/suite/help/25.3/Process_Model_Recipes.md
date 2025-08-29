---
source_url: https://docs.appian.com/suite/help/25.3/Process_Model_Recipes.html
original_path: Process_Model_Recipes.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Common Process Model Workflows and Recipes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Process models are incredibly flexible regarding the functionality and workflows you can construct. While the possibilities are endless, there are many common workflows you'll likely need to implement, regardless of the type of application you are building.

This page will highlight some common workflows that are used in many Appian applications today.

## Assigning a task to every member in a group

You can assign the same task to everyone in a group. There are two things you need to do to achieve this:

-   Spawn a separate instance of the task for every member in the group.
-   Assign each task to a different group member.

### Configuring the node to spawn multiple instances

To configure a node that spawns multiple instances:

1.  In the Process Modeler, create a task and add it to your process model.
2.  Double-click the task node. The node configuration dialog displays.
3.  Go to the **Other** tab.
4.  Select the **Automatically run multiple instances of this node** option.

![one_per_assignee.png](images/Process_Model_Recipes/one_per_assignee.png)

Learn more about [multiple node instances](looping.html#multi-node-instances).

### Assigning each task to a different group member

To assign each task to a different group member:

1.  On the **Other** tab of the node configuration dialog, click **Run one instance for each assignee**.
2.  Click **Run all instances at the same time**. This option must be selected, or each task after the first will wait for the prior to complete before being assigned.
3.  Go to the **Assignment** tab.
4.  Enter the name of a group in the **Assign to the following** field. You can also enter multiple user names or group names.
5.  Select the **There should be one-to-one assignment…** option. This option must be selected, or each member of the group will receive multiple copies of the task.

![one_to_one_assignment_tab.png](images/Process_Model_Recipes/one_to_one_assignment_tab.png)

## Escalating a task

If a task or process node is delayed for any reason, you can automatically take a number of actions to solve the problem.

Available escalations include:

-   Reassign to another user or group.
-   Raise or change task priority.
-   Alert a user or group.
-   Notify another process.

Escalations can be triggered manually, or by configuring an Escalation Timer Event.

### Configuring an escalation timer

To configure an escalation timer:

1.  On the designer canvas, right-click a node on the designer canvas, then select **Escalations**. Any existing node escalations are displayed.

2.  Click **Add Escalation** ![add escalation button](images/Add_escalation.gif). The **Level 1 Escalation** options appear. You can add multiple levels of escalation actions.

3.  Under **Configure the Timer Event**, click **Configure** to set the timer for the escalation. The **Timer Event** dialog displays. The timer event has been automatically assigned a name (`escalation_timer_#`).

4.  (Optional) Change the timer event name.

5.  Go to the **Setup** tab.

    ![](images/Escalation_configure_timer_event_and_timer_conditions.png )

6.  Under **Timer Escalation Activation**, use the options to set a timed delay:
    -   Keep the default **Escalate** option selected.
    -   Enter a number in the field provided, or click to define an expression.
    -   Select **Minute(s)**, **Hour(s)**, **Day(s)**, or **Month(s)** from the dropdown list.
7.  (Optional) To keep timer events from counting weekends, use the [a!addDateTime()](fnc_date_and_time_adddatetime.html) function and ensure your [process calendar settings](Process_Calendar_Settings.html) exclude weekends from your environment's working hours.

    For example, if you want to trigger an escalation four days after the start of the node—excluding weekends—select the **Escalate at the date and time…** option. Enter the following expression in the text field:

    ```
    1
    2
    3
    4
    5
     a!addDateTime(
       startDateTime: now(),
       days: 4,
       useProcessCalendar: true
     )
    ```

    Any non-working days defined in the process calendar are excluded from the escalation timer when the `a!addDateTime()` function is used.

8.  (Optional) Select the **Recurring Timer Escalation** checkbox to trigger the event on a repeating schedule, then select from the following options:

    | To repeat the task | Select |
    | --- | --- |
    | Every **_n_** number of days, every weekday, or at a certain time of day. | **Daily** |
    | Every **_n_** number of weeks, at a specific time, on a specific day of the week. | **Weekly** |
    | At a certain time, on the **_n_**th day of the **_n_**th month, or on the **_n_**th day of the week (such as the 3rd Sunday) of the **_n_**th month | **Monthly** |
    | At a certain time every year: on the **_n_**th day of a month, or on the **_n_**th day of the week (such as the 3rd Sunday) of the **_n_**th month | **Yearly** |
    | Every **_n_** number of minutes or **_n_** number of hours | **At an interval** |

### Creating an escalation timer condition

To create an escalation timer condition:

1.  In the node configurations dialog, go to the **Escalations** tab.
2.  Click **Show Advanced Options**.
3.  Under **Timer Conditions**, click **New Condition**. A row is added to the conditions list, containing three fields to configure.
4.  In the first field, select the process variable you wish to use for comparison.
5.  In the second field, select the logical operator you wish to use for the condition:

    | Operator | Description |
    | --- | --- |
    | \= | equal to |
    | <> | not equal to |
    | < | less than |
    | \> | greater than |
    | <= | less than or equal to |
    | \>= | greater than or equal to |

6.  In the third field, enter the value you wish to compare against a process variable. If these values match, the condition evaluates as true and the timer event starts.

### Escalating by reassigning a task to another user or group

To escalate by reassigning a task to another user or group:

1.  In the node configurations dialog, go to the **Escalations** tab.
2.  Under **What action should be taken?**, select **Reassign task**. 1.Select the user(s) or group(s) to reassign the task to, using either of the following methods:
    -   Click **Directory**, then browse to and select the desired users or groups.
    -   Click to open the expression editor, define an expression, then click **SAVE AND CLOSE**.

### Escalating by raising or changing task priority

To escalate by raising or changing the task priority:

1.  In the node configurations dialog, go to the **Escalations** tab.
2.  Under the **What action should be taken** options, select **Change the priority**.

    ![](images/Add_escalation_wizard.png )

3.  Select one of the following options:

    | To | Select |
    | --- | --- |
    | Raise task priority one level |
     |
    | Lower task priority one level |

     |
    | Reset the task priority to High, Normal, or Low. | **Change priority** and Select **High**, **Normal**, or **Low** from the pull-down list. |

### Escalating a task by alerting a user or group

To escalate a task by alerting a user or group:

1.  In the node configurations dialog, go to the **Escalations** tab.
2.  Under the **What action should be taken** options, select **Send Alert**. The **Alert Message** dialog displays.

    ![](images/Alert_message_dialog.png )

3.  In the **Recipients** field, begin to enter the name of a user to notify. A list of users displays.

    ![](images/Type_ahead.gif )

4.  Press the **DOWN ARROW** key to select the desired user. — or —
    If you want to select more than one user, create a process variable to represent each user. Enter the name of the process variables in the **Recipients** field separated by commas. For example:

    ```
    1
    ={pv!user1,pv!user2,pv!user3}
    ```

5.  In the **Subject** field, modify the message subject to suit your escalation requirements.

    The default text is an expression that inserts the task name property `&tp!name` and the process name `&pp!name` into the subject. All displayed text is surrounded by quotation marks, and can be directly edited in the **Subject** field.

6.  Enter the body of your escalation message where the `Task Escalation Notice` text displays.

### Escalating a task by messaging another process

To escalate a task by messaging another process:

1.  In the node configurations dialog, go to the **Escalations** tab.
2.  Under the **What action should be taken** options, select **Send Message Event**. The **Edit Send Message** dialog displays.

See the [Send Message Event](Send_Message_Event.html) help topic for more information on configuring a message escalation.

## Using multiple node instances in your process flows

You can execute any activity multiple times in the same process flow by using the Multiple Node Instances (MNI) functionality. [Learn more about MNI and other looping designs](looping.html#multi-node-instances).

## Repeating the same task using a looping flow

At times, you may need to execute an activity repeatedly by creating a loop in the process flow and route the process flow back to the same activity to execute it again. This type of process activity execution is referred to as a looping process flow.

![](images/FigureA.gif)

Learn more about [looping types and methods](looping.html).

## Running the same task repeatedly on a schedule

You can schedule a recurring execution of the same activity at a given interval. For example, a manager could schedule an activity every Friday at 1:00 PM, which assigns a task to each team member regarding their expenses.

This type of process activity execution is referred to as recurrence.

When activities have been configured to execute on a recurring schedule, it is possible to manually trigger or skip a recurrence.

See also: [Scheduling the Start of an Activity](Process_Node_and_Smart_Service_Properties.html#starting-an-activity-on-a-regular-interval)

## Updating an array

When using multiple node instances to update the values of an array, use the **is stored as** or the **is appended to list** operators in your node output.

See also: [Custom Node Outputs](Process_Node_and_Smart_Service_Properties.html#custom-outputs)

## Using activity-chaining to display multiple forms in succession

If the completion of a task in a process requires the same user to complete a subsequent task, you can activity-chain the two tasks together in your process model. This enables successive form-completion by the same user by _chaining_ the attended tasks together and creating a process wizard (similar to an install wizard).

**Note:**  Long activity chains—greater than 50 node instances or 5 seconds between attended activities—are strongly discouraged because they have both an adverse effect on the performance of the system at scale and the experience of the user.

### Enabling activity-chaining

In order to chain two attended nodes together in a process model, you must enable activity-chaining on their intermediary flow connector.

There are two ways to enable activity-chaining between two attended nodes:

-   Right-click a flow connector and select **Enable Activity-Chaining**.
-   Double-click the connector to display the **Flow Properties** dialog, and select **Yes** for the **Enable Activity-Chaining** option followed by **OK**.

![Flow_properties.gif](images/Flow_properties.png)

A chain link icon appears on the flow connector between the two nodes to signify they are chained together.

![Ac_example_chain.png](images/Ac_example_chain.png)

Repeat this action for each intermediary flow between the first and last nodes in your activity-chain.

If you navigate away from the task form in the middle of a chain, all pending tasks are available from your Task Inbox.

For more information on activity chaining, check out this video from the [Appian Community YouTube Channel](https://www.youtube.com/@AppianCommunity).

#### Overriding task assignments when activity-chaining

When an attended node is chained to another node, by default, the user assigned to the first node overrides the Assignment settings for the next attended node and is automatically assigned to that node as well.

For example, the image below shows lane assignments configured for tasks in the System Administrator and New User lanes. Normally, all attended activities within the lanes are assigned to specific user, group, or set of users and groups. When activity-chaining is enabled, the system assigns any subsequent chained tasks to the person who completed the first task; thereby, assigning the "Upload User Documents" task to the System Administrator once they complete the "Enter User Information" task.

![example assignment](images/Ac_example_assignment.png)

If you want your process to maintain the task assignments, deselect the **Override assignment…** setting on the **Flow Properties** dialog.

#### Breaking a chain

Once a chain breaks, the next attended task appears in the user's task list (unless it is a Quick Task). To resume the chain, the user must complete the task and then click **Next** or **Continue**. Users cannot step back into attended tasks originally part of the chain before it broke.

Activity-chains can break in the following manner:

-   If the activity-chain starts with an interface, and the user encounters a form that is **not** enabled for Tempo.
-   A process is paused while an activity-chain is in progress.
-   The amount of time between attended tasks exceeds the non-configurable limit of 10 minutes.
-   The number of unattended nodes that exists between two (attended) activity-chained tasks **surpasses the (default) maximum number** of 50.
    -   Activating multiple node instances is a common process configuration that may reach this threshold.
    -   Adding an attended activity with a simple form that says: **Click to continue** is one possible way to avoid hitting this limit.
    -   Your application administrator can also raise the limit setting in a `custom.properties` file. See also: [Configuring Process Execution Properties](Configuring_the_Process_Engine_Servers.html#chained_execution_node_limit)
-   A user receives a receive message event, rule event, or timer event.
-   A user navigates away from an activity-chained form.

## Chaining tasks with multiple node instances enabled

When an activity configured to run multiple instances is part of a chain, any one of the instances is randomly selected as the next node in the chain.

![chaining with MNI](images/Chaining_with_mni.png)

In the example above, a chain is established with Node A, Node B, and Node C. Node A and C are regular tasks, while Node B is configured to run [multiple instances](Process_Node_and_Smart_Service_Properties.html#multiple-instances)—one instance for each assignee.

Upon completion of Node A, any one instance of Node B appears. If three instances of Node B are spawned, any one of those 3 instances may appear as the next task in the chain after Node A has been completed.

Upon completion of Node B, the task for Node C appears. If the **Allow users to step back to this node from the next chained activity** option is selected on Node A, B, and C, then you can step back and forth between Node A, B, and C any number of times.

If you complete Node A and B and while viewing the task form for Node C, and you step back to B, all information entered in Node B appears on the task form for Node B.

If then you decide to step back from Node B to Node A, all information entered in Node A appears on the task form. In this case, the completed instance of Node B is deleted from the system. When you click **Next** to move to Node B, a new task form appears. Previously entered data will be lost. If any of the nodes (A, B, or C) do not have the **Allow users to step back to this node from the next chained activity** checkbox selected, a "Back" button does not appear in the next task form. You are not able to navigate back to the previous task.

This example assumes that the **Override assignment for the next attended activity even if the current user is not an assignee** flag is enabled in all chained flows.

When an activity that is scheduled to run periodically is part of a chain, the first instance is chained. All subsequent instances are not part of an activity-chain.

## Creating a quick task

Some tasks are part of a process but are not sequential in nature.

A quick task is any attended activity that is activated and completed outside of the fixed process flow. They are initiated on an ad-hoc basis and a new instance of the task is automatically generated after one is completed. All assignees can view and complete the quick task any number of times until the completion or termination of the process.

Any attended process activity can be configured as a quick task. Such activities display the following marker:

![](images/Quick_tasks_icon.png )

Like other tasks, quick tasks are not required to have an incoming flow, but they must have an outgoing flow. If a quick task does not have an incoming flow, it is activated immediately upon startup of the process.

### Configuring a task as a quick task

To configure an attended node as a quick task:

1.  Right-click the node in the designer canvas and select **Properties**.
2.  In the **General** tab, select the checkbox next to **Quick Task**.

    ![Enable quick task](images/Check_box_qt.gif)

When a task is configured as a quick task, the following configuration changes are automatically made:

-   The **Refresh default values every time the task form is viewed** option is selected on the [Other Tab](Process_Node_and_Smart_Service_Properties.html#other-tab).
-   The option to run the node as an unattended activity is disabled on the [Assignment Tab](Process_Node_and_Smart_Service_Properties.html#assignment-tab).
-   The **Set re-assignment privileges for assignees** link is hidden from the [Assignment Tab](Process_Node_and_Smart_Service_Properties.html#assignment-tab). (Quick tasks cannot be re-assigned.)

Any existing forms and data configurations are preserved.

Task assignees can view and complete the task. Apart from the task assignees, process administrators and users with **Manager** level access to the process can view and complete quick tasks that are assigned to other users and groups.

Activities that cannot be assigned to users do not display the **Quick Task** checkbox on the **General** tab of the properties dialog. It also does not appear when viewing a process model in the [Process Analyst View](process-model-object.html#process-analyst-view).

You can also add a quick task when [editing](Monitoring_and_Editing_Processes.html#edit-mode) a running process.

#### Task execution options

Default values in a task form are evaluated when the task is issued. If these values change, the task form is typically updated with the new values when the task is viewed again.

To keep the default values that existed when the task was first issued:

-   Clear the **Refresh default values every time the task form is viewed** checkbox on the on the [Other tab](Process_Node_and_Smart_Service_Properties.html#other-tab) of the activity's properties.

Once a quick task has been activated, you can set it to be disabled if another user attempts to activate it again:

-   Select the **do not create if active instances exist** checkbox on the [Other Tab](Process_Node_and_Smart_Service_Properties.html#other-tab).

You can configure the quick task so that only the most recent activation of the task is submittable:

-   Select **delete previously activated instances** on the [Other Tab](Process_Node_and_Smart_Service_Properties.html#other-tab). All previously activated instances of the selected task are removed from the system when a new instance is activated.

Additional execution options are available on the [Other Tab](Process_Node_and_Smart_Service_Properties.html#execution-options).

#### Enabling a quick task

Once a process has been started, a quick task can be enabled in one of the following ways:

-   If there are no incoming flows to a quick task, it is enabled as soon as the process is started.

-   If there is at least one incoming flow, the quick task is enabled once flow reaches it for the first time. Consider a rule event that waits for a condition to become true, or a receive message event that waits for an incoming message; these quick tasks are not enabled until the process flow reaches them.

-   Once a quick task is enabled, all task assignees can view and complete it. Quick task permissions are evaluated only when the node is first enabled. Permissions are not re-evaluated after each quick task instance is completed; only the initial permissions are used.

An [in-flight modification](Monitoring_and_Editing_Processes.html#view-activated-instances) of the assignment of a quick task does not affect currently-enabled quick tasks. It affects only the quick tasks activated after the change.

#### Disabling a quick task

Once a quick task has been enabled, it can be disabled in one of the following ways:

-   Configure an [exception flow](Process_Node_and_Smart_Service_Properties.html#exceptions-tab).
    -   When the conditions for this event become true, the exception is triggered, and the quick task is disabled.
    -   Exception conditions are only evaluated when an activity is first activated.
-   Make an [in-flight modification](Monitoring_and_Editing_Processes.html#pause-a-flow-object) to the process, in case no exception flow was configured or you wish to stop the quick task manually.

Attempting to complete a quick task that has been disabled displays the following error message.

 This task is no longer available

## Configuring multiple outgoing flows

When a process model has multiple outgoing flows, and [activity-chaining](#using-activity-chaining-to-display-multiple-forms-in-succession) enabled on each outgoing flow, any one of the outgoing flows is selected. The next attended task from that flow displays to the user.

![](images/Ac_multiple_outgoing_flows.png )

In this example, after completing task form A, the task form for either B or C appears at random (depending on assignment configuration). This is **not** how you should configure multiple outgoing flows.

Rather than configuring a random flow, the standard design practice is to use a [gateway](Gateways.html) to route the flow to either node.

-   Use an [AND Gateway](AND_Node.html) to activate both B and C.
-   Use an [OR](OR_Gateway.html), [XOR](XOR_Node.html) to activate B or C depending on certain conditions.
-   Use a [Complex gateway](Complex_Gateway_Node.html) to configure various flow options.

## Using process variables in parallel flows

When a node in a process is configured to run [multiple instances](#using-multiple-node-instances-in-your-process-flows) (or if a process flow loops back on itself) each copy of the node calls and/or writes to the same process variables. In such cases, it is possible to have one instance of a flow overwrite the value in another. To avoid this problem, shield the value passed between each node (in a multi-instance flow) using the **Keep process variables synchronized** option on the **Flow Properties** dialog, which is configured by double-clicking the flow connector on your process model.

![](images/Shielded-flows.gif )

When the **Keep process variables synchronized** option is selected, all process variable values used in the output phase of a node are protected from overwrites—from the start of the flow—to the start of the next node. For example, if three instances of a node are spawned (and the node is configured to continue the flow after each instance completes), the process variables in outgoing flows are protected from being overwritten by each other.

The overwrite-protection is distinct for each instance, but it does not place a lock on the process variable (meaning that other flows can still write to the process variable if you have another using the same variables). This feature also triggers an update to the process variable prior to following the flow.

All process variables used during the output phase of a node are shielded from overwrites, when this option is enabled. These include process variables used by expressions in Rules, Timers, and other event conditions.

### Protecting process variables from overwrites between activities

To protect process variables from overwrites between activities:

1.  Double-click a connector between two nodes of the process model. The **Flow Properties** dialog displays.

    ![](images/Flow_properties.png )

2.  Select the **Keep process variables synchronized across this flow** checkbox.

#### Process variables and the output phase

When the **Keep process variables synchronized** option is selected, if a process variable is used in the Output phase of node execution, it is also protected from overwrites across any subsequently shielded flows. The following nodes frequently consume process variables during the Output phase.

-   **Rule Event**: When a protected flow arrives at a Rule Event node, the Rule Conditions are evaluated immediately. If the Rule Event is false (and does not execute) the protected process variable value is discarded.

-   **Timer Event**: A Timer Event might be triggered during Output; however, if a Timer Event condition is false (and does not execute) the protected process variable value is discarded. A true timer event process variable that is consumed during the Output phase will be shielded from overwrites.

-   **Gateways**: When a protected flow arrives at a gateway, the expressions configured for the node are evaluated immediately. The protected process variable value is also retained and made available to any subsequent flows.

#### Exceptions and other considerations

-   **Nodes with multiple incoming flows**: When processes include gateways with multiple incoming flows with only one outgoing flow, only the process variable values carried by a winning incoming flow are passed on to the subsequent node.

-   **Scheduled Nodes**: When a protected flow arrives at scheduled node, the protected value is stored until the node executes.

-   **Receive Message Events**: Regardless of the configuration setting, process variables will always synchronize across flows on the output flow for a Receive Message Event node.

### Reassigned tasks

Protected process variable values also keep their shielding when associated with a reassigned task. Any subsequent assignees are supplied the same data as the initial assignee.

For any attended activity, keeping process variables synchronized could result in assignees seeing stale data, as there is no inherent limit to how much time a user might take when viewing and completing their tasks.

### Shielding process variables during node execution

As the synchronized option only applies to process flows, you might need to write the value from one shielded flow to a **Node Input**, then to a **Node Output**, then to the next flow. This would ensure that the process variable value cannot be overwritten during node execution.

**Note:**  If you need to shield more than one flow, we recommend that you put the related nodes into a [subprocess](Sub-Process_Activity.html).

During the Output phase, a process variable's value is written from the **Node Output** at the same time it is passed to the outgoing flow. You can further shield the process variable value in other flows by creating a new process variable from the existing value.

![](images/Shielded-pvs.gif )

To shield a process variable's value through the Start, Run, and Output phases of a node's execution:

1.  Double-click the node on the Process Modeler canvas to open the node configuration dialog.
2.  Pass the data from a process variable to a node input:
    -   Go to the **Data** tab.
    -   Click **New Input**. A row is added to the **Node Input** list.
    -   In the **Type** field, select the data type that corresponds to the data type that is assigned to the process variable.
    -   In the **Value** field, select the process variable from the dropdown list.
3.  Save the node input data to a custom node output on the [**Data** tab](Process_Node_and_Smart_Service_Properties.html#custom-outputs).
    -   Go to the **Outputs** tab.
    -   Click **New Custom Output**.
    -   Next to the **Expression** field, click . The expression editor displays.
    -   Enter `ac!`, then select the node input you just created from the dropdown list.
    -   Click **SAVE AND CLOSE**.
4.  Save your custom output into the same process variable that supplied the node input data by selecting the process variable name from the **Target** list.
5.  Click **OK**.
6.  Shield the outgoing flow(s) until the flow no longer executes with multiple instances:
    -   Right-click the outgoing flow.
    -   Select **Properties**.
    -   Select **Keep process variables synchronized**.
    -   Click **OK**.

## Auditing task submission location

You can configure any task to capture the geographical location from where the user submits the task. This information can be used for audit purposes to ensure that the task was completed from the right location. This requirement is typical in cases where field workers perform on-site tasks like inspections, maintenance, and repairs.

### Enabling location capture on tasks

To capture the location on a task:

1.  Right-click the node on the Process Modeler canvas, then select **Forms**.
2.  On the **Forms** tab, select the option to **'Capture location on submission(only supported in Appian Mobile)'**.

    ![/Forms Tab Enable Capture Location](images/Forms_Tab_Enable_Capture_Location.png)

3.  Go to the **Data** tab.
4.  Go to the **Outputs** tab. A new result [Submission Location](Configuring_the_User_Input_Task.html#capturing-task-submission-location) of type **LocationResult** is now available.
5.  Under **Results**, select the [`Submission Location`](Configuring_the_User_Input_Task.html#capturing-task-submission-location) output. 1.In the **Result Properties** section, click the `New process variable` icon.

    ![/Data Tab Outputs Location New PV](images/Data_Tab_Outputs_Location_New_PV.png)

6.  Create a new process variable named **task\_submission\_location** of type **LocationResult**. ![/Data Tab Outputs Location PV](images/Data_Tab_Outputs_Location_PV.png)

### Using task submission location

When the user first runs any location-enabled task from the mobile application, a **one-time permission prompt** displays requesting the user to grant location access to the application. User location is tracked and automatically submitted with the task form only if the user grants permission.

**Note:**  User location is only captured when the task is submitted from [Appian Mobile application](Appian_for_Mobile_Devices.html). To protect user privacy, a banner displays on top of every location-enabled form making it clear to the user that the form is tracking their location.

Once the **Home Inspection** task form has been submitted by the user, the submission location is stored in the [`Submission Location`](Configuring_the_User_Input_Task.html#capturing-task-submission-location) result, which we mapped to **task\_submission\_location** process variable in step 3.

Next, let's evaluate the distance between the task submission location and the home location using the [a!distanceBetween function](fnc_mathematical_distanceBetween.html) which evaluates the distance (in meters) between two locations specified by their latitude and longitude coordinates.

**Note:**  The following steps assume you have a process variable named **home** which has **latitude** and **longitude** fields.

To evaluate the distance between the task submission location and the home location:

1.  Add a new **Script Task** following the **Home Inspection** task.

    ![/Audit Task Submission](images/Audit_Task_Submission.png)

2.  Go to the **Data** tab.
3.  Go to the **Outputs** tab.
4.  Click **New Custom Output**.
5.  Under **Expression Properties**, click next to the **Expression** box. The expression editor displays.
6.  Use the following expression to evaluate the distance between the **task submission location** and the **home location**.

    ```
    1
    2
    3
    4
    5
    6
    7
    if(
    pv!task_submission_location.isAvailable,
    	a!distanceBetween(pv!task_submission_location.location.latitude, pv!task_submission_location.location.longitude,
    	pv!home.latitude,pv!home.longitude
    	),
    cons!INVALID_LOCATION
    )
    ```

7.  Click **SAVE AND CLOSE**.
8.  In the **Target** field, save the output of this expression into a new process variable called `distance`.

    ![/Data Outputs Distance Calculation](images/Data_Outputs_Distance_Calculation.png)

9.  Click **OK** to save your changes.

iOS and Android Location services do not guarantee that the location delivered is accurate. Rather, a best effort is made, and may be constrained both by the capabilities of the device, the location, and the environment from which it is used. The uncertainty in location is captured in the **horizontalAccuracy** field of the [**Submission Location**](Configuring_the_User_Input_Task.html#capturing-task-submission-location) result data. This expresses the uncertainty in the reported location in meters.

You can account for this uncertainty by comparing the evaluated `distance` to the `pv!task_submission_location.horizontalAccuracy` value. Generally, you can assume that the task was submitted from the right location if `distance < 2 * pv!task_submission_location.horizontalAccuracy`. If the `distance` is larger, you may choose to initiate an audit into that task.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...