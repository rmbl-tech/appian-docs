---
source_url: https://docs.appian.com/suite/help/25.3/Configuring_Security_for_Groups.html
original_path: Configuring_Security_for_Groups.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configuring Security for Groups

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Appian allows you to tailor user rights to the needs of your groups and your overall organization by configuring security settings for groups.

These group settings impact all users, whether or not they are members of the group.

## Types of group membership

Four types of membership determine the user rights available for a group—Administrator, Group Creator, Member, and Viewer.

-   **Administrators** can modify group properties, add and remove administrators and members, create and modify membership rules, and delete the group.
-   **Group Creators** have administrator rights.
-   **Members** have been added as members either by the group creator or group administrators, or added as part of a rule. The rights given to members depend on the group's Visibility.
    -   See below: [Group Membership Policy](#group-membership-policy) and [Group Visibility](#group-visibility)

## Group visibility

Appian defines three Visibility settings—Public, Personal, and Restricted. These settings have implications in group directory lists, group searches, group membership, and group administration.

All users can create groups of each setting, and the settings can be modified from the group's Properties dialog.

### Public

Public groups appear when browsing groups and in group search results.

When Public groups are added to the Tempo Message Audience Groups system group, all users can select and send messages to those groups.

See also: [Tempo Message Audience Groups](System_Groups.html#tempo-message-audience-groups)

### Personal

All users can create a group with Personal security, but only the Group Creator can work with and modify the group. They can add other users as administrators and members, but members cannot see this group.

These groups are useful when organizing contact lists or assigning tasks. This security feature allows the members in your group to be aware of the group's existence, yet they cannot use the group or view other members.

Users, including group administrators, cannot send Tempo messages to a Personal group, even if the group is added to the Tempo Message Audience Groups system group.

### Restricted

This setting exposes the group to its members and administrators only, who can view the group when browsing. The group appears for these users within group search results.

If a Restricted group is added to the Tempo Message Audience Groups system group, and a member sends an open message to that group, non-members may still see the message, but the Restricted group's name will display as `[Group Name Not Available]`. To avoid confusion for your users, you may want to limit the number of Restricted groups added to the Tempo Message Audience Groups system group.

-   This also applies if the message is sent to multiple Restricted groups and a user is a member of one group, but not all. The user will see the message, but the groups the user is not a part of will be listed as `[Group Name Not Available]`.

See also: [Send a Message](News.html#send-a-message)

## Group membership policy

The **Group Membership Policy** selected for a group determines whether or not users are free to join a group and whether or not approval is required before the user can be added to the group.

The possible policies are discussed below:

-   **Closed**: Only Group Administrators can add or remove members to the group.
-   **Automatic**: This option exists only for Public groups, and users who can see these groups do not need the Group Administrator's permission to join.
-   **\[Deprecated\] Exclusive**: Users can only join the group with approval from a Group Administrator.

There is no option in Appian Designer to automatically join or request to join a group, and setting a group as Automatic or Exclusive no longer exposes these options. If needed, this functionality can be built into your application. Newly created groups default to Closed, and should remain as such.

## Group privacy policy

The group privacy policy determines whether group members can see who else is a member of the group. There are two settings for viewing policy:

-   **Low**: All members can see each other.
-   **High**: The members cannot see each other. Only the Group Creator, Group Administrators, or system administrators can see all the members. Personal groups always have a "High" privacy policy.

## Groups in Appian Designer

By default, new groups in Appian Designer default to the following configuration:

-   **Visibility**: Public
-   **Membership Policy**: Closed
-   **Privacy Policy**: Low

Designers cannot set another Membership Policy during group creation, but can modify it in the group's properties. Visibility and Privacy Policy are available to edit both during group creation and in the group's properties.

The following table summarizes the various options and consequences for configuring group security.

| Group Visibility | Membership Policy | Privacy Policy | Searchability | Member Visibility |
| --- | --- | --- | --- | --- |
| Restricted | Closed | High | Seen in directory and search results by Members and Administrators | Only Administrators may see members of the group |
| Restricted | Closed | Low | Seen in directory and search results by Members and Administrators | Anyone can view members |
| Personal | Closed | High | Never seen in directory and search results by all | Only Administrators may see members of the group |
| Public | Automatic | High | Seen in directory and search results by all | Only Administrators may see members of the group |
| Public | Automatic | Low | Seen in directory and search results by all | Anyone may view members |
| Public | Exclusive \[Deprecated\] | High | Seen in directory and search results by all | Only Administrators may see members of the group |
| Public | Exclusive \[Deprecated\] | Low | Seen in directory and search results by all | Anyone may view group members |
| Public | Closed | High | Seen in directory and search results by all | Only Administrators may see members of the group |
| Public | Closed | Low | Seen in directory and search results by all | Anyone may view group members |

See also:

-   [System Groups](System_Groups.html)
-   [Creating Groups](Creating_Groups.html)
-   [Group Management](Group_Management.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...