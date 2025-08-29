---
source_url: https://docs.appian.com/suite/help/25.3/System_Groups.html
original_path: System_Groups.html
version: "25.3"
title: "System Groups"
page_id: "System_Groups"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# System Groups

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Your Appian environment automatically includes a set of system groups, which you can use to administer access to various components in the environment.

As a best practice, don't use system groups to secure individual applications or design objects in applications. Instead, we recommend using [default security groups](creating-applications.html#default-security-groups).

**Note:**  Although created automatically, generated groups are _not_ part of system groups. Instead, they are [**Custom** type](Group_Types.html) groups that you can manage in the same way you'd [manage groups you create manually](Group_Management.html). Learn more about [generated groups](creating-applications.html#generated-groups-and-folders).

System groups can be modified by the Administrator user account, System Administrator users, or the Group Administrator(s) with the following restrictions:

-   System groups cannot be deleted through an interface.
-   System group names cannot be changed from an interface.
-   System groups have the same UUID in all Appian environments.

**Note:**  The following system groups have been deprecated and may be removed from Appian in a future release:

-   [Document Administrators \[Deprecated\]](Document_Administrators.html)
-   [Portal Administrators \[Deprecated\]](Portal_Administrators.html)
-   [Tempo Global Message Authors \[Deprecated\]](Tempo_Global_Message_Authors.html)
-   [Quick App Creators \[Deprecated\]](Quick_App_Creators.html)

## Application Users

Users in the **Application Users** group correspond to the [Application User Role](User_Roles.html#application-user-role).

## Data Fabric Report Creators

Users in the **Data Fabric Report Creators** group can build custom reports and dashboards using [data fabric insights](allow-users-to-build-reports.html). These users can share their own reports and dashboards, and view reports and dashboards shared with them, so long as they have **Viewer** permissions to the record types used in the reports.

The **Process HQ Users** system group inherits members from the **Data Fabric Report Creators** system group, so report creators will automatically have access to the [Process HQ workspace](processhq.html).

## Data Governors

Users in the **Data Governors** system group correspond to the [Data Governor Role](User_Roles.html#data-governor-role).

## Database Users

The **Database Users** group contains all of the database user access roles.

Within this group, you can assign users to the following groups:

-   **Database Administrators**: Membership in this system group corresponds to the [Database Administrator Role](User_Roles.html#database-administrator-role).
-   **Database Editors**: Membership in this system group corresponds to the [Database Editor Role](User_Roles.html#database-editor-role).
-   **Database Viewers**: Membership in this system group corresponds to the [Database Viewer Role](User_Roles.html#database-viewer-role).

## Designers

Users in the **Designers** group correspond to the [Designer User Role](User_Roles.html#designer-role).

## Design Library Editors

Users in the **Design Library Editors** group can include or exclude interfaces from the [design library](working_in_design_mode.html#using-the-design-library).

**Note:**  Users added to the **Design Library Editors** group are automatically added to the [designer role](User_Roles.html#designer-role), which gives them access to design all aspects of an application.

## Enterprise Copilot Administrators

Users in the **Enterprise Copilot Administrators** group can access [Enterprise Copilot](enterprise-copilot.html). These users can also:

-   View, create, and edit all knowledge sets
-   Add other Enterprise Copilot Administrators

Members of this group will be granted full access to the Enterprise Copilot site, including adding or editing user permissions.

## Health Check Viewers

Users in the **Health Check Viewers** group can automatically share [Health Check reports](health-check.html). Members of the group will be notified via email each time a report becomes available, and will be able to download the report from a secured News post. By default, all system administrators are added as members of the Health Check Viewers group via an editable [membership rule](Group_Management.html#view-or-modify-group-membership-rules).

Health Check must be set up in the [Admin Console](Appian_Administration_Console.html#health-check), and automatic upload must be enabled in order for these viewers to see the Health Check report.

You can access the **Health Check Viewers** group from the link on the [Health Check Settings](Appian_Administration_Console.html#prodlink-healthCheckSettings) page or by searching for the group in the [**Objects** view](objects-view.html). You can add both individual users and groups as members (see [Group Management](Group_Management.html#add-or-remove-members)).

The **Health Check Viewers** group is configured with the following security settings:

-   **Restricted visibility**: Only members and administrators can view the group.
-   **Closed membership policy**: Group administrators must select members.
-   **Low privacy**: Members of the group can view each other.

## OAuth 2.0 SAML Bearer Assertion Users

Users in the **OAuth 2.0 SAML Bearer Assertion Users** group will be able to use the [OAuth 2.0: SAML Bearer Assertion Flow](oauth_saml_bearer_assertion_flow.html) with HTTP connected systems.

## OpenID Connect Integration Users

Users in the **OpenID Connect Integration Users** group will be able to use [OpenID Connect](OpenID_Connect.html) with HTTP connected systems.

## Process HQ Users

Users in the **Process HQ Users** system group correspond to the [Process HQ User Role](User_Roles.html#process-hq-user-role).

## Process Model Creators

[Basic users](User_Management.html) must be a member of the **Process Model Creators** group in order to create new process models, or configure the [Query Database](Query_Database_Smart_Service.html) or [Call Web Service](Call_Web_Service_Smart_Service.html) smart services.

You can [create a group membership rule](Group_Management.html#view-or-modify-group-membership-rules) that automatically grants all basic users the right to create process models, if you prefer.

System Administrator users do not need to be members of this group to create process models.

See also: [Add Users to Groups](User_Management.html#add-users-to-groups)

The **Process Model Creators** group is configured with the following security settings:

-   Restricted visibility
    -   Only members and administrators can view the group.
-   Closed membership policy
    -   Group administrators must select members.
-   Low privacy
    -   Members of the group can view each other.

**Note:**  Users added to the **Process Model Creators** group are automatically added to the [designer role](User_Roles.html#designer-role), which gives them access to design all aspects of an application.

## RPA Operations Managers

Members of this group can access the [RPA Operations Console](rpa-9.17/manage-robots.html) for operational activities, such as managing credentials, queues, robots, and executing robotic tasks.

## Service Accounts

Users in the **Service Accounts** group correspond to the [Service Account Role](User_Roles.html#service-account-role).

## Studio Editors

Users in the **Studio Editors** group can access the Studio site in [Case Management Studio](case-management-studio-overview.html) and create and manage configurations related to case types and categories.

## Tempo Message Audience Groups

**Tempo Message Audience Groups** is a system group to which other groups can be added. You can then add users to the member groups to define participants on News [posts](News.html#create-a-post) or recipients of News [messages](News.html#send-a-message).

**Note:**  For users to be able to see and select a group as a participant on a News post or recipient of a message, the group must be added to the **Tempo Message Audience Groups** system group by a system administrator.

### Add groups as members

Only groups are recognized as members of this system group. Individual users are ignored and will have no impact. Once membership is updated and saved, the changes are reflected to users when they log back into the system.

Only **Public** and **Restricted** groups can be added to the **Tempo Message Audience Groups** system group. Each group added becomes available for its members to select and send messages to it on the News Feed. Whether or not non-members can select the enabled groups or see messages sent to these groups depends on the security settings for the group and message.

-   **Public Groups**: If the group is Public, all users can see and send messages to the group. If the message is **open**, all users can search for and see it in their News feed. If the message is **locked**, only members of the group and the message author can search for and see it in their News feed.
-   **Restricted Groups**: If the group is Restricted, only members and administrators are able to see and send messages to the group. If the message is **open**, all users can search for and see it in their News feed, but the group name displays as `[Group Name Not Available]` for non-members. If the message is **locked**, only members of the group and the message author can search for and see it in their News feed and the group name displays correctly.

**Note:**  Any users or groups added to these system groups also gain the same functionality within Appian Mobile applications.

### Security settings

The **Tempo Message Audience Groups** system group is configured with the following security settings:

-   **Personal security**: It can only be viewed by administrators.
-   **Closed membership policy**: Group administrators must select members.
-   **High privacy**: Only administrators can view group members.

## Tempo Users

Users in the **Tempo Users** group correspond to the [Tempo User Role](User_Roles.html#tempo-user-role).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...