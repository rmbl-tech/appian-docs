---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/actions-general.html
original_path: rpa-9.17/actions-general.html
version: "25.3"
title: "General Actions"
page_id: "rpa-9.17/actions-general"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# General Actions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

General actions help make your processes more organized and flexible.

General actions are listed in the **General** area of the palette.

-   [Action Group](#action-groups)
-   [Loop](#loops)

## Action group

Action groups help you organize actions that work together to achieve a desired outcome. For example, you may want to organize your workflow so that login actions are contained in an action group.

To add an action group to the workflow, click and drag **Action Group** from the **Palette** to a section.

## Loop

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...