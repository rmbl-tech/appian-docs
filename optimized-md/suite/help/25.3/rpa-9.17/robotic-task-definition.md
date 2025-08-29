---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robotic-task-definition.html
original_path: rpa-9.17/robotic-task-definition.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Robotic Tasks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction to robotic tasks

As one of its key objectives, Appian RPA replaces manual tasks with programmed robotic tasks. Robotic tasks interact with applications the same way that humans do, allowing them to perform repetitive tasks based on rules. This approach frees up human effort for tasks that require problem solving or personal interpretation. Robotic tasks provide another way to automate work using Appian. Orchestrate your automations directly in your application using integrations and process models. Bring your people, technology, and data together in a single workflow to build complete automations using low-code.

Unlike traditional automation, RPA is non-intrusive in nature. Robotic tasks don't necessarily require access to databases, nor do they need to communicate with computer systems by invoking functions, web services, or APIs. Instead, robotic tasks interact directly with the user interface. They mimic human interactions, moving the mouse, clicking on menu options, and entering or reading data from the screens.

Robotic tasks are added and configured by a developer, who can customize them using low-code development features such as drag-and-drop actions. For even faster development, developers can use the [Appian RPA task recorder](task-recorder.html). This tool captures your interactions with a web browser and automatically creates a matching, fully configured robotic task.

Robotic tasks are managed in the [Appian Designer](../welcome-app-designer.html), where administrators can execute and monitor robotic tasks. Administrators must also set up the environments where the robotic tasks run. These environments, known as host machines, can be physical or virtual machines (VMs). For production environments, we recommend using a dedicated machine, either physical or virtual, as the host machine.

Now that you're familiar with robotic tasks, you can start using them in your applications. In practice, robotic tasks and process models work together to automate tasks and events in Appian. A process model can trigger a robotic task, retrieve the results, and capture data as variable values to use later. Similarly, a robotic task can be configured to start an Appian process.

These pages can be helpful for starting RPA within a process model:

-   [Appian RPA design patterns](design-patterns.html)
-   [Build a robotic task](robotic-task-creation.html)
-   [Ways to start a robotic task](robotic-task-execution.html)

## What makes a good robotic task

Robotic tasks are intended to supplement human activity in an application. Robotic tasks don't possess the judgment that human beings have; so, there is some potential for the robotic task to encounter exceptions, or patterns the process doesn't know how to handle. Additionally, the robotic task may take a long time to execute due to application processing time. After all, the applications are designed to handle input from human beings, which is much slower than that of a robotic task.

Because of this behavior, any robotic task must be:

-   **Reliable**: Whatever the robotic task does, it must be done well. Without this guarantee, the robotic task should not go on. A robotic task that processes important information must always be confident of what it is doing. For example, if the robotic task is not on the window it should be at a given time, data loss could occur. Usually robotic tasks operate directly on production environments; so, reliability is very important at all phases.
-   **Resumable**: Robotic tasks must be designed so that a user can stop its execution at a given time and resume it without manual intervention on the execution machine. This is especially important for robotic tasks that take a long time or process a large number of items. If execution stops, either manually or due to an error, it must be able to be resumed.
-   **Traceable**: A robotic task must do everything it's supposed to do, and what it does must be reflected somewhere. At least, it must be reflected in the execution log, although its medium can be adjusted for easier reading and interpretation by the developer. If the user wants to access the log, it is advisable to make the information requirements and expectations clear so that a developer can build it into the robotic task during the development phase.

As with any business technology, you'll want to consider data security in every part of your robotic task. Visit the [Securing Data in Robotic Tasks](security-rpa.html#securing-data-in-a-robotic-task) page to learn more about data security in every phase of a robotic task.

## How do robotic tasks work?

This flowchart outlines the workflow within Appian RPA, where you create a robotic task, and through Appian RPA's capabilities, the robotic task is managed by Appian and performed by a robot.

[![images/robotic-task-flow.png](images/robotic-task-flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1383)

[![](images/robotic-task-flow.png)](#_)

## Robotic task definition

Robotic tasks follow a definition, or a sequence of tasks. The robotic task definition is the guide that leads the robotic task's operation, determining its starting point and driving it through a series of tasks and [actions](#1-palette).

A robotic task definition can be compared to a sequence of tasks performed by a human. Visually, the robotic task definition makes it easy to monitor a robotic task's operation. It enables a global view of all execution phases and allows you to analyze what action the robot is on, when it began, its duration, and its result.

For example, let's suppose one person should perform a task that involves gathering names and contact information from people who have sent their résumés through the company's website. This data then needs to be documented and saved in Notepad, using one line for each name.

Assuming that the data source will always contain at least one résumé, the definition could look like:

![rpa-workflow-example.png](images/rpa-workflow-example.png)

The robotic task definition mimics how a human would go through the process: The person would open Notepad first, then read a résumé, then write the candidate's name and contact information in Notepad. If there are more résumés, the cycle would go back and the person would read the next résumé. If there are no résumés left, the Notepad document would be be saved and closed, reaching the end of the whole process.

Defining the robotic task definition is the first and one of the most important steps for building robotic tasks. A good design will make the robot easier to develop.

**Tip:**  Looking to speed up your low-code robotic task development? Use the [task recorder](task-recorder.html) to capture your interactions in a web browser and automatically create actions in the robotic task definition.

## Conditions

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

## Loops

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

Action expressions in loops can reference function variables. Supported function variables in loops include:

| **Function Variable** | **Description** | **While** | **Repeat** | **For Each** |
| --- | --- | --- | --- | --- |
| `fv!index` | The current iteration of the loop, starting at 1. | Yes | Yes | Yes |
| `fv!isFirst` | `true` for the first iteration of a loop, otherwise `false`. | No | Yes | Yes |
| `fv!isLast` | `true` for the last iteration of a loop, otherwise `false`. | No | Yes | Yes |
| `fv!itemCount` | The total number of loop iterations. | No | Yes | Yes |
| `fv!item` | The current item. | No | No | Yes |

## Workflow libraries

A workflow library is a small piece of custom code that provides generic functionality. Libraries are useful because they provide actions that can be reused in a robotic task's workflow or source code to perform certain operations. For example, a library could establish a VPN or proxy connection. Learn more about [how libraries are used in robotic tasks](../libraries.html).

![rpa-toolbar-libraries.png](images/rpa-toolbar-libraries.png)

## Manage robotic tasks in Appian Designer

You can create and manage robotic tasks directly in [Appian Designer](../welcome-app-designer.html) using the same methods as other Appian objects. In the [Objects view](../objects-view.html) of the designer, it's easy to locate robotic tasks since they display alongside all of the other design objects. You can filter and search for robotic tasks using various details like their unique identifier, description, or name. You can remove robotic tasks - even in bulk - right from the Objects view.

[![screenshot of robotic tasks in Appian Designer](images/tasksindesigner.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1384)

[![](images/tasksindesigner.png)](#_)

## Versions

Each time you modify and save a robotic task, a new version is created. All processes that use the robotic task will use the latest version. Easily explore past versions or delete unnecessary versions. All versions are accessible to designers who can view the robotic task, and a robotic task can be reverted back to a previous version at any time.

**Note:**  Changes to the **Robot Pool**, **Permissions tags**, and **Support Files** fields do not create new versions.

For information on how to manage object versions, see [Managing Object Versions](../Managing_Object_Versions.html).

[![images/robotic-task-versions.png](images/robotic-task-versions.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1385)

[![](images/robotic-task-versions.png)](#_)

## Navigate the robotic task definition

The following image highlights the interface elements that you use to set up a robotic task definition:

1.  [Palette](#1-palette)
2.  [Navigation options](#2-navigation-options)
3.  [Sections](#3-sections)
4.  [Action Configuration](#4-action-configuration)
5.  [Variables](#5-variables)
6.  [Test](#6-test)
7.  [Task Recorder](#7-task-recorder)

[![Example of the robotic task definition](images/rt-definition-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1386)

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

## Security

The [security](../object-security.html) role map of a robotic task controls which developers can see or modify it and its properties. Unlike some other objects, Robotic Tasks never inherit security.

The following table outlines the actions that can be completed for each [permission level](../object-security.html#permission-levels-in-role-maps) in a robotic task's security role map:

| Robotic Task Actions | Admin | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| View definition | Yes | Yes | Yes | No |
| Export | Yes | Yes | Yes | No |
| Duplicate | Yes | Yes | Yes | No |
| Edit definition | Yes | Yes | No | No |
| Import new version | Yes | Yes | No | No |
| View security | Yes | Yes | No | No |
| Edit security | Yes | No | No | No |
| Delete | Yes | No | No | No |

| Execution Actions | Admin | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| Execute robotic task | Yes | Yes | Yes | No |
| Debug a robotic task | Yes | Yes | Yes | No |
| View list of executions | Yes | Yes | Yes | No |
| View execution details | Yes | Yes | Yes | No |
| Download execution artifacts | Yes | Yes | Yes | No |
| Look up execution information | Yes | Yes | Yes | No |
| Create or edit new robotic task | Yes | Yes | Yes | No |
| Pause execution | Yes | No | No | No |
| Stop/Abort execution | Yes | No | No | No |
| Delete execution | Yes | No | No | No |

## See also

For instructions on how to build a robotic task, see [Build in Appian RPA](build-rpa.html).

For instructions on how to execute a robotic task, see the [Methods for Robotic Task Execution](robotic-task-execution.html) topic.

For instructions on how to use the task recorder, see the [Task Recorder](learn-task-recorder.html) topic.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...