---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-operating-system.html
original_path: rpa-9.17/actions-operating-system.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Operating System Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

**Operating System** actions enable you to interact with elements of the host machine's operating system. For example, you can use this action to end processes and interact with the clipboard.

This page describes the **Operating System** actions.

### Using the Operating System actions

Operating System actions are listed in the **Operating System** area of the palette.

-   [End process](#end-process)
-   [Get active window title](#get-active-window-title)
-   [Get clipboard value](#get-clipboard-value)
-   [Set clipboard value](#set-clipboard-value)

## End process

This action ends a process, using its name to identify it. The action first tries to end the process gracefully, but the action will force the process to end if necessary. This action is only supported on Windows and Ubuntu host machines.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Name**: Enter the name of the process to end. This field lets you enter a text string, choose a variable, or use the expression editor. The process name much match exactly. This field doesn't support regular expressions.
-   **End process for all users**: Check this box to end the process for all users, not just the user account currently using the host machine.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Get active window title

This action returns the title for the active window on the host machine. This action is only supported on Windows and Ubuntu host machines.

You can configure **OUTPUTS** and **AFTER COMPLETION** parameters for this action.

### Output

In the **OUTPUTS** area of the **ACTION CONFIGURATION** pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Get clipboard value

This action returns the content of the system's clipboard as text.

You can configure **OUTPUTS** and **AFTER COMPLETION** parameters for this action.

### Output

In the **OUTPUTS** area of the **ACTION CONFIGURATION** pane, configure the following parameters to store this result:

-   **Operator**: Select an option to store the result as a single-value variable (`is stored as`) or add the result as a multiple-value variable (`is appended to`).
-   **Target**: Enter the name of the robotic task variable where you want to store or append the result. If your variable is type CDT, you can specify which field of a CDT to store the result into using dot notation.

### After completion

In the **AFTER COMPLETION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Set clipboard value

This action sets the content of the system's clipboard as text.

You can configure **CONFIGURATION** and **AFTER COMPLETION** parameters for this action.

### Configuration

In the **CONFIGURATION** area of the **ACTION CONFIGURATION** pane, configure the following parameters:

-   **Text**: The text you want to capture on the host machine's clipboard. This field lets you enter a text string, choose a variable, or use the expression editor. If you leave the field blank, the clipboard is cleared.

### After completion

In the **AFTER COMPLETION** area of the action pane, configure the following parameters:

-   **Wait before executing next action**: Enter the number of seconds the robotic task waits before it continues to the next action in the robotic task definition.
-   **Take a screenshot**: If you select this option, the robotic task takes a screenshot of the host machine immediately after the action completes successfully.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...