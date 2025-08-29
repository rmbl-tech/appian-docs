---
source_url: https://docs.appian.com/suite/help/25.3/Constants.html
original_path: Constants.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Constant Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page provides detailed information on how to create and configure a constant object.

## What is a constant?

A constant is a design object that holds a literal value that can be called from any expression. This allows you to define a value once—such as a company name, a key date, or a web service endpoint—and reuse it across multiple objects in an application. Using constants makes your applications easier to maintain, as you only need to update the value in one place to have it reflected everywhere.

A constant can be referenced in other objects. To learn more about this concept, see [Referencing Objects in Expressions](reference-objects.html).

## When to use this object

Use a constant when you need to:

-   Store a static value that is reused in many expressions.
-   Make it easy to update a value across an entire application from a single location.
-   Define environment-specific values (like usernames or endpoints) that change between development, test, and production environments.

## Elements of this object

This object contains the following elements:

[![images/constantEditor.png](images/constantEditor.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img296)

[![](images/constantEditor.png)](#_)

| # | Field | Available Actions |
| --- | --- | --- |
| 1 | Create Options | Choose to create a new constant from scratch, or create a duplicate of an existing constant. |
| 2 | **Name** | Enter a name for the constant. This name is used when calling the constant from an expression. We recommend following the [Standard Object Names](https://docs.appian.com/suite/help/25.2/Standard_Object_Names.html) convention. Note that certain constant names are [reserved](#reserved-names) for system use. |
| 3 | **Description** | Enter a description for the object. |
| 4 | **Type** | Select the [data type](Appian_Data_Types.html) for the constant. Select the **Array** checkbox to store a list of values of the same data type |
| 5 | **Value** | Define the literal value that is returned when the constant is called. |
| 6 | **Environment Specific** | Select this checkbox to prevent the constant's value from being updated on import, unless you've specified a value in an [import customization file](Import_Customization_File.html). You can only select this checkbox for constants that are a [primitive data type](Appian_Data_Types.html#primitive-system-data-types) or [Email Address type](Appian_Data_Types.html#email-address).

Constants should only be environment specific when their values are different based on the environment they are in. For example, a web service endpoint. |
| 7 | **Save In** | Select the folder where the constant should be created. |

### Reserved names

Certain names are reserved for system use and cannot be used for constants. These names are primarily used for process report metrics:

-   Completion
-   is\_process\_ontime
-   is\_process\_overdue
-   is\_task\_favorite
-   is\_task\_ontime
-   is\_task\_overdue
-   Lag
-   NetCompletion
-   NetLag
-   NetWork
-   process\_completion\_time
-   process\_deadline
-   process\_ee\_id
-   process\_start\_time
-   process\_status
-   pm\_avg\_completion
-   pm\_avg\_lag
-   pm\_avg\_work
-   task\_assignee\_owner
-   task\_assignment\_time
-   task\_attributed\_to
-   task\_avg\_completion
-   task\_avg\_lag
-   task\_avg\_work
-   task\_completion\_time
-   task\_deadline
-   task\_ee\_id
-   task\_status
-   total\_completion\_time
-   total\_lag\_time
-   total\_work\_time
-   Work

## Security

Object security is configured through role maps. By default, constants [inherit](object-security.html#security-inheritance) the security of the folder that they are saved in. However, after creating the constant, you can disable that inheritance and modify the constant's security. See [Editing Object Security](object-security.html#editing-object-security) to modify a constant's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a constant's security role map:

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| Evaluate the constant | Yes | Yes | Yes | Yes |
| View the constant definition | Yes | Yes | Yes | No |
| Duplicate the constant | Yes | Yes | Yes | No |
| Update the constant definition\* | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Rename the constant | Yes | Yes | No | No |
| Delete the constant | Yes | No | No | No |
| Update the security | Yes | No | No | No |

**Note:**  When a constant is used in an expression, the value that is returned is the same regardless of which [user evaluates the expression](User_Contexts_for_Expressions.html). However, functions that use the value may fail based on the user's permission.

For example, if the constant value is a group that the user does not have permission to see, the constant returns the value successfully but using the `group()` function returns an error.

## Manage the object

This section explains how to create, edit, and delete constants.

### Common object options

There are a few common options available across different design objects. The following options are available in a constant:

| Option | Available? |
| --- | --- |
| **[Versioning](Managing_Object_Versions.html)** | Yes |
| **[Renaming](Renaming_Design_Objects.html)** | Yes |
| **[Viewing Appian Design Guidance](appian-recommendations.html)** | Yes |
| **[Duplicating](#duplicate-the-object)** | Yes |
| **[Viewing Performance Details](Performance_View.html)** | No |
| **[Object overwrite protection](Multiple_Designers_Editing_the_Same_Design_Object.html)** | Yes |

To view options that are available from the toolbar in Appian Designer, see [Common View Elements](common-view-elements.html#toolbar).

### Create the object

Constants of deprecated types cannot be created except by duplicating a constant of that type.

To create a constant:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Constant**.
3.  Configure the [constant properties](#elements-of-this-object).
4.  Click **CREATE**.

### Edit the object properties

To edit a constant:

1.  In your application, go to the **Build** view.
2.  Select the constant name to open it. This displays the **Constant Properties** dialog.
3.  Edit the [constant properties](#elements-of-this-object) as needed.
4.  Click **SAVE**.

**Tip:**  You can also update the value of a constant programmatically in a process model using the [Update Constant Smart Service](Update_Constant_Smart_Service.html) or the [Increment Constant Smart Service](Increment_Constant_Smart_Service.html).

Each time you modify and save a constant, a [new version](Managing_Object_Versions.html) is created. All objects that use the constant will use the latest version. All versions are accessible to developers who can view the constant, and a constant can be reverted back to a previous version at any time.

## Move the object

Users with **Administrator** permission to this object or rule folder can move it to another folder:

1.  Navigate to the parent folder that the object or folder is in.
2.  Select the object or folder. You can select more than one.
3.  Click the **Move** button on the toolbar. The **Move Objects** dialog appears.
4.  Use the folder picker or browser to select the new parent folder.

    **Tip:**  You can also create a new folder in the browser, if you have **Editor** permissions to its parent folder.

5.  Click **Move**.

**Note:**  Any objects that are configured to inherit the security of the parent folder assume the security rights of the target folder.

## Duplicate the object

To duplicate a constant:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the constant you want to duplicate.
3.  Click **DUPLICATE**.

    ![constantEditor](images/constant_duplication_toolbar.png)

4.  Update the duplicated [constant properties](#elements-of-this-object) as needed.
5.  Click **CREATE**.

### Delete the object

Deleting a constant prevents users from further viewing or editing it. However, the last version of the constant is still available to be used in processes, record views, and reports.

Appian does not recommend deleting constants that are in use because the constant can no longer be exported.

To delete a constant:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the constant you want to delete.
3.  Click **DELETE**. System administrators can delete multiple objects at once.
4.  In the **Delete Constant?** dialog, ensure there are no objects that depend on the constant.

    **Note:**  If there are objects that depend on the constant, then deleting the constant will cause an error to appear in those objects.

5.  Click **DELETE**.

## See also

-   **[Expression Rules](Expression_Rules.html):** Constants are frequently used within expression rules to avoid hard-coded values.
-   **[Referencing Objects in Expressions](reference-objects.html):** Learn how to reference a constant using the `cons!` domain.
-   **[Update Constant Smart Service](Update_Constant_Smart_Service.html):** Use this smart service to programmatically change a constant's value within a process.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...