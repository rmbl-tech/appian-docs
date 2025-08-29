---
source_url: https://docs.appian.com/suite/help/25.3/cl-24.3.1.2/cul-create-tasks-and-task-blocks.html
original_path: cl-24.3.1.2/cul-create-tasks-and-task-blocks.html
version: "25.3"
title: "Creating Tasks and Task Blocks"
page_id: "cl-24.3.1.2/cul-create-tasks-and-task-blocks"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating Tasks and Task Blocks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting Life, which must be purchased separately from the Appian base platform. This content was written for Appian 24.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

If you have [installed](cul-tasking-module-installation.html) and [incorporated](cul-tasking-module-setup.html) the [Tasking add-on module](cul-tasking-module-overview.html) with your CU Life Workbench, all tasks and task blocks for your CU Life Workbench application can be found on the Tasking page within the **Connected Underwriting - Life Settings** site. The Tasking page consists of two nested tabs: **Tasks** and **Task Blocks**.

This page provides provides a walkthrough of the configuration steps for creating tasks and task blocks to build case workflows.

### Creating tasks

From the **Tasks** tab, you can:

-   View tasks across all case tasks, including the task name, role, type, assignment group, creator, and last modified timestamp.
-   Create, search, filter, and edit tasks.

To create a task:

1.  From the **Connected Underwriting - Life Settings** site, select the Tasking page.
2.  Select the **Task** tab and click **\+ CREATE TASKS**. **Result**: The **Create Task** dialog displays.
3.  In the **Create Task** dialog, configure the following task properties:

    | Property | Description |
    | --- | --- |
    | Name | The name of the task. |
    | Task Role | Indicates who performs the task. Underwriting tasks primarily focus on decision-making, risk analysis, and structuring of policies. Ops tasks are administration and execution tasks that support underwriting and ensure the smooth functioning of daily business operations. |
    | Task Type | The kind of activity the task represents. Three task types are available out-of-the-box: **Confirmation**, **Decision**, and **Document Upload**. |
    | Default Assigned Group | The group initially assigned to the task, unless otherwise specified. |
    | Default SLA | The service level agreement to apply to the task, which is calculated in business (working) days. |
    | Question | The question for your users to answer. Questions are required for the **Decision** task type. |
    | Response Options | These are the optional responses your users can choose from. Response options are required for the **Decision** task type. |
    | Description | The task description. This text box contains many formatting options that allow you to write the best task description, including instructions, for your users. |

4.  When you're done configuring the task, click **CREATE**.

### Editing tasks

You can edit tasks from the **Tasks** page anytime, even in in-progress cases, by clicking the edit icon associated with the task you want to modify.

### Creating task blocks

From the nested **Task Blocks** tab, you can:

-   View all task blocks across all case types and categories in Studio.
-   Create, search, and edit task blocks.
-   View a visualization of the sequence of tasks in each task block.

To create a task block:

1.  In the **Task Blocks** tab, click **CREATE TASK BLOCK**.
2.  Enter a name and description and click **NEXT**.
3.  Click **Add Tasks**.
4.  Select the tasks you want to include in the task block.
5.  (_Optional_) You can re-order the sequence of tasks in your task block using the up and down arrows in each block.
6.  Click **ADD DEPENDENT** to add dependents to each task.
    -   **Note**: This sets the chronological order in which the tasks are done by selecting the task that should directly follow the current task.
7.  Click **CREATE**.

Task blocks can only be created and edited from the **Task Blocks** tab.

### Adding task and task blocks to a case

Once created, you can add task blocks to as many cases as needed.

To add a task block to a case:

1.  From the **CASES** page, select and open a case record from the **Case** list.
2.  From the **Summary** tab, go to the **Work Items** section.
3.  Select the **Underwriting Tasks** or **Ops Task** to add an existing task or task block to the case.
4.  Click **\+ ADD FROM LIBRARY** to open the **Task and Task Block Library**.
5.  Click **[ADD TASK](#creating-tasks)** or **[ADD TASK BLOCK](#creating-task-blocks)** to add a new task activity or sequence of activities to the case.

    -   **Note:** If the case already has an existing workflow, you can modify the associated tasks and task blocks by updating any relevant fields. Any changes you make to workflow tasks or task blocks will only impact the related case and will not affect the task or task block in the library.
6.  Click **UPDATE** after adding new tasks or tasks blocks to the existing case workflow.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...