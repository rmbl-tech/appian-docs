---
source_url: https://docs.appian.com/suite/help/25.3/rm-24.4.2.2/configuring-checklists.html
original_path: rm-24.4.2.2/configuring-checklists.html
version: "25.3"
title: "Configuring Checklists"
page_id: "rm-24.4.2.2/configuring-checklists"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Checklists

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

Purchasing goods over a certain amount would require a different set of tasks than purchasing goods under that amount. This is where requirement checklists come into play. A requirement checklist is all the tasks that need to be done to create a requirement package or process a requirement package for contracting personnel.

Access the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site to view, add, edit, duplicate, and delete the requirement checklists that assign default tasks for a type of requirement.

This page describes how to use the [Requirement Management Settings](accessing-rm-settings.html#access-the-requirement-management-settings-site) site to configure requirement checklists.

## View checklists

On the Requirement Management Settings site, a grid lists all of the information that is pertinent to requirement checklists. Users can use this information to determine which checklists already exist and when they were last updated.

To view checklists:

1.  Navigate to the [Requirement Management Settings site](accessing-rm-settings.html#access-the-requirement-management-settings-site).
2.  Expand **Task Management** and select the **Checklists** option to navigate to the **Checklists** page.
3.  Enter checklist keywords in the search field and click **SEARCH** to filter the checklist list.
4.  Select **TYPE** using the dropdown to filter the checklists by contracting or requestor.

    ![Checklists page showing a filterable list of requirement checklists.](images/view_checklists_1.png)

5.  Click a checklist link to navigate to the checklist **Summary** page.
    1.  Click Sitemap icon to view the sequence for the checklist workflow (default view).
        -   Use the arrow icons to pan the workflow diagram.
        -   Click Zoom In icon and Zoom Out icon to zoom in and zoom out the workflow diagram, respectively.
        -   Click Fit to Screen icon to revert the workflow to its default size.
        -   Click a task box to view the task details.

            ![Workflow diagram of a contracting checklist showing task sequence.](images/view_checklists_2.png)

    2.  Click List View icon to switch the view to the checklist tasks’ list.
        -   Filter the tasks by name, type, category, and group.
        -   Click a task to navigate and view its related checklists.
6.  Click **History** to view the checklist modification history.

## Create checklists

To create a new requirement checklist:

1.  Expand **Task Management** and select the **Checklists** option to navigate to the **Checklists** page.
2.  Click +**CREATE** to open the **Add Checklist** wizard.
3.  Enter a checklist **Name**.
4.  Enter a checklist **Description**.
5.  Select the **Checklist Type** using the dropdown. Checklist Type is either `Requestor` or `Contracting`.

    ![Create Checklist form showing Name, Description, and Checklist Type fields.](images/create_checklists.png)

6.  Search tasks by name, type, and category in the **Available Tasks** column.
7.  Select the tasks using the checkbox(es) to copy them from the **Available Tasks** column to the **Selected Tasks** column.
8.  Click **ADD** to add the tasks and auto-generate the workflow.

    ![Add Checklist wizard: selecting available tasks to build a new checklist workflow.](images/create_checklists_2.png)

9.  Update the added tasks.
    1.  Update the task **Group** using the auto-suggest dropdown.
    2.  Enter **Days to Complete** to define the number of days to complete the task.
    3.  Select **Dependents** using the **Leads To** multi-select dropdown. Dependents are used to create parent-child relationships among the tasks. Dependent tasks are triggered once the parent task is completed. Workflow is organized per the dependent group configuration.
    4.  Click Up-down Arrow icon to reorder the tasks.
    5.  Click X icon corresponding to a task to remove it.
    6.  Use the arrow icons to pan the workflow diagram.
    7.  Click Zoom In icon and Zoom Out icon to zoom in and zoom out the workflow diagram, respectively.
    8.  Click Fit to Screen icon to revert the workflow to its default size.
10.  Click **+ADD TASK** to add more tasks to the checklist workflow.
11.  Click **CREATE** to create the checklist.

![Add Checklist wizard: Configure tasks via workflow diagram and task list.](images/create_checklists_3.png)

## Update checklists

You can easily update a requirement checklist from the Requirement Management Settings site. Before updating a checklist, make sure any tasks you want to add are on the [Tasks](configuring-tasks.html#view-tasks) page.

To update a requirement checklist:

1.  Expand **Task Management** and select the **Checklists** option to navigate to the **Checklists** page.
2.  Click Vertical Ellipsis icon corresponding to a checklist and select **Update** to open the **Update Checklist** wizard.

    ![Grid of checklists with ellipsis menu open, 'Update' option highlighted.](images/update_checklists.png)

3.  Edit the [checklist fields](#create-checklists).
4.  Click **UPDATE CHECKLIST** to update the checklist.

**Note:**  New requirements created after modifying any existing checklist recommendations use the modified checklists associated with them. Requirements that are already in process or completed are not affected. You can configure automated checklist recommendations through the [checklist recommendation configuration page.](configuring-checklist-recommendations.html)

## Duplicate checklists

To duplicate checklists:

1.  Expand **Task Management** and select the **Checklists** option to navigate to the **Checklists** page.
2.  Click Vertical Ellipsis icon corresponding to a checklist and select **Duplicate** to open the **Duplicate Checklist** wizard.
3.  Edit the [checklist fields](#create-checklists).
4.  Click **DUPLICATE** to duplicate the checklist.

![Duplicate Checklist wizard displaying checklist details, workflow diagram, and editable tasks.](images/duplicate_checklists.png)

## Delete checklists

To delete checklists:

1.  Expand **Task Management** and select the **Checklists** option to navigate to the **Checklists** page.
2.  Click Vertical Ellipsis icon corresponding to a checklist and select **Delete** to open the **Delete Checklist** wizard.
3.  Click **DELETE** to delete the checklist.

**Caution:**  Deleting checklists is permanent and irreversible.

![Delete Checklist dialog: Confirm irreversible deletion, tasks remain.](images/delete_checklists.png)

**Note:**  Deleting a checklist does not delete its tasks.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...