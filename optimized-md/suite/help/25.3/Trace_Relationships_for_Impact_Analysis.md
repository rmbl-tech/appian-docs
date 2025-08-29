---
source_url: https://docs.appian.com/suite/help/25.3/Trace_Relationships_for_Impact_Analysis.html
original_path: Trace_Relationships_for_Impact_Analysis.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Object Relationships

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

A full impact analysis is available for all design objects and plug-ins. Impact analysis is determined by two types of inverse relationships between objects and plug-ins:

-   **Dependents** are objects which _depend_ on the selected object or plug-in. For example, when an interface references an expression rule, the interface becomes a dependent of that expression rule.
-   **Precedents** are objects or plug-ins that the selected object _relies on_. For example, an interface calls a constant and a plug-in. As a result, the constant and the plug-in is a precedent of the interface.

**Note:**  Plug-in Impact Analysis is a preview feature. To share feedback or report issues with references to plug-ins, please [open a support case](https://community.appian.com/support/).

These relationships are shown in the **Dependents** and **Precedents** views. Precedent and dependent views of selected objects allow you to drill through multiple levels of dependents or precedents, and perform other tasks such as:

-   Find all objects or plug-ins that use a particular expression rule.
-   Determine which applications contain the utility expression rule `APN_userDisplayName()`.
-   See all objects or plug-ins that an interface uses.

Up to 500 dependents or precedents are shown in the list. Only the objects that the current user can see are displayed. For more information, see [Considerations for Impact Analysis](#considerations-for-impact-analysis).

## Dependents and precedents view

You can view dependents and precedents of objects, and dependents of plug-ins in Appian Designer. Click the **Objects** view and select the [**ALL OBJECTS** tab](objects-view.html#view-the-objects-grid) or [**PLUG-INS** tab](objects-view.html#view-the-plug-ins-grid) to view a list of objects or plug-ins within the environment.

### The ALL OBJECTS tab

Within an application:

1.  Navigate to the **Build** view.
2.  In the **ALL OBJECTS** tab of the **Build** view, select an object and click **Dependents** or **Precedents** in the toolbar.

![precedents dependents select main toolbar](images/precedents_dependents_select_main_toolbar.png)

The **ALL OBJECTS** tab will update to show you the dependents or precedents for your selected object. The annotated screenshot and descriptions below define the navigation options and information displayed in the dependents or precedents view.

[![images/precedents_dependents_annotated.png](images/precedents_dependents_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img243)

[![](images/precedents_dependents_annotated.png)](#_)

1.  **All Application Objects**: Navigates back to the application contents view.
2.  **Object Link**: A link to the selected object whose dependents or precedents are listed below.
3.  Describes the number of dependents or precedents listed below.
4.  **View Toggle**: A link to switch to the alternate dependents or precedents view for the selected object.
5.  **Object Type Filter**: Allows you to filter the direct dependents and precedents listed by object type. The filter options do not apply to indirect dependents and precedents.
6.  **Application Filter**: Allows you to filter dependents and precedents that are or are not in this current application. **(6b)** Objects that are not in this application have italicized names.
7.  **Toolbar**: Allows you to take action on selected objects in the dependents or precedents list. Applications cannot be selected.
8.  **Expand/Collapse** buttons: Allows you to trace through multiple levels of object relationships. Up to 50 additional dependents or precedents will be displayed for each object listed in this view.
9.  **Locations** column: Shows where the relationship occurs. For example, the process model New Purchase Request uses the interface PR\_SubmitPrForm as a start form. When a relationship occurs in more than one location, the list of locations is shown in a dialog.

### Build view

For data types, decisions, expression rules, integrations, interfaces, record types, sites, and web APIs, select **Dependents** or **Precedents** in the **Settings menu**, as shown below.

![precedents dependents designer view menu](images/precedents_dependents_designer_view_menu.png)

![precedents dependents designer view dialog](images/precedents_dependents_designer_view_dialog.png)

This view displays the same relationship information as the [**ALL OBJECTS** tab annotated above](#the-all-objects-tab). You can toggle between dependents and precedents views **(A)**, trace through multiple levels of object relationships **(C)**, and view the locations of relationships **(D)**. Filters and toolbar options don't apply when viewing dependents or precedents within an object.

From an object's dependents view, you can also run all of the test cases for an object's direct dependent expression rules **(B)**. Click **Run Direct Rule Dependents** to [manage Test Cases](Expression_Rule_Testing.html#prodlink-manageTestCases) for the object's dependent rules.

### Record field view

If your record type has [data sync](about-data-sync.html) enabled, you can get even more granular by reviewing your record field dependents. In your record type, click ![record-field-dependents](images/record-field-dependents.png) next to a record field to see which design objects depend on it.

![/status-field-dependents](images/status-field-dependents.png)

![/field-dependents-view](images/field-dependents-view.png)

Like the [**Build** view](#build-view), you can use the **Field Dependents** view to trace through multiple levels of object relationships **(B)**, and view the locations of relationships **(C)**. You can also run all of the test cases for an object's direct dependent expression rules **(A)**. Click **Run Direct Rule Dependents** to [manage Test Cases](Expression_Rule_Testing.html#prodlink-manageTestCases) for the object's dependent rules.

Similarly, you can view the same information about your relationship dependents. In your record type, click ![record-field-dependents](images/record-field-dependents.png) next to a relationship name to see which design objects depend on this relationship.

## Considerations for impact analysis

### Limits

-   Only 500 direct dependents and precedents are returned. When tracing through multiple levels of relationships, only 50 dependents and precedents are returned.
-   Documents, folders, and knowledge centers that have no relationship to any application or its objects on the system will never be returned as precedents or dependents. This primarily impacts objects of these types generated by end-user actions.
-   If an application has more than 10,000 relationships — objects in the application and objects referenced by the application like [application documentation](application-settings.html#application-documentation) — the application may not reliably appear as a dependent. The object would still be considered part of the application, and there is no impact on deployments or other application-reliant actions. Routine maintenance and clean-up of your environment will help avoid the build-up of object clutter.
-   If there are more than 100,000 groups in your environment, the system may not be able to display all of the relationships for groups. Under those conditions, when you view an analysis of dependents and precedents, you'll see messages describing which relationships may not be displayed.
-   Impact analysis is not available for user accounts. This means that users do not show up in any dependents and precedents list, and you cannot view their relationships.
-   Impact analysis is also not available for portal pages and discussion forums, both of which are deprecated.

### Deleted objects

-   The relationships of a deleted object cannot be viewed. For instance, the process model _New Purchase Request_ uses the interface _PR\_submitPurchaseRequest_. If the interface is deleted, the precedents list for _New Purchase Request_ does not include the interface.
-   Deleting an object will impact all its dependents. When deleting a single object, Appian will check for remaining dependents and prompt you to review them before continuing.
-   Deleting a field on a record type will impact any object that references the field, resulting in invalid field reference errors. When you delete a field, Appian will identify all objects that will be impacted by the deletion so you can review the impacts before continuing. If you choose to finalize the deletion, all resulting invalid objects are visible on the [Appian Design Guidance](monitoring_view.html#health-dashboard) grid of the Health Dashboard.

![/delete-fields-impact-analysis](images/delete-fields-impact-analysis.png)

### Self references

When objects reference themselves in a recursive relationship, the dependents or precedents list do not include the object. For instance, the process model _Send Adhoc Task_ calls itself as a subprocess. When viewing the dependents or precedents list for _Send Adhoc Task_, _Send Adhoc Task_ is not included.

### Versions

Only the latest version of an object's relationships are calculated.

### Objects with syntax errors

If an object's definition has an expression with a syntax error, the relationships in the expression are not traced. For instance, the interface _PR\_submitForm_ uses the expression rule _APN\_displayName_. If the latest version of the interface is saved with a syntax error, such as a missing closing parenthesis, _APN\_displayName_ isn't included in _PR\_submitForm_'s precedents list. Likewise, _PR\_submitForm_ is not included in _APN\_displayName_'s dependents list.

### Relationship tracing in progress

Some objects or plug-ins may not display in dependents or precedents lists if Appian has not finished calculating object relationships. This would only happen after the application server is started, and the process of calculating the relationships is not completed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...