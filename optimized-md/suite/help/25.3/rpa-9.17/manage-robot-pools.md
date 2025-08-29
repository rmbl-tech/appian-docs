---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/manage-robot-pools.html
original_path: rpa-9.17/manage-robot-pools.html
version: "25.3"
title: "Manage Robot Pools"
page_id: "rpa-9.17/manage-robot-pools"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Robot Pools

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Robot pools are a design object that enable you to group robots based on their unique roles and capabilities. Robot pools can ensure that there is always a robot available and ready to handle any robotic task execution. This page discusses managing robots in the **Operations Console**.

If you are new to Appian RPA, see the [Robot Pools](robot-pool-object.html) topic in the Learn section for an introduction to robot pools.

[![images/oc-robot-pools-tab.png](images/oc-robot-pools-tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1367)

[![](images/oc-robot-pools-tab.png)](#_)

## Add or remove robot pool members

**Required role:** [Administrator](learn-user-settings.html#rpa-roles)

**Tip:**  You can only add or remove direct members to the robot pool. Direct members are robots added explicitly to the group, while indirect members are part of a robot pool that is itself a direct member of the group.

Complete the following steps to add or remove robot pool members:

1.  On the Robot Pools tab in the [Operations Console](manage-rpa.html#operations-console-overview), find the robot pool to which you want to add or remove robots and click its name.
    **Result**: A new screen displays where you can see details about the robot pool.
2.  Click **MANAGE ROBOTS**.
    **Result**: The Manage Robots window displays. ![oc-manage-robots-window.png](images/oc-manage-robots-window.png)
3.  Complete one of the following tasks.

    <table class="appianTable table table-striped"><tbody><tr><td class="cellshade"><strong>To…</strong></td><td class="cellshade"><strong>Select…</strong></td></tr><tr><td>add a robot</td><td><strong>Add Robot</strong>. A new row displays. Enter the name of the robot you want to add then click <strong>SAVE CHANGES</strong>.</td></tr><tr><td>remove a robot</td><td>the red <strong>X</strong> next to the robot(s) you want to remove then click <strong>SAVE CHANGES</strong>.</td></tr></tbody></table>

## View robot pool details

You can click on a robot pool to view the following details:

-   **Robot**: The name of the robot performing tasks.
-   **Robotic Task**: The specific robotic task executed by the robot.
-   **Execution ID**: A unique identifier for the robotic task execution.
-   **Status**: Current state of the task (e.g., Completed, Aborted, Error).
-   **Started by**: Identifies who started the execution.
-   **Requested**: The date and time when the execution was requested.
-   **Started**: The date and time when the execution began.
-   **Ended**: The date and time when the execution finished.
-   **Duration**: The total amount of time the execution took to complete.
-   **Name (under ROBOTIC TASKS)**: Names of the robotic tasks assigned to the robot pool.
-   **Total Executions (under ROBOTIC TASKS)**: Number of times the task has been executed.

[![images/robot-pool-detail-scr.gif](images/robot-pool-detail-scr.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1368)

[![](images/robot-pool-detail-scr.gif)](#_)

## See also

You can do more with robot pools in Appian Designer. Visit the [Robot Pools](robot-pool-object.html) page to learn more.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...