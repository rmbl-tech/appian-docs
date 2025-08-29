---
source_url: https://docs.appian.com/suite/help/25.3/object-security.html
original_path: object-security.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Object Security

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Object security is an integral part of application development, and critical for ensuring that the right users and developers have the appropriate permissions within an application.

This page covers the fundamental concepts and behaviors related to object security in Appian, and provides best practices and guidance on how to ensure your applications are secure.

## Concepts

Groups, role maps, security inheritance, layered security, and object visibility are important concepts to learn in order to fully understand object security.

### Groups and role maps

Object security is made up of two tightly coupled concepts: [groups](Group_Management.html) and role maps.

Role maps are mappings between a series of groups or users and their permissions to an object. Each object in Appian has just one role map. To set an object's security, simply edit its role map.

**Tip:**  Appian recommends using only groups to set object security. This allows you to control object access by changing a user's group membership, rather than directly editing the object's role map.

The following image shows an example process model role map. Notice that _AT Administrators_ have **Administrator** permissions to this process model while _AT All Users_ only have **Viewer** rights.

![/security dialog general role map](images/security_dialog_general_role_map.png)

#### Permission levels in role maps

Each object accepts a different set of permission levels in its role map.

For example, rule folders allow groups listed in their role maps to have either **Viewer**, **Editor**, **Administrator**, or **Deny** permissions, while process models accept those permission levels and two additional ones—**Initiator** and **Manager**.

[![images/security_dialog_side_by_side_permission_types.png](images/security_dialog_side_by_side_permission_types.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img272)

[![](images/security_dialog_side_by_side_permission_types.png)](#_)

When configuring an object's security and selecting permission levels, you will note two things.

First, that Appian restricts the permission levels you can choose from in the role map based on the object's type to help ensure that the permission levels you select are applicable for that object type.

Second, in most cases when setting object security, you will find the need to use only two permission levels: **Administrator** and **Viewer**.

These can be defined as:

-   **Administrators**: Groups who have administrative permissions to an object in a specific environment. These permissions include the ability to fully edit or delete the object as desired.
-   **Viewers**: Groups who can interact with a particular object as an end user in Tempo, sites, or embedded. For example, granting a group **Viewer** rights to an interface gives them permission to view and interact with that interface from Tempo.

To learn more about object-specific security settings and permission levels, see the security section in each [design object's](design-objects.html) page.

**Note:**  Users that are members of multiple groups within a role map will always be granted their highest permission.

For example, if John Smith is a member of both _Group A_ and _Group B_, and _Group A_ has **Administrator** privileges to an object while _Group B_ only has **Viewer** rights, Appian will treat John Smith as an **Administrator**.

#### Deny permission level

Many objects offer **Deny** as a permission level. Giving a group the **Deny** permission level is equivalent to not listing that group within the role map, or not granting them any permissions.

So when does it make sense to use **Deny**? It's most useful in situations where a group (_Group A_) should not have permissions to an object but might be nested within another group that should have permissions to it (_Group B_). In these situations, marking a group (_Group A_) with the **Deny** permission will overrule all of its other permissions.

### Security inheritance

When an object inherits its security from a parent object, it means that it shares the same role map as its parent. When this is the case, any changes that are saved to the parent object's security role map are immediately reflected in the child's inherited role map.

During application development, inheritance can be observed with top-level objects such as [knowledge centers](folder-object.html#knowledge-centers) and [rule folders](folder-object.html#rule-folders). Knowledge centers and rule folders are considered top-level objects because their security is inherited by all objects nested within them by default.

For example, security set on knowledge centers is inherited by all nested document folders and documents by default. Likewise, security set on rule folders is inherited by all nested rule folders and rule objects including interfaces, constants, expression rules, decisions, and integrations by default.

The following two images illustrate this second example.

This first image shows the security role map for _AT Rules & Constants_. Note that _AT Rules & Constants_ is a top-level object because it does not have a parent object.

![/security dialog parent rule folder security](images/security_dialog_parent_rule_folder_security.png)

This second image shows the security role map for _AT\_raffleGrid_. Note that it inherits its security from its parent _AT Rules & Constants_, and thus has the same security role map as its parent.

![/security dialog child interface inheriting security](images/security_dialog_child_interface_inheriting_security.png)

Inheritance in object security dialogs is always displayed as an option underneath the **Parent** field. Objects that _must_ inherit their security from a parent object will display the option as disabled, while objects that _cannot_ inherit security will not display this option.

See the [following section](object-security.html#security-inheritance-by-object-type) for a detailed list of which object types always, optionally, or never inherit security from parent objects.

**Tip:**  Appian recommends that you set security on your top-level knowledge centers and rule folders within applications and allow the objects nested below these folders to inherit security. Doing so ensures that security is consistent and easy to manage across large applications.

### Security inheritance by object type

The following table outlines the behavior of security inheritance by object type.

| Always Inherit Security From Parent | Always Inherit Security If Parent Specified | Inherit Security From Parent By Default (Editable) | Never Inherit Security | Don't Have Security |
| --- | --- | --- | --- | --- |
|
-   [Documents\*](folder-and-document-management.html#prodlink-document-security)
-   [Process Reports](Process_Reports.html#prodlink-security)

 |

-   [Groups\*](Group_Management.html#prodlink-security)
-   [Knowledge Centers\*](folder-object.html#prodlink-knowledge-center-security)

 |

-   [Document Folders](folder-object.html#prodlink-document-folder-security)
-   [Rule Folders](folder-object.html#prodlink-rule-folder-security)
-   [Constants](Constants.html#prodlink-security)
-   [Decisions](Decisions.html#prodlink-security)
-   [Expression Rules](Expression_Rules.html#prodlink-security)
-   [Integrations](Integration_Object.html#prodlink-security)
-   [Interfaces](interface_object.html#prodlink-security)

 |

-   [Applications](application-settings.html#prodlink-security)
-   [Process model folders](folder-object.html#prodlink-process-model-folder-security)
-   [Process models](process-model-object.html#prodlink-security)
-   [Data stores](Data_Stores.html#prodlink-security)
-   [Record types](record-security.html#prodlink-security)
-   [Robotic tasks](rpa-9.17/robotic-task-definition.html#security)
-   [Reports](Tempo_Report_Design.html#prodlink-security)
-   [Sites](sites_object.html#prodlink-security)
-   [Feeds](Feeds.html#prodlink-security)
-   [Web APIs](Web_APIs.html#prodlink-security)
-   [Connected systems](Connected_System_Object.html#prodlink-security)
-   [AI Skill](ai-skill-object.html#security)
-   [Robot pool](rpa-9.17/robot-pool-object.html#security)
-   [Translation sets](translation-set-object.html#prodlink-security)

 |

-   [Custom Data Types\*](Custom_Data_Types.html#security)
-   [Group Types\*](Group_Types.html#security)

 |

**\*Documents**: Always inherit security from their parent document folders. If a group has access to a document folder, it has access to all of the documents nested within that folder. For this reason, document security is controlled at the document folder level.

**\*Knowledge Centers**: Always inherit security from parent communities if a parent community is specified. Since community objects are deprecated, Appian recommends making knowledge centers top-level objects.

**\*Groups**: Always inherit security from a parent group if a parent group is specified.

**\*Custom Data Types**: Do not have their own security role maps. Since custom data types are always seen in the context of another object, the security of that other object applies. For example, if an interface calls a custom data type, the interface's security will be applied.

**\*Group Types**: Do not have their own security role maps. Group security is used instead.

### Layered object security

In Appian, security is layered. This means a user must have permissions to _every_ object associated with an application's feature in order to see or interact with that feature.

For example, for a user to be able to access and start a [related action](record-actions.html) from a site, they must have (at least):

-   **Initiator** permissions on the underlying process model.
-   **Viewer** permissions for the record type.
-   **Viewer** permissions for the site.

The benefit of applying layered object security is that it is possible to implement strict security models, and control security to objects and features at a granular level. Appian recommends regularly testing your applications, and reviewing their [Security Summary](object-security.html#security-summary) to ensure that the appropriate users have the appropriate permissions to all of your applications and their features.

### Visibility

While Appian’s object security allows you to determine who can view and access an object, you may have more granular security requirements about who can access specific elements of an object and when.

For example, a site might have three groups with **Viewer** permission to the object. This means that all three groups can currently see the site and all site pages. However, you may only want one of these groups to see all site pages, while the other two groups should only see the first site page.

Using _visibility expressions_, you can further secure your objects by determining who can see a specific element of an object, and when that element is visible.

In this example, a developer can use visibility expressions on the site's pages to determine which of these groups should and should not be able to see specific pages available on the site.

[![images/security_site_visibility.png](images/security_site_visibility.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img273)

[![](images/security_site_visibility.png)](#_)

**Note:**  When configuring a record type, you can use low-code security configurations instead of visibility expressions to secure your enterprise data at a more granular level. Learn more about [record type security](appian-records-security.html).

## Recommended object security

Appian recommends assigning each object at least one **Administrator** group in its security role map. While administrator permissions are unique per object type, generally administrators are the only ones that can delete an object or modify its security.

We also recommend assigning each object at least one **Viewer** or **Editor** group, with the exception of feed and group objects because feeds share the same viewers as the application in which they reside ([learn more](Feeds.html#prodlink-security)) and groups only accept the **Administrator** [permission level](object-security.html#permission-levels-in-role-maps).

## Editing object security

It is important that developers set security on each object within an application, including the application object itself. Doing so ensures that developers and application users have the appropriate permissions to the different objects and features of an application.

Appian ensures that each object within an application has appropriately configured security by:

-   Making it easy for developers to edit an existing object's security at any time.
-   Reminding developers to set object security when creating new objects that don't already inherit security from a parent.
-   Allowing developers to set [default security groups](creating-applications.html#default-security-groups) that pre-populate role maps for newly-created objects in an individual application.
-   Providing developers with a [Security Summary](object-security.html#security-summary) view of each application.
-   Checking that security has been configured for all objects packaged for deployment.

The following sections delve into these available processes in greater detail.

**Tip:**  For objects with [versions](Managing_Object_Versions.html), editing security doesn't create a new version of the object. However, the change is [logged as an update](Logging.html#design-objects).

### Object security dialogs

You can access and edit an existing object's security at any time, using the following methods:

-   In your application, go to the settings menu in the header bar and select **Application Security**.
-   For any object in the **Build** view, select the object, then select **SECURITY** in the toolbar. Note that data types do not have security.

[![images/security_button_from_app_contents_23_2.png](images/security_button_from_app_contents_23_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img274)

[![](images/security_button_from_app_contents_23_2.png)](#_)

-   You can edit security in the **Build** view and individual objects:

    | Object Type | Action |
    | --- | --- |
    | Record Type, Interface, Site, Expression Rule, Decision, Integration, or Web API | In the **Build** view, open the settings menu in the header toolbar, then select **Security**. |
    | Process Model | In the Appian Process Modeler, select **File > Security**. |
    | Folder or Group | In the folder or group view, click next to the object name, then select **Security**. |

The object security dialog displays:

![/security dialog annotated parts](images/security_dialog_annotated_parts.png)

1.  **Tip**: Provides developers important, general knowledge about this object type's security configurations and a link to learn more
2.  **Name**: Displays the name of, and a direct link to, the object whose security you are viewing
3.  **Parent**: Displays the name of, and a direct link to, the parent of the object whose security you are viewing. This field and its checkmark are only visible if the selected object has a parent.
    -   **Inherit checkmark**: Shows whether an object inherits security from its parent. Usually this checkmark is editable, although there are instances where it is not. [Learn more](object-security.html#security-inheritance-by-object-type) about which objects must inherit security from their parents vs. those that may optionally do so.
4.  **Warnings**: Lists warnings that Appian has detected in relation to the selected object's current role map. These warnings update in real time as a user modifies the role map. See our [documentation](object-security.html#warnings) for a list of all warnings that can be detected.
5.  **Role map grid**: Shows the current mapping between specified groups and their permission levels for the selected object.

### Setting security during object creation

**Note:**  If you configure [default security groups](creating-applications.html#default-security-groups) for your application, Appian uses the default groups to pre-populate the role maps of new objects you create in the application.

Appian will remind you to set object security when creating new objects that do _not_ inherit security from a parent by default. For example, after clicking the **CREATE** button for a new process model, Appian will ask you to review and set your process model's security.

[![images/security_dialog_creation_flow.png](images/security_dialog_creation_flow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img275)

[![](images/security_dialog_creation_flow.png)](#_)

The following table provides a detailed breakdown of which objects inherit security by default, and which objects will prompt you to set security during creation.

| Inherit Security By Default | May Inherit Security | Never Inherit Security |
| --- | --- | --- |
| _Will not prompt you to set security during object creation_ | _Will prompt you to set security during object creation if a parent is not specified_ | _Will always prompt you to set security during object creation_ |
|
-   Document Folders
-   Documents
-   Process Reports
-   Constants
-   Expression Rules
-   Interfaces
-   Decisions
-   Integrations

 |

-   Knowledge Centers
-   Rule Folders

 |

-   Applications
-   Process Model Folders
-   Process Models
-   Data Stores
-   Record Types
-   Reports
-   Sites
-   Groups
-   Feeds
-   Web APIs
-   Connected Systems

 |

### Security Summary

The Security Summary allows you to view the security of all objects within an application in a single place. You can view an application's Security Summary by selecting **Security Summary** in the Application settings menu .

[![images/security_summary_gear_menu_23_2.png](images/security_summary_gear_menu_23_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img276)

[![](images/security_summary_gear_menu_23_2.png)](#_)

The Security Summary is helpful when:

-   Viewing the security of more than one object in an application at a time, or viewing the security of specific object types in an application (for example: all process models, or all sites)
-   Finding all objects with missing security (for example: objects with security warnings)
-   Editing security or addressing security warnings in bulk
-   Reviewing the security of all objects within an application or package before deploying it

[![images/security_summary_annotated.png](images/security_summary_annotated.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img277)

[![](images/security_summary_annotated.png)](#_)

**A - Groupings**

The Security Summary displays a list of object groupings (**A**). Each section has two parts; on the left-hand side there is a role map (**B**), and on the right-hand side you will find a list of all of the objects with that specific role map (**C**). Detected [warnings](object-security.html#warnings) appear at the top of each grouping.

By default, groupings are sorted in descending order, from groupings with the most objects to groupings with the least. You can reverse this sort order at any time by clicking **Switch Sort Order** in the top right-hand corner of the dialog (**F**).

**B - Role Maps**

The Security Summary groups objects together if _all_ of the following are true:

-   They are configured with the same groups and users at the same permission levels
-   They are inheriting the same groups and users at the same permission levels
-   Their default access levels are the same

Note that objects with role maps where at least one row is inherited from a parent are grouped separately from objects with role maps where no rows are inherited. This is the case even when both role maps have the exact same groups and permission levels specified. For example, an expression rule and interface that inherit security from the same parent rule folder can be grouped separately from their parent. This distinction makes it easy to determine which objects are top-level objects in an application, and which objects are inheriting security.

**Note:**  Although the Security Summary arranges objects with the same groups and permissions together, remember that these permissions may have different meanings for each object. For example, to run a web API a user must have **Viewer** access or be a member of a group with viewer rights, but anyone can evaluate any expression rule if it's invoked by an interface or process model they are using.

**C - Objects**

To the right of a role map, the Security Summary provides an overview of the grouped objects. To see more details about these objects, such as when it was last modified or whether it has object-specific warnings, click **Show Details** (**C**). Objects which inherit security from a parent will have their parent object linked in the details grid (**G**).

**D - Editing**

You can edit a role map at any time by clicking the **Edit** button (**D**). Any security configurations you edit and save here will be applied to all objects listed to the right of the role map, with the exception of those objects where specific security configurations are not applicable. For example, imagine in the image above that a user added a row to the top-most role map that granted the _AT Employees_ group **Initiator** permissions. Only the listed process model _Submit Expense Report_ would have this row added to its security role map, as only process model objects recognize the **Initiator** permission level.

Filters at the top of the page (**E**), specifically the object type filter, can help you narrow object groupings so that you can edit a smaller subset of objects at a time. If you need to edit a single object's security but don't want to leave the Security Summary, you can make the change in a separate tab and click the refresh button (**H**) in the Security Summary header to see your latest changes.

**E - Filters**

To help you narrow down the summary view, you can use the filters at the top of the dialog. These filters can be used in any combination to:

-   Filter by object type(s)
-   Filter by package
-   View only objects with warnings

## Warnings

The following table lists the different security warnings that may be shown in object security dialogs or in the Security Summary.

| **Warning** | **Applicable Object Types** | **Additional Information** |
| --- | --- | --- |
| **Individual user detected.** Appian recommends only using groups to configure security. | All objects | Only using groups makes it easier to manage security because you can easily add or remove a user to a group, which automatically updates all of the role maps that reference that group. Additionally, not all users exist on all environments. Using groups ensures that users have the appropriate permissions to objects as objects are pushed to higher environments. |
| **Missing administrator group.** No basic users will be able to administer this object, which includes editing its security or deleting it. | All objects | It is a best practice to assign at least one **Administrator** group to each object to ensure that developers other than the object's creator will be able to administer the object. |
| **Missing viewer or editor group.** No one will be able to see or make changes to this object except system administrators and those listed as administrators in the rolemap. This extends to both Appian Designer and Tempo or sites, where it applies. | All objects _excluding_ feeds, groups, and unpublished applications | It is a best practice to assign at least one **Viewer** or **Editor** group to each object to ensure that developers and users will be able to access and view the object. |
| **Duplicate entries detected.** A group or user should only be listed in the role map once. | All objects | To avoid confusion and make certain that Appian grants a group or user the appropriate permission level, you should only list a group or user in the role map once. If Appian detects the same group or user in the role map more than once, it will always assign that group or user their highest permission level. |
| **Default set to administrator.** Selecting administrator as the default allows all users to administer this object, including anyone listed in the role map with a permission level other than Deny. Appian recommends giving administrator access to specific groups instead. | Objects where **Default (All Other Users)** can be set to **Administrator** | This warning will display when the **Default (All Other Users)** row of the object's security role map is set to **Administrator**, AND there are other users and groups listed in the role map with **Viewer** or **Editor** permissions. This is because the **Default (All Other Users)** **Administrator** permission will be granted to all groups and users in the role map other than those with explicit **Deny** permissions. Appian recommends that you do not give **Default (All Other Users)** **Administrator** permissions. Instead, assign specific groups administrator rights. |
| **Parent has security warnings.** View and update the parent's security to resolve inherited warnings. | [All objects that can inherit security](object-security.html#security-inheritance-by-object-type) | This warning indicates that one of the object's parent objects has specific warnings that need to be addressed. Appian recommends addressing the specific warnings on the appropriate parent so that all other objects nested below that parent will also receive the same update. You may have to trace through several layers of inherited security to find the root parent on which the specific warnings first appear. |
| **Logged in user not administrator.** You currently do not have administrator permissions for this object. Make sure to add yourself to an administrator group in this role map before continuing. | [All objects that do not inherit security](object-security.html#security-inheritance-by-object-type) | This warning is only displayed when you are logged in as a basic user and are creating an object that does not inherit security from a parent. This warning indicates that you have removed yourself as an **Administrator** of the object and will not be able to delete the object or update its security after creation. |
| **Knowledge center default set to viewer.** Selecting viewer as the default allows all users to view this knowledge center, excluding anyone listed in the role map with a different permission level. This also applies to the documents and folders that inherit from it. Appian recommends giving viewer access to specific groups instead. | Knowledge centers | It is a best practice to grant specific groups **Viewer** rights to knowledge centers rather than setting **Default (All Other Users)** to viewers. Doing so ensures that document folders and documents nested within knowledge centers have explicit viewers set. |
| **Missing a group with at least initiator permissions.** No basic users will be able to start this process model as an action or related action. | Process models | Appian will display this warning on a process model if it detects that the process model is being used as either an application action, record related action, record list action, or site action and has no **Initiator**, **Viewer**, **Editor**, or **Manager** group specified. This indicates that no basic user will be able to start this process model. |
| **Missing a group with at least initiator permissions.** Appian has detected that this process model may be used as an action or related action. If that is the case, no basic users will be able to start this process model without having at least initiator permissions. | Process models | Appian will display this warning on a process model if it detects that the process model is referenced by a constant or decision. In this case Appian cannot guarantee that an **Initiator**, **Viewer**, **Editor**, or **Manager** group is required because it does not know how you intend to use the process model. If you are planning to allow users to start this process model, add groups with one of the previously described permission levels. |
| **Default set to viewer.** Setting Default (All Other Users) to Viewer allows all users and service accounts to view this record type. Service accounts allow web APIs and portals to access the record type. Instead, we recommend giving viewer access to specific groups. | Record Types | This warning will display when the **Default (All Other Users)** row of the record type's security role map is set to **Viewer**. This is because the **Default (All Other Users) Viewer** permission will be granted to all groups and users in the role map. This includes service accounts which can be used to give portals access to data. Appian recommends that you do not give **Default (All Other Users) Viewer** permissions to record types. Instead, assign specific groups viewer rights. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...