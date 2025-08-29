---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/managing-checklists.html
original_path: rm-24.4.2.2/managing-checklists.html
version: "25.3"
title: "Managing Checklists"
page_id: "rm-24.4.2.2/managing-checklists"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Managing Checklists

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

Checklists are collections of tasks that must be completed throughout the requirements lifecycle. They are tailored for specific purposes, such as requestors or contracting. Additionally, checklists can be modified by adding, removing, or reassigning tasks to adapt to changing circumstances. Privileged users manage checklists centrally.

## View checklists

To view checklists:

1.  Select a requirement record to navigate to its summary.
2.  Click **Checklist** to navigate to the **Checklist** tab. The completion bar chart on the left panel displays the percentage of tasks completed and the count of statuses. The out-of-the-box values are `Outstanding`, `Completed`, `Not needed`, and `Cancelled`.
3.  Use the left panel statuses to filter the list of tasks displayed.
4.  Filter the list using the status (`All`, `Assigned`, or `Queued`) dropdown, category dropdown, and the radio buttons (`All`, `Requestor`, or `Contracting`).

![Checklist tab showing requirement tasks, completion status, and filtering options.](images/view_checklists.png)

## Set up checklists

Set up checklists using any of the following three different methods.

### Set up checklists without recommendations

After you click **CREATE** on the [Create New Requirement](creating-new-requirement.html#create-requirement-and-select-a-checklist) wizard, the confirmation screen appears with the **SELECT CHECKLIST** button along with any relevant Best in Class contract vehicles.

![set up checklists without recommendations.png](images/set_up_checklists_without_recommendations_5.png)

To set up checklists without recommendations:

1.  Click **SELECT CHECKLIST** to open the **Set up Checklist** wizard.
2.  Select the appropriate checklist for the requirement using the checklist dropdown.

    ![Set up Checklist wizard showing the checklist dropdown.](images/set_up_checklists_without_recommendations.png)

    After the checklist is selected, the wizard auto-populates with the pre-configured tasks for each task category (such as `Compatibility` and `Market Research`).

    ![Set up Checklist wizard auto-populated with pre-configured tasks.](images/set_up_checklists_without_recommendations_2.png)

3.  [Set up tasks](#set-up-tasks-in-a-checklist).
4.  Click **SET UP CHECKLIST** to save changes.

    ![Set up Checklist screen: auto-populated tasks by category, with assigned groups and due dates.](images/set_up_checklists_without_recommendations_3.png)

    The solution takes you back to the My Requirements dashboard. Click the created requirement to view the checklist tasks.

    ![view created checklist tasks](images/set_up_checklists_without_recommendations_4.png)

### Set up checklists with recommendations

After you click **CREATE** on the [Create New Requirement](creating-new-requirement.html#create-requirement-and-select-a-checklist) wizard, the confirmation screen appears with the **SELECT CHECKLIST** button along with any relevant Best in Class contract vehicles.

To set up checklists with recommendations:

1.  Click **SELECT CHECKLIST** to open the **Set up Checklist** wizard. If recommended checklists are available for the created requirement, the wizard displays two tabs, RECOMMENDED (default selection) and MANUAL SELECTION.
    -   Click **MANUAL SELECTION** to add a checklist other than the recommended one, and select the appropriate checklist for the requirement using the checklist dropdown. After the checklist is selected, the wizard auto-populates with the pre-configured tasks for each task category (such as `Compatibility` and `Market Research`).

        ![Set up Checklist wizard: Recommended tab selected, Manual Selection tab.](images/set_up_checklists_with_recommendations.png)

    -   Proceed with the following steps to use the recommended checklist.

2.  [Set up tasks](#set-up-tasks-in-a-checklist).
3.  Click **SET UP CHECKLIST** to save changes.

    ![save checklist changes](images/set_up_checklists_without_recommendations_3.png)

    The solution takes you back to the My Requirements dashboard. Click the created requirement to view the checklist tasks.

    ![Requirement tasks list with Checklist Type and Assignee filters.](images/set_up_checklists_without_recommendations_4.png)

### Set up checklists from the Summary tab

To set up checklists from the Summary tab:

1.  Click **ADD CHECKLIST** on the requirement **Summary** tab to open the **Set up Checklist** wizard.

    ![Requirement Summary tab: Tasks section displaying filtered checklist items.](images/set_up_checklists_from_the_summary_tab.png)

2.  Select the appropriate checklist for the requirement using the checklist dropdown. After the checklist is selected, the wizard auto-populates with the pre-configured tasks for each task category (such as `Compatibility` and `Market Research`).
3.  [Set up tasks](#set-up-tasks-in-a-checklist).
4.  Click **SET UP CHECKLIST** to save changes. The solution takes you back to the Summary tab.

See the [Configuring Checklists page](configuring-checklists.html) for instructions on how to create, update, and delete checklists.

## View tasks

Tasks are the individual items within a [checklist](#introduction). Tasks are viewed using the following two different navigation methods in the RM solution.

To view tasks in the My Tasks tab:

-   Navigate to **HOME** > [My Tasks](what-is-appian-rm.html#requirements-management-site) to view all the tasks.

![My Tasks tab displaying a list of checklist tasks with search and filter options.](images/view_tasks.png)

To view tasks specific to a requirement on the Summary tab:

1.  Click a requirement record in the **REQUIREMENTS** tab to navigate to its **Summary** tab.

    ![Requirements tab with a requirement record selected for summary view.](images/view_tasks_2.png)

    Under the Summary tab, tasks are visible in the Tasks section.

2.  Select the **Checklist Type** using the dropdown to filter tasks by `All`, `Requestor`, or `Contracting`.
3.  Use the **Assignee** dropdown to filter tasks by `All`, `Assigned to me`, or `Unassigned`.

    ![Tasks list for a requirement, showing filters for Checklist Type and Assignee.](images/view_tasks_3.png)

## Add tasks

RM enables you to add preset and custom tasks to checklists.

### Add preset tasks to a checklist

To add preset tasks to a checklist in the [set up checklist](#set-up-checklists-without-recommendations) wizard:

1.  Click **ADD TASK** on the category where you want to add the tasks. Existing tasks appear under the Preset Tasks section. These are tasks that are already configured and are available to be added to the checklist.
2.  Select the tasks using the checkbox and click **ADD TASKS** to add the tasks to the checklist.

    ![Selecting preset compatibility tasks in the Set up Checklist wizard.](images/add_preset_tasks_to_a_checklist.png)

3.  [Set up tasks](#set-up-tasks-in-a-checklist).

### Add custom tasks to a checklist

To add custom tasks to a checklist in the [set up checklist](#set-up-checklists-without-recommendations) wizard:

1.  Click **ADD TASK** on the category where you want to add the tasks.
2.  Click **ADD CUSTOM TASK** on the **Custom Tasks** section to navigate to the **Add Custom Task** wizard and fill in the [required fields](#add-custom-tasks-from-the-summary-tab).

    ![Set up Checklist wizard for selecting preset and adding custom tasks.](images/add_custom_tasks_to_a_checklist.png)

3.  Click **ADD TASK** in the **Add Custom Task** wizard to add it to the **Custom Tasks** section.

    ![Add Custom Task wizard with pre-filled fields for a document attachment task.](images/add_custom_tasks_to_a_checklist_2.png)

4.  Click **ADD TASKS** to add the created task to your checklist.

    ![Custom Tasks section with a task ready for checklist addition.](images/add_custom_tasks_to_a_checklist_3.png)

5.  [Set up tasks](#set-up-checklists-without-recommendations).

### Add custom tasks from the Summary tab

To create ad-hoc tasks from the Summary tab:

1.  Click **ADD TASK** on a requirement **Summary** tab to open the **Add Custom Task** wizard.

    ![Requirement Summary tab displaying tasks, filterable by Checklist Type and Assignee.](images/add_custom_tasks_from_the_summary_tab.png)

2.  Enter a task **Name**.
3.  Select a **Category** using the dropdown.
4.  Select an **Assigned Group** using the auto-suggest dropdown.
5.  Select a task [Type](configuring-tasks.html#task-types) using the dropdown. If `Attach Document` is selected as the task type, select a **Document Type** using the dropdown.
6.  Select an **Individual Assignee** using the auto-suggest dropdown.
7.  Select a **Due Date** using the date picker.
8.  Click **ADD TASK** to save changes. This task can now be added to a checklist within a category.

![Add custom task details](images/add_custom_tasks_from_the_summary_tab_2.png)

### Set up tasks in a checklist

To set up tasks after adding them to a checklist:

1.  Select **Dependents** using the **Leads To** multi-select dropdown. Dependents are used to create parent-child relationships among the tasks. Dependent tasks are triggered once the parent task is completed. Workflow is organized per the dependent group configuration.
2.  Update the **Assigned Group** using the auto-suggest dropdown.
3.  Update the **Individual Assignee** using the auto-suggest dropdown.
4.  Enter **Days to Complete** to define the number of days to complete the task.
5.  Select the **Due Date** of the task using the date picker.
6.  Click X icon corresponding to a task to remove it.
7.  Click **Plus iconADD TASK** to add more [preset](#add-preset-tasks-to-a-checklist) or [custom](#add-custom-tasks-to-a-checklist) tasks within a category.

![Checklist task setup: Configure dependencies, assignments, days to complete, and due dates.](images/set_up_tasks_in_a_checklist.png)

See the [Configuring Tasks page](configuring-tasks.html) for instructions on how to create, import, update, and delete tasks.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...