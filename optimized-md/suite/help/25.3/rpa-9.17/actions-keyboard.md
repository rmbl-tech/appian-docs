---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-keyboard.html
original_path: rpa-9.17/actions-keyboard.html
version: "25.3"
title: "Keyboard Actions"
page_id: "rpa-9.17/actions-keyboard"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Keyboard Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

To input information or complete related action, a robotic task may need to interact with keys on the keyboard as a human being would. The **Keyboard** actions tell the robotic task to mimic interaction with the keyboard, such as pressing enter, typing text, or releasing a key it previously activated.

This page describes how to integrate Keyboard actions into your robotic task, which provides an easier and more robust development experience.

If you need to extend Appian RPA capabilities, you can use Java to create [workflow libraries](../libraries.html) for robotic tasks.

### Using the Keyboard actions

Keyboard actions are listed in the **Keyboard** area of the palette.

-   [Press keyboard shortcuts](#press-keyboard-shortcuts)
-   [Type text](#type-text)

**Tip:**  Keyboard actions supports both Unicode and ASCII. You can use Keyboard actions to type Unicode characters into programs that support Unicode. However, you will only be able to type ASCII and extended ASCII characters in programs that do not support Unicode.

If you're running the robotic task on a Mac host machine, you'll need to [activate the Unicode Hex Input keyboard](https://www.webnots.com/how-to-use-unicode-hex-input-method-in-mac) for this to work properly.

## Press keyboard shortcuts

The **Press keyboard shortcuts** action enables the robotic task to use keyboard shortcuts or other combinations of keys to interact with the host machine. For example, you could configure this action to press the **Control** + **C** keys to copy selected text.

### Configuration

This action contains the following configurations:

-   **Modifier keys**: Choose the modifier keys to use in this combination. You can select multiple modifier keys to use. Options include **Alt/Opt**, **Ctrl**, **Meta/Cmd**, **Shift**, and **Win**.
-   **Additional keys**: Select additional keys to use in the combination. Options include **Backspace**, **Characters**, **Delete**, **Down**, **End**, **Enter**, **Escape**, **Function**, **Home**, **Insert**, **Left**, **Page Down**, **Page Up**, **Right**, **Space**, **Tab**, and **Up**. If you choose **Characters**, input what to type using plain text, a robotic task variable, or the expression editor. Select **No key** if you don't want to press additional keys using this action.
-   **Interaction**: Choose the hold and repetition behavior for the key combination.
    -   **Press and release keys**: When selected, the robotic task presses the keys and releases immediately.
        -   This interaction requires you to select a **Modifier key** or **Additional keys**. **No key** is not supported for **Additional keys** in this interaction.
    -   **Press keys multiple times**: When selected, the robotic task presses the key combination the specified number of repetitions:
        -   **Number of repetitions**: Input the number of times the robotic task should repeat pressing this key combination.
        -   **Delay between repetitions**: Input the amount of time the robotic task should wait between repeatedly pressing this key combination. This duration is specified in milliseconds.
        -   This interaction requires you to select a **Modifier key** or **Additional keys**. **No key** is not supported for **Additional keys** in this interaction.
    -   **Press and hold keys**: When selected, the robotic task presses and holds the keys. The keys are held until they are release in another action using the **Release keys** interaction.

        -   This interaction requires you to select a **Modifier key**.

        **Note:**  When using the **Press and hold keys** interaction, remember to also use the **Release keys** interaction at the appropriate time in the workflow.

    -   **Release keys**: When selected, the robotic task release the keys if they were previously pressed and held.
        -   This interaction requires you to select a **Modifier key**.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the workflow.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Type text

The **Type Text** action mimics a human inputting text using the keyboard. You can use this action to populate fields with text values [as well as credentials](manage-credentials.html) saved in Appian RPA.

### Configuration

This action contains the following configurations:

-   **Action**: Lets you choose the text to type or input. The options include:
    -   **Type text**: When selected, a text box appears where you can enter text for the robotic task to use. You can also populate this field using a robotic task variable or the expression editor.
    -   **Type username**: Select a username associated with a credential entry. To start, choose the selection method for the credential:
        -   **Selection method**: Choose whether to use any available credential for an application, or a specific credential entry. Additional options appear based on your selection.
            -   **Any available credential**: When selected, a **Select application** dropdown menu appears for you to select the application to use. The robotic task uses any available credential's username for the selected application.
            -   **Specific credential**: When selected, a **Select credential** dropdown menu appears for you to select a credential entry to use. Each entry shows the credential's application name and username. The robotic task will use the username associated with the credential.
            -   **Reserved credential**: Choose a reserved credential. This option applies only when you're using the current robotic task as a [robotic subtask](robotic-subtask.html). You can select a credential that was reserved and saved to a variable in the parent robotic task.
    -   **Type password**: Select a password associated with a credential entry. To start, choose the selection method for the credential:
        -   **Selection method**: Choose whether to use a password associated with a previously referenced credential, or a specific credential entry. Additional options appear based on your selection.
            -   **Previously referenced credential**: When selected, a **Select application** dropdown menu appears for you to select the application associated with a credential referenced previously in the robot's workflow. The robotic task uses the password associated the selected application and previously referenced credential. Note that the robotic task execution will fail if it attempts to use a password based on a previously referenced credential and no credential was added earlier in the robotic task. First input the username, and then use this option to input the related password.
            -   **Specific credential**: When selected, a **Select credential** dropdown menu appears for you to select a credential entry to use. Each entry shows the credential's application name and username. The robotic task will use the password associated with the credential.
-   **Delay between keystrokes**: Configure how long the robotic task should wait between keystrokes as it types.
    -   **Use default delay**: When selected, the robotic task waits the default duration (in milliseconds) between typing each key. You can configure the default delay using the **Set pause duration** action in **Execution Actions**.
    -   **Enter custom delay**: When selected, enter the duration (in milliseconds) in the **Custom delay** field.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the workflow.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine after the action completes. If the action failed, the screenshot is taken immediately before the exception is thrown and cleanup is started. If the action completed successfully, the screenshot is taken immediately after the action is performed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...