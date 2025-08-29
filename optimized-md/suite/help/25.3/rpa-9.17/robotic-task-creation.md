---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robotic-task-creation.html
original_path: rpa-9.17/robotic-task-creation.html
version: "25.3"
title: "Create a new Robotic Task"
page_id: "rpa-9.17/robotic-task-creation"
section: "Create a robotic task"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a new Robotic Task

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page discusses how to create a robotic task in Appian Designer.

If you are new to Appian RPA, see the [Robotic Tasks](robotic-task-definition.html) topic in the Learn section for an introduction to robotic tasks.

## Create a robotic task

**Required role:** [Developer or Administrator](learn-user-settings.html#rpa-roles)

Robotic tasks are created in Appian Designer.

To create a robotic task:

1.  In the [list of design objects](../objects-view.html), click **NEW > Robotic Task**.
    ![new-robotic-task-menu.png](images/new-robotic-task-menu.png)
2.  Configure the following properties:

    | **Property** | **Description** |
    | --- | --- |
    | Name | Name to identify the robotic task. This value must be unique. Spaces are not supported, so consider using underscores to separate words. It is a best practice to preface the name with the application specific prefix. |
    | Description | Supplemental information about the robotic task that is displayed in the Appian Designer **Objects** view. |
    | Robot Pools to Add | Select the robot pool(s) responsible for executing this robotic task. |

3.  Click **Create**. The Review Robotic Task Security dialog displays.
4.  [Configure security](#security) for the robotic task.
5.  Click **Save**. Appian creates the robotic task and you're brought to the [robotic task configuration](robotic-task-configuration.html) page.

Immediately after you create the robotic task, you need to configure the robotic task's definition and technical details. See [Configure a robotic task](robotic-task-configuration.html) to get started.

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...