---
source_url: https://docs.appian.com/suite/help/25.3/Intermediate_Event_-_Timer.html
original_path: Intermediate_Event_-_Timer.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Timer Event

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

![](images/Smart_Service_Icons/Timer_Event.png)

Timer events can either be added to the process flow by themselves, or they can be added within an Appian Smart Service to trigger an [Exception Flow](Process_Node_and_Smart_Service_Properties.html#exceptions-tab) or an [Escalation](Process_Node_and_Smart_Service_Properties.html#escalation-tab).

In the process flow, timer events can be used to [schedule a process activity](Process_Node_and_Smart_Service_Properties.html#event-tabs), or to only continue the flow when certain conditions are met. (If the event is configured in an escalation or an exception, the configuration settings list different wordings.)

-   The delay or schedule added to an activity or a process flow only begins once the node or event has been activated.
-   The timer event must be active in order for the schedule to be triggered. If an [End Event](End_Event.html#adding-a-terminate-process-trigger) is configured to terminate the process, the timer is also terminated.

## Configuring a timer event

1.  In the Process Modeler Palette, click the **Events** category.
2.  Click the **Timer** node and drag it onto the Process Modeler canvas.
3.  Configure the **Timer** node.
    -   Double-click the **Timer** node on the Process Modeler canvas.
        \- or -

    -   Right-click the **Timer** and select **Timer Properties**. The Timer Event dialog is displayed.
4.  Click the **Setup** tab.

    ![images/Edit_timer_event_wizard.gif](images/Edit_timer_event_wizard.gif)

5.  In the **Scheduled Delay** section, you can determine a timed delay by entering a number or using a logical expression:

    -   Select **Delay for** to enter a timed delay. Enter a number or click the Expression Editor button to use an expression. Select **Minute(s)**, **Hour(s)**, **Day(s)**, or **Month(s)** from the time-span list.

    **Tip:**  To schedule a delay that is less than 1 minute, enter the following expression in the **Delay until the date and time specified by this expression** field: `=now() + intervalds(0,0,x)` where `x` is the number of seconds to delay.

    To keep timer events from counting weekends, use the [a!addDateTime()](fnc_date_and_time_adddatetime.html) function. For example, if you want to trigger an event after four days, excluding weekends, enter the following expression in the **Delay until** field: `=a!addDateTime(days: (pp!starttime, 4), useProcessCalendar: true)`. You must also ensure your [process calendar](Process_Calendar_Settings.html#viewing-process-calendar-options) excludes weekends from your environment's working hours.

    -   Select **Delay until** to enter a future date and time for the timer to evaluate the timer conditions. You can choose either of the following options:
        -   Set a future date to resume the process by entering a date and time using the following format: **dd/mm/yyyy hh:mm a**.
        -   Click the Expression Editor button to calculate a date using one of the date and time functions available on the Functions tab.
6.  (Optional) Click **Timer Recurrence** to trigger the event on a repeating schedule by selecting from the following options:

    | To repeat the task | Select |
    | --- | --- |
    | Every **_n_** number of days, every weekday, or at a certain time of day, in a specific time zone. | **Daily** |
    | Every **n** number of weeks, at a specific time and time zone, on a specific day of the week. | **Weekly** |
    | At a certain time, in a certain time zone, on the **_n_**th day of the **_n_**th month, or on the **_n_**th day of the week (such as the 3rd Sunday) of the **_n_**th month. | **Monthly** |
    | At a certain time and time zone, every year: on the **_n_**th day of a month, or on the **_n_**th day of the week(such as the 3rd Sunday) of the **_n_**th month. | **Yearly** |
    | Every **_n_** number of minutes (**_minimum 5 minutes_**) or **_n_** number of hours. | **At an interval** |

## Configuring the time zone used

The time zone used in a recurring event can be configured in the following different ways.

-   You can configure the time zone context for each process of a process model in its Process Model Properties. This is indicated by the timezone process property (pp!timezone) listed as a default value of the expressionable combination box in the **Timer Recurrence** group box.
-   You can also type the name of a time zone ID to use in the expressionable combination box. When selecting a Continental US time zone, we recommend using the following standard time zone IDs.

| Time Zone | Time Zone ID |
| --- | --- |
| Eastern | America/New\_York |
| Central | America/Chicago |
| Mountain | America/Denver |
| Pacific | America/Los\_Angeles |

The available time zone IDs appear using autocomplete.

You can create an expression that returns the proper time zone to use, using the Expression Editor.

## Creating a timer condition

-   Select the **Show Advanced Options** checkbox in the lower margin of the **Timer Event** dialog. The **Timer Conditions** group of options is displayed.
-   Click the **New Condition** button on the toolbar. A row is added to the **Event Conditions** list, containing three fields to configure.
-   Click the first list box and select the process variable you wish to use for comparison.
-   In the second list box, select the operator you wish to use for the condition. The following options are available:

| Selecting | Means |
| --- | --- |
| **\=** | equal to |
| **<>** | not equal to |
| **<** | less than |
| **_\>_** | greater than |
| **_<=_** | less than or equal to |
| **\>=** | greater than or equal to |

-   In the third condition field, type the value you wish to compare against a process variable. If these values match, the condition evaluates as true and the timer event starts.
-   Note that timer event conditions are only evaluated once the delay time has been met or the future date and time has been reached.

## Usage considerations

### Limitations

You cannot use a [record data type](Appian_Data_Types.html#record-data-types) in this event. This means you cannot reference a process variable of type record data type, use a record field reference, or use a record type constructor; otherwise, an error will occur.

### Adding timers to autoscaled processes

When building an autoscaled process, you can use timer events as standalone nodes in the flow.

#### Adding a standalone timer event

Timer events can be used as standalone nodes in autoscaled processes, letting you [build retry loops](autoscale-patterns-practices.html#avoid-long-running-calls-to-external-systems) and other flows that need the process to wait before taking another action.

When setting up a timer event in an autoscaled process, you can set a scheduled delay and add optional conditions to the timer.

**Note:**  Timer recurrence is not supported in autoscaled processes.

#### Adding timers to other nodes

Timers cannot be used to configure the behavior of other nodes in a process model with autoscale enabled.

1.  [Start events](Start_Event.html) cannot be configured to use a timer.
2.  Other nodes cannot be configured with [scheduled start times or recurrence](Process_Node_and_Smart_Service_Properties.html#scheduling-tab).
3.  Timers cannot be used to [trigger an activity's exception flow](Process_Node_and_Smart_Service_Properties.html#exceptions-tab).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...