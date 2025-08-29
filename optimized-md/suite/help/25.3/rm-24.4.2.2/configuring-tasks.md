---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/configuring-tasks.html
original_path: rm-24.4.2.2/configuring-tasks.html
version: "25.3"
title: "Configuring Tasks"
page_id: "rm-24.4.2.2/configuring-tasks"
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Requirements Management, which must be purchased separately from the Appian base platform. This content was written for Appian 24.4 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Access the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site to view the Tasks page. Tasks are the individual items within a checklist. To add tasks to a requirement checklist, you must create a library of tasks.

Following are some out-of-the-box tasks that are completely configurable to meet the needs of your organization's requirement process.

-   `508 Determination`
-   `Complete Capabilities Document`
-   `Complete Line Items`
-   `Coordinate Acquisition Strategy Meeting`
-   `Coordinate Procurement Planning Conference`
-   `Data Requirements List`
-   `Define Capabilities`
-   `Determine Enhance, Build, or Buy`
-   `Develop Acquisition Strategy`
-   `Division Approval`
-   `Draft Requirements Document`
-   `Hold initial coordination meeting`
-   `Initial coordination with competition advocate`
-   `Initial coordination with small business`
-   `Legal Review`
-   `Provide IGCE`
-   `Review latest updates to requirements documents`
-   `Security Classification`
-   `Submit Evaluation Criteria`

This page describes how to configure tasks needed to create your organization's checklists.

## Task types

Tasks are of four types:

-   **Confirmation**: Requires a user to enter a date to confirm the task has been completed.

    ![Confirmation task type screen with date input.](images/task_types.png)

-   **Attach Document**: Requires a user to upload a specific document.

    ![Document upload interface for the 'Attach Document' task type.](images/task_types_2.png)

-   **Review**: Requires a user to approve, reject, or request changes on a task.

    ![Review task decision options: Approve, Request Changes, or Reject, with a comment field.](images/task_types_3.png)

-   **Create Document from Template**: Requires a user to create a specific document from the provided document template.

    ![Create Document from Template task: Steps to generate from Capabilities Template.](images/task_types_4.png)

## View tasks

To view tasks:

1.  Navigate to the [Requirement Management Settings site](accessing-rm-settings.html#access-the-requirement-management-settings-site).
2.  Expand **Task Management** and select the **Tasks** option to navigate to the **Tasks** page.
3.  Enter task keywords in the search field and click **SEARCH** to filter the tasks list.
4.  Filter the tasks by **TYPE**, **CATEGORY**, and **DEFAULT GROUP** using the dropdowns.
5.  Click a task to navigate to its **Summary** page and view related checklists.
6.  Click **History** to view the task modification history.

![Tasks page showing search and filter fields for Type, Category, and Default Group.](images/view_tasks_1.png)

When you are assigned a new task, you receive an email notification in response to the event. You also receive an email notification when a task is due, overdue, reassigned to another user, or when the task's due date changes.

## Create tasks

If you only need to add a few tasks, you can create them one at a time.

To create an individual task:

1.  Expand **Task Management** and select the **Tasks** option to navigate to the **Tasks** page.
2.  Click **+Create** to open the **Create Task** wizard.
3.  Enter a task **Name**.
4.  Select a task **[Category](#introduction)** using the dropdown.
5.  Enter a task **Description**.
6.  Select the **Default Group** using the auto-suggest fields. The created task is assigned to the selected group(s).
7.  Enter the **Default Days To Complete** the task.
8.  Select the task **[Type](#task-types)** using the dropdown.
    1.  If the task **Type** is **Attach Document**, select a **Document Type**.
    2.  If the task **Type** is **Create Document from Template**, select a **Document Type** and a **Document Template**.
9.  Click **CREATE** to create the task.

![Create Task wizard: enter task name, category, description, group, days to complete, type.](images/create_tasks.png)

The new task is available in all new requirements' checklist setup items, as well as new and existing requirement checklists.

## Import tasks

If you need to create many tasks at once, you can import tasks from an Excel spreadsheet.

To import and create multiple tasks:

1.  Expand **Task Management** and select the **Tasks** option to navigate to the **Tasks** page.
2.  Click **IMPORT** to open the **Import Task** wizard.
3.  Click **DOWNLOAD TEMPLATE** to download the `AS TMG Sample Task Import.xlxs` spreadsheet file.
4.  Fill in the following fields in the downloaded spreadsheet:
    1.  **Name**: The display name for the task. It must be unique and must not exceed 255 characters.
    2.  **Category**: The category in which the task must be grouped. The valid values are any category listed on the [categories page](configuring-categories.html#view-categories).
    3.  **Description**: Enter a brief description of the task. It must not exceed 255 characters.
    4.  **Default Group**: The group that is automatically assigned to the task. The valid values are all business groups that are in the RM application. For example, requestor or requestor manager. See the [Groups Reference Page](groups-reference-page.html) for a list of the out-of-the-box groups.
    5.  **Default Days to Complete**: The number of days to complete the task. The value must be a number greater than zero.
    6.  **Task Type**: The [type of task](#task-types). Out-of-the-box, the valid values are:
        1.  `Confirmation`
        2.  `Attach Document`
        3.  `Review`
        4.  `Create Document from Template`
    7.  **Document Type**: Only required if the Task Type is Document Upload or Create Document from Template. If the Task Type is something else and a value is entered in this field, it is ignored. Out-of-the-box, the valid values are:
        1.  `Requirement Document`
        2.  `Memo`
        3.  `Justification Document`
        4.  `Determination`
        5.  `Waiver`
        6.  `Research`
        7.  `Checklist`
        8.  `Evaluation`
        9.  `Briefing`
        10.  `Notification`
        11.  `Appointment`
        12.  `Other`
    8.  **Document Template**: Only required if the **Task Type** is Create Document from Template. If the **Item Type** is something else and a value is entered in this field, it is ignored. Out-of-the-box, the valid value is `Capabilities Template`.
5.  Click **UPLOAD** in the **Upload File** section to open the file picker.
6.  Select the modified `AS TMG Sample Task Import.xlxs` spreadsheet.
7.  Click **NEXT** to navigate to the **Map Column Headers** section. A list of the columns from the uploaded spreadsheet is displayed.
8.  Map the **Column Header From File** (from the uploaded spreadsheet) and **Task Properties** columns. If the template is used without modifying the column headers, these columns match up automatically.

    ![Import Tasks wizard: Mapping spreadsheet column headers to task properties.](images/import_tasks.png)

9.  Click **NEXT** to navigate to the **Data Issue Check** section. The **Data Issue Check** section displays the number of tasks that are:
    -   Valid and ready to be imported.
    -   Skipped since they already exist.
    -   Invalid and need valid inputs.
10.  Verify all of the fields are correct and there are no validation errors.
11.  Click **IMPORT** to import the tasks.

**Tip:**  Click **CREATE CHECKLIST** to add the imported tasks to a [checklist](configuring-checklists.html#create-checklists).

![Task import success. 4 imported, 1 skipped. 'Create Another Task' and 'Create Checklist' buttons.](images/import_tasks_2.png)

## Update tasks

To update a task:

1.  Expand **Task Management** and select the **Tasks** option to navigate to the **Tasks** page.
2.  Click Vertical Ellipsis icon corresponding to a task and select **Update** to open the **Update Task** wizard.

    ![Tasks list showing opened ellipsis menu with Update, Duplicate, and Delete options.](images/update_tasks.png)

3.  Update the task [fields](#create-tasks). **Task Type** is non-editable.
4.  Click **UPDATE** to update the task.

All requirement checklists that reference the task are updated. Requirements that are in progress are not affected.

## Duplicate tasks

To duplicate a task:

1.  Expand **Task Management** and select the **Tasks** option to navigate to the **Tasks** page.
2.  Click Vertical Ellipsis icon corresponding to a task and select **Duplicate** to open the **Duplicate Task** wizard.
3.  Edit the task [fields](#create-tasks).
4.  Click **DUPLICATE** to duplicate the task.

![Duplicate Task wizard displaying configurable task properties.](images/duplicate_tasks.png)

## Delete tasks

**Note:**  To delete a task, it must be first removed from all referenced checklists.

To delete a task:

1.  Expand **Task Management** and select the **Tasks** option to navigate to the **Tasks** page.
2.  Click Vertical Ellipsis icon corresponding to a task and select **Delete** to open the **Delete Task** wizard.
3.  Click **DELETE** to delete the task.

**Caution:**  Deleting tasks is permanent and irreversible.

![Delete Task confirmation dialog with irreversible action warning.](images/delete_tasks.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...