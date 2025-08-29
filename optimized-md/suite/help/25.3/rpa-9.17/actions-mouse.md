---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-mouse.html
original_path: rpa-9.17/actions-mouse.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Mouse Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Moving the mouse and clicking elements are two primary ways a robotic task interacts with a user interface. Appian RPA includes **Mouse** actions to make this type of action easier to integrate into your robotic task.

This page describes the methods you can use to integrate mouse actions in your robotic task. If you need to extend Appian RPA capabilities, you can use Java to create [workflow libraries](../libraries.html) for robotic tasks.

### Using the Mouse actions

Mouse actions are listed in the **Mouse** area of the palette.

-   [Click](#click)
-   [Drag](#drag)
-   [Get cursor properties](#get-cursor-properties)
-   [Move](#move)
-   [Release](#release)

## Click

This action performs different types of click actions, either on the cursor's current location or a position you specify using coordinates. You can choose how many clicks to perform, and which button to use (left or right).

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Click on…**:
    -   **Current mouse position**: When selected, the mouse clicks on its current position on the screen.
    -   **Provided mouse position**:
        -   **X Coordinate**: The X coordinate where the mouse should be positioned and then click. This field can be configured using the expression editor.
        -   **Y Coordinate**: The Y coordinate where the mouse should be positioned and then click. This field can be configured using the expression editor.
-   **Button**: Choose to click the **Left** or **Right** button on the mouse. If you choose **Right** click, only **Single click** is supported for the **Action**, described below.
-   **Action**: Choose the click action to perform: **Single click**, **Double click**, **Hold**, **Custom**.
    -   **Clicks**: If the **Custom** action is selected, specify the number of times the mouse should click.
    -   **Delay**: If the **Custom** action is selected, specify how long the mouse should wait to click, in milliseconds.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Drag

This action asks the robotic task to click and drag the mouse. This action can be used to click and hold an element on the screen and move the cursor to another point. In this way, the **Drag** action can be used to drag and drop an item, as well as select text on the screen. This action can also select an area on the screen using a set of beginning coordinates and ending coordinates, highlighting everything in between.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Start from…**: Choose where the mouse should begin dragging across the screen to select an area. You can choose the **Current mouse position** or **Provided mouse position** and specify coordinates:
    -   **X Coordinate (start)**: The X coordinate where the mouse should be positioned when it starts the drag operation. This option is visible only when **Provided mouse position** is selected for **Start from…**. This field can be configured using the expression editor.
    -   **Y Coordinate (start)**: The Y coordinate where the mouse should be positioned when it starts the drag operation. This option is visible only when **Provided mouse position** is selected for **Start from…**. This field can be configured using the expression editor.
-   Choose where the mouse should end dragging across the screen to select an area.
    -   **X Coordinate (end)**: The X coordinate where the mouse should be positioned when it ends the drag operation. This field can be configured using the expression editor.
    -   **Y Coordinate (end)**: The Y coordinate where the mouse should be positioned when it ends the drag operation. This field can be configured using the expression editor.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Get cursor properties

This action returns details about the cursor in the form of a custom data type called `CursorProperties`. This information can be used to populate additional options or actions. For example, if this action determines that the cursor is an hour glass, you can configure it to wait until the current screen is loaded to proceed in the workflow. `CursorProperties` contains the following properties:

| Property | Type | Description |
| --- | --- | --- |
| `position` | Point | X and Y coordinates marking the cursor's current position. |
| `color` | String | The color of the pixel the cursor is on, in hexadecimal format. |
| `type` | String | The cursor type. Values include `ARROW`, `CLOCK`, `CROSS`, `HAND`, `HELP`, and `SIZE`. This only returns a value if your host machine is using Windows; otherwise, it returns `null` for Mac and Linux. |

You can configure **OUTPUTS** and **AFTER COMPLETION** parameters for this action.

### Output

This action returns the `CursorProperties` custom data type.

In the **OUTPUTS** area of the **ACTION CONFIGURATION** pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

Once the properties are stored in a robotic task variable, you can use dot notation in subsequent actions to return the values.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Move

This action enables the robotic task to move the cursor to a set of coordinates on the screen.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **X Coordinate**: The X coordinate where the mouse should be positioned. This field can be configured using the expression editor.
-   **Y Coordinate**: The Y coordinate where the mouse should be positioned. This field can be configured using the expression editor.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Release

This action releases the currently clicked button.

You can configure the following **AFTER COMPLETION** parameters for this action:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Example: Open the Windows Start menu

To demonstrate how to use the Mouse actions, we'll configure an action to open the _Start_ menu on a Windows machine:

1.  Go to the Appian RPA Console and open the **Robotic Tasks** tab.
2.  Open a robotic task configuration and navigate to the **Edit** tab.
3.  Click and hold the **CLICK** action in the **Palette**.
4.  Drag and drop it to the section or action group where you want to add the action.
5.  In the **Click On** area of the **ACTION CONFIGURATION** pane, choose **Other position**.
6.  Enter the X and Y coordinates of where the _Start_ menu appears on the screen.
7.  In the **Interaction** area, configure the click behavior. Choose the **Left** mouse button to perform a **Single click**.
8.  Click **SAVE CHANGES** in the page toolbar.

This action in the workflow simply clicks the area of the screen where the _Start_ menu appears, which opens it. Configure additional actions in the workflow to move the mouse to a specific area of the menu and click those elements.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...