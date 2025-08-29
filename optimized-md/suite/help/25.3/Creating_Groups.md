---
source_url: https://docs.appian.com/suite/help/25.3/Creating_Groups.html
original_path: Creating_Groups.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating Groups

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian users can be organized into various groups. Groups can contain users or other groups as members. There are three types of membership: direct addition as a member, indirect addition by being a member of a subgroup, or addition by a membership rule.

Groups can be further organized into group types. Group types allow you to classify your groups into different categories. A group type can also be configured to ask for or require additional [information](Group_Types.html#group-type-attributes) for all new groups created for the type.

Learn how to [manage groups after you create them](Group_Management.html).

## Creating a group

All designers can create groups in Appian Designer. These groups may be of the **Custom** group type or any user-defined group type.

**Tip:**  Appian can [generate groups](creating-applications.html#generated-groups-and-folders) during application configuration and automatically set those groups as the [default security groups](creating-applications.html#default-security-groups) for new objects in the application.

To create a group:

1.  Use either of the following methods to open the **Create Group** dialog:
    -   In an application, go the **Build** view and click **NEW > Group**.
    -   On the **Members** tab of a group page, click **NEW GROUP**.
2.  [Configure properties](Group_Management.html#properties) for the group.
3.  Click **CREATE**.
4.  [Configure security](Configuring_Security_for_Groups.html) for the group.

    **Note:**  If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default administrators group pre-populates the role map when you create a group. If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any group you create. System administrators can always access a connected system, regardless of object-level permissions.

5.  Click **SAVE**.

## Group Administration Versus Group Membership

An administrator for a group is (by default) also an administrator for all of its subgroups. An administrator of a group is not an administrator of its parent group. On the other hand, any member of a group is also made a member of its parent group. Administration descends the group hierarchy. Membership ascends it.

## Locating the ID and UUID Number of a Group

In Appian, a group can be referenced in expressions using its ID number or sometimes UUID number. These numbers are displayed on the group's Properties dialog.

To view these numbers for a group, view the group's properties by doing the following:

1.  Select a group in Appian Designer.
2.  Click on the **More** menu and select **Properties** from the dropdown menu.
    -   The group's Properties dialog is displayed.

Or:

1.  Click on a group in Appian Designer to open it.
    -   The group opens inline, with the group's name as the page title.
2.  Click on the gear icon next to the current group's name to open the **context menu**, and select **Properties** from the dropdown menu.
    -   The current group's Properties dialog is displayed.

Conversely, Appian Designer enables [searching objects by their ID or UUID](find_and_search_in_appian.html#uuid-or-id). Additionally, designers can use a rule to convert the group name to its ID number.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...