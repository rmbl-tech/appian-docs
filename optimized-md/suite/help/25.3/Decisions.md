---
source_url: https://docs.appian.com/suite/help/25.3/Decisions.html
original_path: Decisions.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Decision Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page provides detailed information on how to create and configure a decision object.

## What is a decision?

A decision is a design object that allows you to capture business rules and logic in a table. A decision table takes input values, looks for matching rows, and returns the outputs associated with the matching rows.

Each column in the decision table is either an input to the decision or one of its outputs. Each row in the table represents a decision rule, in which each cell is a logical operation. When all the cells' conditions for a particular row are true, the decision will return the output values specified for that row.

For example, to determine the legal drinking age:

![decision example](images/decision_example.png)

A decision object in Appian can capture the rules of decision table in an equally readable format:

![Appian decision example](images/appian_decision_example.png)

**Tip:**  In our example, we use the _from_ operator for the range 19-20. This operator evaluates an inclusive range of values so if we applied it to the range of 1-3, the numbers 1, 2, and 3 would be evaluated in our rule. If we used the _between_ operator, which evaluates an exclusive range of values, only the number 2 would be evaluated in our rule.

A decision can be referenced in other objects. To learn more about this concept, see [Referencing Objects in Expressions](reference-objects.html).

## When to use this object

Use a decision when you need to:

-   Encapsulate and manage complex business policies in a central location.
-   Determine outcomes based on multiple input criteria, such as calculating an insurance premium.
-   Simplify application logic by replacing deeply nested `if()` statements with a visual decision table.

**Tip:**  For a description of use cases for this object, see [Decision Tables in Appian](Appian_Decisions.html).

## Elements of this object

This object is divided into two panes:

-   [Configuration pane](#configuration-pane)
-   [**Test Inputs** pane](#test-inputs-pane)

### Configuration pane

This pane contains the following elements:

[![images/Decision_Images/decision_table_callouts_25-2.png](images/Decision_Images/decision_table_callouts_25-2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img297)

[![](images/Decision_Images/decision_table_callouts_25-2.png)](#_)

| # | Section | Actions |
| --- | --- | --- |
| 1 | Hit policy selector | [Select a hit policy](Create_a_Decision.html#select-a-hit-policy) that determines what a decision returns when more than one business rule matches the inputs. |
| 2 | Input | [Configure](Create_a_Decision.html#configure-inputs) input that will be used to pass data into the decision. Each cell in an input column must be configured with a logical operation and value for that particular input type. |
| 3 | Output | [Configure](Create_a_Decision.html#configure-outputs) the values that are returned when a decision is evaluated. Each cell in an output column can be configured with a value for that particular output type. |
| 4 | Notes | [Add comments and information for each decision rule](Create_a_Decision.html#configure-decision-rules). The information in this column is not used when the decision is evaluated. |
| 5 | Actions | [Perform additional actions](Create_a_Decision.html#configure-decision-rules) on decision rules. |
| 6 | Decision rules | [Configure](Create_a_Decision.html#configure-decision-rules) decision rules. Each row in the table represents a decision rule, in which each cell is a logical operation. Each row starts off with a row number that is used to identify the row throughout the object. The decision output is used to specify what the decision returns if a particular row's logic matches the passed-in input values. |
| 7 | **ELSE** | [Define](Create_a_Decision.html#configure-decision-rules) the default output to return if no rules match the inputs. |
| 8 | **Add New Row** | [Add a row for a new decision rule](Create_a_Decision.html#configure-decision-rules). |

### Test Inputs pane

The **Test Inputs** pane contains a field for each input configured for the decision.

You can enter sample values in each field to [test your decision](Create_a_Decision.html#test-your-decision).

For example:

[![images/Decision_Images/decision-test-inputs-pane.png](images/Decision_Images/decision-test-inputs-pane.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img298)

[![](images/Decision_Images/decision-test-inputs-pane.png)](#_)

## Security

**Tip:**  Any user can invoke any decision that is used by an interface or process they can access.

[Object security](object-security.html) is configured through role maps. By default, decisions [inherit](object-security.html#security-inheritance) the security of the folder they are saved in. You can override that default by [editing](object-security.html#editing-object-security) the decision's security.

The following table outlines the actions that can be completed for each [permission level](https://docs.appian.com/suite/help/25.2/object-security.html#permission-levels-in-role-maps) in a decision's security role map:

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| Evaluate the decision | Yes | Yes | Yes | Yes |
| View the decision definition | Yes | Yes | Yes | No |
| Duplicate the decision | Yes | Yes | Yes | No |
| Test the decision | Yes | Yes | Yes | No |
| Add, reorder, or delete rows in the decision | Yes | Yes | No | No |
| Update values for existing inputs and outputs | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Rename the decision | Yes | Yes | No | No |
| Add, edit, or delete inputs and outputs | Yes | No | No | No |
| Edit the decision's hit policy | Yes | No | No | No |
| Delete the decision | Yes | No | No | No |
| Update the security | Yes | No | No | No |

## Manage this object

This section explains how to create, edit, move, duplicate, delete, and deploy decisions.

### Common object options

There are a few common options available across different design objects. The following options are available in a decision.

| Option | Available? |
| --- | --- |
| **[Versioning](Managing_Object_Versions.html)** | Yes |
| **[Renaming](Renaming_Design_Objects.html)** | Yes |
| **[Viewing Appian Design Guidance](appian-recommendations.html)** | Yes |
| **[Duplicating](#duplicate-the-object)** | Yes |
| **[Viewing Performance Details](Performance_View.html)** | Yes |
| **[Object overwrite protection](Multiple_Designers_Editing_the_Same_Design_Object.html)** | Yes |

To view options that are available from the toolbar in Appian Designer, see [Common View Elements](common-view-elements.html).

### Create the object

For step-by-step guidance on how to build your first decision object, see [Create a Decision](Create_a_Decision.html).

### Edit the object properties

To edit a decision object:

1.  In the **Build** view, select the name of the decision. The object will open in a new tab.
2.  Open the settings menu .
3.  Select **Properties**.
4.  Edit the following properties:

    | Property | Action |
    | --- | --- |
    | **Name** | Enter a name for the object. This name is not case sensitive, but we recommend following the [Standard Object Names](https://docs.appian.com/suite/help/25.2/Standard_Object_Names.html) convention. This name must be unique in the Appian environment. |
    | **Descriptions** | Enter a short description for the object. This text displays in the expression editor and in the objects grid of some Designer views. |
    | **Save In** | Select the rule folder that the decision is saved into. |

5.  Click **OK** to save your changes.

### Move the object

Users with **Administrator** permission to this object or rule folder can move it to another folder:

1.  Navigate to the parent folder that the object or folder is in.
2.  Select the object or folder. You can select more than one.
3.  Click the **Move** button on the toolbar. The **Move Objects** dialog appears.
4.  Use the folder picker or browser to select the new parent folder.

    **Tip:**  You can also create a new folder in the browser, if you have **Editor** permissions to its parent folder.

5.  Click **Move**.

**Note:**  Any objects that are configured to inherit the security of the parent folder assume the security rights of the target folder.

### Duplicate the object

Developers with [**Viewer** permissions](object-security.html#permission-levels-in-role-maps) to this object can duplicate it. There are two ways to duplicate an object:

-   From any view in an application, you can select the object you wish to duplicate and use the toolbar option to launch the duplication dialog. The duplicated object will be added to the application you're working in. This capability is only available for single object selections from the grid.
-   If you are in an interface, expression rule, integration or decision object, you can select **Duplicate** from the object's settings menu . From there, you can specify the target application for the new object.

Once you select the **Duplicate** option, you will see the following dialog:

![object duplication dialog](images/object_duplication_dialog_design_library.png)

You can only duplicate the most recent version of an object. If you have unsaved changes and attempt to duplicate the object from within the designer, the most recent saved version of the object will be duplicated **without** the unsaved changes. A banner appears when there are unsaved changes to remind you before duplicating.

![object duplication dialog with unsaved changes](images/object_duplication_unsaved_changes_banner.png)

### Delete the object

**Caution:**  Deleting a decision cannot be undone. Any objects that depend on it will be broken.

Deleting an decision prevents users from further viewing or editing it. However, the last version of the decision is still available to be used in processes, record views, and reports.

Decisions can be deleted by users with **Administrator** permissions for the object. Appian does not recommend deleting decisions that are in use because the decision can no longer be [edited](#edit-the-object-properties) or [deployed](#deploy-the-object).

To delete a decision:

1.  In the **Build** view, select the checkbox next to the object's name.
2.  Click **DELETE** in the toolbar. System administrators can delete multiple objects at once.
3.  Review the list of dependent objects to verify that you want to continue with the deletion. Learn more about [the impact of deleting objects that rely on each other](Trace_Relationships_for_Impact_Analysis.html).
4.  Click **DELETE** to confirm.

### Deploy the object

As part of your [app deployments](deploying-applications.html), decision objects can be exported and then imported into another environment. If you define inputs using an expression with [constants](Constants.html) and set those constants with an import customization file, you will need to reset these values in the decision object after it is imported. The constant values set in the [import customization file](Managing_Import_Customization_Files.html) are not applied for decisions.

## See also

-   **[Expression Rules](Expression_Rules.html):** Learn about expression rules, which are used for calculating or manipulating data, as opposed to decisions which handle business logic.
-   **[Expressions](Expressions.html):** Understand how to call your decision from any expression using the `rule!` domain.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...