---
source_url: https://docs.appian.com/suite/help/25.3/Start_Event.html
original_path: Start_Event.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Start Event

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

![](images/Smart_Service_Icons/Start_Event.png)

A Start Event node denotes the beginning of a process in a process model, and is used to configure how a process is launched.

**Note:**  For Quick Tasks, any nodes that do not have an incoming flow are automatically triggered when the process is started.

You can only have one Start Event per process model, and all process models will contain a Start Event and an End Event.

You can choose to add triggers to your Start Event to determine when the event starts. You can add the following triggers:

-   ![](images/Receive_Message_Event.png) [Receive Message](Receive_Message_Event.html)
-   ![](images/Start_event_timer.png) [Timer](Intermediate_Event_-_Timer.html)

## Configuring a Start Event

To configure a Start Event:

1.  In the Process Modeler, double-click the **Start Event** on the canvas.
2.  In the **General** tab, configure the **Node Properties**:
    -   **Name**: The name of the Start Event. This will appear on the canvas.
    -   **Description**: A short description about the event.
3.  (Optional) If the process has [activity chaining](Process_Model_Recipes.html#using-activity-chaining-to-display-multiple-forms-in-succession), you can select the **Allow users to step back to the start node** checkbox to give users greater flexibility in completing the workflow.
4.  Go to the **Triggers** tab.
5.  Select a **Start Event Trigger**:
    -   Select the [Receive Message Event](Receive_Message_Event.html) to start the process when a message is received.
    -   Select the [Timer](#configuring-a-timer-trigger-on-a-start-event) to start the process at a certain time.

**Note:**  To use the Receive Message Event trigger, the process model where the event is received must have [Public Events](process-model-object.html#general-tab) enabled, and the user who runs the process or process flow event that sends the message must have sufficient permissions.

## Viewing Start Event triggers

If you've already configured a Start Event trigger, you can always view or edit the configuration at any time.

To view the Start Event triggers:

1.  In the Process Modeler, double-click the **Start Event** on the canvas.
2.  Go to the **Triggers** tab.
3.  Under **Type**, click **Configure** next to the trigger you want to view. Depending on the event (Receive Message or Timer), the configuration options will vary.

## Configuring a timer trigger on a Start Event

A timer lets you delay the start of a process or have a process recur at a set interval. You can also define conditions to control when the timer should run.

**Note:**  If your process has [autoscale enabled](autoscale-processes.html), a timer cannot be added to the Start Event.

To add a [Timer](Intermediate_Event_-_Timer.html) trigger to a Start Event:

1.  In the Process Modeler, double-click the **Start Event** on the canvas.
2.  Go to the **Triggers** tab.
3.  Under **Start Event Triggers**, click **Timer**. A new event of type **Timer** appears.
4.  Click **Configure**. The **Timer Event** dialog appears.
5.  Go to the **Setup** tab to [schedule a delay](#schedule-a-delay), determine whether the timer should [reoccur](#timer-recurrence), or [add conditions](#timer-conditions) to determine when the timer should occur.

![Timer Conditions](images/Edit_timer_event_wizard.png)

### Schedule a delay

The start of a process can be delayed for a configurable time period, or it may be delayed until a particular date has been reached. In either case, the time period for which the flow is delayed is relative to the time at which the underlying process model was published.

To delay the process flow for a specific time period:

1.  In the **Setup** tab, under **Schedule Delay**, select **Delay for …**.
2.  Specify a numeric value in the provided text field. You can enter a static value, or use an expression.
3.  Use the dropdown to select the unit of time: Minute(s), Hour(s), Day(s), and Month(s). By default, **Minutes(s)** is selected.
4.  Click **OK**.

Apart from delaying the start of a process for a specified time period, you can also delay it until a specific date.

To delay the process flow until a specific time period:

1.  In the **Setup** tab, under **Schedule Delay**, select **Delay until the date specified by this expression**.
2.  Specify a date. You can enter a static value, or use an expression.
3.  Click **OK**.

### Timer recurrence

A timer trigger can also be configured to execute periodically.

To execute a Start Event periodically:

1.  In the **Setup** tab, select the **Time Recurrence** checkbox.
2.  Choose how frequently you'd like the Start Event to occur:

    -   **Daily**: Start a process either on a daily basis or periodically at a certain time (in a certain timezone)

    -   **Weekly**: Start a process either on a weekly basis or periodically at a certain time (in a certain timezone)

    -   **Monthly**: Start a process either on a monthly basis or periodically at a certain time (in a certain timezone)

    -   **Yearly**: Start a process either on a yearly basis or periodically at a certain time (in a certain timezone)

    -   **At an interval**: Start a process after a specified time period that can either be specified in minutes or hours. Only integer values must be supplied in the text fields.

3.  Click **OK**.

The time zone used in a recurring event can be configured in the Process Model Properties (**File** > **Properties**), and is indicated by the timezone process property (pp!timezone).

Recurring schedules continue executing once the process model has been launched once.

To disable a recurring start event trigger, republish the process model without the recurring schedule. Only the most recently published process model will trigger new processes to start.

### Timer conditions

For a more advanced option, you can also add conditions that govern the execution of the event. To do this, you can [add a new condition](#creating-a-new-condition), or a [new expression](#creating-a-new-expression).

Creating a new condition allows you to evaluate a process variable against another value that can either be populated through the expression editor, or by entering a value in the provided text area. Creating a new expression, on the other hand, allows you to create to create a complex expression using the expression editor that should always evaluate to true or false.

In order for an event to execute, all conditions created under this section should evaluate to true. Therefore, once a process model has been published, all conditions specified within a trigger are continually evaluated until all conditions evaluate to true, upon which the trigger is activated. For example, if a timer trigger is used within a start event to delay the start of process flow by 10 minutes, the 10 minutes only begins when all conditions specified beneath this section evaluate to true.

### Creating a new condition

To create a new condition:

1.  In the **Setup** tab, click **Show Advanced Options**. The **Timer Conditions** section appears.
2.  Select **\+ New Condition**.

    ![Timer Conditions](images/New_timer_condition.png)

3.  Select a process variable from a list of available variables.
4.  Choose an operator to evaluate the condition.
5.  Specify the value used to evaluate against the selected process variable. You can select another process variable, or enter a static value.

### Creating a new expression

To create a new expression:

1.  In the **Setup** tab, click **Show Advanced Options**. The **Timer Conditions** section appears.
2.  Select **\+ New Expression**.

    ![Timer Conditions](images/New_expression_events.png)

3.  Click **Open the Expression Editor**.
4.  Enter your expression that evaluates to true or false.
5.  Click **SAVE AND CLOSE** to close the expression editor.
6.  Click **OK**.

**Tip:**  Creating expressions to determine the conditions in which an event executes can result in reduced application performance. We recommend creating conditions instead of expressions when configuring `Event Conditions`.

## Adding multiple triggers to a Start Event

A process may need to be started when any one of many conditions evaluate to true. In such a scenario, multiple triggers can be added to a Start Event. This means you can have one or more [Receive Message](Receive_Message_Event.html) or [Timer](Start_Event.html#configuring-a-timer-trigger-on-a-start-event) triggers.

When more than one trigger is added to a Start Event, the icon on the Start Event appears as such:

![](images/Start-event-multiple.png)

Adding multiple triggers to a Start Event can be useful when multiple messages are targeted at a process model and the reception of any of these messages require a process to be started.

The triggers configured within a start event are automatically activated when the process model is published. When all conditions imposed by any of the triggers evaluate to true, a new process is started.

## Usage considerations

### Limitations

You cannot use a [record data type](Appian_Data_Types.html#record-data-types) in this event. This means you cannot reference a process variable of type record data type, use a record field reference, or use a record type constructor; otherwise, an error will occur.

If you configure a start timer with a constant, you must save and publish the process model to refresh the constant's value. Only updating the constant may give you unexpected process start behavior.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...