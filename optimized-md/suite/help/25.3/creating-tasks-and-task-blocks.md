---
source_url: https://docs.appian.com/suite/help/25.3/creating-tasks-and-task-blocks.html
original_path: creating-tasks-and-task-blocks.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Create Tasks and Task Blocks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

Tasks are the main driver of activity in your case management application and case workflow. They represent the work that your case workers complete to resolve a case. A workflow is a process made up of a series of tasks done by case workers and [workflow automations](creating-case-categories-and-case-types.html#adding-workflow-automations-to-case-types) done by the system to resolve issues and complete cases. Case Management Studio allows you to manage workflows, cases, tasks, and automations in a centralized place.

When managing your tasks, the Control Panel allows you to dynamically change the workflow for an individual case by adding or removing tasks to any section of the workflow. You can add new tasks in a sequence to capture a specific process and even see a real-time visualization of the whole case process that updates as you add, remove, or complete tasks.

This page will provide a brief overview of what tasks and task blocks are, how to configure them, and how they relate to case workflows.

### What are tasks and task blocks

Tasks are steps in a workflow that represent the actions taken by case workers or other users to resolve a case.

Task blocks are groups of tasks that are chained together in a sequence to create flexible pathways within a workflow. Task blocks aren't specific to a case type and can be reused across all case types.

Tasks and task blocks can be shared across all case types and case categories.

In addition to tasks and tasks blocks, you can also optionally add milestones and automations within a case type workflow.

To learn more about adding milestones and organizing tasks, see [Creating Case Categories and Case Types](creating-case-categories-and-case-types.html#configuring-milestones).

To learn more about workflow automation and how to use them, see [Creating Case Categories and Case Types](creating-case-categories-and-case-types.html#adding-workflow-automations-to-case-types).

## Tasking page

All tasks and task blocks for your case management app can be found on the **TASKING** page, which consists of two tabs: **Tasks** and **Task Blocks**.

## Tasks page

The following image highlights the actions you can do in the **Tasks** tab:

[![screenshot of the Tasks page in the Control Panel](images/control-panel/cp-tasks-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1032)

[![](images/control-panel/cp-tasks-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View recently created or edited tasks. |
| 2 | View all tasks. |
| 3 | Create new tasks. |
| 4 | Search and filter for tasks. |
| 5 | Edit tasks. |
| 6 | Deactivate tasks. |

### Creating tasks

You can create tasks in two places, in the **Tasks** tab or in the [**Workflow** tab of a case type](creating-case-categories-and-case-types.html#workflow-tab-in-case-types).

#### Creating tasks from the tasks page

To create tasks directly from the **Tasks** page:

1.  In the **Task** tab, click **CREATE TASK**.
2.  In the **Create Task** dialog, configure the following task properties.

    | Property | Description |
    | --- | --- |
    | Name | The name of the task. |
    | Description | Description of the task. This text box contains many text formatting options, so you can write the best description of the task, including instructions, for your users. |
    | Default Assigned Group | The group that is initially assigned this task, unless otherwise specified. |
    | Default SLA | The service level agreement to apply to the task, calculated in calendar days, hours, and minutes. To calculate SLAs in business days, enable the **Calculate the due date using business days** option. |
    | Task Type | The kind of activity the task represents. There are five task types available out-of-the-box: **confirmation**, **decision**, **document upload**, **create case**, and **send email**. |
    | Question | The question for your users to answer. Questions are required for the **decision** task type. |
    | Response Options | The possible responses for your users to choose from. Response options are required for the **decision** task type. |
    | Case Type | The case type to create a new case in using the **create case** task type. |
    | Relationship to Original Case | The relationship between the new case created using the **create case** task type. There are five relationships to choose from: related, duplicates, duplicated by, parent, and child. |
    | Email Template | The new or existing email template to use for the **send email** task type. |

3.  When you're done configuring the task, click **CREATE**.

#### Creating tasks from a case type

To create and configure a task from within a case type, follow the instructions [here](creating-case-categories-and-case-types.html#configuring-tasks).

#### Editing tasks

You can edit tasks from the **Tasks** page and in a case type on the [Workflow](creating-case-categories-and-case-types.html#workflow-tab-in-case-types) page. You can edit tasks and workflows at any time, even for in-progress cases.

**Note:**  You can only make [advanced configurations for task assignment](creating-case-categories-and-case-types.html#configuring-tasks) to existing tasks from within a workflow. These cannot be configured from the **Tasks** page.

## Task blocks page

The following image highlights the actions you can do in the **Task Blocks** page:

[![screenshot of the Task Blocks page in the Control Panel](images/control-panel/cp-task-blocks-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1033)

[![](images/control-panel/cp-task-blocks-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the recently created or edited task blocks and visualizations of how the tasks are connected in each task block. |
| 2 | View all task blocks and their details. |
| 3 | Create new task blocks. |
| 4 | Search and filter for task bocks. |
| 5 | Edit task blocks. |
| 6 | Deactivate task blocks. |

### Creating task blocks

To create a task block:

1.  In the **Task Blocks** page, click **CREATE TASK BLOCK**.
2.  Enter a **Name** and **Description**. Click **NEXT**.
3.  Click **Add Tasks**.
4.  Select the tasks you want to include in the task block. ![screenshot of selecting the tasks you want to include in the task block](images/configuring-tasks-add-tasks.png)
5.  To create a new task to include in the task block, click **\+ CREATE TASK** and follow the [steps 2 and 3 from the Create Tasks section](creating-tasks-and-task-blocks.html#creating-tasks-from-the-tasks-page).
6.  Click **ADD**.
7.  (Optional) Re-order the sequence of tasks in your task block using the up and down arrows in each block.
8.  To define the order of tasks in the task block, open each task and click **ADD DEPENDENT**. Select a task that should directly follow this task. Defining dependents sets the chronological order in which the tasks are done by selecting the task that should directly follow the current task.
9.  Click **CREATE**. ![screenshot of the task block](images/task-block-fully-configured.png)

Note that task blocks can only be created and edited from the **TASK BLOCKS** page.

### Adding task blocks to case types

Once created, you can add task blocks to as many case types as needed. To add a task block to a case type, follow the steps [here](creating-case-categories-and-case-types.html#adding-task-blocks-to-case-types).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...