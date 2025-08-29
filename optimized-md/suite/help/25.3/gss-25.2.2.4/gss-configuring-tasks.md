---
source_url: https://docs.appian.com/suite/help/25.3/gss-25.2.2.4/gss-configuring-tasks.html
original_path: gss-25.2.2.4/gss-configuring-tasks.html
version: "25.3"
title: "Configuring Tasks"
page_id: "gss-25.2.2.4/gss-configuring-tasks"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Tasks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Government Source Selection, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

After you access the [Government Source Selection Settings site](gss-accessing-settings-site.html), you can view the Tasks page. Tasks are the individual items within an approach. To add tasks to an approach template, you must create a library of tasks.

This page describes how to configure tasks needed to create your organization's approaches.

## Task types

Tasks can be one of four types:

-   **Confirmation**: This type of task requires a user to enter a date to confirm the task has been completed.

    ![Confirmation task type.](images/confirmation_task_type.png)

-   **Attach Document**: This type of task requires a user to upload a specific document.

    ![Attach Document task type.](images/attach_document_task_type.png)

-   **Create Document from Template**: This type of task requires a user to create a specific document from the provided document template.

    ![Create document from template task type.](images/create_document_from_template_task_type.png)

-   **Review**: This type of task requires a user to approve, reject, or request changes on a task.

    ![Review task type.](images/review_task_type.png)

## View tasks

To view tasks:

1.  Click **Tasks** on the side navigation bar to navigate to the **Tasks** page.
2.  Select **Phase(s)** using the multi-select dropdown to filter the tasks per the selected phase(s).
3.  Enter task keywords in the search bar and click **SEARCH** to filter the tasks list per the entered keywords.

![Filter and view tasks list.](images/view_tasks_1.png)

## Add tasks

If you only need to add a few tasks, you can add them one at a time.

To add a task:

1.  Click **Tasks** on the side navigation bar to navigate to the **Tasks** page.
2.  Click **+ADD TASK** to navigate to the **Add Task** page.

    ![Navigate to add a new task.](images/add_tasks.png)

3.  Enter the **Task Name**.
4.  Select a **Task Phase** using the dropdown.
5.  Select an **Assigned Group** using the auto-suggest dropdown.
6.  Select a [Task Type](#task-types) using the dropdown. **Choose from**:
    -   **Attach Document**: Prompts you to select **Document Type** using the dropdown.
    -   **Confirmation**
    -   **Create Document from Template**: Prompts you to select **Document Type** and **Document Template** using the dropdowns.
    -   **Review**
7.  Click **ADD TASK** to add the task.

    ![Fill new task details.](images/add_tasks_2.png)

## Import tasks

If you need to add many tasks at once, you can import tasks from an Excel spreadsheet.

To import and add multiple tasks:

1.  Click **Tasks** on the side navigation bar to navigate to the **Tasks** page.
2.  Click **IMPORT TASKS** to navigate to the **Import Tasks** page.

    ![Navigate to import multiple tasks.](images/import_tasks.png)

3.  Click the **Sample Import Excel File** link to download the `AS GSS TMG Sample Task Import.xlsx` spreadsheet file.

    ![Download sample import file.](images/import_tasks_2.png)

4.  Fill in the following fields in the downloaded spreadsheet:
    1.  **Task Name**: The display name for the task. There is a 50-character limit. Task names must be unique, or the task is not imported.
    2.  **Task Phase**: The phase that the task must be grouped with. The valid values are any phase listed on the [Phase page](gss-configuring-phases.html).
    3.  **Assigned Group**: The group that will automatically be assigned the task. The valid values are all business groups that are in the GSS application. For example, Contracting Officer or Contract Specialist. See the [Groups Reference Page](gss-groups-reference-page.html) for a list of the out-of-the-box groups.
    4.  **Task Type**: The type of task. The valid values are:
        -   Confirmation
        -   Attach Document
        -   Review
        -   Create Document from Template
    5.  **Document Type**: Only required if the task type is `Document Upload` or `Create Document from Template`. If the task type is something else and a value is entered in this field, it is ignored. Out-of-the-box, the valid values are:
        -   Vendor
        -   Factor
        -   Evaluator
        -   Recommendation
        -   Consensus
    6.  **Document Template**: Only required if the task type is `Create Document from Template`. If the task type is something else and a value is entered in this field, it is ignored. Out-of-the-box, the valid values are:

        -   Exercise Option Letter Template
        -   Consensus Template
        -   Recommendation Template.

        ![Fill the task details in the spreadsheet.](images/import_tasks_3.png)

5.  Click **UPLOAD** on the **Import Tasks** page to open the file picker.
6.  Select the modified `AS GSS TMG Sample Task Import.xlsx` spreadsheet. A list of the columns from the spreadsheet is displayed.
7.  Map the columns from the Excel spreadsheet to the task fields. If you use the template without modifying the column headers, these columns match up automatically.
8.  Click **NEXT**.

    ![Confirm task details to import.](images/import_tasks_4.png)

    The task fields that you entered are displayed.

9.  Verify all of the fields are correct and error-free.
10.  Click **ADD TASKS TO APPROACH** to add the imported tasks to an [approach](gss-configuring-approaches.html), or click **ADD TASKS** to add the tasks to the library of tasks.

     ![Validate and import tasks.](images/import_tasks_5.png)

The new task will be available in all new evaluations.

## Edit tasks

To edit a task:

1.  Click **Tasks** on the side navigation bar to navigate to the **Tasks** page.
2.  Click a task to navigate to the **Edit task** page.
3.  Edit the [task fields](#add-tasks).

    **Note:**  Task type is non-editable.

4.  Click **SAVE CHANGES** to edit the task.

![Edit task fields.](images/edit_tasks.png)

**Caution:**  All processes that reference the task are updated. Evaluations that are in progress are not affected.

All processes that reference the task will be updated. Evaluations that are in progress will not be affected.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...