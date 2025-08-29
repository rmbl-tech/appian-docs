---
source_url: https://docs.appian.com/suite/help/25.3/Group_Management.html
original_path: Group_Management.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Group Management

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes how to manage groups in Appian. Groups are used to organize users and facilitate security within both Appian Designer and individual applications.

In addition to groups you [create](Creating_Groups.html), Appian also provides [system groups](System_Groups.html) to manage user access to specific areas of the Appian platform. Learn more about [user roles in the platform](User_Roles.html).

Groups you create and system groups can contain both individual users and other groups. You can assign group membership manually or dynamically based on membership rules.

**Tip:**  Appian can generate certain groups automatically during application creation. These generated groups can be managed the same way you'd manage a group you create manually. Learn more about [generated groups](creating-applications.html#generated-groups-and-folders).

If you have a large number of groups, you can use [group types](Group_Types.html) to organize and associate specific attributes with your groups.

The following image shows a group and its properties in Appian Designer.

![group overview](images/Group_Overview.png)

1.  Groups can be viewed in the [**Build** view](build-view.html) or in the [**Objects** view](objects-view.html).
2.  The breadcrumbs display the names of all parent groups in the same hierarchy; you can open a parent group by clicking on it. The current group is displayed more prominently beneath the breadcrumbs.
3.  The **Members** tab displays a grid of the group's members and relevant actions. The object and member type filters in the left pane will act on this grid. The **Membership Rules** tab displays the group's membership rules.
4.  Object names in the grid and breadcrumbs are italicized to indicate that they have not been added to the current application.
5.  The members grid displays both user and group members. Clicking on a group will open it and clicking on a user will open a dialog displaying the [user's properties](User_Management.html#view-and-update-users).
6.  The **Details** column displays the description for a group or the username for a user.
7.  The **Member Type** column indicates if the user or group is a member as a result of a membership rule (Rule), by being directly added as a member (Direct), or by being a member of a subgroup (Indirect).
8.  In this view, the search only returns results within the contents of the group.
9.  The members grid can be filtered by object or member type.

Actions on members in the grid can be taken from the toolbar, and actions on the current group can be taken from the gear menu.

![group settings menu](images/Group_Gear_Menu.png)

## Properties

Group administrators can view and modify all group properties. Other developers who can view the group can view but not modify its properties, and cannot view its visibility, membership policy, and privacy policy.

All group type properties are configured through the **Properties** dialog. You can access this dialog one of two ways:

-   Select the group in Appian Designer, and click on **Properties** in the toolbar.
-   To see the properties for the group that is currently open, click next to the group name to view the context menu, then select **Properties**.

![group properties](images/Group_Properties.png)

The complete list of properties for a group are:

| Property | Description | Can Be Edited |
| --- | --- | --- |
| **Name** | The name that is used when referencing the group. This name can also be returned when querying the _groupName_ property using the `group()` function. Follow the [recommended naming standard](Standard_Object_Names.html#group-objects) when creating this name. | Yes |
| **Description** | Supplemental information about the group that is displayed in the objects grid of some Designer views. | Yes |
| **Parent** | The group will inherit security from its parent, and all of its members are indirectly members of the parent. | Yes |
| **Members** | The users and groups that belong to the group. Privileges that are granted to the group will translate to its members. To edit group membership, return to the Members tab on the group page. | No |
| **UUID** | The UUID is another Appian object identifier that can be used to reference the group in expressions, and is consistent between Appian instances. | No |
| **ID** | The local ID is the Appian object identifier that gets stored in process and external database tables, which can be used to reference the group in expressions. Note that the local ID is not consistent between Appian instances. | No |
| **Group Type** | [Group types](Group_Types.html) allow you to further classify and provide additional properties about groups of that type. To edit the group type for the group, go to the group type page. | No |
| **Visibility** | [Visibility](Configuring_Security_for_Groups.html#group-visibility) determines if a group can be seen in places such as group directory lists, searches, and members lists. The three settings are Public, Personal, and Restricted. | Yes |
| **Membership** | The [membership policy](Configuring_Security_for_Groups.html#group-membership-policy) determines how users may be added to groups. | Yes for group admins |
| **Privacy Policy** | The [privacy policy](Configuring_Security_for_Groups.html#group-privacy-policy) determines who can see the group's members. | Yes |
| **Attributes** | The group's specific values for any [additional properties](Group_Types.html#group-type-attributes) defined on its group type. To edit attributes, go to the group type properties. | No |

### Attributes

Attributes are custom fields that provide additional information about groups of a particular group type. The attribute's name and data type are defined on the group type, and the attribute's value is defined for each group of that group type.

For example, the Appian Department is a group type that has an attribute named "Director" which is a user data type. The Technology group belongs to the Appian Department group type, and therefore has a Director field to populate specifically for Technology.

If the attribute is a user or group data type, then a value is not required. For other data types, the value is required and pre-populated with a default value that is defined on the group type.

See also: [Configure Group Type Attributes](Group_Types.html#group-type-attributes)

## Add or remove members

Group administrators can add and remove a group's members.

To add members to a group:

1.  Go to the **Members** tab on the group page.
2.  Click **ADD MEMBERS** in the toolbar. A dialog displays, with a group and user picker.
3.  Enter the desired groups and users.
4.  Click **ADD**.

To remove members from a group:

1.  Go to the **Members** tab on the group page.
2.  Select the appropriate members in the grid.
3.  Click **Remove Members** in the toolbar.

## View or modify group membership rules

Another way of adding members to a group is by configuring membership rules. Group administrators can view and modify its membership rules, as well as view the number of membership rules directly in the tab name.

![group membership rules](images/Group_Membership_Rules.png)

To view or modify group membership rules:

1.  Navigate to the **Membership Rules** tab.
2.  Click **NEW RULE** in the toolbar to add a rule, or click on an existing rule to modify it. A dialog with the rule conditions is displayed.
3.  From the first dropdown, select if the rule will apply to users or groups. If configuring a rule that applies to groups, a group type must be selected.
4.  Configure each rule condition by selecting a field, operator, and search criteria. The search criteria accepts wildcards (`?` and `*`).

    For example, if you want to add users with the last name _Lee_, select **Last Name** as the field, **is** as the operator, and "Lee" as the search criteria.

    **Note:**  Only the first condition for a _particular_ field will be considered when the rule is evaluated. For example, if you have the following two conditions in a rule, **username contains "a"** and **username contains "b"**, only usernames with an "a" (but not those with a "b") will be added to the group. Use a [custom field from the user profile](User_Management.html#admin-console) to support more complex membership rule logic.

5.  To add more conditions, click **+**.
6.  To remove a condition, click the red **X** to the right of the corresponding condition.
7.  Click **CREATE** to create the new rule, or **SAVE** to save changes to an existing rule.

To view the added members, return to the **Members** tab to view the updated group members.

To delete a rule, select it and click **DELETE** in the toolbar.

## Create a child group

Group administrators can create a new group by clicking on **NEW GROUP** in the toolbar on the **Members** tab. The new group's parent is pre-populated with the current group.

## Security

**Tip:**  Groups always inherit security from their parent group if they have one. See **Parent** [property](#properties) above.

The [security](object-security.html) role map of a group controls which developers can see or modify it and its properties. By default, only the group creator and system administrators have access to the group. See [Editing Object Security](object-security.html#editing-object-security) to modify a group's security.

The only [permission level](object-security.html#permission-levels-in-role-maps) that can be used in a group's role map is **Administrator**.

Group administrators can do the following:

-   Add and remove group members.
-   View and modify group security.
-   Configure membership rules.
-   Configure properties and attributes.
-   Create a new group as a child of the current group.
-   Delete the group.

## Delete a group

Group administrators can delete a single group. System administrators can select multiple groups to delete.

To delete a group:

1.  In the **Build** view, select a group or groups, depending on your user role.
2.  Click **DELETE** in the toolbar. Appian identifies any objects or application configurations that are dependent on the group, then displays a confirmation dialog.
3.  If there are dependents, do one of the following:
    -   Click **CANCEL**, resolve the dependencies, then try to delete the group again.
    -   Ignore the dependencies, and click **DELETE ANYWAY**.
4.  If there are no dependents, click **DELETE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...