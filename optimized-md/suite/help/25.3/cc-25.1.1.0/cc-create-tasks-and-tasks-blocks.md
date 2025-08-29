---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-create-tasks-and-tasks-blocks.html
original_path: cc-25.1.1.0/cc-create-tasks-and-tasks-blocks.html
version: "25.3"
title: "How to Create Tasks and Task Blocks"
page_id: "cc-25.1.1.0/cc-create-tasks-and-tasks-blocks"
section: "Overview"
tags: ["appian","docs","v25.3"]
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

Tasks are the main driver of activity in your claims management application and claims workflow. They represent the work that your claims adjusters complete to resolve a claim. A workflow is a process made up of a series of tasks done by claims adjusters and [workflow automations](cc-create-claim-categories-and-types.html#adding-workflow-automations-to-a-claim-type) done by the system to resolve issues and process claims. Connected Claims allows you to manage workflows, claims, tasks, and automations in a centralized place.

When managing your tasks, Studio allows you to dynamically change the workflow for an individual claim by adding or removing tasks to any section of the workflow. You can add new tasks in a sequence to capture a specific process and even see a real-time visualization of the whole claim process that updates as you add, remove, or complete tasks.

This page will provide a brief overview of what tasks and task blocks are, how to configure them, and how they relate to claim workflows.

### What are tasks and task blocks

Tasks are steps in a workflow that represent the actions taken by claims adjusters or other users to resolve claims.

Task blocks are groups of tasks that are chained together in a sequence to create flexible pathways within a workflow. Task blocks aren't specific to a claims type and can be reused across all claims types.

Tasks and task blocks can be shared across all claim types and claim categories.

In addition to tasks and task blocks, you can also optionally add milestones and automation within a claim type workflow.

To learn more about adding milestones and organizing tasks, see [Creating Claims Categories and Claims Types](cc-create-claim-categories-and-types.html#configuring-milestones).

To learn more about workflow automation and how to use them, see [Creating Claims Categories and Claim Types](cc-create-claim-categories-and-types.html#adding-workflow-automations-to-a-claim-type).

## Tasking page

All tasks and task blocks for your claim management app can be found within the **TASKING** page group in the navigation bar, which consists of two nested pages: **TASKS** and **TASK BLOCKS**.

## Tasks page

The following image highlights the actions you can do in the **Tasks** page:

![Tasks Page](images/cc_studio_tasks_page.png)

| # | Action |
| --- | --- |
| 1 | View tasks that have been recently created or edited. |
| 2 | View tasks across all claim types and categories in Studio. |
| 3 | Create tasks. |
| 4 | Search tasks. |
| 5 | Edit tasks. |

### Creating tasks

You can create tasks in two places, in the **Tasks** page or in the **Workflow** tab of a claim type.

#### Creating tasks from the tasks page

To create tasks directly from the **Tasks** page:

1.  From the **TASKING** drop down menu, click **Tasks**.
2.  From the **Tasks** page, click **CREATE TASKS**.
3.  In the **Create Task** dialog, configure the following task properties.

    -   **Title**: The name of the task.
    -   **Task Type**: The kind of activity the task represents.
        -   There are eleven task types that are available out-of-the-box: **Confirmation**, **Decision**, **Document Upload**, **Set Reserves**, **Make Payment**, **Liability Assessment**, **Cost Estimate**, **Settlement**, **Survey**, **Create Claim** and **Send Email**.
    -   **Claim Type**: The claim type to create a new claim in using the **create claim** task type.
    -   **Relationship to Original Claim**: The relationship between the new claim created using the **create claim** task type.
        -   There are five relationships to choose from: **Related**, **Duplicates**, **Duplicated By**, **Parent**, and **Child**.
    -   **Email Template**: The new or existing email template to use for the **send email** task type.
    -   **Default Assigned Group**: The group that is initially assigned this task, unless otherwise specified.
    -   **Default SLA**: The service level agreement to apply to the task, calculated in calendar days, hours, and minutes.
        -   To calculate SLAs in business days, enable the **Calculate the due date using business days** option.
    -   **Question**: The question for your users to answer. Questions are required for the **decision** task type.
    -   **Response Options**: The possible responses for your users to choose from. Response options are required for the **decision** task type.
    -   **Description**: Description of the task. This text box contains many text formatting options, so you can write the best description of the task, including instructions, for your users.
4.  When you're done configuring the task, click **CREATE**.

#### Creating tasks from a claim type

To create and configure a task from within a claim type, follow the instructions [here](cc-create-claim-categories-and-types.html#configuring-tasks).

#### Editing tasks

You can edit tasks from the **Tasks** page and in a claim type on the [Workflow](cc-create-claim-categories-and-types.html#workflow-tab-in-a-claim-type) page. You can edit tasks and workflows at any time, even for in-progress claims.

**Note:**  You can only make [advanced configurations for task assignment](cc-create-claim-categories-and-types.html#configuring-tasks) to existing tasks from within a workflow. These cannot be configured from the Tasks page.

## Task blocks page

The following image highlights the actions you can do in the **Task Blocks** page:

![Task Blocks Page](images/cc_studio_task_blocks_page.png)

| # | Action |
| --- | --- |
| 1 | View task blocks that have been recently created or edited. |
| 2 | View all task blocks across all claim types and categories in Studio. |
| 3 | Create task blocks. |
| 4 | Search task blocks. |
| 5 | Edit task blocks. |
| 6 | View a visualization of the sequence of tasks in each task block. |

### Creating task blocks

To create a task block:

1.  In the **TASK BLOCKS** page, click **CREATE TASK BLOCK**.
2.  Enter a name and description. Click **NEXT**.
3.  Click **Add Tasks**.
4.  Select the tasks you want to include in the task block and click **ADD**.

    ![Adding Task to a Task Block](images/cc_studio_task_blocks_add_task.png)

5.  (_Optional_) Re-order the sequence of tasks in your task block using the up and down arrows in each block.
6.  To add dependents, open each task and click **ADD DEPENDENT**.
    -   This sets the chronological order in which the tasks are done by selecting the task that should directly follow the current task.
7.  Click **CREATE**.

    ![Adding Dependents to a Task Block](images/cc_studio_task_block_add_dependents.png)

    -   **Note**: that task blocks can only be created and edited from the **TASK BLOCKS** page.

### Adding task blocks to claim types

Once created, you can add task blocks to as many claim types as needed. To add a task block to a claim type, follow the steps [here](cc-create-claim-categories-and-types.html#adding-task-blocks-to-a-claim-type).

Task blocks aren't specific to a claim type and can be reused across all claim types.

You can view and add relevant task blocks to your workflow from the Add Tasks dialog, but you can't create or edit task blocks within a claim type.

To add an existing task block to your case type workflow:

1.  From the **Configure Workflow** dialog, click **Add Task Blocks**.

    ![Selecting a Task Block](images/cc_studio_select_task_block.png)

2.  (_Optional_) Select a milestone for each task in the task block.
3.  Click **ADD**, then click **UPDATE**.

## Questions page

The **Questions** page enables you to create and manage a bank of questions that you can use in your surveys or other parts of the claims process.

You can create and organize questions by question type, including:

-   **Short Answer**: Questions that request a concise response, typically a word or phrase.
-   **Long Answer**: Questions that request detailed and explanatory responses, often in the form of paragraphs or essays.
-   **Number-Integer**: Questions that prompt for numerical answers within a specified range or value.
-   **Date and Time**: Questions that request a date and time response.
-   **Multiple Choice:** Questions that offer a selection of answer options, from which one or more options can be selected.
-   **Single Select Dropdown**: Questions that present a dropdown menu of answer choices, from which one or more options can be selected.

The following image highlights the actions you can perform on the **Questions** page:

![Studio’s Questions Page](images/cc_studio_questions_page.png)

| # | Action |
| --- | --- |
| 1 | View existing questions across all question types. |
| 2 | Create new questions. |
| 3 | Search and filter the Questions list. |
| 4 | Edit questions. |

### Create a new question

To create a new question:

1.  From the **TASKING** drop down, select **Questions**.
2.  From the **Questions** page, click **CREATE QUESTION**.
3.  In the **Status** radio button, select the status you want for the question.
    -   Options include: **Active** and **Inactive**.
4.  In the **Question** field, enter the question text.
5.  From the **Question Type** drop down, select the type of question.
    -   Based on the Question Type, you might have to enter additional information such as response options.
6.  Click **CREATE**.

Once created, the question will automatically appear in the Questions list. You can update an existing question at any time by clicking the **Edit** icon to open the **Update Question** dialog. Note that you cannot change the status of questions used in active surveys to _Inactive_.

## Surveys page

The **Surveys** page allows you to create custom surveys that can be integrated into the claims process. Once created, surveys can be assigned as tasks in workflows, allowing your claims examiners and adjusters to complete them at specific times during the workflow.

The following image highlights the actions you can perform on the **Surveys** page:

![Studio’s Surveys Page](images/cc_studio_questions_page.png)

| # | Action |
| --- | --- |
| 1 | View existing surveys. |
| 2 | Create a new survey. |
| 3 | Search and filter the Surveys list. |
| 4 | Edit surveys. |

### Create a new survey

To create a new survey:

1.  From the **TASKING** dropdown, select **Surveys**. From the **Surveys** page, click **CREATE SURVEY**.
2.  In the **Survey Name** field, enter a name to provide context for your survey.
3.  From the **Status** radio button, select the status you want for the survey. Options include: **Active** and **Inactive**.
4.  In the **Description** field, enter a description for your survey to provide users with the content they need to understand the survey purpose.
5.  Search the **Question Bank** to identify one or more questions you want to add to your survey.
    -   **Note**: If the question does not exist in the Question Bank, follow these [steps](#create-a-new-question) to create a new question and add it to the Question Bank.
6.  After locating the question you want to add to the survey, click **\+ ADD**. -You can reorder the questions and also mark them as required within the survey.
7.  When you finish adding all your questions to the survey, click **CREATE**.

Studio will automatically add your new survey will to the Survey list, making it available for you to use in a task.

#### Create a new survey task

Now that you’ve created a survey, you can create a survey task to add to a workflow.

To create a new survey task:

1.  From the **TASKING** drop down menu, click **Tasks**.
2.  From the **Tasks** page, click **CREATE TASKS**.
3.  In the **Create Task** dialog, configure the following task properties.

-   **Title**
-   **Task Type** dropdown
    -   Select the **Survey** task type.
-   **Default Assigned Group**
-   **Default SLA**
-   **Survey**
    -   Enter the name of the survey you created in the [previous step](#create-a-new survey).
-   **Description**

1.  Click **CREATE**.

    ![Example Survey Task](images/cc_example_survey_task.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...