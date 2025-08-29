---
source_url: https://docs.appian.com/suite/help/25.3/folder-object.html
original_path: folder-object.html
version: "25.3"
title: "Folder Object"
page_id: "folder-object"
section: "About folders"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Folder Object

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains the folder object and how can use different folders in your applications.

## About folders

In Appian, certain application objects are created within folders.

Folders allow you to organize objects into logical subfolders for easy navigation in Appian Designer. They also provide basic security for your application objects, since objects inherit the security configured on the parent folder.

There are four different types of folders, all of which store different objects:

![Rule folder icon](images/obj_rule-folder40px.png)[Rule folders](#rule-folders)

![Process model folder icon](images/obj_process-model-folder40px.png)[Process model folders](#process-model-folders)

![Knowledge center icon](images/obj_knowledge-center40px.png)[Knowledge centers](#knowledge-centers)

![Document folder icon](images/obj_document-folder40px.png)[Document folders](#document-folders)

### Rule folders

Rule folders can only contain the following objects:

-   [Interfaces](interface_object.html).
-   [Expression Rules](Expression_Rules.html).
-   [Decisions](Decisions.html).
-   [Constants](Constants.html).
-   [Integrations](Integration_Object.html).
-   Other rule subfolders.

### Process model folders

Process model folders can only contain [process models](process-model-object.html) and process model subfolders.

### Knowledge centers

Knowledge centers are containers for folders and their files. They can only contain [document folders](#document-folders) and documents.

The following knowledge centers are provided out of the box in each environment; however, only the [System Knowledge Center](#system-knowledge-center) and [Temporary Documents Knowledge Centers](#temporary-documents-knowledge-center) are available when browsing in Appian Designer.

#### System Knowledge Center

The **System Knowledge Center** is used to store system documents, including:

-   [Email headers and footers](Email_Headers_and_Footers.html)
-   [System reports](Process_Reports.html#prebuilt-system-reports)
-   Priority icons
-   User pictures

By default, all users have **Viewer** permission to this knowledge center.

#### Temporary Documents Knowledge Center

The **Temporary Documents Knowledge Center** is used to store system and process objects in transition. Files that are uploaded using the [file upload component](File_Upload_Component.html) are temporarily stored in this knowledge center, but they cannot be accessed or viewed from the user interface.

By default, all users have **Editor** permission to this knowledge center.

#### Record Document System Knowledge Center

The **Record Document System Knowledge Center** is used to store document folders that are generated for [record types that manage documents](manage-docs-with-records.html).

This knowledge center is not accessible when browsing objects in Appian Designer.

### Document folders

Document folders can contain subfolders and documents, and must reside in a parent folder or [knowledge center](#knowledge-centers).

When you use [record types to manage documents](manage-docs-with-records.html), a document folder is automatically generated to store the documents for that record type, and is stored in the [Record Document System Knowledge Center](#record-document-system-knowledge-center).

These generated document folders are not accessible from Appian Designer, but can be accessed using the [a!documentFolderForRecordType()](fnc_system_documentFolderForRecordType.html) function when needed in certain components, smart services, or plug-ins.

## Managing folders

In Appian, you can create, update, and delete folders in Appian Designer or in the **Build** view of your application. Additionally, knowledge centers and document folders can be managed through a variety of Document Management [smart services](Smart_Services.html#Smart_Services).

**Tip:**  Appian can generate certain folders automatically during application creation. These generated folders can be managed the same way you'd manage a folder you create manually. Learn more about [generated folders](creating-applications.html#generated-groups-and-folders).

### Creating folders

To create a new folder of any type:

1.  In your application, go to the **Build** view.
2.  Click **NEW > Folder**.
3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Type** |
    Select the type of folder you want to create:

    -   [**Rule Folder**](#rule-folders)
    -   [**Process Model Folder**](#process-model-folders)
    -   [**Document Folder**](#document-folders)
    -   [**Knowledge Center**](#knowledge-centers)

     |
    | **Folder Name** | Enter a name that follows the [recommended naming standard](Standard_Object_Names.html#content-management-objects). |
    | **Folder Description** | (Optional) Enter a description for the folder. |
    | **Parent Folder** | (Required for document folders) Select a parent folder. By default, child folders inherit security from the parent folder. |

4.  Click **CREATE**.
5.  Review the [folder security](#modifying-folder-security).
6.  Click **SAVE**.

**Note:**  It can take up to two minutes for the folder or knowledge center you just created to be visible in any analysis of [precedents and dependents](Trace_Relationships_for_Impact_Analysis.html#limits).

### Browsing folders

In the [**Build**](build-view.html) or [**Objects**](objects-view.html) views, you can search or filter for folders. Another quick way to find a top-level folder is to switch the grid to the hierarchical view ![flat/hierarchy view icons](images/object-view-toggle.png).

### Modifying folders

In the **Build** view of your application, you can search or filter for folders.

To view and modify the contents of a folder, click on the folder name. The folder appears with the following configuration options:

[![images/FoldersAndDocuments_FolderViewWithNumbers_23_2.png](images/FoldersAndDocuments_FolderViewWithNumbers_23_2.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img601)

[![](images/FoldersAndDocuments_FolderViewWithNumbers_23_2.png)](#_)

<table class="appianTable"><tbody><tr><td>Call out letter</td><td>Name</td><td>Description</td></tr><tr><td>A</td><td>Breadcrumbs</td><td>Display the folder hierarchy (including all parent folders of the current folder) and allow developers to navigate between folders and subfolders. Click on any folder name within the breadcrumbs to navigate to it.</td></tr><tr><td>B</td><td>Folder settings</td><td>Provides developers with relevant actions that can be taken on the current folder, including viewing and editing the folder's <b>Properties</b>, <b>Security</b>, or location.</td></tr><tr><td>C</td><td>Toolbar</td><td>Allows developers to take actions on selected objects located within the current folder.<ul><li><b>NEW</b>: Allows developers to create new objects within the current folder. The type of objects you can create depends on the type of folder you're viewing.</li><li><b>MOVE</b>: Allows developers to move selected objects between folders.</li></ul></td></tr></tbody></table>

### Deleting folders

Folders can be deleted by users with **Administrator** permission to them.

However, depending on the [User role](User_Roles.html), there may be certain limitations:

-   If you are a **Basic User**, you can only delete a folder if it is empty.
-   If you are a **System Administrator**, you can delete a folder (or multiple folders), and all folder contents will be automatically deleted as well.

To delete a folder:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the name of the folder.
3.  Click **DELETE**.
4.  In the **Delete?** dialog, ensure there are no objects that depend on the folder.

    **Note:**  If there are objects that depend on the folder, then deleting the folder will cause an error to appear in those objects.

## Modifying folder security

Folder [security](object-security.html) determines which [groups](Group_Management.html) can access and modify a folder, its properties, and any objects within it that inherit security.

Developers can set and edit folder security in either of the following ways:

-   In the [**Objects** view](objects-view.html) or the [**Build** view](build-view.html), select a folder, then click **SECURITY** in the toolbar.
-   In a folder view, click ![settings icon](images/fa-cog.png), then select **Security** in the dropdown list.

To modify security on a folder:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the folder you want to secure.
3.  Click **SECURITY**.
4.  Configure the necessary security. Depending on the folder type, security will differ.
5.  Click **SAVE CHANGES**.

Learn more about the different security settings for each folder type:

-   [Rule folder security](#prodlink-rule-folder-security)
-   [Process model folder security](#prodlink-process-model-folder-security)
-   [Knowledge center security](#prodlink-knowledge-center-security)
-   [Document folder security](#prodlink-document-folder-security)

### Rule folder security

**Tip:**  Rule folders always [inherit](object-security.html#security-inheritance) security from their parent rule folder if they have one. Security can be set on a rule folder, as well as set on each object located within that rule folder. By default, a rule folder's security is inherited by all objects located within it.

The [security](object-security.html) role map of a rule folder controls which users can see or modify it, its properties, and its contents that inherit security.

If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups pre-populate the role map when you create a rule folder. If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any rule folder you create if you are not a system administrator. System administrators can always access a rule folder, regardless of object-level permissions.

See [Editing Object Security](object-security.html#editing-object-security) to modify a rule folder's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a rule folder's security role map. This table assumes that objects within the rule folder inherit security (default). If an object does not inherit the folder's security, then the object's [individual security role map](object-security.html#security-inheritance-by-object-type) applies.

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| View the rule folder | Yes | Yes | Yes | No |
| Create objects in the rule folder | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Update the security | Yes | No | No | No |
| Delete the rule folder | Yes | No | No | No |

### Process model folder security

**Tip:**  Process model folder security is _not_ [inherited](object-security.html#security-inheritance) by the process models or process model subfolders located within them. Security must be set on each process model and process model subfolder individually.

The [security](object-security.html) role map of a process model folder controls which users can see or modify it and its properties.

If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups pre-populate the role map when you create a process model folder. If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any process model folder you create if you are not a system administrator. System administrators can always access a process model folder, regardless of object-level permissions.

See [Editing Object Security](object-security.html#editing-object-security) to modify a process model folder's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a process model folder's security role map. This table only applies to the security of process model _folders_. Process models within the folder have [individual security role maps](process-model-object.html#prodlink-security).

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| View the process model folder | Yes | Yes | Yes | No |
| Create objects in the process model folder | Yes | Yes | No | No |
| View the security | Yes | No | No | No |
| Update the security | Yes | No | No | No |
| Delete the process model folder | Yes | No | No | No |

### Knowledge center security

The [security](object-security.html) role map of a knowledge center controls which users can see or modify it, its properties, and its contents.

If a knowledge center has a parent community (a deprecated folder object), it [inherits](object-security.html#security-inheritance) the community's security. If the security of the community and the knowledge center conflict, the community's security takes precedence.

For all other knowledge centers, you can configure the security for the knowledge center during creation and any time after that. If [default security groups](creating-applications.html#default-security-groups) are configured for your application, the default security groups pre-populate the role map when you create a knowledge center. If default security groups are _not_ configured for your application, you are automatically assigned **Administrator** permissions for any knowledge center you create if you are not a system administrator. System administrators can always access a knowledge center, regardless of object-level permissions.

See [Editing Object Security](object-security.html#editing-object-security) to modify a knowledge center's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a knowledge center's security role map. This table assumes that objects within the knowledge center inherit security (default). If an object does not inherit the knowledge center's security, then the object's [individual security role map](object-security.html#security-inheritance-by-object-type) applies.

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| View the knowledge center | Yes | Yes | Yes | No |
| Create new documents or move documents into a [subfolder](#document-folders) under the knowledge center (must have at least **Editor** permissions to the subfolder) | Yes | Yes | Yes | No |
| Create new subfolders in the knowledge center | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Update the security | Yes | No | No | No |
| Move and delete subfolders | Yes | No | No | No |
| Move and delete the knowledge center | Yes | No | No | No |

Knowledge center security can also be updated using the [Modify KC Security Smart Service](Modify_KC_Security_Smart_Service.html). Note that the security permission levels **Author** and **Reader** in the smart service correspond to **Editor** and **Viewer** respectively.

### Document folder security

The [security](object-security.html) role map of a document folder controls which users can see or modify it, its properties, and its contents.

By default, document folders [inherit](object-security.html#security-inheritance) security from their parent knowledge center. However, after creating the document folder, you can disable that inheritance and modify the folder's security. See [Editing Object Security](object-security.html#editing-object-security) to modify a document folder's security.

The following table outlines the actions that can be completed for each [permission level](object-security.html#permission-levels-in-role-maps) in a document folder's security role map.

| Actions | Administrator | Editor | Viewer | Deny |
| --- | --- | --- | --- | --- |
| View the document folder | Yes | Yes | Yes | No |
| View and download documents that reside in the document folder | Yes | Yes | Yes | No |
| Update documents that reside in the document folder | Yes | Yes | No | No |
| Create new subfolders and documents in the document folder \* | Yes | Yes | No | No |
| View the security | Yes | Yes | No | No |
| Update the security | Yes | No | No | No |
| Move subfolders or documents into the document folder \* | Yes | No | No | No |
| View [download metrics](folder-and-document-management.html#viewing-document-properties) for documents that reside in the document folder | Yes | No | No | No |
| Move documents **out** of the document folder | Yes | No | No | No |
| Move and delete the document folder | Yes | No | No | No |

**Note:**  To create new folders and documents within a document folder, you must have at least **Viewer** permissions to all of the folders and [knowledge centers](folder-object.html#knowledge-centers) that the document folder resides in. This also applies when moving folders and documents into a document folder.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...