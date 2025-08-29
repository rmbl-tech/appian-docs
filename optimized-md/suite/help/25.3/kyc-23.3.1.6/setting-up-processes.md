---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/setting-up-processes.html
original_path: kyc-23.3.1.6/setting-up-processes.html
version: "25.3"
title: "Configure Workflows"
page_id: "kyc-23.3.1.6/setting-up-processes"
section: "Introduction"
tags: ["appian","docs","v25.3"]
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

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

The **Workflow** section of the Connected FS Settings site allows business users to tailor the tasks required for each Investigation. This page describes how to manage workflow templates.

Business users can add and edit the workflow templates that assign default tasks for a type of Investigation.

For each Investigation process, users can set up individual workflow templates to tailor the process to each specific customer.

## View templates

On the Connected FS Settings site, a grid lists all of the information that is pertinent to Investigation templates. Users can use this information to determine which templates already exist and when they were last updated.

To view the Investigation templates, navigate to the **Connected FS Settings** site and click **WORKFLOW**.

![workflow_templates_menu.png](images/workflow_templates_menu.png)

From here, you have the option to view either **Active** or **Inactive** templates. Active templates are ones that are able to be used during runtime processes. Inactive templates are ones that cannot be accessed during a runtime process, but can be edited or activated.

You can search or filter this list for a particular template. Clicking the history icon ![history icon](images/io_settings_history_icon.png) will take you to the Template History for that template with a list of all the changes that have been made to it. To view a template as read only, click the menu icon and select **View**.

## Create a new template

After installing the Connected KYC application, new Investigation templates that fit your organization's processes will need to be added.

To create a new Investigation template:

1.  From the **Templates** page, click **NEW TEMPLATE**.

2.  Enter **Attributes**.
    -   **Name**: Unique name to identify the template.
    -   **Customer type**
    -   **Domicile**
    -   **Set as Active**: Determines whether the template will be _Active_ or _Inactive_ when the template is saved.
    -   **Set as Default**: When creating an Investigation, if the selected customer's type and domicile do not have a predefined Investigation template the default template will be used.
    -   **Calendar settings**: How to calculate task due dates. Either exclude weekends and holidays, or include all calendar days.
        -   **Note**: If you want to change or add which dates you can select from, see [how to modify key due dates](modifying-key-dates.html). Once set, the due dates for the active tasks will change accordingly.
    -   **Description**: Text that describes the purpose of the template.
3.  Add **Questions**.
4.  Add **Documents**.
5.  Add and define **Tasks**.
6.  Click **SUBMIT**.

    ![fs_settings_kyc_create_template](images/fs_settings_kyc_create_template.png)

### Add Questions

On the questions step of the workflow process, business users set up the screening questionnaire that will be created when the KYC process is kicked off. Questions can be added either individually or by using a pre-built [rule](setting-up-rules.html).

Rules and questions can be grouped into categories. Categories are the grouping name that the end user will see when filling out the questionnaire because the rule name will not be shown.

To add questions or rules to the questionnaire:

1.  Click **Add Category**.
2.  Enter a **Category Name**.
3.  Click **Add**.
4.  Either add additional categories or click **Add Questions**.
5.  Select to add questions **By Rule** or **By Questions**.
    -   Adding questions via rules will add the entire rule into the category on the template.
    -   Adding questions individually will add the single question into the category and follow up questions can be configured from there.
6.  Once all questions have been added to the categories, click **NEXT**.

![add_question_on_template_kyc.jpg](images/add_question_on_template_kyc.jpg)

For dropdown and radio button questions, users are able to control **Response Risk Scores** for the individual template instead of using the default **Response Risk Score** set during question creation.

To update a question's response risk scores, click the icon.

![update_response_risk_score.jpg](images/update_response_risk_score.jpg)

A customer’s overall risk score is calculated by summing all response risk scores for every selected response in a questionnaire.

### Add document requirements

On the document step of the workflow process, document requirements can be added. Each time the template is selected those specific documents will be required to be added during the Investigation process.

To add document requirements:

1.  Click **Add Document**.
2.  Select the **Document Type**.
3.  Enter the **Quantity** of documents of that type that are required.
4.  Repeat for additional document types.
5.  Click **NEXT**.

### Add tasks

On the tasks step of the workflow configuration process, users can add and relate tasks that need to be completed. Some tasks will already be present on this page. If required documents were defined in the documents step, an attach and review document task will be added for each required document.

For the KYC process, a questionnaire, KYC decision, and KYC peer review task will also be added to the template and cannot be removed.

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

When you finish creating the template, click **SUBMIT** to save it.

## Managing templates

Business users can manage Investigation templates from the **Connected FS Settings** site, this includes updating, cloning, activating or deactivating, and deleting an existing Investigation template.

![co_managing_templates](images/co_managing_templates.png)

### Update an existing template

With the **Connected FS Settings** site, business users can easily and quickly update Investigation templates with any changes.

![co_update_existing_template.png](images/co_update_existing_template.png)

To update a workflow template:

1.  Click the icon.
2.  Click **Edit**.
3.  Make any necessary updates.
4.  Validate the tasks and click **SUBMIT**.

**Note:**  When updating an existing template, you are required to go through each step of the process in order to save your updates.

All future Investigations will use the modified template. Any Investigations that are already in process or completed will not be affected.

### Clone template

When a new template is needed and is very similar to an existing template it may be easier to simply clone the existing template and make the minor changes.

To clone a template:

1.  Click the icon.
2.  Click **Clone**.
    -   **Note**: To activate the cloned template, the customer type and domicile combination must be unique.
3.  Click **SUBMIT**.

### Set default template

The default template is the template that is used for the Investigation if there is not a distinct template for the selected customer's type and domicile. There can only be one default template, which cannot be deactivated.

You can select the default template by clicking the menu icon and selecting **Set Default**. The old default template will then be replaced by the current one.

### Deactivate template

If an active template is no longer needed or is needed in the future but is not ready to go live, business users can deactivate templates. A template can be set as _inactive_ when creating, editing, or cloning an existing template by selecting **No** under **Set as Active**.

Templates can be deactivated from the Active template page by selecting the menu icon on a template and selecting **Deactivate**. Inactive templates are unavailable when creating new Investigation.

### Activate template

If an inactive template is ready to be used, business users can activate templates so that they are available for use when creating new Investigations. Templates can be activated when creating, editing, or cloning an existing template by selecting **Yes** under **Set as Active**.

-   **Note**: The inactive template's customer type and domicile combination must be unique for the template to be enabled.

Templates can be activated from the Inactive template page by selecting the menu icon on a template and selecting Activate. Active templates can be selected when creating new Investigations.

### Delete template

If an inactive template is no longer needed, it can be permanently deleted. From the menu icon, select **Delete**. Confirm that this template is the correct one to be deleted, as the action will not be able to be reversed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...