---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/using-fs-settings.html
original_path: cs-23.3.2.6/using-fs-settings.html
version: "25.3"
title: "Accessing the Connected FS Settings Site"
page_id: "cs-23.3.2.6/using-fs-settings"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Accessing the Connected FS Settings Site

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected Servicing, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

Connected FS (Financial Services) Settings is a separate site utilized by all three solutions in the Financial Services Suite: Connected Onboarding, Connected Servicing, and Connected KYC to allow business users to:

-   [Manage people](#managing-users-and-groups) and [setting up group membership](setting-up-groups.html).
-   [Create and manage onboarding, service request, and investigation templates](setting-up-processes.html).
-   [Organize tasks for Service Request processes](setting-up-processes.html).
-   [Configure important Service Request values](configure-data.html)

![connected_fs_settings_site.png](images/connected_fs_settings_site.png)

Only business users with the appropriate group membership are able to access this site. This ensures that only a select few have access to sensitive processes and information.

This page provides instructions and prerequisites for accessing the Connected FS Settings site and using it to streamline and accelerate configuring your Financial Services solutions.

## Accessing the Connected FS Settings site

To access the Connected FS Settings site:

1.  Make sure you are in the appropriate security groups. See the [Groups Reference Page](groups-reference-page.html) for more information about security groups.
    -   To access the Connected FS Settings site to manage categories, tasks, and templates, make sure you are in the `AS FS Manage Processes` group.
    -   To access the Connected FS Settings site to configure service requests make sure you are in the `AS FS Access Settings Configure Page` group
    -   To access the Connected FS Settings site to manage group membership, make sure you are in the `AS FS GM Manage Group Membership` group.
    -   To access the Connected FS Settings site to configure KYC screenings, make sure you are in the `AS IO Manage KYC Questionnaire` group.
2.  From the Connected Onboarding site, select the navigation menu ![navigation menu](images/onb_process_navigation_menu.png) > **Connected FS Settings**.

## Managing users and groups

Managing organizational changes can be a big pain point for many organizations. New team members or team members with new responsibilities need to quickly have access to the tools they need to do their jobs. To ensure security, departing team members need to have their access revoked in a timely manner. The FS Settings site in Appian KYC allows business users with the appropriate access to quickly make the changes needed to keep business running securely.

> appian-style note If you need to add new business or security groups, or modify group membership using Appian Designer, see [Modifying groups](modifying-groups.html).

### What are business groups?

Only business groups are able to be modified from FS Settings. So what exactly is a business group? A business group is a group that represents the different business roles that will interact with the solution.

For example, team members who are involved in investigations will be in the **KYC** business group and managers on the legal team who are involved in investigations will be in the **Legal Department Heads** business group.

This allows you to put certain teams into security groups to allow access to specific parts of the solution. For example, only members of the **KYC** and **Client Onboarding** groups have actions to create new investigations from the Home page.

> appian-style note See [Group Reference Page](groups-reference-page.html) for more information on what groups provide what access in your Financial Services solution.

### View group members

Business users with the appropriate group membership can easily view all of the members in any group in your organization.

To view current group members:

1.  On the **FS Settings** site, click the **user groups** icon from the menu.

    ![fs_settings_user_groups_icon.png](images/fs_settings_user_groups_icon.png)

2.  Under **User Groups**, select the group type. Options include: _All_, _Internal Users_, and _Customers_.
    -   **Note**: The group type aligns with the wrapper groups that are defined in [Group Reference Page](groups-reference-page.html).
3.  Select and click the business group card associated with the user group that you want to view.

The group members display. You can see if a user is a _Direct_ member, which means they have been added directly to the group, or an _Indirect_ member, which means they are a member of a subgroup. If the user is an Indirect member, their subgroup will display in the Parent Group(s) column.

![fs_settings_user_groups_member_list.png](images/fs_settings_user_groups_member_list.png)

### Manage group membership

Managing group membership is easy in the FS Settings site. You can add existing users to a group, create new users, and remove members that no longer have access to a particular group.

To add an existing user to a group:

1.  On the User Groups page, select the group that you would like to update. See [Viewing group members](#view-group-members) for instructions.
2.  Click **ADD MEMBERS**.

    ![fs_settings_user_groups__add_member.png](images/fs_settings_user_groups__add_member.png)

3.  In the **Search** field, start entering the username you want to add and FS Settings will auto-suggest a list of users that you can select to add to the group.
4.  Click **ADD TO GROUP**.

To create a new user to add to a group:

1.  On the User Groups page, select the group that you would like to update. See [Viewing group members](#view-group-members) for instructions.
2.  Click **ADD MEMBERS**.
3.  Click **CREATE NEW USER** and enter the following user information:
    -   Email
    -   Username
    -   First Name
    -   Last Name
4.  Click **ADD TO GROUP**.

    ![fs_settings_user_groups__create_member.png](images/fs_settings_user_groups__create_member.png)

To remove a member from a group:

1.  On the User Groups page, select the group that you would like to update. See [Viewing group members](#view-group-members) for instructions.
2.  From the **Member** list, select the **checkbox** next to the name of the user you would like to remove from the group.
3.  Click **REMOVE MEMBERS**.
    -   **Note**: If the member is an indirect member of the group, you will not be able to remove them from the group. You must remove them from the parent group. For example, a member of the Back Office Department Heads group is an indirect member of the Back Office group. To remove them from the Back Office group, you must remove them from the Back Office Department Heads group.

        ![fs_settings_user_groups__remove_member.png](images/fs_settings_user_groups__remove_member.png)

When the users refresh the site, their membership will be updated.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...