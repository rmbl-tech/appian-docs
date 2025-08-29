---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-execution.html
original_path: rpa-9.17/actions-execution.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Execution Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Execution** actions allow you to control steps a robotic task must take to successfully start, execute, and complete. These default steps often require communication with the Appian RPA server. The **Execution** actions enable a robotic task's communication with the server, whether to retrieve information or send it to help a developer understand what's happening and when.

This page describes how to integrate Execution actions into your robotic task, which provide an easier and more robust development experience.

If you need to extend Appian RPA capabilities, you can use Java to create [workflow libraries](../libraries.html) for robotic tasks.

### Using Execution actions

Execution actions are helpful throughout a robotic task execution. As an execution completes, a robotic task may have to send resulting files to the server. These actions are often used in the robotic task's [cleanup workflow](robotic-task-definition.html#3-sections) to help reset the robot. Use the communication actions to send messages to the execution log throughout the robotic task, which may be helpful for debugging.

While these actions can be called using actions in the Java code, using the actions from the robotic task workflow is both easier and more robust. When you build the robotic task workflow, you'll see the following actions available in the **Palette**:

-   [**Add file to robot result**](#add-file-to-robot-result): Adds a file to cleanup process to be returned as a result.
-   [**Log**](#log): Prints a message in the execution log.
-   [**Execute robotic subtask**](#execute-robotic-subtask)
-   [**Pause**](#pause): Robot pauses for the specified time.
-   [**Reserve credential**](#reserve-credential): Reserves a credential to ensure the robotic task has access.
-   [**Send screenshot**](#send-screenshot): Sends a screenshot to the server.
-   [**Set pause duration**](#set-pause-duration): Sets the length of time (in milliseconds) to pause after certain actions.

## Add file to robot result

This action lets you add the file to the cleanup process and returns it as a result in the Appian RPA console.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **File**: Add the file using the absolute path of the file. This field accepts variables of type `text`. Enter a path using plain text, a robotic task variable, or an expression.

To access the file after the robotic task finishes execution, go to the Appian RPA console. The files appear in the **OUTPUTS** column on the **List of executions** page, where you can download them.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Execute robotic subtask

The **Execute robotic subtask** action lets you configure and launch a robotic subtask from within another robotic task. It specifies which robotic subtask to call and indicates the data to be passed in and out of the subtask. To learn more, see [Robotic Subtasks](robotic-subtask.html).

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Robotic task**: Select the robotic task to initiate.
-   **Input Variables**: Specify parameters for the robotic subtask to use when it begins.
-   **Output Variables**: Specify variables to pass the data back to the parent robotic task when the subtask completes.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Log

A robotic task may need to send a message to the server as part of its cleanup workflow. Although this is a common cleanup action, you can use these actions at any time in the robotic task. The type of message you send depends on the type of event. For example, you may want to build logic into your robotic task to send an **ERROR** message when a particular action isn't completed successfully, but not send a message when it proceeds as expected.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Message**: Enter a message to send to the console's execution log. This field accepts variables of type `text`. Enter a message using plain text, a robotic task variable, or an expression. This field is required.
-   **Level**: Choose the message type to appear in the execution log:
    -   **TRACE**: Send a TRACE message to the execution log.
    -   **DEBUG**: Send a DEBUG message to the execution log.
    -   **INFO**: Send an INFO message to the execution log.
    -   **WARN**: Send a WARN message to the execution log.
    -   **ERROR**: Send an ERROR message to the execution log.
    -   **FATAL**: Send a FATAL message to the execution log.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

### Example: Sending messages

To send a message to the execution log:

1.  In the Appian RPA console, go to the **Robotic Tasks** tab.
2.  Open a robotic task configuration.
3.  Click and hold the **LOG** action in the **Palette**.
4.  Drag and drop it to the section or action group where you want to add the action.
5.  In the **Message** field of the **ACTION CONFIGURATION** area, type the message you want to send the execution log. You can also use the expression editor to configure how the message is populated. To build a conditional message, use an [`if()`](../fnc_logical_if.html) statement in the expression. Note that the expression changes the message content, not the message type.
6.  Select the message **Level**: **TRACE**, **DEBUG**, **INFO**, **WARN**, **ERROR**, or **FATAL**.
7.  Configure **AFTER COMPLETION** parameters.
8.  Click **SAVE CHANGES**.

To send a different type of message (**INFO** vs. **ERROR**, for example) based on a condition in your robotic task, integrate a conditional action into the workflow:

1.  Click and hold the **IS EXPRESSION TRUE?** action in the **Palette**.
2.  Drag and drop it to the section or action group where you want to add the action.
3.  In the **CONFIGURATION** field of the **ACTION CONFIGURATION** area, type an expression for the condition. In this example, the expression simply evaluates if a robotic task variable exists. If it is null, we want to send an error message to the console:

    ```
    1
    2
    3
     if(isnull(pv!stockPrice),
     true,
     false)
    ```

4.  Add a **LOG** action to the `Yes` flow.
5.  Enter an error message into the **Message** field.
6.  Select **ERROR** from the **LEVEL** field.
7.  Click **SAVE CHANGES**.

## Pause

This action adds a pause in the robotic task execution. A pause can be useful between two actions if the robot needs time to load before further action. For example, if a large report takes a few extra seconds to load, you can use the **Pause** action to ask the robotic task to wait before proceeding to the next action in the workflow.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Use default time**: Use the default time to pause. This value is specified in the [**Set pause duration**](#set-pause-duration) action.
-   **Enter time**: Enter a custom time to pause, in milliseconds. This field accepts variables of type `text`. Enter a path using plain text, a robotic task variable, or an expression.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Reserve credential

This action reserves a [credential entry](how-to-navigate-console.html#credentials) to ensure the robotic task has access to that credential during runtime and can pass it to a robotic subtask.

See [Robotic Subtasks](robotic-subtask.html) for guidance on how to use the reserved credential in a robotic subtask.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Selection method**: Choose whether to use any available credential, or a specific credential entry. Additional options appear based on your selection:
    -   **Any available credential**: When selected, a **Select application** dropdown menu appears for you to select the application to use. The robotic task uses any available credential for the selected application.
    -   **Specific credential**: When selected, a **Select credential** dropdown menu appears for you to select a credential entry to use.

### Output

Note that this action uses the `Credential` data type, which is unique to RPA and can't be used in expressions, casting, or referenced as a parameter in an Appian process model.

Save the reserved credential to a variable so you can [reference it in a robotic subtask](robotic-subtask.html).

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Send screenshot

This action sends a screenshot of the host machine to the console. The screenshot is taken immediately when this action begins, and you can add an optional description to include with it.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Description**: Add an optional description of the screenshot to send to the console. This field accepts variables of type `text`. Enter a path using plain text, a robotic task variable, or an expression.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the workflow.

## Set pause duration

The **Set pause duration** action allows you to set a variety of pauses in a workflow.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Type**: Select the following pause types:
    -   **Character pause**: Sets the length of time to pause in milliseconds after each character is typed.
    -   **Default pause**: Sets the default length of time to pause in milliseconds when calling the _pause()_ action.
-   **Duration (ms)**: For the selected pause type, enter the length of time to pause, in milliseconds. This field accepts variables of type `text`. Enter a path using plain text, a robotic task variable, or an expression.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...