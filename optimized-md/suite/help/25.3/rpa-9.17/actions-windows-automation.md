---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-windows-automation.html
original_path: rpa-9.17/actions-windows-automation.html
version: "25.3"
title: "Windows Automation Actions"
page_id: "rpa-9.17/actions-windows-automation"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Windows Automation Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Developers can use **Windows Automation** low-code actions to interact with user interface elements of a host machine running Windows. The actions allow native interactions with Windows user interfaces, using properties such as automation IDs, control types, and names.

This page describes how to integrate Windows-specific actions into your robotic task, which provide an easier and more robust development experience.

If you need to extend Appian RPA capabilities, you can use Java to create [workflow libraries](../libraries.html) for robotic tasks.

**Tip:**  To make robotic task development even faster, you can use Appian RPA's [task recorder](task-recorder.html) to record common application actions and automatically add them to the workflow.

Windows Automation actions can only be used in robotic tasks that execute on host machines running Windows. Windows Automation actions do not work with JavaSwing apps.

### About Windows automation

Microsoft UI Automation is an accessibility framework for Windows applications. It is typically applied to assistive technologies, such as screen readers, but it can be used in Appian RPA to detect the attributes of elements on a screen and then act on them.

Microsoft's documentation for UI Automation describes the framework's capabilities in depth. Visit [Microsoft UI Automation](https://docs.microsoft.com/en-us/dotnet/framework/ui-automation/) to learn more.

**Tip:**  To help make your development experience faster and more reliable, you may want to use an accessibility development tool such as [Accessibility Insights](https://accessibilityinsights.io/) to capture the properties that identify user interface elements.

### Using the Windows Automation actions

Windows Automation actions are listed in the **Windows Automation** area of the pallete.

-   [Close application](#close-application)
-   [Get attribute](#get-attribute)
-   [Interact with element](#interact-with-element)
-   [Open application](#open-application)
-   [Set search context](#set-search-context)

## Close application

This action closes the application you specify. You can close the currently active application, or choose one by name.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Close active application**: Choose this option to close the active application on the host machine.
-   **Close application by process name**: Choose this to close an application by entering its name.
    -   **Process name**: Enter the name of the application to close, using its process name. For example: `notepad.exe`. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Fail if application is not found**: Check this box if you want this action to fail if unable to find the application specified.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Get attribute

This action captures the attribute of a specified element on the screen.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Element selector**: Choose how to identify the element where you want to capture the attribute.
    -   **Name**: Identify the element using a name.
    -   **Automation ID**: Identify the element using an Automation ID. Learn [how to use the AutomationID property](https://docs.microsoft.com/en-us/dotnet/framework/ui-automation/use-the-automationid-property).
    -   **Class name**: Identify the element using a class name.
    -   **Advanced**: Identify the element using a combination of **Name**, **Automation ID**, and **Class name**.
-   **Control type**:
    -   **Button**
    -   **CheckBox**
    -   **ComboBox**
    -   **Document**
    -   **Edit**
    -   **ListItem**
    -   **MenuItem**
    -   **Pane**
    -   **RadioButton**
    -   **TabItem**
    -   **Text**
    -   **TreeItem**
    -   **Window**
-   **Specify index**: Enter a value to identify an element by its index on the screen. The index can be helpful when more than one element has been found with the specified criteria and you want the one at the specified index. The index is 0-based. This field lets you enter a number, choose a variable, or use the expression editor.
-   **Attribute**: Choose which attribute to capture. Options include:
    -   **Text**
    -   **Value**
    -   **Name**
    -   **Automation ID**
    -   **Class name**
    -   **Clickable point**
    -   **Control type**
    -   **Description**
    -   **Enabled**
    -   **Is expanded?**
    -   **Is modal?**
    -   **Is password?**
    -   **Is selected?**
    -   **Is status?**
    -   **Is offscreen?**
    -   **Process ID**
    -   **Provider description**
    -   **Read only**
    -   **State**
    -   **Title**
-   **Fail if…**: Determines the condition under which the action should fail. Available options are:
    -   **Element not found**: After the configured wait time, the element still does not exist on the screen. Use this if the element must be found for the robotic task to continue.
    -   **More than one element is found**: Multiple elements on the page matched the selection criteria as defined in **Element selector**. Use this if you only expected to find one element.
-   **Wait time**: Lets you specify the maximum amount of time the robotic task should wait for the element before moving on. If the element is found before the defined time, it will continue as soon as the element is found. Choose from these options:
    -   **Use default max wait time**: When selected, the robotic task waits for the default wait time of 30 seconds. If this time elapses without finding the element, the action completes.
    -   **Enter max wait time**: When selected, you can enter the maximum time (in seconds) the robotic task should wait. This number must be greater than zero. If this time elapses without finding the element, the action completes.
    -   **Don't wait**: If the element isn't found, the action completes without waiting.

### Output

This action returns different types depending on the chosen **Attribute**:

| Attribute | Returns |
| --- | --- |
| Text | String |
| Value | String |
| Name | String |
| Automation ID | String |
| Class name | String |
| Clickable point | Point |
| Control type | Integer |
| Description | String |
| Enabled | Boolean |
| Is expanded? | Boolean |
| Is modal? | Boolean |
| Is password? | Boolean |
| Is selected? | Boolean |
| Is status? | String |
| Is offscreen? | Boolean |
| Process ID | Integer |
| Provider description | String |
| Read only | Boolean |
| State | String |
| Title | String |

In the **OUTPUTS** area of the **ACTION CONFIGURATION** pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Interact with element

This action lets you interact with elements on the screen, based on the selection and configurations you specify.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Element selector**: Choose how to identify the element to interact with.
    -   **Name**: Identify the element using a name.
    -   **Automation ID**: Identify the element using an Automation ID. Learn [how to use the AutomationID property](https://docs.microsoft.com/en-us/dotnet/framework/ui-automation/use-the-automationid-property).
    -   **Class name**: Identify the element using a class name.
    -   **Advanced**: Identify the element using a combination of **Name**, **Automation ID**, and **Class name**.
-   **Control type**:
    -   **Button**
    -   **CheckBox**
    -   **ComboBox**
    -   **Edit**
    -   **ListItem**
    -   **MenuItem**
    -   **RadioButton**
    -   **TabItem**
    -   **TreeItem**
    -   **Window**
-   **Specify index**: Enter a value to identify an element by its index on the screen. The index can be helpful when more than one element has been found with the specified criteria and you want the one at the specified index. The index is 0-based. This field lets you enter a number, choose a variable, or use the expression editor.
-   **Fail if…**: Determines the condition under which the action should fail. Available options are:
    -   **Element not found**: After the configured wait time, the element still does not exist on the screen. Use this if the element must be found for the robotic task to continue.
    -   **More than one element is found**: Multiple elements on the page matched the selection criteria as defined in **Element selector**. Use this if you only expected to find one element.
-   **Wait time**: Lets you specify the maximum amount of time the robotic task should wait for the element before moving on. If the element is found before the defined time, it will continue as soon as the element is found. Choose from these options:
    -   **Use default max wait time**: When selected, the robotic task waits for the default wait time of 30 seconds. If this time elapses without finding the element, the action completes.
    -   **Enter max wait time**: When selected, you can enter the maximum time (in seconds) the robotic task should wait. This number must be greater than zero. If this time elapses without finding the element, the action completes.
    -   **Don't wait**: If the element isn't found, the action completes without waiting.
-   **Interaction**: Select the interaction to perform. The options change based on the **Control type** you select:

    | Control type | Interaction options |
    | --- | --- |
    | **Button** | **Click**, **Focus** |
    | **CheckBox** | **Focus**, **Toggle** |
    | **ComboBox** | **Collapse**, **Expand**, **Focus**, **Set value**. If using **Set value**, you can enter text, choose a variable, or use the expression editor in the **Value** field. |
    | **Edit** | **Set value**, **Update value with username**, **Update value with password**. If using **Set value**, you can enter text, choose a variable, or use the expression editor in the **Value** field. See below for instructions on using usernames and passwords. |
    | **ListItem** | **Click**, **Select** |
    | **MenuItem** | **Click**, **Collapse**, **Expand**. Use the **Expand** and **Collapse** interactions to open or close expandable menus. For example, use these interactions with the **Start** menu. Use the **Click** interaction on MenuItems that aren't expandable, such as distinct options in the menu. |
    | **RadioButton** | **Select**, **Add to selection**, **Remove from selection** |
    | **TabItem** | **Select** |
    | **TreeItem** | **Select**, **Click**, **Expand**, **Collapse** |
    | **Window** | **Close**, **Focus**, **Maximize**, **Minimize**, **Restore down** |

    When you select **Edit** as the **Control type**, you can update the element's value with a username or password. This configuration uses Appian RPA credentials to securely input this information.

    -   **Update value with username**: Select a username associated with a credential entry. To start, choose the selection method for the credential:
        -   **Selection method**: Choose whether to use any available credential for an application, or a specific credential entry. Additional options appear based on your selection.
            -   **Any available credential**: When selected, a **Select application** dropdown menu appears for you to select the application to use. The robotic task uses any available credential's username for the selected application.
            -   **Specific credential**: When selected, a **Select credential** dropdown menu appears for you to select a credential entry to use. Each entry shows the credential's application name and username. The robotic task will use the username associated with the credential.
            -   **Reserved credential**: Choose a reserved credential. This option applies only when you're using the current robotic task as a [robotic subtask](robotic-subtask.html). You can select a credential that was reserved and saved to a variable in the parent robotic task.
    -   **Update value with password**: Select a password associated with a credential entry. To start, choose the selection method for the credential:
        -   **Selection method**: Choose whether to use a password associated with a previously referenced credential, or a specific credential entry. Additional options appear based on your selection.
            -   **Previously referenced credential**: When selected, a **Select application** dropdown menu appears for you to select the application associated with a credential referenced previously in the robot's workflow. The robotic task uses the password associated the selected application and previously referenced credential. Note that the robotic task execution will fail if it attempts to use a password based on a previously referenced credential and no credential was added earlier in the robotic task. First input the username, and then use this option to input the related password.
            -   **Specific credential**: When selected, a **Select credential** dropdown menu appears for you to select a credential entry to use. Each entry shows the credential's application name and username. The robotic task will use the password associated with the credential.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Open application

This action tells the robotic task to open an application. If the application isn't already running, this action starts it. If the application was running, you can choose whether this action should start a new instance of that application. This action's configuration options also let you [set the context](#about-context) once the application is open.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Executable name**: Enter the name of the application to open, using its process name. For example: `notepad.exe`. This field lets you enter a text string, choose a variable, or use the expression editor.
    -   **Use first found application window**: Choose this option if you want to set the context to be the first application window that the robotic task finds.
    -   **Find by window title**: Choose this option if you want to set the context to be a window with a specific title.
        -   **Expected window title**: Enter the window title you want to set as the context. This field lets you enter a text string, choose a variable, or use the expression editor.
-   **Attach to a running instance of application**: If the application was previously running, select this option to have the action open the application as part of the running instance. If left unselected, the action will open another instance of the application.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Set search context

This action lets you change the context for the robotic task. After you set the context, such as a pane or window, subsequent actions take place within that area. Use this action when your robotic task needs to access fields of another open application or within a pop-up window opened by the current application.

### About context

Search context is the context within a robot can search for an element. If your search context is set as the Calculator window, then the robot can only find and interact with elements that are within that Calculator window. The actions **Open application** and **Set search context** always have a search context of the whole desktop. Therefore, these actions can find any application, window or pane within the desktop. The context for all the other Windows Automation actions is based on the most recent **Open application** or **Set search context** action.

For example, if you first open a Notepad application, open a Calculator application next, and then use the **Is application element present?** action, the robot will only be able to wait for elements within the Calculator window. To find and interact with any element or window outside the Calculator window, you must use the **Set search context** action to define the proper context.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Element selector**: Choose how to identify the element to set as the context.
    -   **Name**: Identify the element using a name.
    -   **Automation ID**: Identify the element using an Automation ID. Learn [how to use the AutomationID property](https://docs.microsoft.com/en-us/dotnet/framework/ui-automation/use-the-automationid-property).
    -   **Class name**: Identify the element using a class name.
    -   **Advanced**: Identify the element using a combination of **Name**, **Automation ID**, and **Class name**.
-   **Control type**:
    -   **Pane**
    -   **Window**
-   **Specify index**: Enter a value to identify an element by its index on the screen. The index can be helpful when more than one element has been found with the specified criteria and you want the one at the specified index. The index is 0-based. This field lets you enter a number, choose a variable, or use the expression editor.
-   **Fail if…**: Determines the condition under which the action should fail. Available options are:
    -   **Element not found**: After the configured wait time, the element still does not exist on the screen. Use this if the element must be found for the robotic task to continue.
    -   **More than one element is found**: Multiple elements on the page matched the selection criteria as defined in **Element selector**. Use this if you only expected to find one element.
-   **Wait time**: Lets you specify the maximum amount of time the robotic task should wait for the element before moving on. If the element is found before the defined time, it will continue as soon as the element is found. Choose from these options:
    -   **Use default max wait time**: When selected, the robotic task waits for the default wait time of 30 seconds. If this time elapses without finding the element, the action completes.
    -   **Enter max wait time**: When selected, you can enter the maximum time (in seconds) the robotic task should wait. This number must be greater than zero. If this time elapses without finding the element, the action completes.
    -   **Don't wait**: If the element isn't found, the action completes without waiting.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...