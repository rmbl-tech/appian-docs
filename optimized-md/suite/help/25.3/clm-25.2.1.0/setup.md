---
source_url: https://docs.appian.com/suite/help/25.3/clm-25.2.1.0/setup.html
original_path: clm-25.2.1.0/setup.html
version: "25.3"
title: "Contract Lifecycle Management Setup Guide"
page_id: "clm-25.2.1.0/setup"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Contract Lifecycle Management Setup Guide

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Contract Lifecycle Management, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Contract Lifecycle Management (CLM) is a flexible and dynamic solution that automates and streamlines the key processes and decision points during each stage of the contract lifecycle. To ensure your application remains scalable and aligns with best practices, we’ve provided instructions to guide you through some of the most common and important setup tasks.

After [installing CLM](install.html), there are certain configurations you’ll need to perform to configure the solution for your organization and its business processes.

This guide outlines those tasks and configuration options along with a general order in which we recommend completing them. However, these instructions can be used to modify the application at any time.

### How to use this guide

We’ve broken this guide up into two distinct sections: [Admin setup](#admin-setup) and [Configuration Studio](#configuration-studio).

Each section is geared toward a specific audience and requires a different level of technical knowledge and proficiency with the Appian Platform.

The configurations in the Admin section should be carried out by someone who is proficient with Appian Designer and familiar with Appian development concepts.

The configurations in the Configuration Studio section are suitable for a broader, less technical audience as they rely on no-code tools. This setup should be carried out by privileged business users or users otherwise familiar with your organization’s business needs as they relate to your contract lifecycle management process.

## Admin setup

Before proceeding with your no-code, CLM setup in [Configuration Studio](#configuration-studio), there are a few admin-level tasks related to feature settings, user groups and security, optional integrations, and data setup you should be aware of that may impact functionality in your CLM solution.

Carefully review your options and decide which settings make the most sense for your organization and business needs.

**Caution:**  Updates related to this section should be performed by someone familiar with [Appian Designer](../welcome-app-designer.html) and Appian development concepts.

### CLM feature toggles (optional)

Use Appian Designer to enable or disable CLM-specific features.

The following features can be turned on or off by changing the True/False value in the following design objects:

-   `CLM_FEATURE_TOGGLE_RECORD_CHAT` - This constant manages whether the AI Contract Record Chat feature is enabled. This toggle is shipped in the ON state.
-   `CLM_FEATURE_TOGGLE_SEMANTIC_SEARCH` - This constant manages whether the AI Semantic Search feature is enabled. This toggle is shipped in the ON state.
-   `CLM_FEATURE_TOGGLE_AUTO_POPULATE_CONTRACT_PLACEHOLDERS` - This constant manages whether the Automatically Populate Contract Placeholders feature is enabled. This toggle is shipped in the ON state.
-   `CLM_FEATURE_TOGGLE_OFFICE_365` - This constant manages whether the Microsoft 365 integration is enabled. This toggle is shipped in the OFF state. For instructions on setting up the Microsoft 365 Integration, see the [Microsoft 365 integration](#microsoft-365-integration-optional) section.
-   `CLM_FEATURE_TOGGLE_ADB_AI_DOCUMENT_BUILDER` - This constant manages whether the AI Document Builder feature is enabled. This toggle is shipped in the OFF state. For instructions on setting up the Azure OpenAI integration to use this feature, see the [Azure OpenAI integration](#azure-openai-integration-optional) section.
-   `CLM_FEATURE_TOGGLE_DOCUSIGN` - This constant manages whether the Docusign feature is enabled. This toggle is shipped in the OFF state. For instructions on setting up the Docusign integration to use this feature, see the [Docusign integration](#docusign-integration-optional) section.
-   `CLM_FEATURE_TOGGLE_AI_KNOWLEDGE_ASSISTANT` - This constant controls whether the AI Contract Assistant feature is enabled. This toggle is shipped in the OFF state. The AI Contract Assistant allows users to summarize and ask questions about contract documents. For more information, see [AI Contract Assistant Setup](ai-contract-assistant-setup.html).

### Azure OpenAI integration (optional)

CLM comes with an integration with Azure OpenAI that can be used to generate contract text from user instructions. To configure this integration with your CLM solution, you need to register for an account with Azure OpenAI and configure the connected system with your account credentials.

Refer to the [Azure OpenAI Integration Setup Guide](openAI-integration.html) for detailed instructions.

### Microsoft 365 integration (optional)

Refer to the [Microsoft 365 Integration Setup Guide](microsoft365-integration.html) for detailed instructions.

### Docusign integration (optional)

CLM comes with an integration with Docusign eSignature software that can be used to facilitate and track the contract signing process automatically. Configuration for this integration will take place in both your Appian CLM application and Docusign.

Refer to the [Docusign Integration Setup Guide](docusign-integration.html) for detailed instructions.

### Contract signing

To allow for completion of the Send for Signature task in the task record summary, there are instances where a PDF document must be generated on page load. This requires you to reference the appropriate API key in the connected system that references your existing environment.

To configure the connected system:

1.  Create a new service account for internal operations.
    1.  Example: `clm.internal.service.account`
2.  Create an API key for this service account.
3.  Add this service account to the **CLM Internal Service Accounts** group.
4.  Reference this API key in the CLM Self Referential Connected System object on import.
5.  Reference your environment web API base URL in the CLM Self Referential Connected System object on import.
    1.  Example: `https://www.your-environment.com/suite/webapi/`

**Tip:**  See [Task Types](#task-types) to learn more about the Send for Signature task.

### User groups and security

Security in Contract Lifecycle Management is defined by the following role groups:

| Group name | Description |
| --- | --- |
| Contract Viewer | Users added to the Contract Viewer group have access to Workspace to view and comment on contracts, tasks, and reviews. |
| Task and Review Assignee | Users added to the Task and Review Assignee group have access to Workspace to complete, edit, or reassign tasks and complete reviews assigned to them or their group. |
| Contract Worker | Users added to the Contract Worker group have access to Workspace to view and edit contracts but do not have access to submit for review or manage third party records. |
| Contract Approver | Users added to the Contract Approver group have access to Workspace to view contracts, submit for review, and manage third party records. |
| Contract Owner | Users added to the Contract Owner group have access to Workspace to view and manage contract and third party records. They do not have access to create or cancel contracts. |
| Contract Initiator | Users added to the CLM Initiator group have access to Workspace to create, view, and complete actions on contract and third party records in the CLM solution. |
| Contract Initiator Manager | Users added to the CLM Initiator Manager group have all the access of Contract Initiator, PLUS access to cancel a contract record that is not yet fully executed. |
| Privileged Business User | Users added to the Privileged Business User group have all the access of Contract Initiator Manager, PLUS access to the Configuration Studio site to configure contract types, intake forms, workflows, reusable tasks, review processes, and manage templates. |

#### Business groups

The CLM solution also comes with the following Business Groups, which are used for task, review, and contract assignment:

-   CLM Finance
-   CLM Information Technology
-   CLM Legal
-   CLM Marketing
-   CLM Risk Management
-   CLM Sales

These groups may be renamed and additional groups can be added to the **CLM Business Groups** group as needed.

#### Adding users

To add users to a group, complete the following steps:

1.  From Appian Designer, locate and click the group you want to add users to.
2.  Click **ADD MEMBERS**.
3.  Use the **Groups to Add** or **Users to Add** fields to search for and add groups and users to the group.
4.  When finished, click **ADD**.

### Reference Data

The CLM solution includes the following reference data that are easily customizable to align with your business.

#### Department

Contracts can be related to a department using the **Department** field which enables reporting and review process execution by department.

The following departments are shipped with the CLM solution:

-   Finance
-   Information Technology
-   Legal
-   Marketing
-   Risk Management
-   Sales

The department options can be modified and added to by a Privileged Business User with access to Configuration Studio by completing the following steps.

1.  Click **Configuration Studio** from the site menu.
2.  Click the **Contract Types** page.
3.  Click the **Data** tab.
4.  Click the edit icon in the **Department** row. ![Click the edit icon to modify the department options](images/department-edit-studio.png)
5.  Add, relabel, deactivate options as needed.
6.  Click **SAVE**.

#### Priority

Contracts can be automatically assigned a priority on creation based on the default priority set for the selected contract type. Contract priority can also be manually set and changed using the **Update Details** action on the contract summary.

The CLM solution ships with the following priority options:

-   Critical
-   High
-   Medium
-   Low
-   None

The contract priority options can be modified or added to by an Administrator with access to the database.

If your organization uses the Appian MariaDB, you can modify the Priority options in the **CLM\_CFG\_PRIORITY** table.

**Note:**  It is a best practice to disable any reference values you do not intend to use rather than deleting reference values.

### User start pages

To ensure users are automatically directed to the correct site upon logging into your CLM solution, it is recommended to configure [User Start Pages](../Appian_Administration_Console.html#user-start-pages) in the [Appian Admin Console](../Appian_Administration_Console.html).

The recommended start pages for the CLM groups are:

| **Start Page URL** | **Groups** |
| --- | --- |
| https://ENVIRONMENT-NAME/suite/design | CLM Design Administrators |
| https://ENVIRONMENT-NAME/suite/sites/clm-workspace | CLM Internal Users |
| https://ENVIRONMENT-NAME/suite/webapi/solutions-hub-start-page-handler | AS\_HUB\_GRP\_Admins |

### Translating the application (optional)

All strings displayed throughout the CLM solution are backed by a Translation Set. This makes tailoring the verbiage to match your business’ vernacular easy using the Translation Set, **CLM\_BaseTranslations**, in Designer.

Refer to [Translation set object](../translation-set-object.html) for information on translating the Contract Lifecycle Management solution to other languages.

## Configuration Studio

The Configuration Studio in CLM provides a suite of no-code tools that act as a one-stop-shop for privileged business users to create, define, and manage the various contract types, templates, tasks, workflows, and review rules specific to your organization and its contract lifecycle management process. The configurations made here will govern how contract workers interact with and carry out their daily responsibilities in your CLM solution.

![Configuration Studio](images/configuration-studio-overview.png)

See [Admin Setup](#admin-setup) above for an overview of certain admin-level settings that may impact functionality in your application.

To access the Configuration Studio, ensure you have been added to the proper [user group with the appropriate permissions](#user-groups-and-security).

The Configuration Studio consists of five different pages:

| **Page Name** | **Description** |
| --- | --- |
| Contract Types | Landing page for all privileged business users upon navigating to the Configuration Studio site. This page is where you’ll create and manage the [contract categories and types](#contract-categories-and-contract-types) for your organization. You can also use this page to drill-down into your categories and types to configure intake forms and workflows, define the custom data fields, and configure custom summary pages. |
| Tasking | Nested page group consisting of two pages: Tasks and Task Blocks. Use these pages to [configure the tasks and task blocks](#tasks-and-task-blocks) specific to the various workflows and contract types for your organization. |
| Review Rules | This page is where you’ll create and manage the various [internal review rules](#review-rules) and processes contract workers must follow during the lifecycle of a contract. |
| Templates | This page is where you’ll upload and manage the [template documents](#templates) that are assigned to specific contract types and used in the contract creation process by contract workers. |
| Alerts | This page is where you’ll create and configure email [alerts](#alerts) that are sent based on key contract dates. |

### Contract categories and contract types

Contract categories allow for contract types to be organized into logical groupings within your CLM solution.

Contract types allow your organization to define the expected business process and data collection needs for each of the different types of contracts you need to track and manage as they move through their lifecycle.

Both contract categories and contract types are managed on the Contract Types page of the Configuration Studio.

#### Configure Categories

CLM comes with one contract category out-of-the-box: **Business Operations**.

This category has four predefined contract types:

-   Master Service Agreement
-   Non-Disclosure Agreement
-   Sales Agreement
-   Statement of Work

![View the Contract Types page in Configuration Studio](images/configuration-studio-overview.png)

If you need to create additional categories:

1.  Click **CREATE CATEGORY**.
2.  Enter a **Name**.
3.  Optionally, you can add a **Description** and upload an image for the category.
4.  When finished, click **CREATE**.

#### Configure types

To create a contract type:

1.  In line with the category the new contract type should be related to, click **CREATE CONTRACT TYPE**.
2.  **Category** defaults to the category you clicked into, but can be changed when initially creating the contract type.
    -   The category cannot be changed after the contract type is created.
3.  Enter a **Name**.
4.  Enter a **Prefix**. A prefix will be automatically generated using the first letter of each word in the name. It can be modified if needed.
    -   The prefix will be prepended to the name of any contracts created for this type and is meant to help users easily identify the type of contract within the solution workspace.
5.  Optionally, enter a **Description** which displays with the contract type name for contract workers when they select a contract type while creating contracts.
6.  Optionally, enter an **SLA**, or service level agreement, which is the expected number of days your business requires to sign a contract from its creation. On contract creation, the SLA is applied to automatically define the contract due date.
7.  Select a **Default Priority** to automatically apply a priority to contracts created using the contract type. The priority can be changed by contract workers for each contract after creation.
8.  Optionally, select a **Default Assigned Group** to have contracts created of this type automatically assigned to a specific business group.
9.  When finished, click **CREATE**.

Within each contract type, you can use the [Details](#details), [Data](#custom-data-fields), [Intake Form](#intake-forms), [Workflow](#workflows), and [Summary Page](#summary-views-and-forms) tabs to view and configure various aspects of the contract type.

##### Details

On the Details tab you can view and update the settings and view the configuration status for the contract type.

The Configuration Status section provides a way to visualize the progress and status of your contract type configuration. Each of the four cards corresponds to the remaining four tabs on the Contract Type navigation menu.

![Details tab for the MSA contract type](images/contract-type-details.png)

##### Custom data fields

On the Data tab, you can customize and extend the out of the box data model by adding fields to be captured along with the base record for the contract type and visualize your data model.

![Data tab for the MSA contract type](images/contract-type-data.png)

| Data field level | Description |
| --- | --- |
| 1 - Contract Type Data Fields | Configurations apply only to contracts created for the contract type. |
| 2 - Category Data Fields | Configurations apply to any contract types within the category. |
| 3 - All Contract Data Fields | Configurations apply globally to all contracts regardless of category or type. |
| 4 - Data Visualization | Visual aid to view data hierarchy within the solution. |

###### Adding custom data fields

Custom data fields allow you to extend the data model of the CLM solution in a no-code way.

Additional data fields can be added at three levels.

-   **Contract Type** - Creating a data field at the contract type level restricts the collection of the data field to the contract type it is related to.
-   **Category** - Creating a data field at the category level allows for it to be collected and modified across any of the contract types within the category.
-   **All Contract Types Data** - Creating a data field at the all contract types data level allows for it to be collected and modified in any contract type across categories.

The CLM solution ships with a number of custom data fields out-of-the-box set up at the All Contract data level so they can be used in any contract type if needed.

| **Name** | **Type** |
| --- | --- |
| Start Date | Date |
| End Date | Date |
| Is Auto Renewal | Boolean |
| Termination Notice Period | Number (Integer) |
| Requested Sign Date | Date |
| Department | Choice List |
| Additional Information | Long Text |
| Total Contract Value | Number (Decimal) |
| Amendment Value | Number (Decimal) |
| Currency | Choice List |

To add data fields:

1.  Click **\+ Add data fields**.
2.  For each new data field, enter a **Name** and select a **Type**.
3.  To add more fields, click **\+ Add new**.
4.  Review and edit your new data fields as needed, then click **CREATE**.

##### Intake forms

Intake forms provide a standardized way to collect information when a user creates a contract. For each contract type in your CLM solution, you can create and manage intake forms with a simple drag and drop experience.

Intake forms can consist of one or multiple pages and you can map the intake fields to custom data fields relevant to your organization's business processes. The CLM solution comes with pre-configured intake forms for each shipped contract type.

**Note:**  Because the value for the Label attribute references a translation string in the CLM translation set, the Label attribute is not configurable in Configuration Studio for pre-configured forms.

![Edit the contract type's intake form](images/contract-type-intake.png)

To configure an intake form:

1.  Navigate to the **Intake Form** tab for a contract type.
2.  Click **UPDATE**.
3.  To update any of the existing fields, click into them.
4.  Make any necessary changes and click **SAVE**.
5.  To add fields, drag and drop a selection from the **Inputs**, **Selection**, or **Display** options from the left panel.
6.  Click **SAVE**.
7.  To add another page, click **ADD PAGE** at the bottom of the existing form.
8.  Configure the new page using the same steps above.
9.  Click **SAVE** and **CLOSE** when finished.

##### Workflows

Workflows in CLM allow your organization to define expected business processes using tasks and milestones to help you drive operational consistency, compliance, and efficiency.

You can configure reusable tasks prior to creating a workflow or you can create them on-the-fly within the task list for the workflow.

Milestones are optional and can be created for each contract type based on your organization’s needs. Tasks related to particular milestones are meant to provide contract workers visibility into a contract’s progress as it moves through the lifecycle.

Before you start creating the tasks and milestones for your workflows, it is helpful to consider and document your business processes to identify the attributes that typically introduce variability in your processes.

To configure a workflow navigate to the **Workflow** tab for a contract type.

![Define the workflow milestones and tasks for the contract type](images/contract-type-workflow.png)

If the contract type does not yet have a workflow started:

1.  Click **CONFIGURE WORKFLOW**.
2.  Click **ADD TASKS**.
    1.  You can select an existing task or task block from the list or click **\+ CREATE TASK** to create a new task on-the-fly. See [Tasks and task blocks](#tasks-and-task-blocks) for more information on creating tasks.
3.  Click **ADD** when you are finished adding or creating tasks.
4.  Click on each task to complete additional configurations such as Milestones and Dependents.
    1.  Click the **Update Milestones** link to create and modify milestones for the contract type.
    2.  Click **\+ ADD DEPENDENT** to define a task that should be made ready on completion of the task. ![Add dependent task](images/contract-type-edit-workflow.png)
5.  Click **UPDATE** to save and return to the Workflow tab of the contract type. ![Workflow milestones](images/contract-type-workflow-milestones.png)

If a workflow was started for the contract type, complete the following steps to add milestones or tasks.

To add milestones:

1.  Click **Update** in the **Milestones** section.
2.  Click **\+ ADD MILESTONE**.
3.  Click **UPDATE** when finished.

To add tasks:

1.  Click **UPDATE** in the **Tasks** section.
2.  Click **\+ ADD TASKS.**
    1.  You can select an existing task or task block from the list or click **\+ CREATE TASK** to create a new task on-the-fly. See Tasks and task blocks for more information on creating tasks.
3.  Click **ADD** when you are finished adding or creating tasks.

##### Summary views and forms

After you've created your custom data fields and intake forms to allow you to collect important data for each contract type, you need to configure that information to display in the contract summary view.

The Summary Page tab on each contract type allows you to choose which custom data fields to display for contracts of each contract type and the order in which they should display in the summary.

Note that the fields added to display on the Summary page will display in two columns where every two fields are displayed in line with each other.

The contract types shipped with the CLM solution are pre-configured to display all of the custom data fields collected in each contract type intake form. Additional customization has been made to certain fields to define display formatting.

Edit forms allow contract workers to update any of the custom data collected at contract creation. The CLM solution ships with editable forms containing all custom fields collected during contract creation. Fields can be added and removed as needed to adhere to your organization’s business policies.

### Tasks and task blocks

Tasks in CLM are the main driver of activity in your contract lifecycle management workflows. They are meant to represent the work and activities contract workers need to complete throughout the lifecycle of a contract.

Task blocks are groups of single tasks chained together in a sequence to create flexible pathways within a workflow.

You can configure and manage all tasks and task blocks for your CLM solution using the two nested pages, **TASKS** and **TASK BLOCKS**, found within the **TASKING** page group.

#### Create tasks

From the **Tasks** page you can:

-   View all available tasks in your solution.
-   Create and edit tasks.
-   Search and filter the task list.

![View of tasks page](images/tasks-page.png)

**Note:**  You can also create a task on-the-fly using the [Workflow tab](#workflows) for any contract type.

To create a task:

1.  Click **\+ CREATE TASK**.
2.  In the **Create Task** dialog, configure the task properties.
3.  When finished, click **CREATE**.

##### Task properties

The following table describes each of the task properties you can configure when creating a task:

<table class="appianTable"><tbody><tr><td><strong>Property</strong></td><td><strong>Description</strong></td></tr><tr><td>Name</td><td>The name of the task.</td></tr><tr><td>Task Type</td><td>The kind of activity the task represents. There are six task types: Confirmation, Decision, Document Upload, Send for Signature, Upload Contract Version, Upload Signed Contract. NOTE: you cannot edit the task type once the task is created. See <a href="#task-types">Task Types</a> below for more details on the different task types.</td></tr><tr><td>Default Assigned Group</td><td>The group that has permission to perform this task, unless otherwise specified.</td></tr><tr><td>SLA (in days)</td><td>The service level agreement applied to the task, calculated in business (working days).</td></tr><tr><td>Question</td><td>This option only displays when the Task Type is Decision and is a required property. Contract workers will be required to answer this question.</td></tr><tr><td>Response Options</td><td>This option only displays when the Task Type is Decision and the values are meant to be options contract workers can use to respond to the entered question. See above property.</td></tr><tr><td>Status</td><td>This option only displays when the Task Type is <em>Upload Signed Contract.</em> Select Partially Signed or Fully Executed.</td></tr><tr><td>Description</td><td>Optional field. Enter additional details that may be helpful to the user when completing this task.</td></tr></tbody></table>

##### Task types

The following table describes each task type you can choose when creating a task:

<table class="appianTable"><tbody><tr><td><strong>Task Type</strong></td><td><strong>Description</strong></td></tr><tr><td>Confirmation</td><td>Allows the user to indicate they completed the assigned task.</td></tr><tr><td>Decision</td><td>Allows privileged business users to define a question and up to five response options. When added to a task block or a contract type workflow, each response option can be mapped to other tasks in the workflow. Upon successful completion of this task type, the tasks mapped to each response option are automatically made ready as appropriate.</td></tr><tr><td>Document Upload</td><td>Allows the assigned user to upload one or multiple documents that may be required as part of the expected contract business process.</td></tr><tr><td>Send for Signature</td><td>This task has two different methods: Send Automated Email for eSignature or Draft Individual Email for Signature. Send Automated Email for eSignature allows contract personnel to automate much of the signing process using the <a href="#docusign-integration-optional">Docusign integration</a> capabilities. Draft Individual Email for Signature allows the assigned user to fill out email contents when completing the task. For example, subject, to, CC, latest contract version. When the user then submits the task, CLM will send an email with the email contents provided by the user.</td></tr><tr><td>Upload Contract Version</td><td>Allows the assigned user to upload a new contract version at defined points in the contract lifecycle process. For example: at drafting, during review, and after negotiation.</td></tr><tr><td>Upload Signed Contract</td><td>Allows contract workers to upload a partially or fully signed contract. When the task is created, you have the option to indicate whether the uploaded document is expected to be fully or partially executed.</td></tr></tbody></table>

#### Create task blocks

From the **Task Blocks** page, you can:

-   View all task blocks in your solution.
-   Create and edit tasks blocks.
-   Search and filter the task block list.
-   View visualizations of the sequence of tasks in each task block.

![Task blocks empty state](images/task-blocks.png)

To create a task block:

1.  Click **CREATE TASK BLOCK**.
2.  Enter a name and description for the task block. Click **NEXT**.
3.  Click **Add Tasks**.
4.  You have the option to add existing tasks to the task block or create new tasks.
    1.  To create a new task, click **\+ CREATE TASK**.
5.  When you are finished adding tasks, click **ADD**.
6.  On the following screen, you can reorder the sequence of tasks as needed.
7.  Click on any task to view and configure its details.
8.  You can edit the **Assigned Group** and **SLA** values.
9.  To add a dependent task, click **\+ ADD DEPENDENT** in **Workflow Settings.**
    1.  **Note:** For Decision task types, Workflow Settings and Dependents are added by default using the question and response values from the task type.
10.  Select a task from the **Leads Into** dropdown to designate the next task(s) to be readied upon the task’s completion.
11.  Click **CREATE**.

Once created, the task block can be added to [workflows](#workflows) for contract types.

### Review rules

Review rules allow your organization to designate the appropriate teams and people for contract reviews based on specific contract attributes.

You can define review rules based on the following contract attributes:

-   Category
-   Contract type
-   Department
-   Total contract value

You can configure as many reviews as needed for a review rule. Each review can be completed independently or you can make reviews dependent on other reviews using the **Needs to be completed before** dropdown. This allows you to define a sequential order in which the reviews must be completed.

The CLM solution comes with a Default Review rule to be presented to contract workers when a contract submitted for review does not match the conditions of any other existing and active review rules.

![View of create rule dialog](images/create-review-rule.png)

To create a review rule:

1.  From the **REVIEW RULES** page, click **\+ CREATE REVIEW RULE**.
2.  Enter a **Rule Name** for the review rule. The **Status** defaults to _Active_.
3.  Define the **Conditions** that must be met to trigger the reviews.
    1.  You can **Match All Conditions** or **Match Any Conditions**.
4.  Enter as many **Reviews** as necessary for the review rule.
5.  Click **CREATE**.

### Templates

Contract templates allow your organization to ensure contracts for each contract type are created using standard, pre-approved language that meets your organizational standards.

The Templates page is where you’ll upload and manage your organization’s contract templates for contract workers to use when requesting and creating contracts in the CLM solution.

![Upload template dialog](images/upload-template.png)

To upload a new template:

1.  From the **TEMPLATES** page, click **UPLOAD TEMPLATE**.
2.  Enter a **Template Name**.
3.  Select a **Contract Type** from the dropdown.
4.  Click **UPLOAD** to select a file to upload or drag and drop the file in the **Contract Template** field.
    1.  Note: Templates must be in .docx format and less than 20MB.
5.  The **Status** defaults to checked for **Active**.
    1.  Note: If you uncheck the **Active** box, contract requestors will not see this template when creating contracts.
6.  Click **SAVE** when finished.

#### Automatically populate placeholders

CLM provides the ability to automatically populate contracts with information captured in the contract intake form using dynamic placeholders.

For a list of supported placeholders and their corresponding data fields that you can add to your templates, click the **Download supported data fields** link.

Add as necessary to your contract template.

### Alerts

Contract alerts enable you to create customized email notifications for the right stakeholders to increase visibility of contract renewals and ensure timely renewal of contracts without a lapse in contract coverage and service. Contract alerts also increase visibility for contracts with auto-renewal terms, enabling the termination of unfavorable contracts before the enterprise is locked into another term.

![Create a new contract alert](images/configure_contract_alerts.png)

To create a new contract alert:

1.  From the **ALERTS** page, click **+CREATE ALERT**.
2.  In the **Alert Name** field, enter a name for the alert.
3.  In the **Email Subject** field, enter the subject line that appears in the email notification.
4.  Under **Status**, select **Active** to enable the alert or **Inactive** to save it for later use.
5.  Select **Send to the contract’s assigned group** to send the alert to the contract’s assigned group.

    **Note:**  Contract assignees will always receive alerts.

6.  In the **Additional Users** auto-suggest field, enter the names of up to 9 additional users who must receive the alert.
7.  From the **Which contract date is the alert based on?** dropdown, select the relevant contract date the alert is based on, such as Creation Date or End Date.
8.  Under **When should the alert be sent?**, choose one of the following:
    1.  **Before the date**: Sends the alert before the date selected in step 7.
    2.  **After the date**: Sends the alert after the date selected in step 7.
    3.  **On the date**: Sends the alert on the date selected in step 7.
9.  In the **How many days before?** field, enter the number of days relative to the selected date in step 7, based on the option you chose in step 8.
10.  Click **CREATE** to save the alert or **CANCEL** to discard the changes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...