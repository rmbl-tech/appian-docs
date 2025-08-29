---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/setting-up-processes.html
original_path: cs-23.3.2.6/setting-up-processes.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Workflows

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The **Workflow** section of the Connected FS Settings site allows business users to tailor the tasks required for each Service Request. This page describes how to manage workflow templates.

Business users can add and edit the workflow templates that assign default tasks for a type of Service Request.

For each Service Request process, users can set up individual workflow templates to tailor the process to each specific customer.

## View templates

On the Connected FS Settings site, a grid lists all of the information that is pertinent to Service Request templates. Users can use this information to determine which templates already exist and when they were last updated.

To view the Service Request templates, navigate to the **Connected FS Settings** site and click **WORKFLOW**.

![workflow_templates_menu.png](images/workflow_templates_menu.png)

From here, you have the option to view either **Active** or **Inactive** templates. Active templates are ones that are able to be used during runtime processes. Inactive templates are ones that cannot be accessed during a runtime process, but can be edited or activated.

You can search or filter this list for a particular template. Clicking the history icon ![history icon](images/io_settings_history_icon.png) will take you to the Template History for that template with a list of all the changes that have been made to it.

## Create a new template

After installing the Connected Servicing application, new Service Request templates that fit your organization's processes will need to be added.

To create a new Service Request template:

1.  From the **Templates** page, click **NEW TEMPLATE**.

2.  Enter the following information:
    -   **Template Name**: Unique name to identify the new template.
    -   **Type**: The category type the template is associated with.
    -   **Subtype**: The subtype category the template is associated with.
    -   **Description**: Text that describes the purpose of the template.
    -   **Calendar Settings**: Select how to calculate task due dates: exclude weekends and holidays or include all calendar days.
3.  Click **+ADD** to add and define tasks to the template..
4.  Click **CREATE**.

    ![fs_settings_cs_create_template](images/fs_settings_cs_create_template.png)

### Add tasks

On the tasks step of the workflow configuration process, users can add and relate tasks that need to be completed.

![Add Tasks Interface](images/add_tasks_interface.png)

To add additional tasks:

1.  Click **Add**.
2.  Search for tasks by name and select which tasks to be added.
    -   Select one or multiple tasks in the Available Tasks list, then click the **ADD** button to move the selected tasks to the Selected Tasks list.
    -   Tasks will be added to the Selected Tasks list in the order in which they were selected and added from Available Tasks.
    -   Tasks can be removed from the Selected Tasks list by selecting one or multiple tasks in the Selected Tasks list and clicking **< REMOVE**.
    -   The Selected Tasks list can be easily cleared by clicking **« REMOVE ALL**.
3.  When you are ready to add tasks and return to your workflow template, click **Add** at the bottom of the modal.
    -   Tasks will be added to the end of your workflow template in the order in which they were listed in the Selected Tasks list.

After the tasks are all added, business users can then define the specific task configurations including:

-   **Dependents**: Tasks that will be assigned upon completion of all tasks identifying them as their dependent.
-   **Assigned group**: The business unit responsible for completing the task.

-   **Days**: The number of days that the task will be due before the target completion date.
-   **Timeframe**: The relative reference for each tasks Days value.

Tasks added manually can also be removed from the templates. All tasks are able to be reordered using the up and down arrows before the task name in the grid.

When you finish creating the template, click **CREATE** to save it.

## Managing templates

Business users can manage Service Request templates from the **Connected FS Settings** site, this includes updating, cloning, activating or deactivating, and deleting an existing Service Request template.

![co_managing_templates](images/co_managing_templates.png)

### Update an existing template

With the **Connected FS Settings** site, business users can easily and quickly update Service Request templates with any changes.

![co_update_existing_template.png](images/co_update_existing_template.png)

To update a workflow template:

1.  Click the icon.
2.  Click **Edit**.
3.  Make any necessary updates.
4.  Validate the tasks and click **SUBMIT**.

**Note:**  When updating an existing template, you are required to go through each step of the process in order to save your updates.

All future Service Requests will use the modified template. Any Service Requests that are already in process or completed will not be affected.

### Set default template

The default template is the template that is used for the Service Request if there is not a distinct template for the Service Request type and subtype. There can only be one default template, which cannot be deactivated.

You can select the default template by clicking the menu icon and selecting **Set Default**. The old default template will then be replaced by the current one.

### Deactivate template

If an active template is no longer needed or is needed in the future but is not ready to go live, business users can deactivate templates.

Templates can be deactivated from the Active template page by selecting the menu icon on a template and selecting **Deactivate**. Inactive templates are unavailable when creating new Service Request.

### Activate template

If an inactive template is ready to be used, business users can activate templates so that they are available for use when creating new Service Requests.

Templates can be activated from the Inactive template page by selecting the menu icon on a template and selecting Activate. Active templates can be selected when creating new Service Requests.

### Delete template

If an inactive template is no longer needed, it can be permanently deleted. From the menu icon, select **Delete**. Confirm that this template is the correct one to be deleted, as the action will not be able to be reversed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...