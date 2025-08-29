---
source_url: https://docs.appian.com/suite/help/25.3/creating-case-categories-and-case-types.html
original_path: creating-case-categories-and-case-types.html
version: "25.3"
title: "How to Create Case Categories and Case Types with Case Management Studio"
page_id: "creating-case-categories-and-case-types"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Create Case Categories and Case Types with Case Management Studio

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

Cases are a vital part of case management applications and represent a series of tasks to complete or a multi-step problem to solve. Once a case is created by a user, the new case kicks off a workflow, which is a process with numerous case workers and tasks involved in resolving an issue or completing a process. Case Management Studio allows you to manage both the cases and workflow in a centralized place.

An individual case is made up of data submitted by a user about an issue or request and provides case workers with the information they need to complete the case. In Case Management Studio, there are two main containers for cases that allow you to define exactly the data you and your users need, as well as configure how it is captured and displayed: case categories and case types.

This page will provide a brief overview of what case categories and case types are and how to configure them in the [Control Panel](control-panel.html).

## What are case categories and case types?

In case management apps, case categories and types work together to create data structures that are both simple to understand and allow you to efficiently reuse data fields throughout your app. A case category is a container used to organize similar or related case types and share common data fields across them, allowing you to easily organize case types based on your own set of criteria. A case type is a smaller container within a case category that holds the case specific data, tasks, automations, and workflow for a specific kind of case, as well as the individual cases in the case type.

You can configure case categories and case types to fit the overall organizational and data needs for your use case. For example, a case management app for a real-estate company might have a case category for all cases and requests related to their residential rental buildings. The case types in this case category might be maintenance request, leasing and application requests, resident parking permits requests, etc.

The following diagram shows the relationship between case categories, case types, and cases:

![Diagram showing the relationship between case categories, case types, and cases](images/case-cat-type-case-relationship-diagra.png)

**Note:**  Case categories are not required for your case management application, but case types are required. To opt out of case categories, [go to the **Hierarchy** page in the control panel object and click **Manage Hierarchy**](control-panel-object.html#manage-hierarchy).

### Parts of case categories and case types in the Control Panel

In the Control Panel workspace, each case category has its own page beneath the Cases page that comes with four out-of-the-box tabs:

-   [Overview](#overview-tab-in-case-categories)
-   [Data](#data-tab-in-case-categories)
-   [Interfaces](#interfaces-tab-in-case-categories)
-   [Automation Rules](#automation-rules-tab-in-case-categories)

In the Control Panel workspace, each case type has its own page beneath the case category it belongs to that comes with six out-of-the-box tabs:

-   [Overview](#overview-tab-in-case-types)
-   [Data](#data-tab-in-case-types)
-   [Interfaces](#interfaces-tab-in-case-types)
-   [Details](#details-tab-in-case-types)
-   [Automation Rules](#automation-rules-tab-in-case-types)
-   [Workflow](#workflow-tab-in-case-types)

## Prerequisites

Case Management Studio uses the Control Panel workspace and the control panel object. The [control panel object](control-panel-object.html) that comes out-of-the-box with Case Management Studio allows low-code developers to set guardrails for the configurations that business uses such as case managers can make to your case management app in the Control Panel workspace. The [Control Panel workspace](control-panel.html) is made up of no-code design tools that allow you to configure every part of your case management process.

### Configurations in the control panel object

Case categories and types can be created, configured, and edited by business users in the Control Panel workspace. However, we recommend that you check with your low-code developers to make sure that they have already made any necessary preliminary [configurations to the control panel object](configure-cms-control-panel.html), such as changing terminology, setting security, and editing any relevant out-of-the-box values, before business users start creating case categories and types.

### Configurations in the Control Panel workspace

Case Management Studio comes with some out-of-the-box configurations that apply to the data and interfaces for all cases. You can edit these configurations or add more configurations to apply to all cases, such as automation rules, from the **Cases** page. To learn more, see [Using the Control Panel with Case Management Studio](configure-cms-control-panel.html).

## Create case categories and case types

While not required, many case management applications will use case categories in addition to case types. If you intend to use both, you must set up case categories before the case types you want to include in them.

**Note:**  You can use both case categories that include case types and standalone case types.

To create a case category or type:

1.  From the **Cases** page in the Control Panel, click **CREATE**.
2.  Select **Case Category** or **Case Type**.
3.  Configure the following fields:

    | Field | Description |
    | --- | --- |
    | Name | The name of the case category or type that is shown in the Control Panel. |
    | Web address identifier | The URL that points to the case category or type. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Name** property, but you can modify the identifier as needed. |
    | Description | A description of the case category or type to display in the Control Panel to business users. |
    | Color | The color for the case category or type that is shown in the Control Panel. |
    | Icon | The icon for the case category or type that is shown in the Control Panel. |

4.  You can preview what your case category or type will look like when viewed from the **Overview** tab in **Cases** or case category pages.
5.  Click **CREATE** to create only this one or click **CREATE ANOTHER** to continue creating case categories or types.

To create a case type within a case category, first create the case category, then follow the steps above from within the case category.

## Overview tab in case categories and case types

Once you've created a case category or type, you can check the **Overview** tab to see the description and, for case categories, any case types that it contains. Both case categories and case types use the **Overview** tabs as their default landing pages.

### Overview tab in case categories

The following image highlights the actions you can do in the **Overview** tab in a case category:

[![screenshot of the Overview tab on a category page in the Control Panel](images/control-panel/cp-category-overview-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1013)

[![](images/control-panel/cp-category-overview-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the case category name and description. |
| 2 | Edit the case category properties. |
| 3 | View all case types in the category and their descriptions. |
| 4 | Drill into case types. |
| 5 | Create new case types. |
| 6 | Show or hide inactive case types. |

### Overview tab in case types

The following image highlights the actions you can do in the **Overview** tab in a case type:

[![screenshot of the Overview tab on a type page in the Control Panel](images/control-panel/cp-types-overview-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1014)

[![](images/control-panel/cp-types-overview-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the case type name and description. |
| 2 | Edit the case type properties. |

## Data tab in case categories and case types

Both case categories and types have **Data** tabs, where you can view the the data fields associated with the case category, case type, and all cases respectively.

**Note:**  You can also view all of the data fields common to all case types in your app and the structural data hierarchy in the **Data** tab of the **Cases** page.

### Data tab in case categories

The following image highlights the actions you can do in the **Data** tab in a case category:

[![screenshot of the Data tab on a category page in the Control Panel](images/control-panel/cp-category-data-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1015)

[![](images/control-panel/cp-category-data-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View common data fields for all case types in the case category. |
| 2 | Create new common data fields for all case types in the case category. |
| 3 | Edit common data fields for all case types in the case category. |
| 4 | View new common data fields for all case types. |
| 5 | Create new common data fields for all case types. |
| 6 | Edit common data fields for all case types. |

### Data tab in case types

The following image highlights the actions you can do in the **Data** tab in a case type:

[![screenshot of the Data tab on a type page in the Control Panel](images/control-panel/cp-types-data-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1016)

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

### Data fields

Data fields are the types of data you can include and configure in your case categories and case types to get the information that you need to complete tasks and resolve cases.

Data fields can be specific to a case type, shared by all case types in a case category, or shared by all case types in the the Control Panel.

Using a combination of both shared and specific data fields not only allows you to easily set up data fields once and use them across your app without having to recreate the field, but it also allows you to hone in on the specific data needed for a case type without having to apply the unnecessary data fields elsewhere.

The diagram below shows the relationship between data fields in a case category and data fields in a case type.

[![diagram showing the relationship between data in case categories and case types](images/case-cat-type-data-relationship-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1017)

[![](images/case-cat-type-data-relationship-diagram.png)](#_)

#### Adding and configuring data fields

When you create a case category or type, add data fields to it that will be common to all case types in the category or, for case types, all cases in the case type.

To add data fields to a case category or type:

1.  From the **Data** tab of a case category or type, click **\+ ADD DATA FIELDS**.
2.  You can either manually create data fields, or [generate data fields](#generate-data-fields).
    -   To automatically generate data fields, follow the steps in the [Generate data fields](#generate-data-fields) section.
3.  To manually create data fields, enter a **Field Name** for the data field.
4.  Select a **Field Type** for the data field that matches the kind of data you want to capture in this field. For [related data](#related-data), this will be the display name of the existing data set.
    -   For data fields using related data, click **Set Properties** beside the field type.
    -   Select a **Display Type**. For this example, select **Picker**.
    -   Click **ADD** in the configuration dialog.
5.  (Optional) Click **+Add field** to manually create more than one data field. Follow the same steps as above.
6.  Click **ADD**.

**Tip:**  You can delete any data fields directly from the Control Panel as needed.

**Note:**  Note that Appian enforces a data modeling best practice that allows you to only have two Long Text data fields shared across all cases, two Long Text data fields in each case category, and two Long Text data fields in each case type.

##### **Generate data fields**

To generate suggested names and data types for new data fields:

1.  From the **Data** page of a case category or case type, click **\+ ADD DATA FIELDS**.
2.  In the **Add Data Fields** dialog under the **Use AI to capture data fields?** heading, enter a prompt that tells us the kind of data you want to get for each data field.
    -   For example, to add data fields for a rental application case, you might have a prompt that says: "Add fields for first name, last name, date of birth, and other common fields for rental applications".
3.  Click **GENERATE**.
4.  Once generated, the suggested name and data type for the new data field are populated below. Hover over the sparkles beside the new data field to see our reasoning for the suggested name and data type. You can edit the suggested field names and data types, as well as modify the prompt and regenerate suggestions. Note that if you modify the prompt and click **GENERATE** again, the previously suggested names and data types will be overwritten.
5.  Once you've reviewed and/or edited the suggested names and data fields, click **CREATE**.

![Gif of generating the names and data types for data fields](images/rn-24.3/cms-1.gif)

**Tip:**  If a generated data type for a field is a choice list field, you'll need to add the choice list options before finishing creating the data fields.

#### Choosing the right type of data fields for your cases

When creating data fields, it is important for the overall health and performance of your application to choose the data type that best matches the kind of data you need from each data field.

You can choose from 7 basic data types and any related data added to the Control Panel:

-   Short text
-   Long text
-   Number (integer)
-   Number (decimal)
-   Date
-   Date and time
-   Boolean
-   Choice list
-   Related data
    -   Related data sets are not basic data types and are included, if applicable, to the end of the data types list. Each related data set is listed by its configured name, not "related data". To use related data in a data field in the Control Panel workspace, low-code developers first need to [add related data to the control panel object](control-panel-object.html#related-data).

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
| Reference or [lookup data](build-best-data-fabric.html#store-lookup-data-in-a-separate-record-type) used in dropdowns, like statuses | Choice list |
| Existing data related to your case | Related data |

Creating a well-defined architecture for your data is called data modeling. In case management apps, a data model is a representation of all of the information available in the case categories and case types for your application. To learn more about data modeling throughout Appian, check out [Data Modeling with records](data-modeling-with-appian-records.html).

If you're unsure about where and how to start creating data fields, we can suggest names and data types for you by [generating data fields](#generate-data-fields).

#### Related data

Low-code developers can add related data to the control panel object that can then be added as a data field in the Control Panel workspace. Adding data fields for related data to forms and interfaces allows users to easily link relevant existing data from the applications outside of the Control Panel to cases.

This allows end-users to provide more context about a case, such as linking a related issue or listing an affected customer.

## Interfaces tab in case categories and case types

Both case categories and types have **Interfaces** tabs, where you can view the interfaces and forms associated with the case categories and types.

Interfaces and forms shared between cases, categories, and types in the Control Panel workspace and object are shared in an additive style, meaning that they build off of one another. To learn more about how interfaces and forms are displayed and used in the Control Panel workspace, see the [control panel object](control-panel-object.html#sharing-interfaces-across-cases-categories-and-types) page.

### Interfaces tab in case categories

The following image highlights the actions you can do in the **Interfaces** tab in a case category:

[![screenshot of the Interfaces tab on a category page in the Control Panel](images/control-panel/cp-category-interfaces-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1018)

[![](images/control-panel/cp-category-interfaces-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Preview the interfaces used for each interface type in the case category. |
| 2 | Generate an interface for an interface type. |
| 3 | Edit the existing interface for an interface type. |

### Interfaces tab in case types

The following image highlights the actions you can do in the **Interfaces** tab in a case type:

[![screenshot of the Interfaces tab on a type page in the Control Panel](images/control-panel/cp-types-interfaces-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1019)

[![](images/control-panel/cp-types-interfaces-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Preview the interfaces used for each interface type in the case type. |
| 2 | Generate an interface for an interface type. |
| 3 | Edit the existing interface for an interface type. |

### Configuring interfaces and forms in the Control Panel

To generate and configure an interface (or edit an existing interface) for your case category or type:

1.  From the **Interfaces** page of a case category or type, click an interface type (**Intake Form**, **Edit Form**, or **Summary Page**).
2.  In the form builder, click in the middle of the screen to add a section to the interface.
3.  Click the beside **Section** to add a title to the first page of your interface.
4.  Drag and drop data fields from the **Data** tab in left pane onto the page. These are the same data fields from the **Data** tab for you case category or type. ![gif of dragging and drop fields into the form](images/control-panel/cp-add-form-field.gif){:/screenshot}
5.  The details for each data field will appear in the right pane. To edit these details, click [**EDIT DATA FIELD**](#editing-data-fields-from-an-interface). Note that changes made to this data field will be applied everywhere it's used in the application.
6.  To add additional data fields to **Case**, your case category, or your case type, click the next to **Case**, the case category, or the case type.
7.  To drag and drop layout elements, such as headings, rich text, and columns, onto the page click the **Layout** tab at the top of the left pane.
8.  To add a new section to the page, click under the existing section. You can reorder sections on the page as needed.
9.  To remove a data field from the page, click the data field in the page. Click next to the field name in the right pane.
10.  When you're finished configuring your form, click **SAVE**.
11.  Click **CLOSE** to exit the form builder.

Interfaces and forms configured in the form builder can be further customized and configured by a low-code developer in Appian Designer. These customizations can include anything from adding components not offered in the form builder to allowing users to as save drafts of forms. To learn more, see [Configuring forms as interfaces](cms-low-code-configurations.html#common-low-code-configurations-of-generated-interfaces).

#### Editing data fields from an interface

To edit the details for a data field from the form builder:

1.  Drag and drop a data field onto the page.
2.  Click **EDIT DATA FIELD**.

    [![screenshot of the Edit Field dialog](images/control-panel/cp-edit-field.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1020)

    [![](images/control-panel/cp-edit-field.png)](#_)

3.  From the **Edit** dialog, you can view or edit the following field details:

    | Field | Description | View or Edit |
    | --- | --- | --- |
    | Data type | The data type for the data field. | View only |
    | Data field name | The name of the data field. | View only |
    | Label | The label of the data field in interfaces and in **Data** tabs in the Control Panel. De-select the **Same as field name** checkbox to edit the label. | Editable |
    | Instructions | Instructions for the data field to show to end-users while filling out the form. | Editable |
    | Required? | Whether or not the field required to have a value in order to submit the form. | Editable |

4.  To add a new validation for your data field, click **\+ Add Validation**.

    [![screenshot of the validations section](images/control-panel/cp-edit-field-validations.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1021)

    [![](images/control-panel/cp-edit-field-validations.png)](#_)

5.  Select a **Data Field**, set an operator, and enter a relevant corresponding value.
6.  (Optional) Click **\+ Add Condition** to add a condition to the current condition.
    1.  For additional conditions, select either **AND** or **OR** as the operator between the two conditions. This operator will be used between all conditions in this condition set.
    2.  Configure the additional conditions.
7.  (Optional) Click **\+ Add Condition Set** to add a new set of conditions, in addition to the existing condition(s).
    1.  For additional condition sets, select either **AND** or **OR** as the operator between the two condition sets.
    2.  Configure the additional conditions in the condition set.
8.  Enter a validation message.
9.  (Optional) Click **+Add validation** to add a new validation with conditions and condition sets.
10.  Click **SAVE CHANGES**.

## Details tab in case types

The **Details** tab is only in case type pages and contains details related to certain default values for the case type.

The following image highlights the actions you can do in the **Details** tab in a case type:

[![screenshot of the Details tab on a type page in the Control Panel](images/control-panel/cp-types-details-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1022)

[![](images/control-panel/cp-types-details-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Update case type details. |
| 2 | View case type details. |
| 3 | View case type default values. |

To configure the details and default values:

1.  In the **Details** tab in a case type, click **UPDATE DETAILS**.
2.  Configure the following fields:

    | Field | Description |
    | --- | --- |
    | Prefix | The prefix applied to all cases in this case type. By default, Appian constructs this property using the **Name** property for the case type, but you can modify the identifier as needed. |
    | Default Priority | The default priority for all cases in this case type, unless otherwise specified. Options are: `Critical`, `High`, `Medium`, `Low`, `None`. |
    | Days | This field is a part of the Service Level Agreement (SLA) section, which acts as a default due date for each case in this case type. The **Days** field allows you to set the number of days after the case is originally submitted for the due date. |
    | Hours | This field is a part of the Service Level Agreement (SLA) section, which acts as a default due date for each case in this case type. The **Hours** field allows you to a time of day for the due date. |
    | Minutes | This field is a part of the Service Level Agreement (SLA) section, which acts as a default due date for each case in this case type. The **Minutes** field allows you set a more specific time for the due date. |

3.  Click **Calculate the due date using business days** to exclude weekends and holidays from your SLA.
4.  Click **UPDATE**.

## Automation rules tab in case categories and case types

Both case categories and case types have **Automation Rules** tabs, where you can view the automation rules associated with the case category, case type, and all cases respectively.

### Automation rules tab in case categories

The following image highlights the actions you can do in the **Automation Rules** tab in a case category:

[![screenshot of the Automation Rules tab on a category page in the Control Panel](images/control-panel/cp-category-automations-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1023)

[![](images/control-panel/cp-category-automations-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | Create automation rules for the case category. |
| 2 | View the automation rules applicable to all cases. |
| 3 | View the automation rules for the case category. |
| 4 | Reorder the automation rules for the case category. |
| 5 | Enable and disable the automation rules for the case category. |
| 6 | Edit the automation rules for the case category. |

### Automation Rules tab in case types

The following image highlights the actions you can do in the **Automation Rules** tab in a case type:

[![screenshot of the Automation Rules tab on a type page in the Control Panel](images/control-panel/cp-types-automations-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1024)

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

### Automation rules

Automation rules are configurable rules that complete specific actions based on the triggers and conditions you define. Automation rules are evaluated whenever one of the defined triggers is met and completed by the system without human intervention.

Currently, automation rules can only be used to set up automatic case assignment, both for initial assignment of the case and dynamic reassignment of the case throughout the case lifecycle. Case assignment automation rules can assign cases to a role, an individual user, or a group.

You can create automation rules for all cases, for all cases in a case category, or for all cases in a case type. Case assignment automation rules are separate from workflow automations and task assignment rules.

#### Automation rule triggers, conditions, and actions

Automation rules consist of one trigger, multiple or no conditions, and one action.

The trigger in an automation rule is the event you define to kickoff the evaluation of the automation rule. A trigger for a case assignment automation rule could be when a case is created, a case is updated, or a case field is updated. When the event is met or done, the trigger starts the automation rule, in this case that would be assigning or reassigning a cases.

A condition is an individually configurable logical statement that allows you to define additional logic to make your automation rules more tailored to your case processes. Like conditions in workflow automations, the conditions in automation rules consist of a field, an operator, and a value. You can create an individual condition or one or more condition sets. Condition sets are groups of conditions meant to be evaluated together. Conditions and condition sets in automation rules are optional and you can configure as many as you need.

The action in an automation rule is the event done when the trigger is kicked off and the conditions are met. Within an action in a case assignment automation rule, you can configure what the action is, who to assign the case to, and how to assign the case.

### Configuring automation rules

To create and configure an automation rule:

1.  From the **Automation Rules** tab on the **Cases** page, a case category page, or a case type page.
2.  Click **\+ Create Rule**.
3.  Under **Trigger**, select a trigger and click **NEXT**.
4.  Under **Conditions**, you can choose to whether or not to add conditions that define any additional conditional logic for case assignment.
5.  Configure the following properties for the condition:

    | Property | Description |
    | --- | --- |
    | Field | Select a data field from your case type to evaluate in the condition. |
    | Operator | Select the operator to apply to the condition. |
    | Value | Select or enter a value for the condition to evaluate against. The options in this menu change based on the data type of the data field selected. |

6.  To add another condition to the rule, click **ADD CONDITION**.
7.  Select either **AND** or **OR** as the operator between the two conditions. This operator will be used between all conditions in this condition set.
8.  To add and configure another condition set to the automation rule, click **\+ ADD CONDITION SET**.
9.  When you're done adding and configuring conditions, click **NEXT**.
10.  Under **Action**, select an **Action**.
11.  Select an **Assignee Type**.

The rest of the steps differ depending on the selected Assignee Type.

If you selected **Group**:

1.  Select a group and specify if there are any group members to exclude from case assignment.
2.  Select a **Routing Type** from one of the following:

-   **Round Robin**: This option assigns cases to members from the selected group in turn order.
-   **Workload Balance**: This option assigns cases to the users from the selected group with the least cases in progress. The default logic can be configured by a low-code developer in Designer.
-   **Shared Queue**: This option assigns the case to a group queue and allows any member of the group to pickup the case from the queue.
    1.  Click **Next**.
    2.  Click **CREATE**.

If you selected **Role**:

1.  Select the relevant **Roles**.
2.  Click **Next**.
3.  Click **CREATE**.

If you selected **User**:

1.  Select the relevant **Users**.
2.  Click **Next**.
3.  Click **CREATE**.

## Workflow tab in case types

The **Workflow** tab is only on case type pages. The following image highlights the actions you can do in the **Workflow** tab in a case type:

[![screenshot of the Workflow tab on a type page in the Control Panel](images/control-panel/cp-types-workflow-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1025)

[![](images/control-panel/cp-types-workflow-annotated.png)](#_)

| # | Action |
| --- | --- |
| 1 | View the list of tasks and automations in the case type workflow. |
| 2 | Configure the case type workflow. |
| 2 | View, create, and edit milestones. |
| 4 | View a visualization of how activities connect together to form the case type workflow. |

Tasks are configurable activities that represent the actions and steps taken by users in order to complete the case workflow.

Milestones are color-coded categories for your tasks that you can optionally create to help visually organize and easily distinguish different tasks. Milestones are case type specific and tasks can only have one milestone assigned to them.

Workflow automations are configurable activities that are completed by the system without human intervention. Like tasks, workflow automations allow you to easily define rules and conditions that specify how to move forward in a workflow. Unlike tasks, these activities don't have to be done by a user. Workflow automations are case type specific and can only be created and used in one case type.

You can edit workflows by modifying the flow and order of activities, as well as adding tasks, task blocks, and automations at any time, even for in-progress cases. This allows for flexible and resilient workflows that can adapt as your case management process evolves.

### Configuring tasks

To configure the workflow for your case type, start with creating tasks:

1.  From the **Workflow** tab, click **CONFIGURE WORKFLOW**.
2.  Click **ADD TASKS**.
3.  From the **Add Tasks** dialog, click **New Task**.
4.  In the **New Task** tab, configure the following task properties.

    | Property | Description |
    | --- | --- |
    | Title | The name of the task. |
    | Task Type | The kind of activity the task represents. There are five task types available out-of-the-box: **confirmation**, **decision**, **document upload**, **create case**, and **send email**. |
    | Case Type | The case type to create a new case when using the **create case** task type. |
    | Relationship to Original Case | The relationship between the new case created using the **create case** task type. There are five relationships to choose from: related, duplicates, duplicated by, parent, and child. |
    | [Email Template](cms-email-templates.html) | The new or existing email template to use for the **send email** task type. |
    | Default Assigned Group | The group that is initially assigned this task, unless otherwise specified by a task assignment rule. |
    | Default SLA | The service level agreement to apply to the task, calculated in calendar days, hours, and minutes. To calculate SLAs in business days, enable the **Calculate the due date using business days** option. |
    | Question | The question for your users to answer. Questions are required for the **decision** task type. |
    | Response Options | The possible responses for your users to choose from. Response options are required for the **decision** task type. |
    | Description | Description of the task. This text box contains many text formatting options, so you can write the best description of the task, including instructions, for your users. |

5.  Click **CREATE TASK**.
6.  When you're done creating tasks, click **ADD**.

Once you have created tasks, you can use them to your case type workflow. To use the tasks you added to your workflow:

1.  From the **Configure Workflow** page, click the task you want to add to your workflow.
2.  Under **Workflow Settings**, click **+ADD DEPENDENT**.
3.  For **Go To**, select the task or workflow automation that should directly follow this task.
4.  Find and open the task in the workflow that you want to directly proceed this task.
5.  Under **Workflow Settings** for the proceeding task, click **+ADD DEPENDENT**.
6.  For **Go To**, select the task you are adding to the workflow.
7.  Click **UPDATE** when you're done making changes to your workflow.

To add previously existing tasks to your workflow:

1.  From the **Configure Workflow** page, click **ADD TASKS**.
2.  In the **Tasks Library** section of the **Add Tasks** dialog, select the tasks you want and click **ADD**. ![screenshot of selecting tasks to add to your workflow](images/case-type-add-tasks-to-workflow.png)
3.  Follow the steps above to add the task to your workflow by setting dependents.
4.  Click **UPDATE** when you're done making changes to your workflow.

#### Configure rules for task assignment

Once you have added a task to your workflow, you can make advanced configurations to the task to create rules for conditional task assignment. The rules for conditional task assignment assign or reassign tasks based on the triggers and conditions you define in the rule. These rules are evaluated whenever one of the defined triggers is met and the rules are completed by the system without human intervention.

They can assign tasks to an individual user, a role, or a group of users. With these rules, you can assign and reassign tasks rotationally, to those with the most capacity, or to a shared queue for case workers to pick up as needed. Rules for task assignment are specific to their task and can only be configured inside a workflow.

To configure rules for task assignment:

1.  In an existing task within a case type workflow, click **Advanced**.
2.  Under **Rules**, click **\+ Create Rule**.
3.  Under **When**, the values of **Trigger** and **Task Field** are by default set to `Task field is updated` and `Status`.
4.  Under **If**, configure the following properties for the condition:

    | Property | Description |
    | --- | --- |
    | Field | Select a data field from your case type to evaluate in the condition. |
    | Operator | Select the operator to apply to the condition. |
    | Value | Select or enter a value for the condition to evaluate against. The options in this menu change based on the data type of the data field selected. |

5.  (Optional) To add another condition to the rule, click **ADD CONDITION**.
    1.  Select either **AND** or **OR** as the operator between the two conditions. This operator will be used between all conditions in this condition set.
    2.  Configure the additional conditions.
6.  (Optional) To add and configure another condition set to the rule, click **\+ ADD CONDITION SET**.
    1.  Select either **AND** or **OR** as the operator between the two condition sets. This operator will be used between all conditions in this condition set.
    2.  Configure the additional conditions in the condition set.
7.  Under **Then**, select an **Action** for the rule to complete once the trigger is met and the conditions are evaluated.
8.  Click **SAVE**, then **UPDATE** when you're done making changes to your workflow.

### Configuring milestones

Once you've created and added tasks to your workflow, you can now add milestones to help visually organize your tasks. Milestones can only be used with tasks, are specific to the case type in which they are created, and can only be added or edited in the **Workflow** page of that case type.

To add a milestone:

1.  In the **Workflow** tab, click **UPDATE MILESTONES**.
2.  Click **ADD MILESTONE**.
3.  Add a name for the milestone and either add another by clicking **\+ ADD MILESTONE** or finish by clicking **UPDATE**.

To add a milestone to an existing task:

1.  Beside **Workflow**, click **UPDATE WORKFLOW**.
2.  Click a task.
3.  For **Milestone**, select a milestone from the dropdown.
4.  (Optional) To update the existing milestone or add another, click .
    1.  Update the existing milestone or click **+ADD MILESTONE**.
    2.  Click **UPDATE** when you're done making changes to milestones.
5.  Click **UPDATE** when you're done making changes to your workflow.

You can also add a milestone to a new task directly from the **Add Tasks** dialog.

### Adding task blocks to case types

Task blocks are groups of tasks that are chained together to create flexible pathways within a workflow. Task blocks aren't specific to a case type and can be reused across all case types.

You can view and add relevant task blocks to your workflow from the **Add Task Blocks** dialog, but you can't create or edit task blocks within a case type. For instructions on creating a task block, check out [How to Create Tasks and Task Blocks](creating-tasks-and-task-blocks.html#creating-task-blocks).

To add an existing task block to your case type workflow:

1.  From the **Configure workflow** dialog, click **Add Task Blocks**.
2.  Select the task block(s).

    [![screenshot of selecting task blocks to add to your workflow](images/case-type-workflow-add-task-blocks.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1026)

    [![](images/case-type-workflow-add-task-blocks.png)](#_)

3.  (Optional) Select a milestone for each task in the task block.
4.  Click **ADD** to add the task block to your workflow.
5.  Click **UPDATE** when you're done making changes to your workflow.

### Adding workflow automations to case types

If there are any activities in your workflow that don't require user action, you can represent those activities in your workflow with an automation. There are two different types of workflow automations: workflow routing automations and send email automations.

#### Workflow routing automation

A workflow routing automation consists of rules and conditions.

-   A **rule** in a workflow automation is one or more conditions grouped together and routed to the same activity.
-   **Conditions** in workflow automations are individually configurable logical statements that, when combined into rules, allow your workflow to branch off into multiple separate paths depending on the result of the automation.

For example, you could create a workflow automation that automatically routes a help request to different groups of case workers depending on the priority of the request. To easily do this, you could configure a workflow automation with three rules (one for each priority status: high, medium, and low) that each contain only one condition.

For the condition in the rule for the high priority routing, you would configure the **Field**, **Operator**, and **Value** to say "**priority** `is equal to` **high**". You would then set the **Go To** field to route to the task assigned to the case worker group for high priority requests.

You'd then make the same configurations for the medium and low priority routing but switch out the relevant values in the conditions and route them the rule to the correct group.

![Diagram showing the flow from automations to tasks in a workflow](images/workflow-automation-ex-diagram.png)

To add a workflow routing automation to your workflow:

1.  From the **Configure Workflow** page, click **ADD AUTOMATION**.
2.  Select **Workflow Routing** and click **ADD**.
3.  In **Name**, enter a name for the workflow routing automation.
4.  In the **Rules** section, click **ADD CONDITION** to define the conditional logic for branching.
5.  Configure the following properties for the condition:

    | Property | Description |
    | --- | --- |
    | Field | Select a data field from your case type to evaluate in the condition. |
    | Operator | Select the operator to apply to the condition. |
    | Value | Select or enter a value for the condition to evaluate against. The options in this menu change based on the data type of the data field selected. |

6.  To add another condition to the rule, click **ADD CONDITION**.
7.  Select either **AND** or **OR** as the operator between the two conditions. This operator will be used between all conditions in this rule.

    [![screenshot of adding conditions to your automation](images/cms-ach-add-conditions.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1027)

    [![](images/cms-ach-add-conditions.png)](#_)

8.  When you're done adding and configuring conditions, click **ADD**.
9.  For **Go To**, select the task or automation in the workflow to route to if the condition is met.
10.  (Optional) Click **ADD RULE** to add more sets of conditions to your automation.
11.  For **If no rule is met, go to**, select the activity to go to if the condition is not met.

![screenshot showing a configured workflow automation](images/cms-ach-add-automation.png)

**Note:**  Each workflow routing automation can contain up to 5 rules and each rule can contain up to 5 conditions.

#### Send email automation

Send email workflow automations are automated versions of the send email task that use the same email templates, but require no human intervention or review. The send email workflow automation allows you to select an existing or create a new email template and specify recipient details.

For more information about email templates and examples, see [Create Email Templates](cms-email-templates.html).

To add a send email automation to your workflow:

1.  From the **Configure Workflow** page, click **ADD AUTOMATION**.
2.  Select **Send Email** and click **ADD**.
3.  In **Name**, enter a name for the send email workflow automation.
4.  For **Email Template**, select an existing email template or create a new one.
    -   You can check out existing email templates look like by clicking **PREVIEW**.
5.  Under **Recipients**, select the relevant **Case Roles**, **Groups**, and **Users**.
6.  (Optional) To set specific, individual email addresses for your recipients, click **ADD EMAIL ADDRESSES**.
7.  Under **Workflow Settings**, set dependents for your send email workflow automation.
8.  Click **Update** when you're done making changes to your workflow.

## Wrap up

Congratulations, you've finished setting up your case categories and case types.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...