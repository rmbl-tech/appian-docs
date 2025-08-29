---
source_url: https://docs.appian.com/suite/help/25.3/control-panel-object.html
original_path: control-panel-object.html
version: "25.3"
title: "Control Panel Object"
page_id: "control-panel-object"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Control Panel Object

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

The control panel design object in Designer is a set of configurations made by [low-code developers](control-panel.html#low-code-developers) that defines the underlying structure for what business users can configure in the [Control Panel](control-panel.html) workspace. The [Control Panel](control-panel.html) workspace is a workspace that provides [business users](control-panel.html#business-users) with an entirely no-code experience where they can configure the data and interfaces used by [end-users](control-panel.html#end-users) of their business critical applications and workflows.

This relationship between object and workspace allows low-code developers to set guardrails for what can be configured in the Control Panel workspace and allows business users to create the parts of the app that they know best given their knowledge of their use cases and processes.

This page provides low-code developers with details about the control panel object, how it works with the Control Panel workspace, and detailed information on the object configurations.

**Note:**  The Control Panel workspace and control panel object can only be accessed on environments that have [Case Management Studio](case-management-studio-overview.html). Case Management Studio comes out-of-the-box with a pre-configured control panel object that includes the basic Case Management Studio functionality. To learn more about configuring Case Management Studio, see the [Case Management Studio documentation](cms-studio-overview.html).

## Creating and editing

At this time, control panel objects can only be used with Case Management Studio, which comes out-of-the-box with a pre-configured control panel object. You can edit the out-of-the-box control panel object to change or add to existing configurations, but you cannot duplicate an existing control panel object or create a new one.

**Tip:**  If a low-code developer is editing the control panel object in Designer at the same time that a business user is editing the configurations or hierarchy for that control panel object in the Control Panel workspace, the low-code developers edits in the object supersede those of the business user in the workspace.

## Properties

Within the control panel object, click **Properties** in the gear menu to access the following options:

| Property | Description |
| --- | --- |
| Name | The name of the control panel object. This is only shown in Designer. |
| Display name | The name of the control panel object that is shown in the Control Panel workspace. The display name can either be a plain text string or a [translation string](translation-set-object.html). |
| Web address identifier | The URL for the control panel object. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Name** property, but you can modify the identifier as needed. |
| Description | A description of the control panel object to display to low-code developers. |

## Standard Configuration

The **Standard Configuration** page consists of the **Storage and Record Type**, **Interfaces**, and **Related Data** sections, which contain all of the basic configurations for your control panel object.

[![screenshot of the Standard Configurations page in the control panel object](images/control-panel/cp-object-standard-configs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1034)

[![](images/control-panel/cp-object-standard-configs.png)](#_)

### Storage and record type

The **Storage and Record Type** section of the **Standard Configuration** page specifies where you are storing the objects and data created by the control panel object.

The **Storage and Record Type** section contains the following fields:

| Field | Description |
| --- | --- |
| Application | The application that stores the objects created in the control panel. |
| Rule folder | The rule folder that stores the interfaces created by the control panel object. |
| Base record type | The record type that holds the data for all cases submitted and created through the control panel object. It does not hold the data structure for your control panel hierarchy, nor does it hold the data associated with categories or types. |
| Web address identifier | The URL for the Control Panel workspace. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Name** property, but you can modify the identifier as needed. |

### Interfaces

The **Interfaces** section of the **Standard Configuration** page allows you to specify which types of interfaces business users can add to and use in the control panel in the Control Panel workspace.

By default, there are three interface types:

-   **Create**: Allows end-users to create new cases, requests, contracts, etc.
-   **Edit**: Allows end-users to edit existing cases, requests, etc.
-   **Display**: Displays case details to end-users.

Each control panel object can have up to 10 interface types and each category or type can use one interface per interface type.

**Note:**  The control panel object that comes out-of-the-box with Case Management Studio includes one of each kind of interface, which can be edited or removed.

### Related Data

The **Related Data** section of the **Standard Configuration** page displays related record types that have been added to the control panel object to be used by business users in the Control Panel workspace.

These related record types can be added as data fields and added to forms in the Control Panel workspace, allowing end-users to provide additional context to cases by including references to existing records.

## Hierarchy

The **Hierarchy** page allows you to view the overall structure of categories and types for your control panel object. Categories and types allow for faster setup and easier reuse of forms and data throughout your control panel object. Learn more about [categories and types](#manage-hierarchy).

On the **Hierarchy** page, you can define the [terminology used for "types" and "categories"](#manage-hierarchy) throughout your control panel object. These terms will be seen and used by business users in the Control Panel workspace while creating, editing, and working with the categories and types.

Once you've defined these terms and determined whether or not to use both types and categories in your hierarchy using the **Manage Hierarchy** dialog, business users need to create the categories and types in the Control Panel workspace. Then, you can do the following from the **Hierarchy** page of the control panel object:

-   View the hierarchy of categories and types.
-   Manage the hierarchy properties.
-   Configure security for categories and types.
-   Mark categories and types as active or inactive.

[![screenshot of example categories and types in the hierarchy page of the control panel object](images/control-panel/cp-object-hierarchy.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1035)

[![](images/control-panel/cp-object-hierarchy.png)](#_)

### Manage Hierarchy

In the **Manage Hierarchy** dialog, you can determine if you want to use both types and categories in your structure, as well as specify the terminology for these concepts.

[![screenshot of the Manage Hierarchy dialog](images/control-panel/cp-object-manage-hierarchy.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1036)

[![](images/control-panel/cp-object-manage-hierarchy.png)](#_)

Categories and types are parts of a data structures that are both simple to understand and allow you to efficiently reuse data fields throughout your app.

-   **Category**: A container used to organize similar or related types and share common data fields across them, allowing you to easily organize types based on your own set of criteria. Categories are optional in your control panel hierarchy.
-   **Type**: A smaller container that can be used within a category or on its own that holds the specific data and interfaces for a specific kind of case, as well as the individual cases in the type. Types are required in your control panel hierarchy.

To configure the terms for types and categories:

1.  In the **Hierarchy** page, click the gear menu.
2.  Select **Manage Hierarchy**.
3.  Configure the following terminology for types:
    -   Term (singular)
    -   Term (plural)
4.  Optionally enable categories.
5.  If you enable categories, configure the following terminology for categories:
    -   Term (singular)
    -   Term (plural)

For these terms, you can either use a plain text string or a [translation string](translation-set-object.html).

## Cases

The title of this page in the control panel object matches the term that you've specified to refer to what the user is managing. For example, if your end-users are submitting "cases", the title of this page would be **Cases**. This page holds the configurations for the **Display**, **Data**, and **Forms and interfaces** that will apply to all cases in the control panel object.

The terminology for case is configured during the initial setup of the control panel object but can also be edited on this page.

[![screenshot of the Cases page of the control panel object](images/control-panel/cp-object-cases.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1037)

[![](images/control-panel/cp-object-cases.png)](#_)

### Display

The **Display** section of the **Cases** page contains the following fields:

| Field | Description |
| --- | --- |
| Term (singular) | The word for the key concept that the user is interacting with. For example, a single case, request, issue, etc. The term can either be a plain text string or a [translation string](translation-set-object.html). |
| Term (plural) | The word for multiple cases, requests, issues, etc. The term can either be a plain text string or a [translation string](translation-set-object.html). |
| Web address identifier | The URL that points to the page that shows all cases for this control panel object in the Control Panel workspace. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **term** for "case" that you selected, but you can modify the identifier as needed. |
| Theme | The color and icon shown on the top level page for the cases in this control panel object in the Control Panel workspace. |

### Data

The **Data** section of the **Cases** page contains the following fields:

| Field | Description |
| --- | --- |
| Base record type | The record type that holds the data for all cases submitted and created through the control panel object. |
| Case identifier | A unique text field used as a foreign key and common field between the base record type and any of the record types for the specified types and categories. |
| Case type identifier | The text field on the base record type that is populated with the identifier for the type or category. |
| Rule input | The name of the rule input that passes the data of the base record type into the interfaces related to Cases. This rule input is not related to the case type UUID. |
| Hierarchy record type | A system generated record type that contains the metadata, configurations, and properties for all types and categories in the control panel. It does not hold the data for individual categories, types, or cases. |

### Forms and interfaces

The **Forms and Interfaces** section lists the interfaces used for each interface type that are used across all cases of this control panel object.

Business users can configure these interfaces in the Control Panel workspace. This section allows you to quickly navigate to each interface to make additional configurations that might not be possible for business users to make.

You can configure the interface types used across the control panel object in the [**Interfaces** section of the **Standard Configurations** page](#interfaces).

#### Sharing interfaces across cases, categories, and types

Interfaces and forms shared between cases, categories, and types in the Control Panel workspace and object are shared in an additive style, meaning that they build off of one another.

For example, an intake form that is configured at the all cases level will appear on all cases, regardless of category or type. If you add another intake form at the category level, this second intake form will appear as a second step or page appended to the intake form set for all cases. If you add another intake form at the type level, this third intake form will appear as a third step or page appended to the intake forms set at the all cases and category levels.

[![screenshot showing how the intake forms add together](images/control-panel/cp-combined-intake-forms-annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1038)

[![](images/control-panel/cp-combined-intake-forms-annotated.png)](#_)

This approach strikes the balance between reusability and specificity. You can set a form for all cases that has more general fields that can be applied to all cases, meaning you don't have to recreate those fields on the intake forms in each type. And you can set forms at the category and type levels with fields more unique to the specific topics handled by the category and type.

## Category pages

Category pages appear under the **Cases** page and each category has its own page.

The page for each category is titled the display name of the category and contains the configuration information for the category, as well as list the forms and interfaces associated with it.

Categories are optional and pages for categories only appear when categories are configured.

[![screenshot of an example category page in the control panel object](images/control-panel/cp-object-category.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1039)

[![](images/control-panel/cp-object-category.png)](#_)

### Configuration

The **Configuration** section of each category page contains the following:

| Field | Description |
| --- | --- |
| Display name | The name of the category that is shown in the Control Panel workspace. The display name can either be a plain text string or a [translation string](translation-set-object.html). |
| Description | A description of the category to display in the Control Panel workspace to business users. |
| Record type | The record type associated with the category. |
| Web address identifier | The URL that points to the category. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Display name**, but you can modify the identifier as needed. |
| Rule input | The name of the rule input that passes the record data for this category into the interface. It is also used as the name for this category on the map returned by [a!controlPanelRecords()](fnc_evaluation_a_controlPanelRecords.html) function. |
| Theme | The color and/or icon for the category that is shown in the Control Panel workspace. |

### Forms and interfaces

The **Forms and Interfaces** section in each category page lists the interface used for each interface type for that category. Business users can configure these interfaces in the Control Panel workspace. This section allows you to quickly navigate to each interface to make additional configurations that might not be possible for business users to make.

You can configure the interface types used across the control panel object in the [**Interfaces** section of the **Standard Configurations** page](#interfaces).

## Type pages

In addition to pages for categories, there are also individual pages for types. If you configured categories, type pages will appear within their assigned category. If you only configured types, the types pages will appear directly under the **Cases** page.

Each type page is titled the display name of the type and contains the configuration information for the type, as well as list the forms and interfaces associated with it.

[![screenshot of an example type page in the control panel object](images/control-panel/cp-object-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1040)

[![](images/control-panel/cp-object-type.png)](#_)

### Configuration

The **Configuration** section of each type page contains the following fields:

| Field | Description |
| --- | --- |
| Display name | The name of the type that is shown in the Control Panel workspace. The display name can either be a plain text string or a [translation string](translation-set-object.html). |
| Description | A description of the type to display in the Control Panel workspace to business users. |
| Record type | The record type associated with the type. |
| Web address identifier | The URL that points to the type. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Display name**, but you can modify the identifier as needed. |
| Rule input | The name of the rule input that passes the record data for this type into the interface. It is also used as the name for this type on the map returned by [a!controlPanelRecords()](fnc_evaluation_a_controlPanelRecords.html) function. |
| Theme | The color and/or icon for the type that is shown in the Control Panel workspace. |

### Forms and interfaces

The **Forms and Interfaces** section in each type page lists the interface used for each interface type for that type. Business users can configure these interfaces in the Control Panel workspace. This section allows you to quickly navigate to each interface to make additional configurations that might not be possible for business users to make.

You can configure the interface types used across the control panel object in the [**Interfaces** section of the **Standard Configurations** page](#interfaces).

### Record types associated with types and categories

When you create types and categories, Appian generates a record type for each type and category. This holds the data fields specific to the type or category.

The generated record types for types and categories do not hold all the data for individual cases. Instead, this data is shared between records created in the base record type, the record type for the category, and the record type for the type.

For example, if you submit a request in the "Absence" type, which is in the "HR" category, you would create a request/case that has three related records associated with it. These records would be:

-   A record in the base record type to hold the data associated with the fields shared by all cases.
-   A record in the record type for the category to hold the data associated with the fields specific to the category.
-   A record in the record type for the type to hold the data associated with the fields specific to the type.

In the case of Case Management Studio, the base record type is the `CMGT Cases` record type and comes out-of-the-box, instead of being generated.

## Custom configurations

The **Custom Configurations** page allows you to add and configure additional tabs and pages to appear throughout your control panel.

By default, there will be three tabs shown in the Control Panel workspace for each category and type:

-   Overview
-   Data
-   Interfaces

The tabs and pages added through the Custom Configurations page can appear alongside these default tabs. You can determine where the custom tabs and pages appear in the Control Panel workspace using the **Cases Location** field in the custom configuration.

[![screenshot of the Custom Configurations page in the control panel object with CMS custom configurations](images/control-panel/cp-object-cust-configs-cms.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1041)

[![](images/control-panel/cp-object-cust-configs-cms.png)](#_)

### Custom configuration properties

To add a custom configuration:

1.  On the **Custom Configurations** page, click **ADD CUSTOM CONFIGURATION**.
2.  Configure the following fields:

    | Field | Description |
    | --- | --- |
    | Display name | The name that is shown for the page in the Control Panel workspace. |
    | Icon | The icon that is shown with the page display name in the Control Panel workspace. |
    | Web address identifier | The page URL. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Display Name**, but you can modify the identifier as needed. |
    | Cases location | The place where the page will be shown. The location options are: **globally**, **across all categories and types**, and **across all types**. See the definitions below for more details. |
    | Interface | The interface for the page that defines what the business user will see when using the page in the Control Panel workspace. |
    | Type UUID Rule Input | The rule input used to pass in the UUID for the type. This is only applicable to custom configurations that appear **Across all categories and types** and **Across all types**. |

Cases location options:

-   **Globally**: Custom configurations that appear alongside the page for all cases configurations. They are not contained within categories and types.
-   **Across all categories and types**: Custom configurations that appear across all categories and types show in every category and in every type for the control panel object when viewed from the Control Panel workspace.
-   **Across all types**: Custom configurations that appear across all types are shown in all types for the control panel object when viewed from the Control Panel workspace.

If you add custom configurations, they will be listed on this page, organized by their cases location. Each custom configuration also appears as its own page under the **Custom Configurations** page in the side navigation.

The control panel object that comes out-of-the-box with Case Management Studio already has the following pages and tabs added through custom configurations:

-   [Tasking page](creating-tasks-and-task-blocks.html#tasking-page)
-   [Email Templates page](configure-cms-control-panel.html#email-templates)
-   [Details tab](creating-case-categories-and-case-types.html#details-tab-in-case-types)
-   [Workflow tab](creating-case-categories-and-case-types.html#workflow-tab-in-case-types)
-   [Automation Rules tab](creating-case-categories-and-case-types.html#automation-rules-tab-in-case-categories-and-case-types)

You can add additional custom configurations as needed.

## Security

The control panel object and the Control Panel workspace use a combination of group security, object security, and security set within the control panel object. To learn more about configuring security for the control panel object, see [Control Panel Object Security](control-panel-object-security.html). To learn more about the group security settings for the Control Panel workspace, see the [Control Panel](control-panel.html) workspace overview.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...