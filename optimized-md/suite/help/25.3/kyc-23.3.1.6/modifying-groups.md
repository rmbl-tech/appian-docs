---
source_url: https://docs.appian.com/suite/help/25.3/kyc-23.3.1.6/modifying-groups.html
original_path: kyc-23.3.1.6/modifying-groups.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modifying Groups

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Connected KYC, which must be purchased separately from the Appian base platform. This content was written for Appian 23.3 and may not reflect the interfaces or functionality of other Appian versions.</td></tr></tbody></table>

## Introduction

When adding users to Appian Connected KYC, they initially won't have access to see or do much in the solution. In order to give them access to the information and actions that they need to do their jobs, you must add them to the appropriate groups.

Connected KYC comes with default groups that make it easy to grant the appropriate access to users. The solution uses business groups that represent the different business roles that will interact with the solution. For example, **KYC investigator** and **Sales Department Heads**. These business groups are members of security and wrapper groups, which grant access to different parts of the solution, such as starting a new Investigation or viewing account information.

By placing users into the business groups, the solution automatically assigns them the appropriate access for their business role. To understand what groups to put users in depending on the actions that they need to perform, see [Actions users can perform based on their group membership](groups-reference-page.html#actions-users-can-perform-based-on-their-group-membership) on the Groups Reference Page. This page also gives more information on what business groups belong to which security and wrapper groups.

When you are setting up the solution, you will need to understand what business roles are required for your organization and modify the groups to fit your organization. You will also need to add users to the appropriate groups. This page outlines how to do both.

## Modifying group membership

To give users appropriate access to Connected KYC, you must first add them to the necessary business and security groups. Generally, it is a best practice to only place users inside of business groups, not security groups. However, there are some security groups where it is preferable to grant membership to individual users.

For example, the **AS FS Manage Processes** security group grants access to the Connected FS Settings site and allows users to modify Investigation processes. Since Connected FS Settings is an administrative page, you may want to control access on an individual user level. For example, rather than giving access to all users in the KYC investigator group, you may want to limit it to a couple of individuals. In this case, you would add users to the security group, instead of adding a business group to the security group.

You can manage group membership either manually or automatically.

### Manually modifying membership

Modifying group membership can be done from two places in Connected KYC: the Connected FS Settings site and Appian Designer.

Business users can use the Connected FS Settings site to modify users in business groups. See [Managing Group Membership](setting-up-groups.html) for instructions on how to do this.

Administrators can also use Appian Designer to manage group membership. See [Group Management](../Group_Management.html) for more information on this. However, Appian highly recommends that you use the Connected FS Settings site to manage all group memberships. Using Appian Designer to update group membership for Connected KYC may cause unwanted visibility changes or security vulnerabilities.

### Automatically syncing group membership

You can also configure an Appian process model to run periodically, typically nightly, which can automatically add users to different groups. This is typically hooked into an LDAP integration to ensure the LDAP system is what actually controls user access to groups. See the [LDAP Synchronization](https://community.appian.com/w/the-appian-playbook/520/ldap-synchronization) Playbook article for more information about setting this up.

Syncing with LDAP would likely overwrite group memberships that were set using the Connected FS Settings site.

If you implement automatic syncing, you have two options:

-   You can leave the Groups & Users section of Connected FS Settings visible to end users so that they can use it to grant access right away, without waiting for the sync. If you choose this option, make sure that end users know that they need to make changes in the LDAP system as well as Connected KYC and that their changes in Connected KYC will be overwritten by the changes to the LDAP system.
-   You can hide the Groups & Users section of Connected FS Settings by not adding any users to the **AS IO GM Manage Group Membership** group. This is the group that grants access to that section of the site.

## Adding new business groups

If your organization has different business roles that the default business groups don't cover, you can create additional groups using Appian Designer.

To add a new business group:

1.  [Create a business group](../Creating_Groups.html) for the new business role.
    -   Set the **Visibility** to **Public (everyone)**. This will allow users to select the group in pickers in the application.
    -   Set the appropriate **Parent Group**. Reference an existing business group to see how this is configured.
2.  Add the group to the proper wrapper and security groups so users will be given the appropriate access to the application functionality.
3.  [Add users](#modifying-group-membership) to the group.

## Adding new security groups

If you configure additional functionality in the application, such as adding new records or related actions, it is recommended that you create a security group. Learn more about [object security](../object-security.html).

For example, the **AS FS Create or Update Customer** process model has associated security groups called **AS FS Create Customer** and **AS FS Update Customer**.

To add a new security group for an object:

1.  [Create a security group](../Creating_Groups.html) for the new Appian object.
    -   Set the **Visibility** to **Personal (only admins)**. This makes sure that users will not be able to select this group from pickers in the application.
2.  Make the new security group a viewer on the Appian object.
3.  Add the appropriate business groups to the security group to give them access to the new functionality.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...