---
source_url: https://docs.appian.com/suite/help/25.3/cc-25.1.1.0/cc-studio-overview.html
original_path: cc-25.1.1.0/cc-studio-overview.html
version: "25.3"
title: "Connected Claims Studio Overview"
page_id: "cc-25.1.1.0/cc-studio-overview"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Connected Claims Studio Overview

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

**Note:**  All Appian Connected Claims documentation applies to the functionality and configurations for the Connected Claims application and the Connected Claims Studio.

## Introduction

Connected Claims is a suite of out-of-the-box applications that allow business users to efficiently manage the activities and data for each part of the claim process, as well as independently maintain and customize claim workflows to meet an organization's unique needs. Connected Claims consists of two parts, [Workspace](cc-workspace-overview.html) and [Studio](cc-studio-overview.html). Workspace is a central site for claim workers and business users to carry out all of their claims responsibilities. Studio is where admin users can configure and customize your organization's claims workflows and processes with simple and intuitive no-code design tools.

This page provides a high-level overview of Studio and the different configurations it provides.

## What is Studio?

Studio is the place for administrators and claims managers to configure all parts of your claims workflows, from the data fields to forms, with easy-to-use, no-code tools. From here, you can create claims categories and types, customize workflows, configure forms, and more.

Additionally, Studio allows you to create custom claim categories and select default fields to use across each claim type created in that category.

![Worker’s Compensation Claims Category and Types](images/cc_claim_wc_category_type.png)

After creating a new claim type, you can then add more fields specific to that claim type, as well as customize its workflow.

![Data Fields for Lost Time Claim Type](images/cc_claim_category_type_fields.png)

Studio also allows you to customize the workflow for claim types with configurable tasks that you can create, edit, rearrange, remove, and reuse. Once you've created a task, you can add it to task blocks along with other tasks. Task blocks help you create flexible paths within a workflow and can be reused across claim types and categories.

Studio is made up of no-code design tools that allow you to configure every part of your claims process, from the icons to the order of tasks in a workflow. It consists of four pages that represent the main areas of the claims process for you to configure.

![Studio Page Navigation](images/cc_studio_home_page.png)

-   [CLAIM TYPES](#claim-types-page)
-   [TASKING](#tasking)
-   [POLICY SETUP](#policy-setup)
-   [ASSIGNMENT RULES](#assignment-rules-page)
-   EMAIL TEMPLATES (Coming Soon!)

## Claim Types page

The CLAIM TYPES page provides a view of the **All Claim Types** page, which consists of two tabs, **[Home](#home)** and **[Data](#data)**. From these pages, you can access your claims categories, claim types, and the global data fields that are common to all claim types in Studio.

![All Claims Types Page](images/cc_studio_overview.png)

### Home

The **Home** tab is the central hub and the initial point of entry for Studio. It provides a centralized view of important information about your claims, including a graphical representation of all your claim categories and the claim types associated with each of them. From this tab, you can drill into each claim type to its details, including view the data fields, workflows, tasks, and more. The Home tab allows you to monitor and manage all aspects of your claims workflows and tasks in a centralized and efficient manner.

![All Claims Types and Categories](images/cc_claim_types_category_automobile.png)

From the Home tab, you can perform the following actions:

-   View all claims categories.
-   View all claim types within each category.
-   Show or hide inactive claims categories and claim types.
-   Create new claims categories
-   Drill down into a claim category to view its claim types:
    -   Create a new claim type for the category.
    -   Update the claim category.
    -   Drill down into a specific claim type to see its details, including details, data, intake form, workflow, and summary page.
        -   Update the claim type associated with a claim category.

#### View and Manage your claims categories

Studio allows you to view and manage every aspect of all your claim categories. A Claim Category is a container to organize similar or related claim types and share common data fields across them. When you drill into a Claim Category, you can access any claim types within the category, and create new claim types. A claim type is a smaller container that holds the claim specific data, tasks, and workflow for a set of claims.

Each claim category has a **Details** and **Data** tab that allows you to drill down into the category to learn more about its organization and data fields.

![All Claims Types and Categories](images/cc_claim_types_category_automobile.png)

##### **Details tab in a claim category**

From the Details tab, you can view all of the claims types in the claim category and perform the following actions:

![Claim Category Details Tab ](images/cc_claim_category_details_tab_actions.png)

-   View the claim category name and description
-   Edit the claim category
-   View all claim types in the category
-   Create new claim types
-   Drill down into existing claim types

##### **Data tab in a claim category**

From the **Data** tab, you can view the category-level data fields that are shared across all child claim types and perform the following actions:

-   View, edit, and create new global data fields for all claim types in the claim category
-   View, edit, and create new global data fields for all claim types in the app
-   View a visualization of the claim type and category hierarchy

#### View and manage claim types

Claim types allow you to not only hold claim specific data, such as `customer` or `date submitted`, but also allow you to create [customized workflows](#workflow-tab-in-a-claim-type) for a set of claims. For example, in a worker’s compensation claim category, there might be a claim type for lost time. When a claimant involved in a workplace incident that results in a bodily injury submits a lost time request, it becomes a new claim in the claim type and begins the worker’s compensation workflow.

From the **Details** tab of a claim category, you can view and drill into each claim type associated with the case category. Each claim type consists of the following parts that need to be configured:

-   [Details](#purpose-of-the-details-tab-in-a-claim-type)
-   [Data](#data-tab-in-a-claim-type)
-   [Intake form](#intake-form-tab-in-a-claim-type)
-   [Workflow](#workflow-tab-in-a-claim-type)
-   [Summary page](#summary-page-tab-in-a-claim-type)

##### **Purpose of the Details tab in a claim type**

The claim type **Details** tab includes all the settings for that specific claim type, including name, associated products, claim type description, status, default group and priority, SLA, and more. It also includes the configuration status, allowing you to quickly determine which parts of the claim type need your attention.

![Claim Type Details Tab](images/cc_claim_type_details_tab.png)

From the Details tab of the claim type, you can perform the following actions:

-   View and edit the claim type settings displays
-   View the configuration status for the claim type, which shows how many claim type pages are configured

##### **Data tab in a claim type**

From the **Data** tab in the claim type allows you to perform the same actions for the claim as you can for the claim category, including:

-   View, edit, and create new data fields specific to the claim type
-   View, edit, and create new global data fields for all claim types in the claim category
-   View, edit, and create new global data fields for all claim types in the app
-   View a visualization of the claim type and category hierarchy

##### **Intake Form tab in a claim type**

Intake forms are a critical starting point of any claims process. Studio allows you to customize your intake and edit forms for each claim type. In Connected Claims, an intake form is one or more steps in a wizard that allow end-users of your process to initiate claim creation, such as submitting a request for the reimbursement of wages due to lost time on the job as a result of a workplace injury.

![Lost Time Intake Form](images/cc_claim_type_intake_form.png)

You can create forms in Studio using drag-and-drop tools that simplify the creation process.

To get started, select the **Intake Form** tab. From here you can create, edit, and preview the intake form for the claim type using the form builder, which is a set of tools that allow you to build an entire form without any code.

![Intake Form Builder](images/cc_claim_type_intake_form_builder.png)

Click ADD PAGE to begin creating a new form and add components in the body of the form using drag-and-drop. Once you've added and arranged your components, you can easily configure the display properties, data mapping, and validations for each component.

![Add Page to Intake Form](images/cc_ntake_form_builder add_page.png)

After creating a form, a low-code developer can edit it as an interface in Designer and make further customizations as needed.

##### **Workflow tab in a claim type**

Workflows are an essential part of an effective claims management application. They ensure claims tasks are organized, streamlined by breaking down complex processes into actionable steps. They also facilitate department and team collaboration by effectively tracking tasks to ensure deadlines are met. They guarantee that the appropriate individuals are involved at the right task and the right time, ultimately preventing oversights and promoting efficient teamwork.

In Connected Claims, a workflow is a series of tasks and automations that claims adjusters and the system perform to resolve issues and process claims. Each task in the workflow represents an action and step taken by users in order to complete the claim workflow. For example, tasks in the worker’s compensation claim type might be "review the claim intake form", "verify coverage", "medical evaluation", “upload relevant medical reports and bills”, or "complete fraud questionnaire". Connected Claims provides a centralized location for managing workflows, claims, tasks, and automations.

![Claim Type Workflow](images/cc_claim_type_workflow.png)

From the **Workflow** tab in the claim type, you can create workflows to manage all of the tasks required for that claim type. In addition, you can perform the following actions: Configure the claim type workflow and activities Create, edit, and organize tasks, automations, and milestones View milestones and activities for the claim type View a visualization of how activities connect together to form the claim type workflow

You can dynamically change the workflow for any claims types by adding and removing tasks from any workflow section. New tasks can be sequentially added to capture specific processes. In addition, the real-time visualization of the entire claim process will update as tasks are added, removed, or completed.

![Claim Type Workflow Visualization](images/cc_claim_type_visualization.png)

Milestones are color-coded categories for your tasks that you can optionally create to help visually organize and easily distinguish different tasks.

Finally, you can [add automations](cc-create-claim-categories-and-types.html#adding-workflow-automations-to-a-claim-type) to your workflows to make workflows more efficient and less reliant on individuals. Workflow automations allow you to easily define rules and criteria that specify how to move forward in a workflow without human intervention.

##### **Summary Page tab in a claim type**

Having a configurable view of the claim data within a claims management application allows users to see and interact with the information that is most relevant to their role and responsibilities, streamlining their workflow. From the **Summary Page** tab in the claim type, you can configure how Connected Claims users view and edit claim data fields. Additionally, you can add and update the data you want to display on the summary page for each claim.

![Claim Type Summary Page](images/cc_claim_type_summary_page.png)

### Data

The **Data** tab serves as the central repository for all global data fields. From here, you can see the data fields that are universally accessible and applicable to every claim type no matter which claim category it belongs to. This ensures data consistency and standardization across all claims, streamlining data management and analysis. Additionally, you can see a visualization of the claim hierarchy in your Connected Claims solutions, including the claim categories and the claim types within each.

![Claim Type Data Tab](images/cc_claim_types_data_tab.png)

From the Data tab, you can perform the following actions: View the global data fields that are used in all claim types Add global data fields to use in all claim types Edit existing data fields View a visualization of the claims categories and claim types

## Tasking

Having the capability to create and manage the tasks that comprise your claims management process is a critical requirement. The **TASKING** menu in Studio allows you to efficiently navigate, modify, and generate the essential components required for your claims workflow. This menu consists of four nested pages, including:

**[TASKS](#tasks-page)** **[TASK BLOCKS](#task-blocks-page)** **[SURVEYS](#surveys-page)** **[QUESTIONS](#questions-page)**

Each menu provides the tools and options you need to tailor the claims experience to align with your unique business requirements and operational workflows.

![Tasking Page Drop Down Menu](images/cc_tasking_page_menu.png)

### Tasks page

Tasks represent the actions and steps taken by claim workers and other users to complete the claim workflow. The **Tasks** page allows you to create and manage reusable tasks for your claims process, add relevant details, assign ownership to a group, set SLAs, and costs. ![Create New Task Dialog](images/cc_tasking_create_task.png)

Additionally, you can also perform the following actions from the Tasks page: View recently created or edited tasks View all existing tasks in the All Tasks list Search and filter tasks by keyword, task type, status, and assigned group Edit existing tasks Learn more about claim workflow configuration

![Task Page](images/cc_tasks_page.png)

### Task blocks page

Task Blocks allow you to organize and group tasks into logical units of activities that you can reuse across all claim types to create flexible pathways within a workflow. This facilitates the efficient management of complex workflows and dependencies between tasks. The **Task Blocks** page shows all task blocks across all claim types and categories in Studio and allows you to create, search, and edit task blocks. It also displays a visualization of the connections within each block.

From this page, you can perform the following actions:

-   View the recently created or edited task blocks and visualizations of how the tasks are connected in each task block.
-   View all task blocks.
-   Create new task blocks.
-   Search and filter for task blocks.
-   Edit task blocks.

### Surveys page

Having a structured way to collect and manage claims data, stakeholder feedback and structured responses in your claims workflows can accelerate your close to close an open request and provide valuable insight to help you identify issues and bottlenecks in your claims workflows and improve your overall claims process.

The **Surveys** page allows you to create custom surveys that can be integrated into the claims process. Once created, surveys can be assigned as tasks in workflows, allowing your claims examiners and adjusters to complete them at specific times during the workflow.

Additionally, the Surveys page provides a complete list of all surveys created for your organization, along with details about the survey, like who created it and when, the total number of questions, the active status, and when it was last modified. You can search the list by keyword or use the status filter to find a specific survey to view or edit.

![Image of the Survey Page](images/cc_claim_type_create_survey.png)

### Questions page

The **Questions** page enables you to create and manage a bank of questions that you can use in your surveys or other parts of the claims process, allowing you to customize and tailor data collection and analysis to meet your specific needs. You can create and organize questions by question type, including:

-   **Short Answer**: Questions that request a concise response, typically a word or phrase.
-   **Long Answer**: Questions that request detailed and explanatory responses, often in the form of paragraphs or essays.
-   **Number-Integer**: Questions that prompt for numerical answers within a specified range or value.
-   **Date and Time**: Questions that request a date and time response.
-   **Multiple Choice**: Questions that offer a selection of answer options, from which one or more options can be selected
-   **Single Select Dropdown**: Questions that present a dropdown menu of answer choices, from which one or more options can be selected.

Easily determine which questions can be used in a survey by indicating which questions are active and which are not. Additionally, Studio allows you to search, filter, and edit questions in the list to fit your needs.

![Image of the Questions Page](images/cc_questions_page.png)

## Policy Setup

Studio’s **POLICY SETUP** menu allows you to efficiently configure your lines of business and the products and cost categories you want to associate with each of them.

### Lines of Business page

Insurers use lines of business (LOB) to classify and organize similar groups of products and services in order to organize their coverage and policy offerings and streamline claims processing.

The **Lines of Business** page in Studio allows you to define unique lines of business to customize workflows for all of your company’s insurance products and claims. Once created, you can link these LOBs to claim types and products, which reduces the need to configure manual processes. You can control which LOBs are active by selecting Active or Inactive for the LOB status.

![Image of the Create Line of Business Dialog](images/cc_policy_setup_create_lob.png)

Need to find and edit a specific LOB? The **Lines of Business** page provides a list view of all your organization’s LOBs, including their active status. Search the list by keyword or filter by status to find what you need quickly. From the list view, you can easily select an existing LOB to edit and change its active status or name.

![Image of the Lines of Business Page](images/cc_policy_setup_lob_page.png)

### Products page

Having the ability to create a range of insurance products within each LOB, allows an insurance company to cater to a diverse customer base with varying coverage needs and budgets. This allows them to stay competitive and attract a wider range of customers.

From the Products page, you can create insurance products within a designated LOB and link them to a specific claim type. These products define the insurance types available under each LOB. For example, within the Automobile LOB, products may include "Liability Only", which covers damages to another person's vehicle or property in an accident where the policyholder is at fault, or "Comprehensive Automobile", which provides broader coverage for the customer and their vehicle, including theft, vandalism, and damage, in addition to liability coverage.

![Image of the Create Products Dialog](images/cc_policy_setup_products_create_new.png)

Navigate to this page to create new products or view a list of all your existing products and the LOB and claim type they belong to. Easily locate specific products by performing a keyword search or filtering the Products list by LOB, claim type, or active status.

![Image of the Products Page](images/cc_policy_setup_products_page.png)

### Cost Categories page

Insurance-related expenses are classified during the claims process and associated with specific LOBs through the use of cost categories. This allows insurance companies to determine which costs should be active and apply to all LOBs and which costs should apply to a specific LOB, which is an important aspect of the claims management process.

Studio's **Cost Categories** page allows you to create general and specific cost categories for claims workflows across all your various LOBs. Define the scope of each category, global or limited to one or more LOBs, to meet the requirements of your claims management process. When the category is no longer needed, set its status to Inactive and it will no longer be available for use in your claims process.

![Image of the Create Cost Category Dialog](images/cc_policy_setup_cost_categories_create.png)

After creating a new cost category, it automatically displays in the Cost Categories list. You can search the list for a specific category or filter the list to return all categories for a specific LOB or status. Easily update any category in the list by editing the name, status, or scope.

![Image of the Cost Categories Page](images/cc_policy_setup_cost_categories_page.png)

Easily update any category in the list by editing the name, status, or scope.

## Assignment Rules page

One of the most common challenges claims supervisors face is getting the right claims to the right teams as quickly as possible. Additionally, once claims are routed to the correct teams, claims supervisors need to ensure work is evenly distributed across the team. To tackle these challenges, many of them rely on a manual process to assign and route incoming claims to the right people. However, this approach can be slow and error-prone. It can lead to an imbalanced work distribution, resulting in reduced productivity and longer processing times from claim intake to settlement.

Studio’s **Assignment Rules** page allows you to streamline the claim assignment process by creating rules that automate claim assignments and routing to your teams. From this page, you can configure claim assignment rules based on the claim category, claim type, and other standard or custom claim fields.

![Image of the Create Assignment Rule Dialog](images/cc_studio_create_assignment_rules.png)

Automate the assignment of incoming claims to your teams by defining business rules based on conditional logic. Configure rules to assign and route claims based on a single condition, multiple conditions, or a group of conditions, eliminating the need to manually assign claims.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...