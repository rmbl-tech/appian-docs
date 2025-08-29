---
source_url: https://docs.appian.com/suite/help/25.3/User_Roles.html
original_path: User_Roles.html
version: "25.3"
title: "User Roles"
page_id: "User_Roles"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Roles

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page describes the available user roles in Appian.

User roles give a user specific privileges to access certain areas of Appian. These areas include access to:

-   [Admin Console](Appian_Administration_Console.html)
-   [Appian Designer](welcome-app-designer.html)
-   [Process HQ](processhq.html)
-   [Process Modeler](process_model_overview.html)
-   phpMyAdmin interface for the [Appian Cloud database](appian-cloud-database-administration.html)
-   Tempo

Each user role corresponds to membership in a specific type of [system group](System_Groups.html). In short, to assign a user role, add the user to the appropriate system group. Adding a user to a system group restricts the user from accessing any areas of Appian not part of the corresponding user role.

This restriction is beneficial in creating secure applications. For example, you may want to create users that can interact and complete processes in the Tempo in order to increase collaboration around the company without allowing them access to Appian Designer where they could accidentally modify a process model. In this case, you can add these users to the [Application User Role](User_Roles.html#application-user-role).

**Note:**  Not all system groups correspond to user roles. Adding a user to non-role groups gives the user additional privileges, rather than restricting their access. Learn more about [non-role system groups](System_Groups.html).

## Application User Role

The **Application User Role** gives a user access to Tempo, sites, and embedded interfaces. Users can complete any tasks and start processes they have access to here, but they do not have access to the Appian Designer, including the Process Modeler or the Admin Console.

-   Links to the Appian Designer and Admin Console do not display for the user. They also are not accessible when the environment URLs are typed in a browser.
-   Role maps for objects are still honored and determine what a user can view, edit, and manage.

Users are added to the Application User Role when you add them to the **Application User System Group**.

## Cloud Database Access Roles

**Note:**  These roles apply to Appian Cloud environments only.

Appian Cloud database user roles control what users can do and see in the Appian Cloud database through phpMyAdmin. Users can be assigned any of the following roles to provide them access to phpMyAdmin user interface. To learn more about how to use system groups to grant access certain schemas, see [Appian Cloud Database Administration](appian-cloud-database-administration.html#using-schemas-to-configure-access-to-data).

### Database Administrator Role

The **Database Administrator Role** has the highest level of access to the database through phpMyAdmin. Only database administrators can perform the following activities in the Appian Cloud environment:

-   Create, delete, and change passwords for schemas in the database.
-   Access all the schemas created in the database, whether or not they are given permissions to the associated data source connected system object.
-   View the cloud database request logs.
-   Rotate the database encryption keys.

Users are added to the Database Administrator Role when you add them to the **Database Administrators System Group**.

Since the database administrator role has elevated privileges, make sure that only the required users are given this role. Keep the following in mind when determining who has this role:

-   Users are automatically added to the **Database Administrator** system group when their **User Type** is updated to **System Administrator**.
-   Before Appian 21.3, by default the **Designer** group was a member of the **Database Administrator** system group. If you haven't already, you may want to remove that group and assign membership more specifically.

### Database Editor Role

The **Database Editor Role** can read, write, update, and delete data and database objects in the Appian Cloud database through phpMyAdmin.

All database editors have access to the default Appian schema. However, they only have access to other schemas if they have at least viewer permissions on the [data source connected system](data-source-connected-systems.html) for the schema.

Users are added to the Database Editor Role when you add them to the **Database Editors System Group**.

Note that by default the Designers group is automatically added to the Database Editors group. However, you can remove the Designer group from the Database Editors group.

### Database Viewer Role

The **Database Viewer Role** has read-only access to the Appian Cloud database through phpMyAdmin.

All database viewers have access to the default Appian schema. However, they only have access to other schemas if they have at least viewer permissions on the [data source connected system](data-source-connected-systems.html) for the schema.

Users are added to the Database Viewer Role when you add them to the **Database Viewers System Group**.

## Data Governor Role

The **Data Governor** role allows trusted users to manage which record types are available in process insights and data fabric insights using the [Data Governance](data-governance-page.html) page in Process HQ.

Here, data governors can assign [data stewards](configure-security.html) to record types and manage [which record types are available to report creators](secure-records-for-reporting.html#choose-which-record-types-are-available-as-datasets).

Users are added to the Data Governor Role when you add them to the **Data Governors System Group**. The Data Governor System Group is a member of the **Process HQ Users** group.

## Designer Role

The designer role allows users to work within the Appian Designer and any applications exposed through an end user environment. They can design applications and complete tasks within an end user environment, but they do not have access to the Admin Console.

-   Links to the Admin Console do not appear on the user's screen, nor can they access it by specifying the environments through the URL.
-   In order to access the Admin Console, you need to [make them a system administrator](User_Management.html#manage-user-rights-and-security).
-   In order to design/modify process models, users still **need** to be in the [Process Model Creators Group](System_Groups.html#process-model-creators).

Users are added to the designer role when you add them to the **Designers System Group**.

## Process HQ User Role

The **Process HQ User** role gives a user access to the [Process HQ workspace](processhq.html). [Additional permissions](configure-security.html) are required to allow users to take other actions in Process HQ, like [adding a process](add-process.html), [creating a view](process-views.html), and [building custom reports and dashboards](allow-users-to-build-reports.html).

Users are added to the Process HQ User Role when you add them to the **Process HQ Users System Group**.

## Service Account Role

The **Service Account Role** allows administrators to designate service accounts that can use [API keys](Web_API_Authentication.html#api-key-authentication) and the [OAuth 2.0 Client Credentials Grant](Web_API_Authentication.html#oauth-20-client-credentials-grant) to invoke Appian web APIs. Service accounts are unable to log into Appian and cannot be automatically deactivated due to inactivity.

Service accounts can be created from the Admin Console when [creating an API Key](Appian_Administration_Console.html#creating-an-api-key) or [OAuth 2.0 client](Appian_Administration_Console.html#creating-an-appian-oauth-20-client). Existing users are added to the Service Account Role when you add them to the **Service Accounts** system group.

## Tempo User Role

The **Tempo User Role** gives a user access to Tempo specifically. Use this role when you need finer access control than the Application User Role allows. Typically this role is used to prevent sites-only users from accessing Tempo while maintaining the other aspects of the Application User Role, such as completing tasks they have access to in sites.

-   Links to the Appian Designer and Admin Console do not display for the user. They also are not accessible when the environment URLs are typed in a browser.
-   Role maps for objects are still honored and determine what a user can view, edit, and manage.

Users are added to the Tempo User Role when you add them to the **Tempo User System Group**.

## Relation to user type and system groups

The user role for a user _overrides_ the [user type](User_Management.html).

For example, if you assign a user to both the Application User Role and the System administrator User Type, the user is restricted from Appian Designer but still has access to the Admin Console. System administrators always have access to the Admin Console.

The user role for a user works _in union_ with other system groups.

-   For example, a user can have the Application User Role, but in order to post a Tempo message to everyone, you still need to add them to the Tempo Global Message Authors Group. If a user is in a system group, but is not assigned a role, he/she can still perform the actions of the system group.

## Default setup

By default, new users are not assigned to any user role and cannot access any areas of Appian. However, also by default, the following rules are defined for user roles:

-   Users automatically join the **Application User Role** when added to the **Basic User - User Type**.
-   Users automatically join the **Designer User Role** when added to the **System Administrator - User Type**.
-   Users automatically join the **Database Administrator Role** when added to the **System Administrator - User Type**.
-   Users automatically join the **Designer User Role** when added to the **Process Model Creators Group**.

These defaults are configured by rules within the Application Users System Group and Designers System Group. In order to change them, you need to [modify the associated system group rule](User_Management.html#add-users-to-groups).

**Tip:**  Since assigning a user to a user type is required when [creating the user account](User_Management.html#create-a-new-user), this is a necessary step if you want new users to not have any access to Appian, by default.

## Adding a user to a role

Since user roles are represented by a system group, adding a user to a user role is the same as adding a user to a system group. Only system administrators can add a user to a user role.

For instructions on doing so, refer to [Add Users to Groups](User_Management.html#add-users-to-groups).

**Tip:**  If the user is currently logged into the system, the new role privileges will not take effect until the user logs out of Appian and then logs back in.

## Removing a user from a role

Removing a user from a role is as easy as removing them from the role's system group.

**Caution:**  If you are removing a user from a role in an effort to change their role (for example, from an Application User to a Designer), add them to the new role first to prevent temporarily removing their access entirely. Users who are not in any roles will not be able to sign-in.

For instructions on doing so, refer to [Managing Groups](Group_Management.html).

When removing users from a role, keep the following in mind:

-   If the user is currently logged into the system, the new role privileges may not take affect until the user logs out of Appian and then logs back in.
-   If you want to prevent a user from accessing Appian all together, do so by [deactivating the user account](User_Management.html#deactivate-users). Do not simply remove them from all user roles.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...