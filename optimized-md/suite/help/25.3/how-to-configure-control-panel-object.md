---
source_url: https://docs.appian.com/suite/help/25.3/how-to-configure-control-panel-object.html
original_path: how-to-configure-control-panel-object.html
version: "25.3"
title: "Configure the Control Panel Object for Case Management Studio"
page_id: "how-to-configure-control-panel-object"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure the Control Panel Object for Case Management Studio

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

The control panel object that comes out-of-the-box with Case Management Studio has some configurations already made to it to support the Case Management Studio functionality, such as automation rules, tasks, and workflows. This page provides information on these settings and configurations and provides general instructions for how to configure the out-of-the-box control panel object.

The control panel object that comes out-of-the-box with Case Management Studio is named `CMGT_ControlPanel` and is in the `CMMGT Case Management Studio Base (CMGT)` application in Appian Designer. This app is where you can find all of the pre-configured objects that come with Case Management Studio, including the `CMGT Cases` record type.

## Step 1: Configure properties and security

To configure the control panel object properties:

1.  In the control panel object, open the gear menu and click **Properties**.
2.  Configure the following properties and out-of-the-box values:

    | Property | Pre-configured value | Description |
    | --- | --- | --- |
    | Name | `CMGT_ControlPanel` | The name of the control panel object. This is only shown in Designer. |
    | Display name | `Case Management Studio` | The name of the control panel object that is shown in the Control Panel workspace. The display name can either be a plain text string or a [translation string](translation-set-object.html). |
    | Web address identifier | `case-management-studio` | The URL for the control panel object. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Name** property, but you can modify the identifier as needed. |
    | Description | Blank | A description of the control panel object to display to low-code developers. |

[![screenshot of the control panel object properties for CMS](images/control-panel/cp-object-properties.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1042)

[![](images/control-panel/cp-object-properties.png)](#_)

To edit the out-of-the-box security for the Case Management Studio control panel object:

1.  In the header bar of the control panel object, click the gear menu.
2.  Click **Security**.
3.  You can edit the out-of-the-box security for the object:

    | User or Group | Permission Level |
    | --- | --- |
    | Default (All Other Users) | No Access |
    | `CMGT Design Administrators` | Administrator |
    | `CMGT Case Managers` | Editor |
    | `CMGT All Users` | Viewer |

4.  Click **SAVE CHANGES**.

To learn more about security for the Control Panel workspace and object, see [Control Panel Object Security](control-panel-object-security.html).

## Step 2: Configure the Standard Configurations

From the **Standard Configuration** page, you can:

-   Configure where to store and access your data and objects.
-   Define which types of interfaces business users can add and use in your case management workflow.
-   Add related record types to allow users to leverage more data across your applications through the Control Panel workspace.

[![screenshot of the Standard Configs page in the control panel object for CMS](images/control-panel/cp-object-standard-configs-cms.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1043)

[![](images/control-panel/cp-object-standard-configs-cms.png)](#_)

To configure where to store and access the control panel data and objects:

1.  Go to **Storage and Record Type** section in the **Standard Configuration** page of the control panel object.
2.  You can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value | Description |
    | --- | --- | --- |
    | Application | `CMGT Control Panel Generated Objects` | The application that stores the objects created in the control panel. |
    | Rule folder | `CMGT Rules & Constants` | The rule folder that stores the interfaces created by the control panel object. |
    | Base record type | `CMGT Case` | The record type that holds the data for all cases submitted and created through the control panel object. It does not hold the data structure for your control panel hierarchy, nor does it hold the data associated with categories or types. |
    | Web address identifier | A unique value depending on your environment settings. | The URL for the Control Panel workspace. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Name** property, but you can modify the identifier as needed. |

To configure the types of interfaces that your business users can generate and configure in the Control Panel workspace:

1.  Go to **Interfaces** section in the **Standard Configuration** page of the control panel object.
2.  You can edit the following interface types:

    | Interface Type | Intent | Description |
    | --- | --- | --- |
    | Intake Form | Create | Allows end-users to create new cases. |
    | Edit Form | Edit | Allows end-users to edit existing cases. |
    | Summary Page | Display | Displays case details to end-users. |

3.  (Optional) Click **ADD INTERFACE** to add a new interface type to the existing list.

The interface types represent the different kinds of interfaces that business users can generate and configure for your case management processes. You can configure and remove interface types for case categories and types, depending on your needs. Not all interface types are needed or required to be used in all case categories and types.

To optionally add additional related record types and data to your control panel object:

1.  Go to the **Related Data** section in the **Standard Configuration** page of the control panel object.
2.  Click **\+ ADD RECORD TYPES**.
3.  Select a record type and click **ADD**.

## Step 3: Configure and manage the Hierarchy

Configuring the case category and type hierarchy for your case management processes is a combined effort between low-code developers and business users. Case categories and types cannot only be created directly from the control panel object. Once case categories and types are created in the Control Panel workspace, they can be configured in the control panel object.

[![screenshot of an example of the Hierarchy page in the control panel object for CMS](images/control-panel/cp-object-hierarchy.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1044)

[![](images/control-panel/cp-object-hierarchy.png)](#_)

But before you or your business users can create case categories and types through the Control Panel workspace, you should define the terminology that you want to use for your case categories and types. For instance, if you want to use other terminology to refer to "case types", such as "request types" or "issue folders", you can update that terminology from the **Hierarchy** page.

From here, you can also decide to use case categories. While case types are required in the Control Panel workspace and object, case categories are not.

To update terminology and category settings:

1.  In the **Hierarchy** page of the control panel object, click the gear menu.
2.  Select **Manage Hierarchy**.
3.  (Optional) Configure the terminology for case types and categories.
4.  Decide whether or not to use categories in your case management app hierarchy.
5.  Click **SUBMIT**.

[![screenshot of the Manage Hierarchy dialog in the control panel object for CMS](images/control-panel/cp-object-manage-hierarchy.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1045)

[![](images/control-panel/cp-object-manage-hierarchy.png)](#_)

Once you or your business user has created case categories and types from the Control Panel workspace, you can configure security for the case categories and types.

To configure security for a case category or type:

1.  On the **Hierarchy** page, click next to the case category or type you want to configure security for.
2.  Edit the out-of-the-box security for the case category or type.

    | User or Group | Permission Level |
    | --- | --- |
    | Default (All Other Users) | No Access |
    | `CMGT Design Administrators` | Administrator |
    | `CMGT Case Managers` | Viewer |

3.  Click **SAVE CHANGES**.

To learn more about security for the Control Panel workspace and object, see [Control Panel Object Security](control-panel-object-security.html).

## Step 4: Set the configurations for all cases

From the **Cases** page, you can configure the display properties for all cases, where the data for cases is stored, and which forms and interfaces can be used with cases.

[![screenshot of the Cases page in the control panel object for CMS](images/control-panel/cp-object-cases-cms.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1046)

[![](images/control-panel/cp-object-cases-cms.png)](#_)

To configure the display properties for your cases:

1.  Go to **Display** section in the **Cases** page of the control panel object.
2.  You can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value | Description |
    | --- | --- | --- |
    | Term (singular) | `Case` | The word for the key concept that the user is interacting with. For example, a single case, request, issue, etc. The term can either be a plain text string or a [translation string](translation-set-object.html). |
    | Term (plural) | `Cases` | The word for multiple cases, requests, issues, etc. The term can either be a plain text string or a [translation string](translation-set-object.html). |
    | Web address identifier | A unique value depending on your environment settings. | The URL that points to the page that shows all cases for this control panel object in the Control Panel workspace. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **term** for "case" that you selected, but you can modify the identifier as needed. |
    | Theme | Royal blue and the briefcase icon. | The color and icon shown on the top level page for the cases in this control panel object in the Control Panel workspace. |

To configure where to store and access the data for your cases:

1.  Go to the **Data** section in the **Cases** page of the control panel object.
2.  You can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value | Description |
    | --- | --- | --- |
    | Base record type | `CMGT_Case` | The record type that holds the data for all cases submitted and created through the control panel object. |
    | Case identifier | `friendlyId` | A unique text field used as a foreign key and common field between the base record type and any of the record types for the specified types and categories. |
    | Case type identifier | `caseTypeUuid` | The text field on the base record type that is populated with the identifier for the type or category. |
    | Rule input | `case` | The name of the rule input that passes the data of the base record type into the interfaces related to Cases. This rule input is not related to the case type UUID. |
    | Hierarchy record type | `CMGT_CFG_CaseType` | A system generated record type that contains the metadata, configurations, and properties for all types and categories in the control panel. It does not hold the data for individual categories, types, or cases. |

To configure the forms and interfaces used across all your cases:

1.  Go to the **Forms and Interfaces** section in the **Cases** page of the control panel object.
2.  You can edit the out-of-the-box interfaces used for all cases:

    | Interface type | Pre-configured interface |
    | --- | --- |
    | Intake Form | `CMGT_Case_IntakeForm` |
    | Edit Form | `CMGT_Case_EditForm` |
    | Summary Page | `CMGT_Case_SummaryPage` |

## Step 5: Set the configurations for each category and type

Once you've created case categories and types, you can edit select configurations for them here. Since case categories and types do not come configured out-of-the-box, there are no pre-configured values or interfaces for case categories and types.

**Example of a case category page**

[![screenshot of a case category page in the control panel object for CMS](images/control-panel/cp-object-category-cms.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1047)

[![](images/control-panel/cp-object-category-cms.png)](#_)

**Example of a case type page**

[![screenshot of a case type page in the control panel object for CMS](images/control-panel/cp-object-type-cms.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1048)

[![](images/control-panel/cp-object-type-cms.png)](#_)

To configure case categories and types form the control panel object:

1.  Go to the **Configuration** section of each case category or type page.
2.  Configure the following fields:

    | Field | Description |
    | --- | --- |
    | Display name | The name of the case category or type that is shown in the Control Panel workspace. The display name can either be a plain text string or a [translation string](translation-set-object.html). |
    | Description | A description of the case category or type to display in the Control Panel workspace to business users. |
    | Record type | The record type associated with the case category or type. |
    | Web address identifier | The URL that points to the case category or type. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Display name**, but you can modify the identifier as needed. |
    | Rule input name | The name of the rule input that passes the record data for this case category or type into the interface. It is also used as the name for this case category or type on the map returned by [a!controlPanelRecords()](fnc_evaluation_a_controlPanelRecords.html) function. |
    | Theme | The color and icon for the case category or type that is shown in the Control Panel workspace. |

If your business users have generated interfaces for the intake form, edit form, and summary page for the case category or type, you will be able to see and quickly access them from the **Forms and Interfaces** section. It is a best practice to allow business users to generate interfaces and forms for case categories and types through the Control Panel workspace and not to add existing interfaces directly to the fields in this section of the control panel object.

## Step 6: (Optional) Add or edit Custom Configurations

The control panel object that comes out-of-the-box with Case Management Studio uses pages added as **Custom Configurations** to support key Case Management Studio functionality, such as the pages for tasks, automation rules, and workflow.

The following pages are **Custom Configurations** that come out-of-the-box:

-   [Details](creating-case-categories-and-case-types.html#details-tab-in-case-types)
-   [Tasking](creating-tasks-and-task-blocks.html#tasking-page)
-   [Automation Rules](creating-case-categories-and-case-types.html#automation-rules-tab-in-case-categories-and-case-types)
-   [Email Templates](cms-email-templates.html)
-   [Workflow](creating-case-categories-and-case-types.html#workflow-tab-in-case-types)

[![screenshot of the the Custom Configurations page in the control panel object for CMS](images/control-panel/cp-object-cust-configs-cms.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1049)

[![](images/control-panel/cp-object-cust-configs-cms.png)](#_)

To add additional custom configurations to use in the Control Panel workspace:

1.  From the **Custom Configurations** page, click **ADD CUSTOM CONFIGURATION**.
2.  Configure the following fields:

    | Field | Description |
    | --- | --- |
    | Display name | The name that is shown for the page in the Control Panel workspace. |
    | Icon | The icon that is shown with the page display name in the Control Panel workspace. |
    | Description | A description of the page or tab to show to low-code developers in the setup details for the custom configuration in the control panel object. |
    | Web address identifier | The page URL. The identifier must be unique in the Appian environment. By default, Appian constructs this property using the **Display Name**, but you can modify the identifier as needed. |
    | Cases location | The place where the page will be shown. The location options are: **globally**, **across all categories and types**, and **across all types**. See the definitions below for more details. |
    | Interface | The interface for the page that defines what the business user will see when using the page in the Control Panel workspace. |
    | Type UUID Rule Input | The rule input used to pass in the UUID for the type. This is only applicable to custom configurations that appear **Across all categories and types** and **Across all types**. |

You can also edit the out-of-the-box custom configurations.

### Edit the Details page

[![screenshot of the Details custom configurations page in the control panel object for CMS](images/control-panel/cp-object-details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1050)

[![](images/control-panel/cp-object-details.png)](#_)

To edit the custom configuration for the **Details** page:

1.  Go to the **Details** page in the control panel object.
2.  In the **Setup** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Display name | `Details`. This value is a translation string in the `CMGT_BaseTranslations` translation set. |
    | Description | Blank |
    | Web address identifier | `metadata` |
    | Icon | `grip-horizontal` icon |

3.  In the **Display** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Cases location | `Across all Case Types` |
    | Interface | `CMGT_ControlPanel_CaseTypeMetadata` |
    | Type UUID Rule Input | `caseTypeUuid` |

### Edit the Tasking page

[![screenshot of the Tasking custom configurations page in the control panel object for CMS](images/control-panel/cp-object-tasking.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1051)

[![](images/control-panel/cp-object-tasking.png)](#_)

To edit the custom configuration for the **Tasking** page:

1.  Go to the **Tasking** page in the control panel object.
2.  In the **Setup** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Display name | `Tasking`. This value is a translation string in the `CMGT_BaseTranslations` translation set. |
    | Description | Blank |
    | Web address identifier | `tasking` |
    | Icon | `tasks-alt` icon |

3.  In the **Display** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Cases location | `Global` |
    | Interface | `CMGT_ControlPanel_Tasking` |
    | Type UUID Rule Input | Blank |

### Edit the Automation Rules page

[![screenshot of the Automation Rules custom configurations page in the control panel object for CMS](images/control-panel/cp-object-automation-rules.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1052)

[![](images/control-panel/cp-object-automation-rules.png)](#_)

To edit the custom configuration for the **Automation Rules** page:

1.  Go to the **Automation Rules** page in the control panel object.
2.  In the **Setup** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Display name | `Automation Rules`. This value is a translation string in the `CMGT_BaseTranslations` translation set. |
    | Description | Blank |
    | Web address identifier | `automation-rules` |
    | Icon | `tasks-alt` icon |

3.  In the **Display** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Cases location | `Across all Case Categories and Case Types` |
    | Interface | `CMGT_ControlPanel_Rules` |
    | Type UUID Rule Input | `selectedCaseTypeUuid` |

### Edit the Email Templates page

[![screenshot of the Email Templates custom configurations page in the control panel object for CMS](images/control-panel/cp-object-email-templates.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1053)

[![](images/control-panel/cp-object-email-templates.png)](#_)

To edit the custom configuration for the **Email Templates** page:

1.  Go to the **Email Templates** page in the control panel object.
2.  In the **Setup** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Display name | `Email Templates`. This value is a translation string in the `CMGT_BaseTranslations` translation set. |
    | Description | Blank |
    | Web address identifier | `email-templates` |
    | Icon | `envelope` icon |

3.  In the **Display** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Cases location | `Global` |
    | Interface | `CMGT_ControlPanel_EmailTemplates` |
    | Type UUID Rule Input | blank |

### Edit the Workflow page

[![screenshot of the Workflow custom configurations page in the control panel object for CMS](images/control-panel/cp-object-workflow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1054)

[![](images/control-panel/cp-object-workflow.png)](#_)

To edit the custom configuration for the **Workflow** page:

1.  Go to the **Workflow** page in the control panel object.
2.  In the **Setup** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Display name | `Workflow`. This value is a translation string in the `CMGT_BaseTranslations` translation set. |
    | Description | `configure a case type specific workflow` |
    | Web address identifier | `workflow` |
    | Icon | `bezier-curve` icon |

3.  In the **Display** section, you can configure the following fields and out-of-the-box values:

    | Property | Pre-configured value |
    | --- | --- |
    | Cases location | `Across all Case Types` |
    | Interface | `CMGT_ControlPanel_Workflow` |
    | Type UUID Rule Input | `selectedCaseTypeUuid` |

## Step 7: Save your changes

Make sure to save your changes by clicking **SAVE** in the header bar of the control panel object after you make changes to any page or in any dialog.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...