---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/troubleshoot.html
original_path: rpa-9.17/troubleshoot.html
version: "25.3"
title: "Troubleshoot Appian RPA"
page_id: "rpa-9.17/troubleshoot"
section: "Debug a robotic task"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Troubleshoot Appian RPA

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Even the simplest robotic tasks need to be tested and updated before deploying to production. There are multiple ways to ensure that your Appian RPA robotic tasks behave as you expect. If you're new to robotic task development and debugging, Appian RPA's native debugging tool helps you test and confirm individual actions in the robotic task definition so you can focus your efforts on fixing what might be going wrong.

This page describes how to debug a robotic task. This page also contains instructions on how to troubleshoot some common issues that developers may encounter when coding, configuring, and testing a robotic task. Read on to learn how to fix these problems.

## Debug a robotic task

Use the debugging tool to go through the robotic task definition action-by-action and isolate where issues might arise. To use the tool, you'll select **Debugging?** when you manually execute the robotic task.

1.  In the [list of design objects](../objects-view.html), find and click the robotic task you want to debug.
    **Result**: A new window displays and you are brought to the robotic task configuration screen.
    ![RTDO_TestBtn](./images/RTDO_TestBtn.png)
2.  Click the **TEST** button.
    **Result**: The Execution options display.
3.  In the **Execution options**, check the **Debugging?** checkbox.
4.  Click **TEST**.
    **Result**: The **Execution Preview** displays. This is where you can access debugging options and information.

[![images/example_executionpreview_scr.png](images/example_executionpreview_scr.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1392)

[![](images/example_executionpreview_scr.png)](#_)

### Debugging options

You can access debugging options and information in the **Execution Preview** by starting an execution and navigating to the **Workflow** tab. On the Workflow tab, you can

-   hover over an action to add or remove a breakpoint ![Add breakpoint icon](images/rpa-add-breakpoint.png),
-   enable or disable the action ![Disable action icon](images/rpa-disable-action.png),
-   run the robotic task from that action ![Run from action icon](images/rpa-run-from-action.png),
-   open a subtask in its own tab, or
-   change the value for a variable.

#### Breakpoints

Breakpoints are points in the robotic task where you want the execution to pause. The execution pauses just before the action or action group where you've added the breakpoint. When you continue, the robotic task will continue executing from the action where it's paused, going to the next action or action group. Breakpoints help you assess the robotic task at different points of the execution. You can add breakpoints to individual actions or action groups. For example, you can add a breakpoint at an action where you want to check that a variable was properly captured.

Once a you've added a breakpoint, a **Breakpoint** icon ![Breakpoint icon](images/rpa-breakpoint.png) displays beside the action. Click this icon to remove the breakpoint.

#### Disabled actions

Disabled actions are skipped during the debugging execution. If you're confident that piece of the robotic task is working properly, or you want to otherwise ignore it as you debug, you can disable it.

#### Run from action

You may want to **run the robotic task from a specific action** to isolate parts of the robotic task. Isolating actions is helpful to determine if they're configured properly and working as expected. This option can be useful if you're debugging a simple action later on in the robotic task, without having to run through more complex pieces of the robotic task first. You can only run from actions in the currently active section (**Setup**, **Main**, or **Cleanup**). This option isn't available for actions within a subtask or loop.

**Tip:**  If you use the **Run from action** option, the robotic task may not have the information necessary to complete subsequent actions successfully. For example, variables may not be populated correctly or a browser may not be opened if these actions precede the action you're running from. Additionally, you can't run from an action that is inside a loop unless you are already paused at an action within the loop.

#### Open subtasks in their own tabs

You have the option to open a subtask in its own tab and easily track all of its execution steps, just like you do with a parent robotic task. While the parent robotic task remains available in the Main tab, each subtask you open displays in its own tab. Remember, the subtask tabs won't open on their own, but you can simply click **Open subtask** to view them.

Here are some key points to keep in mind when you're viewing subtasks:

-   You can have up to 10 tabs open at a time.
-   Subtask tabs exclude the Setup and Cleanup sections since they're always skipped during execution.
-   If the subtask includes a loop, the tab displays the result of the last execution.
-   If the subtask is executed more than once in the robotic task, each instance opens in its own tab.
-   You won't be able to modify the variables within a subtask until the execution of that specific subtask is in progress.

[![images/opensubtask-tab.png](images/opensubtask-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1393)

[![](images/opensubtask-tab.png)](#_)

#### Change variable values

The iterative development and testing cycle of robotic tasks can be time-consuming, but you can save time by modifying variable values during debugging without impacting the saved data.

Here are some key points to keep in mind when you're changing variable values:

-   The variable values are updated in the context of the execution, but not in the robotic task.
-   The variables shown in the pane are associated with the tab that you have selected. However, you can only edit the values when the associated task is running.
-   At this time, only primitive data type values are editable.

To edit a variable's value, click on the variable value link in the Variables grid. The Edit Variable window displays and you can change the value.

[![images/editVariable.png](images/editVariable.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1394)

[![](images/editVariable.png)](#_)

#### Execution control

Options at the top of the page let you choose how to proceed with the debugging execution:

-   **Next Action**: Proceeds to the next enabled action in the robotic task definition. This option will skip disabled actions. If you click this option and proceed to an action group, the robotic task proceeds to execute each action sequentially. To run all actions in a robotic task definition until a breakpoint is reached, use **Resume**.
-   **Resume**: Proceeds with executing all actions in the robotic task definition based on how each action is set up, including breakpoints and skipping disabled actions.
-   **Step Over**: Executes an entire group at once. Step over groups that you don't want to debug. The option is only available when the robotic task is paused at the start of an action group. Once complete, the robotic task pauses at the action immediately after the action group where you selected this option. This option is helpful for debugging loops and subtasks, where you may want to run multiple actions together and isolate the results.
-   **End Execution**: Stop the debugging execution. The execution remains in the **List of executions** for future reference.

As the execution proceeds, variables are shown within the **Variables** pane. You can also find more detailed information in the [**Execution log** tab](#execution-log). Switch to this tab whenever the execution is paused to see if the robotic task is proceeding as you expect.

### Errors

If an action causes an error during debugging, the **Error** icon displays on both the action and the group that contains it. As shown in the following example, the action also displays with a red outline. The robotic task pauses on that action and you will need to disable the action or select **Run from action** to continue.

![Action error screenshot](images/rpa-error.png)

### Key points to remember

When you debug a robotic task, remember the following points:

-   The debugging execution automatically pauses at the beginning of the Setup and Main sections.
-   The debugging execution automatically pauses at the last action in the Main section.
-   Once the execution enters the Cleanup section, you won't be able to run the debugging execution from an action in the Main section.
-   If an action throws an error, the debugging execution resets to the beginning of that action.
-   The debugging execution must be within a section to run an action it contains. You cannot run from an action in a section you're not in.

## Execution details

You can view details for every execution of a robotic task. To get started:

1.  Go to the **Robotic tasks** tab in the Appian RPA console.
2.  In the table, click the name of the robotic task you're interested in.
3.  In the list of executions, click the name of the execution you're interested in.

You're brought to a page with three tabs containing all the information regarding an execution:

-   [**Worfklow**](#workflow)
-   [**Results**](#results)
-   [**Executions log**](#execution-log)

You can also select icons in the toolbar to perform actions:

| Icon | Action | Description |
| --- | --- | --- |
| ![2232572.png](images/2232572.png) | Go to host machine | Learn more about the host machine where the execution occurred. |
| ![2232570.png](images/2232570.png) | Re-execute | Launch the specific execution again with the same input configuration as the original execution. |
| ![2232573.png](images/2232573.png) | Go to robotic task definition | Open the robotic task definition. This can be useful to modify or check certain characteristics of the robotic task during development and testing. |

### Workflow

On this tab, you can find the path the robotic task followed for the selected execution. Though the robotic task definition may have been changed later, you will always see the version of the robotic task definition here as it was at the time the execution was performed.

![rpa-workflow.png](images/rpa-workflow.png)

During a robotic task execution, the current action is highlighted. As the robotic task continues, the rest of the action is highlighted accordingly.

### Results

On this tab, you will find all the information related to the results of the selected execution.

![2232648.png](images/2232648.png)

The information available here is as follows:

-   **Execution cycle by item**: Divided into areas representing each processed item. The color of each area represents the result of each item (green for _OK_ and yellow for _Warnings_). When the robotic task is running, you will also see the identifier of the item being processed.
    -   **Duration**: Execution time
    -   **By items**: the average time for each item (_By items_)
    -   **ETC**: estimated execution time for all items to be processed.
-   **Results by item**: Color-coded results of the processed items:
    -   Green: successfully processed.
    -   Yellow: not successfully processed.
-   **Results**: It shows global results from a functional point of view. This information is meant to be extracted easily from external systems. In addition to an item's result (**OK** or **WARN**), this section shows the result categorization. For example, two types of warnings: one because of a functional validation and another due to technical problems in a specific application.
-   **Sub-results description**: Categorized information about the items results previously defined in the robotic task definition.
-   **Summary**: Summary of all processed items during the execution. It uses the same color pattern as the results area, to identify the items that have been successfully processed or those that have defects. The information shown for each item is:
    -   Result: Result and subresult separated by colon (:).
    -   Duration: Time took to process it.
    -   Index.
    -   Item key.
    -   Detail: Detail added to the result.
    -   Properties: Item properties.

### Execution log

The **Execution log** tab shows the execution trace in detail. It is very useful information for both users and development teams when debugging a robotic task.

With the execution log, you can follow the robotic task's progress through its robotic task definition. The log shows its activity, informational messages, exceptions, and errors. Developers can code robotic tasks so they display information in the execution log at certain points in the execution.

**Tip:**  Logging custom messages can be helpful, but be mindful of including potentially sensitive information. Appian RPA users with access to the robotic task will also be able to see execution logs. Never log personally identifiable information (PII), decrypted values, or passwords as plain text. [More on securing data in robotic tasks.](security-rpa.html#securing-data-in-a-robotic-task)

Execution log benefits include:

-   **Know what the robotic task is doing at a given time**: Some tasks may take hours, so it is very helpful to easily check what the robotic task is working on.
-   **Debugging, development, and maintenance**: When you are developing your robotic task, you can include informational messages at different levels (trace, debug, info, warn, error, fatal) to be displayed in the execution log.
-   **Gather information about execution time for each part of the robotic task**: The execution time logging enables you to assess its performance to improve it. Apart from the global execution time, it also provides the average process time for each item, the estimated time left to complete the task, etc.
-   **Visualize the result of each item process**: In the Execution log, you can see an item as an element to be processed by your robot and which robotic task will end with a specific result. At the end of the execution log is a list of the processed items and their results (Ok or Warn). The list of processed items and its results are always shown, even though the robotic task may have failed and thrown an exception.

Whether you're debugging or running a standard execution of the robotic task, your first step when troubleshooting should be to check the execution log.

1.  Click the **Execution log** tab. This is the detailed list of each operation the robotic task took during execution, including timestamps.
2.  At the top of the **Execution log**, you can filter the log entries by [trace types](#trace-types).
3.  The body of the execution log output describes each step the robotic task takes as it proceeds.
4.  You can view or download the full trace to see even more details about the outcome of the execution. Use this information to pinpoint how to best modify the robotic task code or robotic task definition.

Common errors that might appear in the execution log include:

-   Ensure that an appropriate robot was chosen for execution.
-   [Verify permissions are properly configured](security-rpa.html).
-   Ensure that the execution successfully connected to the repository and downloaded the required libraries.
-   Confirm that the credentials in the robotic task definition are accurate.
-   Once proper initiation is confirmed, follow the log messages as configured in the code to troubleshoot further, especially WARN and ERROR level messages.

When in doubt, open a support case with Appian Support and attach the execution log.

#### Trace types

Results of processed items are color-coded in the execution log. At the top of this tab, you can see several types of log. Click an icon to toggle whether that log type is displayed.

![2236370.png](images/2236370.png)

| Icon | Log type |
| --- | --- |
| ![2236395.png](images/2236395.png) | Statistics |
| ![2236396.png](images/2236396.png) | Dump contribution |
| ![2236397.png](images/2236397.png) | File |
| ![2236398.png](images/2236398.png) | Screenshots |
| ![2236399.png](images/2236399.png) | OK |
| ![2236400.png](images/2236400.png) | Warnings |
| ![2236401.png](images/2236401.png) | Trace |
| ![2236402.png](images/2236402.png) | Debug |
| ![2236403.png](images/2236403.png) | Info |
| ![2236404.png](images/2236404.png) | Error |
| ![2236405.png](images/2236405.png) | Fatal |

You'll also notice the following icons at the top of the execution log:

| Icon | Option |
| --- | --- |
| ![2236367.png](images/2236367.png) | See the full trace |
| ![2236366.png](images/2236366.png) | Go to the beginning of the log trace |
| ![2236368.png](images/2236368.png) | Download the full trace |
| ![2236373.png](images/2236373.png) | Pause or resume scrolling during an execution |
| ![2232600.png](images/2232600.png) | If video recording was enabled, access the video player and view the execution recording. |
| ![2232598.png](images/2232598.png) | If video recording was enabled, download the video |

For longer execution logs, click **View full trace** to view more information.

#### Information about the agent status

View a summary of information about the agent, both at the beginning and the end of an execution, including:

-   Version and the revision number of the agent.
-   Memory usage.
-   Available free disk space.
-   Robot permissions at the execution time.

Here's how this information is shown at the beginning of the execution:

![2236636.png](images/2236636.png)

The same information appears at the end of the execution, where the platform also shows the difference in the memory and disk usage after the robotic task ends:

![2236494.png](images/2236494.png)

In this example, after the robotic task ends, there is about _34MB_ more free memory, _16MB_ more reserved memory, and about _24MB_ less available disk space.

## Task Recorder Messages

To help keep you on track, the task recorder may display messages to show you when it's unable to do something.

| Message type | Reason | Guidance |
| --- | --- | --- |
| Error opening browser | This message appears if the task recorder was unable to open the browser you selected. | Ensure no other browsers are open and try again. |
| Error opening application | This message appears if the task recorder was unable to open the application you selected. | Open the application on your desktop, return to the task recorder, and use the **Select Application** menu to try again. |
| Error connecting to application | This message appears if the task recorder was unable to locate the application you selected, even if it is open. | If the application is not yet open: open the application on your desktop, return to the task recorder, and use the **Select Application** menu to try again.

If the application is open: restart the application on your desktop, return to the task recorder, and use the **Select Application** menu to try again. |
| Unreliable connection | This message appears if you navigate to a site that violates your network's content security policy. While actions can still be recorded on the page, some steps may not be recorded correctly. | To reliably record actions in Edge (IE) mode browsers, install the user certificate. If issues persist, you may need to contact your network administrator.

To reliably record actions in other browsers, you may need to contact your network administrator to adapt security configurations. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...