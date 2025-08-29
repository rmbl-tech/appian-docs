---
source_url: https://docs.appian.com/suite/help/25.3/cs-23.3.2.6/setting-up-groups.html
original_path: cs-23.3.2.6/setting-up-groups.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Setting Up Groups

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

Managing organizational changes can be a big pain point for many organizations. New team members or team members with new responsibilities need to quickly have access to the tools they need to do their jobs. To ensure security, departing team members need to have their access revoked in a timely manner. The [Connected FS Settings](using-fs-settings.html#accessing-the-connected-fs-settings-site) site in Appian Connected Servicing allows business users with the appropriate access to quickly make the changes needed to keep business running securely.

![groups_settings.png](images/groups_settings.png)

If you need to add new business or security groups, or modify group membership using Appian Designer, see [Modifying Groups](modifying-groups.html).

## What are business groups?

Only business groups are able to be modified from Connected Servicing Settings. So what is a business group? A business group is a group that represents the different business roles that will interact with the solution.

For example, sales team members who are involved in Service Requests will be in the _Sales_ business group and managers on the legal team who are involved in Service Requests will be in the _Legal Department Heads_ business group.

This allows you to put certain teams into security groups to allow access to specific parts of the solution. For example, only members of the _Client Servicing_ and _Sales_ groups have actions to create new Service Requests from the Home page.

See [Group Reference Page](groups-reference-page.html) for more information on what groups provide what access in Connected Servicing.

### Customer groups

Customer groups are a special type of business group. Customer groups allow access to the Customer Site for external users. In order to ensure customers can only see their data and no other customer data, a user may only be added to one customer group at a time.

A customer group is automatically created when a customer is created. Therefore, in the group management tool, there will be one group for every customer.

## Viewing group members

To view current group members:

1.  [Access the Connected FS Settings site](using-fs-settings.html#accessing-the-connected-fs-settings-site) and click **GROUPS**.
2.  Optionally you may filter to **Internal Users** or **Customers**.
    -   **Note**: The group type aligns with the wrapper groups that are defined in [Group Reference Page](groups-reference-page.html#wrapper-group-membership).
3.  Select the business group that you would like to view.

The group members display. You can see if a user is a **Direct** member, which means they have been added directly to the group, or an **Indirect** member, which means they are a member of a subgroup. If the user is an **Indirect** member, their subgroup will display in the **Parent Group(s)** column.

![manage_membership.png](images/manage_membership.png)

## Managing group membership

To update group membership:

1.  On the Groups page, select the group that you would like to update. See [Viewing group members](#viewing-group-members) for instructions.
2.  To remove a member, select the checkbox next to their name and click **REMOVE MEMBERS**.
    -   **Note**: If the member is an indirect member of the group, you will not be able to remove them from the group. You must remove them from the parent group. For example, a member of the Back Office Department Heads group is an indirect member of the Back Office group. To remove them from the Back Office group, you must remove them from the Back Office Department Heads group.

        ![remove_membership.png](images/remove_membership.png)

3.  To add a member, click **ADD MEMBERS**. Use the picker to find the member(s) you would like to add, then click **ADD TO GROUP**. ![add_to_group.png](images/add_to_group.png) When the users refresh the site, their membership will be updated.

## Creating a new user

If a user needs an account, a business user can create one from the group management tool.

To create a new user:

1.  [Access the Connected FS Settings site](using-fs-settings.html#accessing-the-connected-fs-settings-site) and click **Groups**.
2.  In the group picker, select the group type.
3.  Select the business group that you would like to add the user to.
4.  Click **ADD MEMBERS**.
5.  Click **CREATE NEW USER**.
6.  Enter the **Email**, **Username**, **First Name**, and **Last Name**.
    -   **Note:** Username is case sensitive and must be unique.
7.  Click **ADD TO GROUP**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...