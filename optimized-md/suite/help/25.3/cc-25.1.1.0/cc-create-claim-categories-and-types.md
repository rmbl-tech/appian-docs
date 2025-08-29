---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-create-claim-categories-and-types.html
original_path: cc-25.1.1.0/cc-create-claim-categories-and-types.html
version: "25.3"
title: "How to Create Claim Categories and Claim Types"
page_id: "cc-25.1.1.0/cc-create-claim-categories-and-types"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Create Claim Categories and Claim Types

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

Claims are a vital part of claims management applications. They represent a series of tasks to complete or a multi-step process. Once a claim is created by a claims adjuster or a third party system, the new claim kicks off a workflow, which is a process involving numerous claims personnel and tasks to complete in order to resolve an insurance issue or completing a claim process. Connected Claims allows you to manage both the claims and workflow in a centralized place.

An individual claim is made up of data submitted by a claimant or reporter about an incident or request and provides claim adjusters with the information they need to complete the claim. In Connected Claims, there are two main containers for claims that allow you to specify the exact data requirements for claim processing, as well as how to configure data capture and display. These containers are claim categories and claim types.

This page will provide a brief overview of what claim categories and claim types are and how to configure them.

## What are claim categories and claim types?

In Connected Claims, claim categories and types work together to create data structures that are both simple to understand and allow you to efficiently reuse data fields throughout your app. A claim category is a container used to organize similar or related claim types and share common data fields across them, allowing you to easily organize claim types based on your own set of criteria. A claim type is a smaller container within a claim category that holds the claim specific data, tasks, automations, and workflow for a specific kind of claim, as well as the individual claims in the claim type.

You can configure claim categories and claim types to fit the overall organizational and data needs for your use claim. For example, an insurance claims application for a homeowners insurance company might have a claim category to group all claims and requests related to their residential rental buildings. The claim types in this claim category might be maintenance request, leasing and application requests, resident parking permits requests, etc.

The following diagram shows the relationship between claim categories and claim types:

![Claims Categories and Types Diagram](images/cc_claims_categories_types_diagram.png)

## Creating a claim category

Before you can create claim types and workflows for your Connected Claims solution, you first need to create claim categories.

To create a claim category:

1.  If there are no claim categories in your app, click **CREATE CATEGORY** on the Studio landing page.
2.  If there are already claim categories in your app, click **CLAIM TYPES** in the navigation bar.
3.  Click **\+ Create Category**.
4.  Enter a name, and optionally add a description or background image for the category.

Once you've created a claim category, you can open it and view the claim category details on the **Details** tab. Both claim categories and claim types use the **Details** tabs as their default landing pages.

![Claims Type Tabs](images/cc_claim_types_category_automobile.png)

Claim categories consist of two tabs:

-   [Details](#details-tab-in-a-claim-category)
-   [Data](#data-tab-in-a-claim-category)

### Details tab in a claim category

The Details tab within a claim category provides a centralized, organized view of all the claim types for that specific category. Create a new claim type within the category or update the category details, including the active status, which determines whether or not it can be used in a workflow.

![All Claim Types Details Tab ](images/cc_claim_category_details_tab_actions.png)

From the Details tab, you can perform the following actions:

-   View the claim category name and description.
-   View all claim types in the category.
-   Edit the claim category.
-   Create new claim types.
-   Drill into existing claim types.

### Data tab in a claim category

Both claim categories and claim types have **Data** tabs, where you can view the data fields associated with the claim category, claim type, and all claims respectively.

**Note:**  You can also view all of the data fields common to all claim types in your app and the structural data hierarchy in the **Data** tab of the **All Claims** page.

The following image highlights the actions you can do in the **Data** tab in a claim category:

![All Claim Types Data Tab ](images/cc_all_claim_types_data_tab.png)

1.  View common data fields for all claim types in the claim category.
2.  Edit and create new common data fields for all claim types in the claim category.
3.  View common data fields for all claim types in the application.
4.  Edit and create new common data fields for all claim types in the application. View a visualization of the claim type and category hierarchy.

#### Data fields

Data fields are the types of data you can include and configure in your claim categories and claim types to get the information that you need to complete tasks and resolve claims.

Data fields can be specific to a claim type, shared by all claim types in a claim category, or shared by all claim types in the app.

Using a combination of both shared and specific data fields not only allows you to easily set up data fields once and use them across your app without having to recreate the field, but it also allows you to hone in on the specific data needed for a claim type without having to apply the unnecessary data fields elsewhere.

See the [entity relationship diagrams](cc-data-relationships.html) to view the relationship between the data fields in the claim category and data fields in the claim type.

##### **Adding and configuring data fields**

When you create a claim category, add data fields to it that will be common to all claim types in the category.

To add data fields to a claim category:

1.  From the **Data** tab of a claim category, click **ADD CUSTOM FIELDS**, then **\+ ADD DATA FIELDS**.
2.  Enter a **Name** for the data field.
3.  Select a **Type** for the data field that matches the kind of data you want to capture in this field.
4.  Click **CREATE**.

**Note:**  You can also add data fields to all claims or a claim category from the **Data** tab in a claim type.

Once you've added data fields to your claim category, you can add data fields to your claim type.

To add data fields to your claim type:

1.  From the **Data** tab of a claim type, click **ADD DATA FIELDS**, then **\+ ADD DATA FIELDS**.
2.  Enter a **Name** for the data field.
3.  Select a **Type** for the data field that matches the kind of data you want to capture in this field.
4.  Click **CREATE**.

You can also add multiple new data fields at the same time, for both claim categories and claim types.

**Note:**  Note that Appian enforces a data modeling best practice that allows you to only have two Long Text data fields shared across all claims, two Long Text data fields in each claim category, and two Long Text data fields in each claim type.

##### **Choosing the right type of data fields for your claims**

When creating data fields, it is important for the overall health and performance of your application to choose the data type that best matches the kind of data you need from each data field.

There are 7 data types to choose from:

-   Short text
-   Long text
-   Number (integer)
-   Number (decimal)
-   Date
-   Date and time
-   Boolean
-   Choice list

Here are some examples of common data field and data type pairings:

| Example of data to enter | Type of data field |
| --- | --- |
| Short written response | Short text |
| Phone number or any series of numbers that uses formatting | Short text |
| Written response of a paragraph or more | Long text |
| A numerical total, measurement, or any number you could perform a calculation on | Number (integer) or number (decimal) |
| Month, day, and year only | Date |
| Time of day, plus the month, day, year | Date and time |
| True/false or yes/no responses | Boolean |
| Reference or [lookup data](../build-best-data-fabric.html#store-lookup-data-in-a-separate-record-type) used in dropdowns, like statuses | Choice list |

Creating a well-defined architecture for your data is called data modeling. In Connected Claims, a data model is a representation of all of the information available in the claim categories and claim types for your application. To learn more about data modeling throughout Appian, check out [Data Modeling with records](../data-modeling-with-appian-records.html).

If you're unsure about where and how to start creating data fields, we can suggest names and data types for you.

To generate suggested names and data types for new data fields:

1.  From the **Data** page of a claim category or claim type, click **Add Data Field**.

    ![cc_add_data_fields02](images/cc_add_data_fields02.png)

2.  In the **Create Data Field** dialog under the **Tell us what information to capture** heading, enter a prompt that tells us the kind of data you want to get for each data field.

    ![cc_create_data_fields02](images/cc_create_data_fields02.png)

    -   For example, to add data fields for a rental application claim, you might have a prompt that says: "Add fields for first name, last name, date of birth, and other common fields for rental applications".
3.  Click **GENERATE**.
4.  Once generated, the suggested name and data type for the new data field are populated below. Hover over the sparkles beside the new data field to see our reasoning for the suggested name and data type. You can edit the suggested field names and data types, as well as modify the prompt and regenerate suggestions. Note that if you modify the prompt and click **GENERATE** again, the previously suggested names and data types will be overwritten.
5.  Once you've reviewed and/or edited the suggested names and data fields, click **CREATE**.

**Tip:**  If a generated data type for a field is a choice list field, you'll need to add the choice list options before finishing creating the data fields.

## Creating a claim type

In addition to the claim category and its configurable components, Studio allows you to create a new claim type from within an existing claim category.

Each claim type consists of five configurable components:

1.  [Details](#details-tab-in-a-claim-type)
2.  [Data](#data-tab-in-a-claim-type)
3.  [Intake form](#intake-form-tab-in-a-claim-type)
4.  [Workflow](#workflow-tab-in-a-claim-type) [Summary page](#configuring-the-summary-page-for-a-claim-type)

To create a new claim type in a claim category:

1.  From the **Details** tab of a claim category, click **\+ Create Claim Type**.
2.  Enter the following claim type settings:

    -   **Category**: The claim category that the claim type is contained in. By default, the claim category is automatically assigned when a new claim type is created within it.
    -   **Status**: Controls the visibility of child claim types on the claim creation process.
    -   **Name**: The name of the claim type.
    -   **Prefix**: The claim type prefix. This helps to distinguish your claim type from others with similar names.
    -   **Description**: Context about the claim type.
    -   **SLA (in days)**: The service level agreement automatically applied to the claim type.
    -   **Default Priority**: The priority applied to all claims in this claim type, unless otherwise specified.
    -   **Default Assigned Group**: The group that will handle all claims in this claim type, unless otherwise specified.
3.  Click **CREATE**.

### Details tab in a claim type

The claim type Details tab allows you to view and edit the claim type settings. Additionally, you can view the claim type’s configuration status, which shows how many claim type pages are configured.

To update the claim type settings, click **Update Claim Type** to open the **Update Claim Type** dialog and edit the existing settings.

### Data tab in a claim type

The claim type’s **Data tab**, similar to the Data tab found in the claim category, allows you to view data fields associated with the claim type, claim category, and all claims respectively.

![Claim Types Data Tab](images/cc_claim_type_data_tab.png)

From this tab, you can perform the following actions:

-   View existing data fields specific to the claim type.
-   Edit and create new data fields specific to the claim type.
-   View existing common data fields for all claim types in the claim category.
-   Edit and create new common data fields for all claim types in the claim category.
-   View existing common data fields for all claim types in the application.
-   Edit and create new common data fields for all claim types in the application.
-   View a visualization of the claim type and category hierarchy.

To add a new data field to the claim type, claim category, or all claim types, click the **ADD DATA FIELD** associated with the data you want to modify.

See [Adding and configuring data fields](#adding-and-configuring-data-fields) for more information.

### Intake Form tab in a claim type

The **Intake Form** tab is only in claim types and allows you to create, edit, and preview an intake form that end-users of your process will use to initiate claim creation.

In the **Intake Form** tab, you can use the form builder to create and edit an entire form without using any code.

### Configuring intake forms with the form builder

To create and configure a new intake form using the form builder:

1.  From the **Intake Form** tab, click **Create Intake Form**.
2.  Select **START FROM SCRATCH**.
3.  In the **Label** field in the right pane, add a title to the first page of your form.
4.  Drag and drop fields from the left pane onto the page.
5.  In the right pane, enter a **Label** for each field.
6.  (Optionally) Enter **Instructions** to help your users understand the purpose of the field.
7.  Select the **Required** checkbox to make a form field required for submission.
8.  Under **Stored To**, click **SELECT DATA FIELD**.
9.  To store data from the form field to an existing data field in your claim type, claim category, or all claims select **Use Existing Field**.

    -   Select an existing data field to store the form field data.
    -   Click **SUBMIT**.
10.  To store the data from the form field in a new data field, select **Add New Field**:

     -   Enter a **Name** for your new field and choose to add the data field to all claims, the claim category, or the claim type.
     -   Click **SUBMIT**.
11.  Under **Validations**, click **\+ Add** to add validations to your form field.
     -   For **Criteria**, select the validation to apply to the form field, such as a max character count. Fill out any additional information required for the validation.
     -   Click **SUBMIT**.
12.  To add a new page to your form, click **ADD PAGE** in the center pane. You can reorder pages using the arrows.
13.  When you're finished configuring your form, click **SAVE**.
14.  Click **CLOSE** to exit the form builder.

Forms built in the form builder can be further customized and configured by a low-code developer in Appian Designer. These customizations can include anything from adding components not offered in the form builder to allowing users to save drafts of forms. To learn more, see [Configuring forms as interfaces](cc-low-code-configurations.html#common-low-code-configurations-of-generated-interfaces).

### Workflow tab in a claim type

The following image highlights the actions you can do in the **Workflow** tab in a claim type:

| # | Action |
| --- | --- |
| 1 | Configure the claim type workflow and activities. |
| 2 | Create, edit, and organize tasks, automations, and milestones. |
| 3 | View milestones and activities for the claim type. |
| 4 | View a visualization of how activities connect together to form the claim type workflow. |

Tasks are configurable activities that represent the actions and steps taken by users in order to complete the claim workflow.

Milestones are color-coded categories for your tasks that you can optionally create to help visually organize and easily distinguish different tasks. Milestones are claim type specific and tasks can only have one milestone assigned to them.

Workflow automations are configurable activities that are completed by the system without human intervention. Like tasks, workflow automations allow you to easily define rules and conditions that specify how to move forward in a workflow. Unlike tasks, these activities don't have to be done by a user. Workflow automations are claim-type specific and can only be created and used in one claim type.

You can edit workflows by modifying the flow and order of activities, as well as adding tasks, task blocks, and automations at any time, even for in-progress claims. This allows for flexible and resilient workflows that can adapt as your claims process evolves.

#### Configuring tasks

To configure the workflow for your claim type, start with adding tasks:

1.  From the **Workflow** tab, click **CONFIGURE WORKFLOW**.
2.  Click **ADD TASKS**.
3.  From the **Add Tasks** dialog, click **Add Task**.
4.  In the **Create Task** dialog, configure the following task properties.

| Property | Description |
| --- | --- |
| Name | The name of the task. |
| Task Type | The kind of activity the task represents. There are three task types: **confirmation**, **decision**, and **document upload**. |
| Default Assigned Group | The group that has permission to perform this task, unless otherwise specified. |
| Default SLA | The service level agreement to apply to the task, calculated in business (working) days. |
| Question | The question for your users to answer. Questions are required for the **Decision** task type. |
| Response Options | The optional responses for your users to choose from. Response options are required for the **Decision** task type. |
| Description | Description of the task. This text box contains many text formatting options, so you can write the best description of the task, including instructions, for your users. |

1.  When you're done adding tasks, click **ADD**.

    -   **Note**: Once you have created tasks you can add them to your claim type workflow. To add these new tasks or previously existing tasks to your workflow:
2.  From the **Configure Workflow** page, click **ADD TASKS**.
3.  In the **Add Tasks** dialog, select the tasks you want and click **ADD**.
4.  (Optional) To set dependents (tasks that come directly after and rely on this task), click **+ADD DEPENDENT** and select a task.
5.  Click **UPDATE**.

#### Configuring milestones

Once you've created and added tasks to your workflow, you can now add milestones to help visually organize your tasks. Milestones can only be used with tasks, are specific to the claim type in which they are created, and can only be added or edited in the **Workflow** page of that claim type.

To add a milestone:

1.  Beside **Milestones**, click **Update**.
2.  Click **ADD MILESTONE**.
3.  Add a name for the milestone and either add another by clicking **\+ ADD MILESTONE** or finish by clicking **UPDATE**.

To add a milestone to a task:

1.  Beside **Activities**, click **Update**.
2.  Click a task.
3.  For **Milestone**, select a milestone from the dropdown.
4.  Click **UPDATE**.

Once you have milestones created, you can add a milestone to a task directly from the **Add Tasks** dialog.

#### Adding task blocks to a claim type

Task blocks are groups of tasks that are chained together to create flexible pathways within a workflow. Task blocks aren't specific to a claim type and can be reused across all claim types.

You can view and add relevant task blocks to your workflow from the **Add Tasks** dialog, but you can't create or edit task blocks within a claim type. For instructions on creating a task block, check out [How to Create Tasks and Task Blocks](cc-create-tasks-and-tasks-blocks.html#creating-task-blocks).

To add an existing task block to your claim type workflow:

1.  From the **Configure workflow** dialog, click **Add Task Blocks**.
2.  Select the task block.
3.  (Optional) Select a milestone for each task in the task block.
4.  Click **ADD**, then click **UPDATE**.

### Adding workflow automations to a claim type

If there are any activities in your workflow that don't require user action, you can represent those activities in your workflow with automation.

A workflow automation consists of automation rules and conditions.

-   An **automation rule** is one or more conditions grouped together and routed to the same activity.
-   **Conditions** are individually configurable logical statements that, when combined into automation rules, allow your workflow to branch off into multiple separate paths depending on the result of the automation.

For example, you could create a workflow automation that automatically routes a help request to different groups of claims adjusters depending on the priority of the request. To easily do this, you could configure workflow automation with three automation rules (one for each priority status: high, medium, and low) that each contain only one condition.

For the condition in the automation rule for the high priority routing, you would configure the **Field**, **Operator**, and **Value** to say "**priority** `is equal to` **high**". You would then set the **Go To** field to route to the task assigned to the claims adjusters group for high priority requests.

You'd then make the same configurations for the medium and low priority routing but switch out the relevant values in the conditions and route them the rule to the correct group.

To add an automation to your workflow:

1.  From the **Configure Workflow** page, click **ADD AUTOMATION**.
2.  In **Name**, enter a name for the automation.
3.  In the **Rules** section, click **ADD CONDITION** to define the conditional logic for branching.
4.  Configure the following properties for the condition:

| Property | Description |
| --- | --- |
| Field | Select a data field from your claim type to evaluate in the condition. |
| Operator | Select the operator to apply to the condition. |
| Value | Select or enter a value for the condition to evaluate against. The options in this menu change based on the data type of the data field selected. |

1.  To add another condition to the rule, click **ADD CONDITION**.
2.  Select either **AND** or **OR** as the operator between the two conditions. This operator will be used between all conditions in this automation rule.

image placeholder

1.  When you're done adding and configuring conditions, click **ADD**.
2.  For **Go To**, select the task or automation in the workflow to route to if the condition is met.
3.  (Optional) Click **ADD RULE** to add more sets of conditions to your automation.
4.  For **If no rule is met, go to**, select the activity to go to if the condition is not met.

image placeholder

**Note:**  Each workflow automation can contain up to 5 automation rules and each automation rule can contain up to 5 conditions.

## Configuring the Summary page for a claim type

The **Summary Page** tab is only in claim types and allows you to configure the summary page in [Workspace](cc-workspace-overview.html) that users will see when they view any claim in the claim type.

The following image highlights the actions you can do in the **Summary page** tab in a claim type:

| # | Action |
| --- | --- |
| 1 | Add and update the data to display on the summary page for each claim. |
| 2 | Create an edit form to allow users to update the claims. |

### Configuring displayed data fields

The **Displayed Data** section of the summary page allows you to choose the specific data to show users.

To select data fields to display:

1.  In the **Displayed Data** section, click **MANAGE DISPLAYED DATA**.
2.  Click the arrows beside each data field to add display in the summary page or click **ADD ALL** to display all data fields.
3.  (Optional) Edit the friendly name to help users better understand the purpose of the data field.
4.  Click **SUBMIT**.

### Configuring Edit forms

Edit forms allow users to update claim data. These forms are created using the form builder, the same no-code tool that's used to create intake forms. To create an edit form, you can either copy the claim type's intake form or make a new edit form from scratch.

To create an edit form based on the intake form:

1.  In the **Edit Form** section, click **CREATE EDIT FORM**.
2.  Click **COPY EXISTING FORM**. The claim type's intake form is selected by default.
3.  Make changes to the form as needed and click **SAVE**.
4.  Click **CLOSE**.

To create an edit form from scratch:

1.  In the **Edit Form** section, click **CREATE EDIT FORM**.
2.  Click **START FROM SCRATCH**.
3.  Follow the steps to configure forms in the [Configuring Intake Forms section](#configuring-intake-forms-with-the-form-builder).

## Wrap up

Congratulations, you've finished setting up your claim type!

Hop over to the **Details** page to see your completed **Configuration Status**. Or check out visualizations and previews of your data and configurations on the **Data**, **Intake Form**, **Workflow**, and **Summary Page** tabs of your claim type.

If you need to make changes to your claim category, claim type, or forms, you can either edit them in Studio or make further configurations to their corresponding objects in Appian Designer.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...