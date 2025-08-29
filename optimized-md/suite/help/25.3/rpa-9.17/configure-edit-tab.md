---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/configure-edit-tab.html
original_path: rpa-9.17/configure-edit-tab.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure the Edit Tab

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

On the **Edit** tab of the robotic task configuration page, you can configure the following settings:

-   [Robotic task definition](#robotic-task-definition)
-   [Robotic task variables](#robotic-task-variables)

![Example Edit Tab](images/example-edit-tab.png)

## Robotic task definition

Robotic tasks follow a specific sequence. The definition is the guide that leads the robotic task's operation, determining its starting point and driving it through a series of tasks and actions.

**Tip:**  Do you need more information about robotic tasks before you configure the Edit tab? The [Robotic Task Definition](robotic-task-definition.html) page has the information you need.

## Navigate the robotic task definition

The following image highlights the interface elements that you use to set up a robotic task definition:

1.  [Palette](#1-palette)
2.  [Navigation options](#2-navigation-options)
3.  [Sections](#3-sections)
4.  [Action Configuration](#4-action-configuration)
5.  [Variables](#5-variables)
6.  [Test](#6-test)
7.  [Task Recorder](#7-task-recorder)

[![Example of the robotic task definition](images/rt-definition-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1358)

[![](images/rt-definition-example.png)](#_)

### 1\. Palette

Similar to the Interface Designer, the **Palette** shows you the actions that are available to add to the robotic task. Use the search bar to quickly find an action by name, or browse the list of actions within each [low-code module](rpa-modules.html).

The Action Group action is part of the [General](actions-general.html) module and can help you organize actions that work together to achieve a desired outcome. For example, you may want to organize your robotic task definition so that login actions are contained in an action group. To add an action group to the robotic task definition, click and drag **Action Group** from the **Palette** to a section.

**Tip:**  As a best practice, limit each action in your robotic task to 12 or fewer nested actions. Having more than 12 nested actions can lead to performance problems. Instead, split the robotic task into smaller [robotic subtasks](actions-execution.html#execute-robotic-subtask) to prevent problems from occurring.

### 2\. Navigation options

At the top of the robotic task definition, you'll find options to help you find what you're looking for:

-   **Collapse** all action groups to see the task at a high level.
-   **Expand** all action groups and conditions to see the whole hierarchy of the robotic task definition.
-   **Search** to locate specific actions in the robotic task definition. Search is helpful when you need to make targeted changes in larger tasks, such as bulk changes or refactors. Search reveals which actions have configurations that match your search query, so you know which actions to update to keep the robotic task operational. The search capability also looks for matches in expressions within action configurations.

![rpa-workflow-navigation.png](images/rpa-workflow-navigation.png)

### 3\. Sections

By default, every robotic task definition has a **Setup**, **Main**, and a **Cleanup** section. Click the arrow in the section's toolbar to expand or collapse that section.

Within each section, you can drag and drop actions to new positions or delete an action by hovering over the action and clicking **Delete action**.

**Setup section**: Certain tasks may need to be completed to prepare the robot for an item execution. You can define those actions in the Setup section of the robotic task definition. If you use credentials in a Setup section, the credentials are reserved and won't be released until the Cleanup section successfully completes. This may impact credential availability if the setup and Cleanup sections are skipped for consecutive executions. See [**Execution Settings**](./configure-advanced-configuration-tab.html#execution-settings) to learn more about how the robotic task behaves when the Setup and Cleanup sections are skipped for consecutive executions.

**Cleanup section**: Whether the robotic task ended successfully or not, the end of an execution is a good moment to close the applications that the robotic task has opened or send the files generated during execution to the server. It's important to reset the robot to its previous conditions so subsequent robotic tasks can execute successfully. Without consistent starting conditions, other robotic tasks may not be able to start or complete. Remember that the steps you configure in this section only apply to the robotic task you're currently configuring. You don't need to add the Cleanup section to your main robotic task definition. The robotic task will always execute the cleanup actions.

![rpa-cleanup-section.png](images/rpa-cleanup-section.png)

**Tip:**  If the same robotic task executes multiple times consecutively, you have the option to [skip the Setup and Cleanup sections](./configure-advanced-configuration-tab.html#execution-settings) for faster executions.

### 4\. Action Configuration

When you add an action to the robotic task definition, the configuration options appear in the Action Configuration pane. The configuration options vary based on the action you're adding.

See the action documentation for details on each action's configuration options:

-   [General Actions](actions-general.html)
-   [Conditions](actions-conditions.html)
-   [Appian Services](actions-appian-services.html)
-   [Browser](actions-browser.html)
-   [Excel License Required Actions](actions-excel-license-required.html)
-   [Excel License Not Required Actions](actions-excel-nolicense.html)
-   [Execution](actions-execution.html)
-   [File System Actions](actions-file-management.html)
-   [Image Recognition](actions-image-recognition.html)
-   [Items](actions-items.html)
-   [Keyboard](actions-keyboard.html)
-   [Mouse](actions-mouse.html)
-   [Operating System](actions-operating-system.html)
-   [Windows Automation](actions-windows-automation.html)

### 5\. Variables

You can use robotic task variables to pass data between robotic task definition actions and other design objects like process models and interfaces. The robotic Variable grid should look familiar if you've worked with rule inputs in the Expression Editor or Interface Designer.

It's simple to reference your variables in a robotic task. Text fields that are found in the configuration options for robotic task actions allow you to select from a variable picker. Use the variable picker to choose a variable as a value for your robotic task. What's more, when you rename variables, Appian automatically updates their names throughout your entire robotic task.

See the [Robotic Task Variables](robotic-task-variables.html) topic for more detailed information.

To create a variable in a robotic task:

1.  Click **New Variable** in the **VARIABLES** section.
2.  Configure the variable details:
    -   **Name**: The name you will use to reference the variable. Only letters, numbers, and underscores are supported.
    -   **Type**: The data type of the variable. The `Credential` type is used to [reserve credentials](actions-execution.html#reserve-credential) for use in [robotic subtasks](robotic-subtask.html).
        -   **Note**: The following system types cannot be selected for a robotic task variable type: Encrypted Text, Time, complex system data types, and hidden CDTs. See the [Data Types](../Appian_Data_Types.html) page for a complete list of system data types.
    -   **Array (multiple value)**: Optional. Indicates if the variable can contain multiple values.
    -   **Initial Value**: Optional except for variables of type `Dropdown`. The default value of the variable at the start of the task.
    -   **Parameter**: Optional except for variables of type `Password` and `Dropdown`. Indicates if the variable can [pass values to the robotic task before it executes](robotic-task-variables.html#using-parameterized-variables). Before the robotic task executes, the user will be prompted to provide an input.
    -   **Required**: Optional. Requires a parameterized variable to have a value before a robotic task starts.
3.  Click **Create**.

### 6\. Test

The Test button launches the debugging tool to where you can go through the robotic task definition action-by-action and isolate where issues might arise. See the [Troubleshoot Appian RPA](troubleshoot.html) topic for detailed information about the debugging process.

### 7\. Task Recorder

The robotic task definition supports the [task recorder](task-recorder.html) tool. The task recorder can automatically record your browser interactions and translate them into robotic task actions. You can start a recording from a [section](#3-sections), [action group](actions-general.html#action-groups), or conditional flow path.

To start a recording:

1.  Hover over a section or an action group heading to reveal the **Start Recording** ![task-recorder-icon.png](images/task-recorder-icon.png) icon.
2.  Click **Start Recording** ![task-recorder-icon.png](images/task-recorder-icon.png).
3.  Before you can begin recording, choose an available **Robot** and **Browser**.
4.  Enter the webpage to visit in the **Navigate to URL** field.
5.  Click **OK**.

## Configure a robotic task definition

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

To configure a robotic task definition:

1.  In the [list of design objects](../objects-view.html), find the robotic task you want to edit in the list and click its name. A new window displays and you are brought to the robotic task configuration screen. The **Edit** tab is automatically selected.
2.  [Add actions to the robotic task definition](#add-actions-to-the-robotic-task-definition).
3.  [Add conditions](#conditions) and [loops](#loops).
4.  [Configure the actions you added](#configure-action).
5.  [Move actions](#move-an-action) or [delete actions](#delete-an-action) as needed.
6.  Click **SAVE CHANGES** in the page toolbar.

**Tip:**  Looking to speed up robotic task definition design? [Create robotic task definition sections using the task recorder](task-recorder.html).

### Add actions to the robotic task definition

To add an action to the robotic task definition:

1.  Click and hold an action in the **Palette**.
2.  Drag and drop it to the section or action group where you want to add the action.
3.  Click and drag the action to reorder it relative to the other actions in the section or action group.

That's it! You can configure the action in the [**Configuration Pane**](#configure-action).

**Tip:**  As a best practice, limit each action in your robotic task to 12 or fewer nested actions. Having more than 12 nested actions can lead to performance problems. Instead, split the robotic task into smaller [robotic subtasks](actions-execution.html#execute-robotic-subtask) to prevent problems from occurring.

#### Action groups

Action groups help you organize actions that work together to achieve a desired outcome. For example, you may want to organize your robotic task definition so that login actions are contained in an action group.

To add an action group to the robotic task definition, click and drag **Action Group** from the **Palette** to a section.

#### Conditions

The robotic task definition allows you to quickly configure conditional flows. Conditional flows are decision points for a robotic task's execution, where the path of the flow adjusts based on specified conditions. The results of conditional actions determine the path the robotic task will follow. Use conditional actions to make your robotic tasks more dynamic. For example, if a web element is present, copy the value; otherwise, add an error message to the log.

Conditional actions only return `true` or `false` and include:

-   [Is expression true?](actions-conditions.html#is-expression-true)
-   [Is web element present?](actions-conditions.html#Is-element-present)
-   [Is web attribute present?](actions-conditions.html#wait-for-attribute)
-   [Does browser window title match?](actions-conditions.html#does-browser-window-title-match)
-   [Is robot available?](actions-conditions.html#check-if-robot-available)
-   [Is file or folder present?](actions-conditions.html#check-if-file-or-folder-exists)
-   [Does desktop window title match?](actions-conditions.html#wait-for-desktop-window-title)
-   [Is unique application element present?](actions-conditions.html#is-application-element-present)
-   [Is application element present?](actions-conditions.html#wait-for-element)

When you place conditional actions in the robotic task definition, they automatically generate `Yes` or `No` flows to configure. Actions that return `true` map to `Yes` flows; actions that return `false` map to `No` flows. Add actions to the resulting flows just as you would for the main robotic task definition.

![Conditional action screenshot](images/Conditional-Action.png)

#### Loops

Loops repeat actions until a condition is satisfied. Use the **Loop** action to process items in a list such as files in a directory or line items on an invoice. RPA supports the following loop types:

-   **While**: Executes the loop until the loop expression returns `false`.
-   **Repeat**: Executes the loop a fixed number of times, equal to the integer in the **Iterations** field.
-   **For Each**: Executes the loop for each item in a list.

**Tip:**  Loops can't repeat more than 1000 times.

In the following example, the loop will execute the **Create a folder** and **Copy a file or folder** actions until the Loop Expression returns `false`.

![Screenshot of the loop action in the system](images/RPA-Loops.png)

To add and configure a _Loop_ action:

1.  Click and hold the _Loop_ action in the **Palette**.
2.  Drag and drop the action to a section or action group.
3.  Select a loop type from the Configuration Pane.
4.  Configure additional properties from the Configuration Pane depending on the loop type.
    -   While loops must have a loop expression.
    -   Repeat loops must have a number specified in the **Iterations** field.
5.  Drag and drop additional actions from the **Palette** into the loop action. Actions will only repeat when inside the Loop action.

Action expressions in loops can reference function variables (../Expressions.md). Supported function variables in loops include:

| **Function Variable** | **Description** | **While** | **Repeat** | **For Each** |
| --- | --- | --- | --- | --- |
| `fv!index` | The current iteration of the loop, starting at 1. | Yes | Yes | Yes |
| `fv!isFirst` | `true` for the first iteration of a loop, otherwise `false`. | No | Yes | Yes |
| `fv!isLast` | `true` for the last iteration of a loop, otherwise `false`. | No | Yes | Yes |
| `fv!itemCount` | The total number of loop iterations. | No | Yes | Yes |
| `fv!item` | The current item. | No | No | Yes |

### Configure an action

When you add an action to the robotic task definition, the configuration options appear in the **Configuration Pane** within the designer. The configuration options vary based on the action you're adding.

![rpa-new-designer-config.png](images/rpa-new-designer-config.png)

See the action documentation for details on each action's configuration options:

-   [General Actions](actions-general.html)
-   [Conditions](actions-conditions.html)
-   [Appian Services](actions-appian-services.html)
-   [Browser](actions-browser.html)
-   [Excel License Required Actions](actions-excel-license-required.html)
-   [Excel License Not Required Actions](actions-excel-nolicense.html)
-   [Execution](actions-execution.html)
-   [File System Actions](actions-file-management.html)
-   [Image Recognition](actions-image-recognition.html)
-   [Items](actions-items.html)
-   [Keyboard](actions-keyboard.html)
-   [Mouse](actions-mouse.html)
-   [Operating System](actions-operating-system.html)
-   [Windows Automation](actions-windows-automation.html)

1.  If your selected method includes **CONFIGURATION** parameters, configure the parameters as appropriate:

    -   Enter a static value.
    -   Select a [robotic task variable](configure-edit-tab.html#robotic-task-variables) from a picker.
    -   Use the Expression editor to write an [Appian expression](../Expressions.html). You can reference a robotic task variable in the Expression editor using `pv!` and concatenate variables as needed.

    For example:

    ![rpa-method-configuration-parameters](images/rpa-method-configuration-parameters.png)

2.  If your selected method includes **OUTPUT** parameters, configure the following parameters:
    -   **Operator**: Select an option to store the value as a single-value variable (`is stored as`) or add the value as a multiple-value variable (`is appended to`).
    -   **Target**: Enter the name of the robotic task variable where you want to store or append the value. If your variable is type CDT, you can specify which field of a CDT to store the value into using [dot notation](../Expressions.html).
3.  Configure the **AFTER COMPLETION** parameters:
    -   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
    -   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.
4.  Click **SAVE CHANGES** in the page toolbar.

### Move an action

To move a single action within a robotic task definition section, drag and drop the action to a new position.

### Delete an action

To delete an action, hover over the action and click **Delete action**.

## Robotic task variables

Robotic task variables can store and pass values in your robotic task's definition and even between your robotic task and other design objects.

Similar to process variables in a process model, robotic task variables are placeholders for data that can be accessed throughout the lifecycle of a robotic task. These variables can be referenced in actions to display values or to store an action's result value and use it later in other actions of a workflow. You can also set robotic task variables as parameters so they can be used as input fields in a robotic task's execution.

**Tip:**  Do you want more information about robotic task variables? The \[Robotic Task Variables\] page in the Learn category has more information to get you started.

### Create a new robotic task variable

Complete the following steps to create a new robotic task variable. You can also create robotic task variables as you record actions with the [task recorder](task-recorder.html)

1.  Go to the **Task** tab of robotic task configuration page.
2.  Find the **Variables** pane.
3.  Click **Add variable**.
    The Create Variable dialog displays.
    ![rpa_variables.png](./images/rpa-create-variables.png)
4.  Configure the following fields in the **Create Variable** dialog:

    | Field | Description |
    | --- | --- |
    | **Name** | The name of the robotic task variable. Only letters, numbers, and underscores are accepted. |
    | **Type** | The data type of the robotic task variable. Robotic task variables can be primitive data types, legacy instructions types, or custom data types (CDTs). The `Credential` type is used to [reserve credentials](actions-execution.html#reserve-credential) for use in [robotic subtasks](robotic-subtask.html).

    **Note**: The following system types cannot be selected for a robotic task variable type: Encrypted Text, Time, complex system data types, and hidden CDTs. See the [Data Types](../Appian_Data_Types.html) page for a complete list of system data types. |
    | **Array (multiple value)** | Lets the process variable accept an array of values. You cannot enter an initial value if this checkbox is selected. If your variable is a parameter and you select this checkbox, you can only pass one value when executing the robotic task from the console. To pass multiple list values in your input parameter, use the [Execute Robotic Task Smart Service](../Execute_Robotic_Process.html). |
    | **Initial value** | The default value of a robotic task variable. Note that you cannot provide an initial value if you select the **Array** checkbox, if your variable is type CDT, or if your variable is type _Date_ or _Date and Time_ and marked as a parameter. |
    | **Parameter?** | Allows variables to pass values to the robotic task before its execution. If selected, the variable will be used as an input field for the robotic task's execution. Input fields ask a user to provide data before a robotic task is executed. |
    | **Required?** | Requires that a parameterized variable has a value before the robotic task is executed from the **Execute robotic task** page in the Appian RPA console. |

5.  Click **CREATE**.

To edit a robotic task variable:

1.  Go to the **Edit** tab of the robotic task configuration page.
2.  Find the **Variables** pane.
3.  Click a variable name.
4.  Make your changes to the variable fields described above.
5.  Click **OK**.

To delete a robotic task variable:

1.  Go to the **Edit** tab of the robotic task configuration page.
2.  Find the **Variables** pane.
3.  Click a variable name.
4.  Click **DELETE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...