---
source_url: https://docs.appian.com/suite/help/25.3/creating-applications.html
original_path: creating-applications.html
version: "25.3"
title: "Creating Applications"
page_id: "creating-applications"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Creating Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page explains what an Appian application is and how to create one.

## What's an application?

An application is a collection of objects that make up a business solution. Appian recommends creating a dedicated application for every business solution. For example, _Customer Relationship Management_ (CRM), _Employee Onboarding_, and _Sales Opportunities_ would be three different applications.

For more information about working with applications, see [the applications view page](applications-view.html).

**Tip:**  You can [deploy](Deploy_to_Target_Environments.html) an entire application to your environments. However, to increase the ease and flexibility of deployments, we recommend that you start a [package](prepare-deployment-packages.html) for the application during development.

## Create your application and set security

**Tip:**  For a more in-depth walkthrough about creating applications, see the [Application Building Tutorial](Application_Building_Tutorial.html).

To create an application from scratch:

1.  Go to the [**Applications** view](applications-view.html).
2.  In the **Let's get started** pane, click **\+ New Application**.

    ![screenshot of the New Application button](images/new-application-button.png)

3.  Configure the following properties:

    ![screenshot of the Create New Application dialog](images/create-new-app-dialog.png)

    | Property | Description |
    | --- | --- |
    | **Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#application). The maximum length of the name is 255 characters. |
    | **Prefix** | (Optional) Following the [recommended naming standard](Standard_Object_Names.html#application), specify the short, unique prefix to use in all object names related to the application. For example: CRM for a customer relationship management application. The prefix must start with a letter and can only use letters, numbers, and underscores. The maximum length of the prefix is 10 characters.

    Appian constructs a default prefix using the initial characters of the first 10 words you entered in the **Name** property. You can retain, modify, or delete this default prefix.

    If you configure the **Prefix** property, Appian pre-populates this prefix in the **Name** fields for any new objects you create.

    If your prefix duplicates an existing prefix, Appian displays a warning message. This message does not block the duplicate prefix, however, because there may be business cases where applications appropriately use the same prefix.

    You can update the **Prefix** in the [application properties](application-settings.html#application-properties). If you change the **Prefix** value after creating objects in an application, you cannot bulk update the names of existing objects with the new prefix. You must manually edit the name of each existing object. |
    | **Generate groups and folders to secure and organize objects** | (Optional) If this checkbox is selected, Appian will automatically [generate standard groups and folders for this application](#generated-groups-and-folders). |

4.  Configure security for the application:

    **Note:**  If Appian generated groups for the application, the **Default (All Other Users)** permissions are set to **No Access**, and the default security groups are pre-populated with **Viewer** and **Administrator** permissions. If those permissions are appropriate and complete for your application, you can skip the rest of this step.

    -   Select a **Permission Level** for the **Default (All Other Users)** group. By default, this value is set to **No Access**.
    -   For each existing group you want to add:
        -   Click **Add Users or Groups**.
        -   Browse to and select an existing group.
        -   Select a **Permission Level** for that group.
    -   For each new group you want to add:
        -   Click **Create New Group** next to the empty **User or Group** box.
        -   [Configure properties](Creating_Groups.html) for the new group, then click **Create**.

    **Note:**  Setting [application security](application-settings.html#prodlink-security) is important as it determines who has permission to view and edit the application's contents. Appian recommends adding at least one **Administrator** group and one **Viewer** group to your application's security role map. See the [Object Security](object-security.html) page to learn more about object security in Appian, security best practices, and how to configure, edit, and review security at any time.

5.  Click **SAVE**.

Once you've set security on your application, Appian will display the [**Explore** view](explore-view.html) of the application.

Your new application will not contain any objects other than the groups and folders that Appian generated during application creation.

To start building your business solution, [add objects to the application](build-view.html#add-objects-to-the-application). As an optimal starting point, we recommend [creating a record type](Create_a_Record_Type.html), then auto-generating your [record actions](record-actions.html#generate-record-actions) and [record views](record-view.html).

### Generated groups and folders

To facilitate your building process, Appian can automatically generate certain groups and folders if you select the **Generate groups and folders to secure and organize objects** option during application creation.

These generated groups and folders are described in this section.

**Note:**  Appian follows the [recommended naming standard](Standard_Object_Names.html#application) for generated groups and folders, and starts the object names with the **Prefix** property set for the application. In the object names below, this naming convention is represented by the _prefix_ element.

[Groups](Group_Management.html) are important building blocks of an application, because they allow you to organize users and assign permissions to the groups of users as you add objects.

Appian generates two groups for your application:

-   **_prefix_ Users** for all users of the application.
-   **_prefix_ Administrators** for the application's administrators.

Appian configures the following properties for these generated groups:

| Group | _prefix_ Users | _prefix_ Administrators |
| --- | --- | --- |
| **Parent** | None | None |
| **Members** | _prefix_ Administrators group and your user | your user |
| **Group Type** | Custom | Custom |
| **Visibility** | Restricted | Restricted |
| **Membership** | Closed | Closed |
| **Privacy Policy** | Low | Low |

**Note:**  Although created automatically, these generated groups are _not_ part of the [system groups](System_Groups.html) that Appian provides for your environment. Instead, they are [**Custom** type](Group_Types.html) groups that you can manage in the same way you'd [manage groups you create manually](Group_Management.html).

Appian also:

-   Sets the generated groups as the [default security groups](#default-security-groups) for the application.
-   Pre-populates the generated groups in the security role map for the application.

[Folders](folder-object.html) provide the infrastructure for your application, allowing you to organize objects and control developer access to those objects in bulk.

Appian generates the following folders:

-   **_prefix_ Process Models** (process model folder)
-   **_prefix_ Rules & Constants** (rule folder)
-   **_prefix_ Knowledge Center** (parent to Artifacts and Application Documentation folders)
-   **_prefix_ Artifacts** (document folder)
-   **_prefix_ Application Documentation** (document folder)

Appian sets the security for these folders as follows:

-   **Default (All Other Users)** permissions set to **No Access**.
-   **_prefix_ Administrators** group permissions set to **Administrator**.
-   **_prefix_ Users** group permissions set to **Viewer**.

## Configure default security groups

In many applications, [object role maps](object-security.html) repeatedly use the same two groups: one to give **Viewer** permissions to the application's general users and one to give **Administrator** permissions to the application's administrators.

If you configure _default security groups_ for your application, Appian uses these default groups to pre-populate the object role maps as you create new objects in the application.

If Appian [generated groups and folders](#generated-groups-and-folders) when you created a new application, Appian automatically configures the generated groups generates as the default security groups.

To manually configure default security groups for your application:

1.  In the [header bar](common-view-elements.html#header-bar) of any view in your application, open the settings menu .
2.  Select **Application Properties**.
3.  In the **Application Properties** dialog, configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Users Group** | Specify the group that you want to pre-populate with **Viewer** permissions when creating new objects in this application. |
    | **Administrators Group** | Specify the group that you want to pre-populate with **Administrator** permissions when creating new objects in this application. |

    **Tip:**  To specify a group, start entering the name of a group in the property box, then select the group you want from the dropdown list.

4.  Click **SAVE CHANGES**.

**Note:**  If you change the default security groups after creating objects in an application, you cannot bulk update existing role maps with the new groups. You must manually configure the role map for each existing object.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...