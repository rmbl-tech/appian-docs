---
source_url: https://docs.appian.com/suite/help/25.3/configure-cms-control-panel.html
original_path: configure-cms-control-panel.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Using the Control Panel with Case Management Studio

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

Case Management Studio is a suite of out-of-the-box applications that allow business users to efficiently configure and manage the activities and data for each part of the case process to meet an organization's unique needs.

Case Management Studio uses the Control Panel workspace and the control panel object. The [control panel object](control-panel-object.html) that comes out-of-the-box with Case Management Studio allows low-code developers to set guardrails for the configurations that business uses such as case managers can make to your case management app in the Control Panel workspace.

The [Control Panel workspace](control-panel.html) is made up of no-code design tools that allow you to configure every part of your case management process, from the icons to the order of tasks in a workflow.

The Control Panel that comes out-of-the-box with Case Management Studio consists of the following pages and tabs:

-   [Cases page](#cases)
    -   [Overview tab](#overview-of-all-cases)
    -   [Data tab](#data-for-all-cases)
    -   [Interfaces tab](#interfaces-for-all-cases)
    -   [Automation Rules tab](#automation-rules-for-all-cases)
-   [Case category pages](#case-category-pages)
    -   [Overview tab](#overview-tab-in-case-category-pages)
    -   [Data tab](#data-tab-in-case-category-pages)
    -   [Interfaces tab](#interfaces-tab-in-case-category-pages)
    -   [Automation rules tab](#automation-rules-tab-in-case-category-pages)
-   [Case type pages](#case-type-pages)
    -   [Overview tab](#overview-tab-in-case-type-pages)
    -   [Data tab](#data-tab-in-case-type-pages)
    -   [Interfaces tab](#interfaces-tab-in-case-type-pages)
    -   [Details tab](#details-tab-in-case-type-pages)
    -   [Automation Rules tab](#automation-rules-tab-in-case-type-pages)
    -   [Workflow tab](#workflow-tab-in-case-type-pages)
-   [Tasking page](#tasking)
    -   [Tasks tab](#tasks)
    -   [Task blocks tab](#task-blocks)
-   [Email Templates page](#email-templates)

You can configure the color, image, and branding options for Workspace in the [Solutions Hub](sol-custom-suite-user-guide.html).

This page provides business users and low-code developers information about how to use Case Management Studio in the Control Panel workspace, the configurations in the Control Panel Workspace that come out-of-the-box, and where further configurations can be made in the control panel object.

For specific instructions on configuring case categories and types for Case Management Studio, see [Creating Case Categories and Types](creating-case-categories-and-case-types.html).

## Cases

The **Cases** page displays all active case categories and types, as well as displays the information that is shared across all cases in your case management app.

The **Cases** page that comes out-of-the-box with Case Management Studio is pre-configured with four tabs:

-   [Overview](#overview-of-all-cases)
-   [Data](#data-for-all-cases)
-   [Interfaces](#interfaces-for-all-cases)
-   [Automation Rules](#automation-rules-for-all-cases)

To add additional tabs that will be shared across all cases, you can add a [custom configuration](control-panel-object.html#custom-configurations) that appears **across all categories and types**.

### Overview of all cases

The **Overview** tab for all cases is the default landing page for the Control Panel. The following image highlights the actions you can do in the **Overview** tab:

[![screenshot of the Overview tab on the Cases page in the Control Panel](images/control-panel/cp-cases-overview-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img996)

[![](images/control-panel/cp-cases-overview-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View all case categories or standalone case types. |
| 2 | Show or hide inactive case categories and case types. |
| 3 | Create new case categories. |
| 4 | Create new case types. |
| 5 | Drill into a case category or standalone case types. |

**Tip:**  You can create categories and types from all tabs on the **Cases** page, not just the **Overview** tab.

### Data for all cases

The **Data** tab displays all data fields that are included in all cases. The following image highlights the actions you can do in the **Data** tab:

[![screenshot of the Data tab on the Cases page in the Control Panel](images/control-panel/cp-cases-data-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img997)

[![](images/control-panel/cp-cases-data-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the data fields that are used in all cases. |
| 2 | Add data fields to use in all case types. |
| 3 | Edit a data field. |

Case Management Studio comes with the following out-of-the-box data fields for all cases:

-   Case Type
-   Title
-   Description

You can edit and add to these data fields at any time.

### Interfaces for all cases

The **Interfaces** tab displays the [interfaces](control-panel-object.html#interfaces) used in all cases. The following image highlights the actions you can do in the **Interface** tab:

[![screenshot of the Interfaces tab on the Cases page in the Control Panel](images/control-panel/cp-cases-interfaces-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img998)

[![](images/control-panel/cp-cases-interfaces-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Preview the interfaces used for each interface type in all cases. |
| 2 | Generate an interface for an interface type. |
| 3 | Edit the existing interface for an interface type. |

The interface types that come out-of-the-box with Case Management Studio are the following:

| Interface Type | Intent | Description |
| --- | --- | --- |
| Intake Form | Create | Allows end-users to create new cases. |
| Edit Form | Edit | Allows end-users to edit existing cases. |
| Summary Page | Display | Displays case details to end-users. |

Low-code developers can edit the interface type configurations in the [Interfaces section](control-panel-object.html#interfaces) of the [Standard Configurations page](control-panel-object.html) in the control panel object.

Interfaces and forms shared between cases, categories, and types in the Control Panel workspace and object are shared in an additive style, meaning that they build off of one another. To learn more about how interfaces and forms are displayed and used in the Control Panel workspace, see the [control panel object](control-panel-object.html#sharing-interfaces-across-cases-categories-and-types) page.

### Automation Rules for all cases

The **Automation Rules** tab displays all automation rules that are used by all cases.

The following image highlights the actions you can do in the **Automation Rules** tab:

[![screenshot of the Automation Rules tab on the Cases page in the Control Panel](images/control-panel/cp-cases-automations-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img999)

[![](images/control-panel/cp-cases-automations-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Create automation rules. |
| 2 | View the automation rules applicable to all cases in the Control Panel. |
| 4 | Reorder the automation rules. |
| 5 | Enable and disable the automation rules. |
| 6 | Edit the automation rules. |

Learn more about [automation rules in case categories and types](creating-case-categories-and-case-types.html#automation-rules).

Low-code developers can edit the [custom configurations](control-panel-object.html#custom-configurations) for the **Automation Rules** tab in the [control panel object](control-panel-object.html).

## Case category pages

Each [case category](creating-case-categories-and-case-types.html#what-are-case-categories-and-case-types) has its own page nested under the **Cases** page in the navigation. The page for each case category in Case Management Studio is pre-configured with five tabs:

-   [Overview](#overview-tab-in-case-category-pages)
-   [Data](#data-tab-in-case-category-pages)
-   [Interfaces](#interfaces-tab-in-case-category-pages)
-   [Automation Rules](#automation-rules-tab-in-case-category-pages)

Case categories allow you to easily organize case types based on your own set of criteria. For example, a real-estate company might have a case category for all cases and requests related to their residential rental buildings. The case types in this case category might be maintenance request from residents, new resident applications, resident renewal applications, etc.

Case categories are not required. Low-code developers can disable case categories using the [Manage Hierarchy option](control-panel-object.html#manage-hierarchy) button on the [Hierarchy page of the control panel object](control-panel-object.html#hierarchy).

### Overview tab in case category pages

The following image highlights the actions you can do in the **Overview** tab in a case category:

[![screenshot of the Overview tab on a category page in the Control Panel](images/control-panel/cp-category-overview-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1000)

[![](images/control-panel/cp-category-overview-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the case category name and description. |
| 2 | Edit the case category properties. |
| 3 | View all case types in the category and their descriptions. |
| 4 | Drill into case types. |
| 5 | Create new case types. |
| 6 | Show or hide inactive case types. |

### Data tab in case category pages

The following image highlights the actions you can do in the **Data** tab in a case category:

[![screenshot of the Data tab on a category page in the Control Panel](images/control-panel/cp-category-data-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1001)

[![](images/control-panel/cp-category-data-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View common data fields for all case types in the case category. |
| 2 | Create new common data fields for all case types in the case category. |
| 3 | Edit common data fields for all case types in the case category. |
| 4 | View new common data fields for all case types. |
| 5 | Create new common data fields for all case types. |
| 6 | Edit common data fields for all case types. |

### Interfaces tab in case category pages

The following image highlights the actions you can do in the **Interfaces** tab in a case category:

[![screenshot of the Interfaces tab on a category page in the Control Panel](images/control-panel/cp-category-interfaces-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1002)

[![](images/control-panel/cp-category-interfaces-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Preview the interfaces used for each interface type in the case category. |
| 2 | Generate an interface for an interface type. |
| 3 | Edit the existing interface for an interface type. |

Interfaces and forms shared between cases, categories, and types in the Control Panel workspace and object are shared in an additive style, meaning that they build off of one another. To learn more about how interfaces and forms are displayed and used in the Control Panel workspace, see the [control panel object](control-panel-object.html#sharing-interfaces-across-cases-categories-and-types) page.

### Automation Rules tab in case category pages

The following image highlights the actions you can do in the **Automation Rules** tab in a case category:

[![screenshot of the Automation Rules tab on a category page in the Control Panel](images/control-panel/cp-category-automations-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1003)

[![](images/control-panel/cp-category-automations-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Create automation rules for the case category. |
| 2 | View the automation rules applicable to all cases. |
| 3 | View the automation rules for the case category. |
| 4 | Reorder the automation rules for the case category. |
| 5 | Enable and disable the automation rules for the case category. |
| 6 | Edit the automation rules for the case category. |

## Case type pages

Each [case type](creating-case-categories-and-case-types.html#what-are-case-categories-and-case-types) has its own page nested under the category that it belongs to under the **Cases** page in the navigation. The page for each case type in Case Management Studio is pre-configured with six tabs:

-   [Overview](#overview-tab-in-case-type-pages)
-   [Data](#data-tab-in-case-type-pages)
-   [Interfaces](#interfaces-tab-in-case-type-pages)
-   [Details](#details-tab-in-case-type-pages)
-   [Automation Rules](#automation-rules-tab-in-case-type-pages)
-   [Workflow](#workflow-tab-in-case-type-pages)

Case types allow you to not only hold case specific data, such as `customer` or `date submitted`, but also allow you to create [customized workflows](#workflow-tab-in-case-type-pages) for a set of cases. For example, in a residential case category, there might be a case type for maintenance requests. Each time a resident submits a maintenance request, it becomes a new case in the case type and begins the maintenance workflow.

Case types are required. If you're not using case categories, the page for each case type will appear directly under the **Cases** page in the navigation.

### Overview tab in case type pages

The following image highlights the actions you can do in the **Overview** tab in a case type:

[![screenshot of the Overview tab on a type page in the Control Panel](images/control-panel/cp-types-overview-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1004)

[![](images/control-panel/cp-types-overview-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the case type name and description. |
| 2 | Edit the case type properties. |

### Data tab in case type pages

The following image highlights the actions you can do in the **Data** tab in a case type:

[![screenshot of the Data tab on a type page in the Control Panel](images/control-panel/cp-types-data-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1005)

[![](images/control-panel/cp-types-data-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View data fields for the case type. |
| 2 | Create new data fields for the case type. |
| 3 | Edit data fields for the case type. |
| 4 | View common data fields for all case types in the case category. |
| 5 | Create new common data fields for all case types in the case category. |
| 6 | Edit common data fields for all case types in the case category. |
| 7 | View new common data fields for all case types. |
| 8 | Create new common data fields for all case types. |
| 9 | Edit common data fields for all case types. |

### Interfaces tab in case type pages

The following image highlights the actions you can do in the **Interfaces** tab in a case type:

[![screenshot of the Interfaces tab on a type page in the Control Panel](images/control-panel/cp-types-interfaces-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1006)

[![](images/control-panel/cp-types-interfaces-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Preview the interfaces used for each interface type in the case type. |
| 2 | Generate an interface for an interface type. |
| 3 | Edit the existing interface for an interface type. |

Interfaces and forms shared between cases, categories, and types in the Control Panel workspace and object are shared in an additive style, meaning that they build off of one another. To learn more about how interfaces and forms are displayed and used in the Control Panel workspace, see the [control panel object](control-panel-object.html#sharing-interfaces-across-cases-categories-and-types) page.

### Details tab in case type pages

The following image highlights the actions you can do in the **Details** tab in a case type:

[![screenshot of the Details tab on a type page in the Control Panel](images/control-panel/cp-types-details-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1007)

[![](images/control-panel/cp-types-details-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Update case type details. |
| 2 | View case type details. |
| 3 | View case type default values. |

### Automation Rules tab in case type pages

The following image highlights the actions you can do in the **Automation Rules** tab in a case type:

[![screenshot of the Automation Rules tab on a type page in the Control Panel](images/control-panel/cp-types-automations-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1008)

[![](images/control-panel/cp-types-automations-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Create automation rules for the case type. |
| 2 | View the automation rules applicable to all cases. |
| 3 | View the automation rules for the case category. |
| 4 | View the automation rules for the case type. |
| 5 | Reorder the automation rules for the case type. |
| 6 | Enable and disable the automation rules for the case type. |
| 7 | Edit the automation rules for the case type. |

### Workflow tab in case type pages

The following image highlights the actions you can do in the **Workflow** tab in a case type:

[![screenshot of the Workflow tab on a type page in the Control Panel](images/control-panel/cp-types-workflow-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1009)

[![](images/control-panel/cp-types-workflow-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the list of tasks and automations in the case type workflow. |
| 2 | Configure the case type workflow. |
| 2 | View, create, and edit milestones. |
| 4 | View a visualization of how activities connect together to form the case type workflow. |

Case workflows are made up of a combination of tasks done by users and workflow automations completed by the system to resolve a case. Tasks represent the actions and steps taken by users in order to complete the case workflow. For example, tasks in the maintenance request case type might be "review maintenance request", "inspect residence", "fulfill request", or "complete report on maintenance done".

[Workflow automations](creating-case-categories-and-case-types.html#adding-workflow-automations-to-case-types) can make workflows more efficient and less reliant on individuals by allowing you to easily define rules and criteria that specify how to move forward in a workflow without human intervention.

Milestones are color-coded categories for your tasks that you can optionally create to help visually organize and easily distinguish different tasks.

## Tasking

The **TASKING** page consists of two tabs, **Tasks** and **Task Blocks**.

Learn more about creating and using [tasks and task blocks](creating-tasks-and-task-blocks.html).

Low-code developers can edit the [custom configurations](control-panel-object.html#custom-configurations) for the **Tasking** page in the [control panel object](control-panel-object.html).

### Tasks

The following image highlights the actions you can do in the **Tasks** tab:

[![screenshot of the Tasks page in the Control Panel](images/control-panel/cp-tasks-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1010)

[![](images/control-panel/cp-tasks-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View recently created or edited tasks. |
| 2 | View all tasks. |
| 3 | Create new tasks. |
| 4 | Search and filter for tasks. |
| 5 | Edit tasks. |
| 6 | Deactivate tasks. |

Tasks represent the actions and steps taken by case workers and other users to complete the case workflow.

### Task Blocks

The following image highlights the actions you can do in the **Task Blocks** tab:

[![screenshot of the Task Blocks page in the Control Panel](images/control-panel/cp-task-blocks-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1011)

[![](images/control-panel/cp-task-blocks-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the recently created or edited task blocks and visualizations of how the tasks are connected in each task block. |
| 2 | View all task blocks and their details. |
| 3 | Create new task blocks. |
| 4 | Search and filter for task bocks. |
| 5 | Edit task blocks. |
| 6 | Deactivate task blocks. |

Task blocks are groups of tasks that are chained together to create flexible pathways within a workflow. Task blocks aren't specific to a case type and can be reused across all case types.

## Email Templates

The **EMAIL TEMPLATES** page displays the reusable, no-code email templates that allow you to easily create standardized emails to send out through tasks in case workflows.

The following image highlights the actions you can do on the **EMAIL TEMPLATES** page:

[![screenshot of the Email Templates page in the Control Panel](images/control-panel/cp-email-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1012)

[![](images/control-panel/cp-email-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Create new email templates. |
| 2 | Search for email templates. |
| 3 | View and preview all email templates. |
| 4 | Update email templates. |
| 5 | Delete email templates. |

Learn more about creating and using [email templates](cms-email-templates.html).

Low-code developers can edit the [custom configurations](control-panel-object.html#custom-configurations) for the **Email Templates** page in the [control panel object](control-panel-object.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...