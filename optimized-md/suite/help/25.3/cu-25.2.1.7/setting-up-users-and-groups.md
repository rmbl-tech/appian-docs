---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/setting-up-users-and-groups.html
original_path: cu-25.2.1.7/setting-up-users-and-groups.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Users and Groups

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Underwriting, which must be purchased separately from the Appian base platform. This content was written for Appian 25.2 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Managing staffing changes can be a major pain point for many organizations. New team members, or team members with new responsibilities, need access to the tools needed to do their jobs. To ensure security, departing team members need to have their access revoked in a timely manner.

The Connected Underwriting P&C Settings site allows business users with the appropriate access to quickly make the changes needed to keep business running securely.

![cu-setting_up_users_groups-settings_page.png](images/cu-setting_up_users_groups-settings_page.png)

**Note:**  If you need to add new role or assignment groups, or modify group membership using Appian Designer, see the [Modify Groups](modifying-groups.html) page.

### Role groups and assignment groups

Within Connected Underwriting P&C Settings, business users are able to add users to role groups, and create assignment groups and add users to them. So what are role groups and assignment groups?

#### Role groups

Role Groups are based on the user's role within their company and represent the different ways they will interact with the solution. This allows you to put certain teams into security groups to allow access to specific parts of the solution. To create or delete a role group, please contact your system administrator.

![cu-setting_up_users_groups-role_groups.png](images/cu-setting_up_users_groups-role_groups.png)

For example,

-   Team members who are involved in ensuring data completeness of a Submission will be in the Underwriter Assistant role group.
-   Managers who need to make changes to available email templates will be in the Managers role group.

#### Assignment groups

Assignment groups determine which users can be assigned Submissions. For example, an organization can have an assignment group focused on the West region and another focused on the East. If a Submission is assigned to the West Group, then users in that group are notified to work on that submission.

![cu-setting_up_users_groups-assignment_groups.png](images/cu-setting_up_users_groups-assignment_groups.png)

See [Groups Reference Page](groups-reference-page.html) for more information on what groups provide what access in the solution.

## View groups and group members

Business users with the appropriate group membership can easily view all groups and members in any group in your organization.

To view current groups:

1.  On the **Connected Underwriting Settings** site, click the **User Security** tab from the menu.
    1.  The groups to view include:
        1.  **Role Groups**
        2.  **Assignment Groups**
2.  Select and click the **Role Group Name** or **Assignment Group Name** you want to view the members of.

    ![cu-setting_up_users_groups-role_groups_members.png](images/cu-setting_up_users_groups-role_groups_members.png)

### Manage group membership

Managing group membership is easy. You can add existing users to a group, and remove members that no longer have access to a particular group.

To add an existing user to a group:

1.  On either the **Role Groups** or **Assignment Groups** page, select the group that you would like to update.
2.  Click **ADD MEMBERS**.
3.  In the **Search** field, start entering the username you want to add and the system will auto-suggest a list of users that you can select to add to the group.
4.  Click **ADD**.

    ![cu-setting_up_users_groups-role_groups_members_add_member.png](images/cu-setting_up_users_groups-role_groups_members_add_member.png)

To remove a member from a group:

1.  On either the **Role Groups** or **Assignment Groups** page, select the group that you would like to update
2.  From the Member list, select the **Remove Member** icon next to the name of the user you would like to remove from the group.
3.  On the confirmation screen, click **REMOVE**.

### Add an Assignment Group

**Assignment groups** determine which users can be assigned submissions. Once created, assignment groups can be selected when reassigning submissions. The solution ships with an ISU Default Assignment Group.

To add an Assignment Group:

1.  Navigate to the **Assignment Groups** page
2.  Select **CREATE GROUP**.
3.  Add **Group Name**, a **Description** for the group, and **Group Members**.
4.  Click **SAVE**.

    ![cu-setting_up_users_groups-assignment_groups_create_group.png](images/cu-setting_up_users_groups-assignment_groups_create_group.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...