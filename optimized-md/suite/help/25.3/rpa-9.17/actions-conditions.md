---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-conditions.html
original_path: rpa-9.17/actions-conditions.html
version: "25.3"
title: "Conditions Actions"
page_id: "rpa-9.17/actions-conditions"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Conditions Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

To make your robotic task more dynamic and responsive, you can integrate conditional actions. These actions route the robotic task in different ways to perform different actions based on the condition it evaluates. Conditional actions are Booleans, meaning they evaluate to `true` or `false`.

Conditional actions are listed in the **Conditions** area of the palette.

-   [Is expression true?](#is-expression-true)
-   [Does browser window title match?](#does-browser-window-title-match)
-   [Is web attribute present?](#wait-for-attribute)
-   [Is web element present?](#Is-element-present)
-   [Is robot available?](#check-if-robot-available)
-   [Does file or folder exist?](#check-if-file-or-folder-exists)
-   [Does desktop window title match?](#wait-for-desktop-window-title)
-   [Is application element present?](#wait-for-element)
-   [Is unique application element present?](#is-application-element-present)

### Example

Suppose you want a robotic task to use the information stored in a variable (`pv!myVariable`) to fill a form field on a website. But before you do that, you want to check that the variable is populated.

Using the conditional action **Is expression true?**, you can evaluate if a robotic task variable is empty or not. You'll write an expression such as `a!isNotNullOrEmpty(pv!myVariable)`. If the variable is populated, you can configure the robotic task to proceed to the next action and use the variable text to fill the form field. But if the variable is empty, however, you can configure the robotic task to try to retrieve that information before it proceeds.

![rpa-conditional-flow](images/rpa-conditional-flow.png)

## Is expression true?

The **Is expression true?** action allows you to write and evaluate [Appian expressions](../Expressions.html) that return `true` or `false`. If the result is not `true` or `false`, the value is [cast](../Casting.html#general-casting) to a Boolean type. For example, non-zero values like `-1, 1, 2` return `true`, and `0` returns `false`.

### Configuration

Click **Edit** to enter an expression. Enter an Appian expression. As you type, the editor suggests functions and objects to reference in your expression.

### Output

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Does browser window title match?

This action lets you wait for a window with a specific title before the robotic task continues.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

-   **Window title**: Enter the window title the robotic task should wait for, using text or the expression editor. This field also accepts regular expression (regex) wildcards such as `*` and `?` to search for the query in the window title. For example, to search for a title starting with `Appian`, enter `Appian*` in this field.
-   **Wait time**: Lets you specify the maximum amount of time the robotic task should wait for the window title before moving on. If the window title is found before the defined time, it will continue as soon as the window title is found. Choose from these options:
    -   **Use default max wait time**: When selected, the robotic task waits for the time you set in the [_Set timeout in seconds_ action](actions-browser.html#set-timeout-in-seconds). If this time elapses without finding the window title, the robotic task continues to the next action in the workflow.
    -   **Enter max wait time**: When selected, you can enter the maximum time (in seconds) the robotic task should wait. This number must be greater than zero. If this time elapses without finding the window title, the action completes.
-   **Activate window once found**: Choose whether to make the window active once located. Use this if you want to interact with an element in the window using subsequent actions in the workflow. On Windows machines, this option brings the browser window to the foreground on the screen.
-   **Fail if…**: Determines the condition under which the action should fail. Available options are:
    -   **Window title doesn't match**: The text or expression in **Window title** doesn't match or isn't found among the windows available.

### Output

This action returns a Boolean value.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Is web attribute present?

This action lets you wait for one or more elements to have a specific attribute before the robotic task continues.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

#### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameters:

-   **Selector**: Lets you identify an element on the web page based on a [Selenium By class](https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/By.html) and matching value. The action options include:
    -   **ID**
    -   **Link Text**
    -   **Partial Link Text**
    -   **Name**
    -   **Tag Name**
    -   **XPath**
    -   **Class Name**
    -   **CSS Selector**
-   **Wait time**: Lets you specify the maximum amount of time the robotic task should wait for the element before moving on. If the element is found before the defined time, it will continue as soon as the element is found. Choose from these options:
    -   **Use default max wait time**: When selected, the robotic task waits for the time you set in the [_Set timeout in seconds_ action](actions-browser.html#set-timeout-in-seconds). If this time elapses without finding the element, the robotic task continues to the next action in the workflow.
    -   **Enter max wait time**: When selected, you can enter the maximum time (in seconds) the robotic task should wait. This number must be greater than zero. If this time elapses without finding the element, the action completes.
-   **Attribute value to wait for**:
    -   **Value**
    -   **Hypertext Reference (href)**
    -   **Text (Returns as plain text, contains no HTML)**
    -   **Image Source (src)**
    -   **Class Name**
    -   **Is Enabled?**
    -   **Is Displayed?**
    -   **Is Multiple?**
    -   **Is Selected?**
    -   **Other**
-   **Fail if…**: Determines the condition under which the action should fail. Available options are:
    -   **Element not found**: After the configured wait time, the attribute still does not exist on the web page. Use this if the attribute must be found for the robotic task to continue.
    -   **More than one element is found**: Multiple elements on the page matched the selection criteria as defined in **Selector**. Use this if you only expected to find one element.

#### Output

This action returns a Boolean value.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

#### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Is web element present?

This action checks if the specified element is present in the web page.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **Selector** dropdown, select the element attribute to check for based on a [Selenium By class](https://www.selenium.dev/selenium/docs/api/java/org/openqa/selenium/By.html) and matching value. The options include:

-   **ID**
-   **Link Text**
-   **Partial Link Text**
-   **Name**
-   **Tag Name**
-   **XPath**
-   **Class Name**
-   **CSS Selector**

### Output

This action returns a Boolean value.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Is robot available?

You can configure robots to run at certain days and times. The **Is robot available?** action is useful if the robot works with an application that is only available on certain days and times. You can use this action during execution to check if the current robot can still run. This action has no configuration parameters because it simply checks to see if the current robot can continue to run.

You can configure **OUTPUTS** and **AFTER COMPLETION** parameters for this action.

### Output

This action returns a Boolean. If the robotic task is available, it returns `true`. The result is `false` if the robotic task isn't available.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Does file or folder exist?

This action checks to see if a file or folder exists, based on the path you specify.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the action pane, configure the following parameter:

-   **Path**: Specify the path of the file or folder you want to check exists. You can enter a text string, choose a variable, or use the expression editor.

### Output

This action returns a Boolean value:

-   `true` if the file or folder is found
-   `false` if the file or folder is not found

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Does desktop window title match?

This action waits for a window with the specified title to appear on the host machine, using the specified timeout. You can use regular expressions with wildcards in the **Window title** field. You can configure the action to activate the window if the title is found, or to throw an exception if the robot does not find the window. This action is only supported on Windows and Ubuntu host machines.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Window title**: Enter the title of the window you want the robotic task to locate. This field lets you enter a text string, choose a variable, or use the expression editor. You can use wildcards to search for the title. Use `*` to match any sequence of characters and and `?` to match a single character.
-   **Wait time**: Choose whether to **Use the default max wait time** (30 seconds), **Enter a max wait time**, or **Don't wait**.
-   **Interaction**: Check the box to **Activate window once found**.
-   **Fail if…**: Choose whether the action should fail if it doesn't locate any windows with titles matching your configuration.

### Output

This action returns a Boolean. It returns `true` if the robot locates a window with a matching title, and it returns `false` if it's unable to locate it.

In the **OUTPUTS** area of the action pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Is application element present?

This action tells the robotic task to wait for an element to appear on the screen. If the element isn't immediately present, the action waits for it to appear, based on the amount of time you configure. You can determine the conditions when this action fails if the element isn't found in the maximum amount of time specified.

You can configure **CONFIGURATION** and **OUTPUTS** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Element selector**: Choose how to identify the element to wait for.
    -   **Name**: Identify the element using a name.
    -   **Automation ID**: Identify the element using an Automation ID. Learn [how to use the AutomationID property](https://docs.microsoft.com/en-us/dotnet/framework/ui-automation/use-the-automationid-property).
    -   **Class name**: Identify the element using a class name.
    -   **Advanced**: Identify the element using a combination of **Name**, **Automation ID**, and **Class name**.
-   **Control type**
    -   **None**
    -   **Button**
    -   **CheckBox**
    -   **ComboBox**
    -   **Edit**
    -   **ListItem**
    -   **MenuItem**
    -   **Pane**
    -   **RadioButton**
    -   **TabItem**
    -   **TreeItem**
    -   **Window**
-   **Specify index**: Enter a value to identify an element by its index on the screen. The index can be helpful when more than one element has been found with the specified criteria and you want the one at the specified index. The index is 0-based. This field lets you enter a number, choose a variable, or use the expression editor.
-   **Fail if…**: Determines the condition under which the action should fail. Available options are:
    -   **Element not found**: After the configured wait time, the element still does not exist on the screen. Use this if the element must be found for the robotic task to continue.
    -   **More than one element is found**: Multiple elements on the page matched the selection criteria as defined in **Control type**. Use this if you only expected to find one element.
-   **Wait time**: Lets you specify the maximum amount of time the robotic task should wait for the element before moving on. If the element is found before the defined time, it will continue as soon as the element is found. Choose from these options:
    -   **Use default max wait time**: When selected, the robotic task waits for the default wait time of 30 seconds. If this time elapses without finding the element, the action completes.
    -   **Enter max wait time**: When selected, you can enter the maximum time (in seconds) the robotic task should wait. This number must be greater than zero. If this time elapses without finding the element, the action completes.
    -   **Don't wait**: If the element isn't found, the action completes without waiting.

### Output

This action returns a Boolean.

In the **OUTPUTS** area of the **ACTION CONFIGURATION** pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

## Is unique application element present?

This action enables the robotic task to determine if an element is present on the screen during execution. Specifically, this action doesn't wait to locate the element.

You can configure **CONFIGURATION**, **OUTPUTS**, and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Element selector**: Choose how to identify the element to interact with.
    -   **Name**: Identify the element using a name.
    -   **Automation ID**: Identify the element using an Automation ID. Learn [how to use the AutomationID property](https://docs.microsoft.com/en-us/dotnet/framework/ui-automation/use-the-automationid-property).
    -   **Class name**: Identify the element using a class name.
    -   **Advanced**: Identify the element using a combination of **Name**, **Automation ID**, and **Class name**.
-   **Control type**:
    -   **None**
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
-   **Consider not found when…**: Determines the condition under which the action should return `false`. Available options are:
    -   **More than one element is found**: Multiple elements on the page matched the selection criteria as defined in **Element selector**. Use this if you only expected to find one element.

### Output

This action returns a Boolean. It returns `true` if the element is present, and `false` if the element isn't present. It also returns `false` if more than one element is found and you selected this option under **Consider not found when…**.

In the **OUTPUTS** area of the **ACTION CONFIGURATION** pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...