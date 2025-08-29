---
source_url: https://docs.appian.com/suite/help/25.3/cu-25.2.1.7/modifying-groups.html
original_path: cu-25.2.1.7/modifying-groups.html
version: "25.3"
title: "Modify Groups"
page_id: "cu-25.2.1.7/modifying-groups"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modify Groups

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

When adding internal users to Appian Connected Underwriting P&C, they initially won't have access to see or do much in the solution. In order to give them access to the information and actions they need to perform their jobs, you must add them to the appropriate groups.

Connected Underwriting P&C comes with default groups that make it easy to grant the appropriate access to internal users. The solution uses business groups that represent the different business roles that will interact with the solution. For example, **Underwriting Manager** and **Underwriting Assistant**. These business groups are members of security and wrapper groups, which grant access to different parts of the solution, such as starting a new underwriting Submission or viewing account information.

By placing internal users into business groups, the solution automatically assigns them the appropriate access for their business role. To understand what groups to put internal users in depending on the actions that they need to perform, see the [Groups Reference Page](groups-reference-page.html).

When you are setting up the solution, you will need to understand what business roles are required for your organization and modify the groups to fit your organization. You will also need to add internal users to the appropriate groups. This page outlines how to do both.

## Modifying group membership

To give internal users appropriate access to Connected Underwriting P&C, you must first add them to the necessary business groups. Access in Connected Underwriting P&C is driven by membership of business groups, and there are minimal restrictions on additional access to specific pieces of functionality in the main Connected Underwriting P&C site.

One specific distinction in user access lay in the Connected Underwriting P&C Settings site, an administrative page that allows internal users to modify underwriting submissions processes. This site is only accessible to the ISU Administrators and ISU Managers groups.

You can manage group membership either manually or automatically.

### Manually modifying membership

Modifying group membership can be done from two places in Connected Underwriting P&C:

#### Connected Underwriting P&C Settings

Business users can use the Connected Underwriting P&C Settings site to modify internal users in business groups. See [Managing Group Membership](setting-up-users-and-groups.html) for instructions on how to do this.

#### Appian Designer

Administrators can also use Appian Designer to manage group membership. See [Group Management](../Group_Management.html) for more information on this.

**Note:**  Appian highly recommends that you use the Connected Underwriting P&C Settings site to manage all group memberships. Using Appian Designer to update group membership may cause unwanted visibility changes or security vulnerabilities.

### Automatically syncing group membership

You can also configure an Appian process model to run periodically, typically nightly, which can automatically add internal users to different groups. This is typically hooked into an LDAP integration to ensure the LDAP system is what actually controls user access to groups. See the [LDAP Synchronization](https://community.appian.com/w/the-appian-playbook/520/ldap-synchronization) Playbook article for more information about setting this up.

Syncing with LDAP would likely overwrite group memberships that were set using the Connected IS Settings site.

If you implement automatic syncing, you have two options:

-   You can leave the Groups & Users section of Connected Underwriting P&C Settings visible to end users so that they can use it to grant access right away, without waiting for the sync. If you choose this option, make sure that end users know that they need to make changes in the LDAP system as well as Connected Underwriting P&C and that their changes in Connected Underwriting P&C will be overwritten by the changes to the LDAP system.

-   You can hide the Groups & Users section of Connected Underwriting P&C Settings by adding a visibility check in the backend to this portion of the site.

## Adding new business groups

If your organization has different business roles that the default business groups don't cover, you can create additional groups using Appian Designer.

To add a new business group:

1.  [Create a business group](../Creating_Groups.html) for the new business role.

    -   Set the **Visibility** to **Public (everyone)**. This will allow internal users to select the group in pickers in the application.
    -   Set the appropriate **Parent Group**. Reference an existing business group to see how this is configured.
2.  [Add users](#modifying-group-membership) to the group.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...