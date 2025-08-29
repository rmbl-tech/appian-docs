---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robotic-task-configuration.html
original_path: rpa-9.17/robotic-task-configuration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure a Robotic Task

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

This page describes how to configure a robotic task. Robotic task configuration is organized into three tabs:

-   [**Edit**](configure-edit-tab.html) ![up arrow](images/up-arrow.png): Settings for robotic task definition and variables.
-   [**General Information**](configure-general-information-tab.html) ![up arrow](images/up-arrow.png): General settings for the robotic task itself, including name, priority, description.
-   [**Advanced Configuration**](configure-advanced-configuration-tab.html) ![up arrow](images/up-arrow.png): Settings related to custom code, including technical settings such as the repository and technology that power the robotic task. This tab also allows you to manage support files.

You configure these settings when you create a robotic task. You can change these settings at any time.

## Process Overview

To configure a robotic task:

1.  In the [list of design objects](../objects-view.html), find the robotic task you want to configure in the list and click its name. A new window displays and you are brought to the robotic task configuration screen.
2.  [Configure the **Edit** settings](configure-edit-tab.html). ![up arrow](images/up-arrow.png)
3.  [Configure the **General Information** settings](configure-general-information-tab.html). ![up arrow](images/up-arrow.png)
4.  [Configure the **Advanced Configuration** settings](configure-advanced-configuration-tab.html). ![up arrow](images/up-arrow.png) (Optional)
5.  Click **SAVE CHANGES** in the toolbar.

## Navigate the robotic task definition

The following image highlights the interface elements that you use to set up a robotic task definition:

1.  [Palette](#1-palette)
2.  [Navigation options](#2-navigation-options)
3.  [Sections](#3-sections)
4.  [Action Configuration](#4-action-configuration)
5.  [Variables](#5-variables)
6.  [Test](#6-test)
7.  [Task Recorder](#7-task-recorder)

[![Example of the robotic task definition](images/rt-definition-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1382)

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

## See also

-   [Configure a Robotic Subtask](robotic-subtask-configuration.html)
-   [Task Recorder](learn-task-recorder.html)
-   [Manage Object Versions](../Managing_Object_Versions.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...