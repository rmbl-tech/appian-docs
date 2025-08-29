---
source_url: https://docs.appian.com/suite/help/25.3/folder-and-document-management.html
original_path: folder-and-document-management.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Documents with Folders

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

As you design your application, you may want to upload documents to support building out your interfaces and process models. For example, you might want an image of the company logo in a site page or a PDF template to generate invoices in a process.

You can use folders to manage and deploy documents used to build your applications.

This page explains how to manage and secure documents using folders.

**Tip:**  If your documents are created and maintained as part of application workflows, or they’re related to other application data, use [record types to manage documents](manage-docs-with-records.html) instead.

## Why use folders

When you use folders to manage documents, you can:

-   [Deploy](Deploy_to_Target_Environments.html) documents between environments.
-   Organize documents into logical subfolders for easy navigation in Appian Designer.
-   [Secure documents](#prodlink-document-security) by inheriting the folder security.

## Required objects

To manage documents with folders, you must [create the following folders](folder-object.html#creating-folders):

-   [Knowledge center](folder-object.html#knowledge-centers) to store document folders. The knowledge center is the parent folder where you'll create all document subfolders.
-   [Document folder](folder-object.html#document-folders) to store and organize documents. The document folder is a subfolder of the knowledge center.

**Tip:**  Appian can [generate these folders](creating-applications.html#generated-groups-and-folders) automatically during application creation.

[![Diagram of documents managed by record types](images/objects-for-doc-management-folders.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img600)

[![](images/objects-for-doc-management-folders.png)](#_)

## Document security

When you create documents in Appian Designer, they will [inherit](object-security.html#security-inheritance) security from their document folder.

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

## Managing documents

In Appian Designer, you can create, update, and delete documents in the following locations:

-   [The **Build** view](build-view.html).
-   [In a document folder](folder-object.html#document-folders).
-   [In the Application Documentation dialog](application-settings.html#add-a-document-to-application-documentation).
-   When creating other objects. For example, uploading a system logo for a [connected system](Connected_System_Object.html).

This section explains how to manage documents from the **Build** view.

### Creating documents

**Note:**  Before you create documents, you must [create the required document folder and knowledge center](#required-objects).

To create a new document in the **Build** view:

1.  Click **NEW > Document**.
2.  In the **Create Document** dialog, upload a zip file or up to 25 files.
    -   Files cannot be larger than your disk quota.
    -   Files cannot be larger than 1GB in size.
3.  Click **NEXT**.
4.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | For each file you uploaded, enter a name that follows the [recommended naming standard](Standard_Object_Names.html). |
    | **Description** | (Optional) For each file you uploaded, enter a brief description of the file. |
    | **Create constants for these documents** | Keep this checkbox selected to automatically create a constant for each file. Constants allows you to reference documents in your application, like [displaying documents in an interface](Document_Viewer_Component.html) or referencing them in a [smart service](Lock_Document_Smart_Service.html).

    Constants will be added to your current application and its corresponding rule folder. If your application does not contain a [rule folder](folder-object.html#rule-folders), Appian will automatically create a rule folder and add the constants to it. |
    | **Save In** | Browse to and select an existing folder, or click to create a new folder to store the documents. |

5.  Click **CREATE DOCUMENT**.

It can take up to two minutes for the document you just created to be visible in any analysis of [precedents and dependents](Trace_Relationships_for_Impact_Analysis.html#limits).

### Viewing document properties

To view a document's properties you must have at least **Viewer** permissions to the document and its parent folder.

To edit a document's properties you must have at least **Editor** permissions to the document and its parent folder.

To view or edit a document's properties:

1.  In your application, go to the **Build** view.
2.  Select the checkbox next to the document you want to view.
3.  Click **MORE** and select **PROPERTIES**.
4.  In the **Document Properties** dialog, view or update any document properties.

    ![/FoldersAndDocuments ViewDocumentProperties](images/FoldersAndDocuments_ViewDocumentProperties.png)

    **Note:**  The **View users who have downloaded this file** link displays a list of the users who have downloaded the document. You must have **Administrator** permissions to the document in order to access this link.

5.  Click **SAVE**.

### Adding new document versions

Once a document has been created, new versions of it can be uploaded at any time. See [Managing Object Versions](Managing_Object_Versions.html) to learn more about viewing and comparing document versions.

To upload a new version of a document in the **Build** view:

1.  Select the checkbox next to the document you want to version.
2.  Click **MORE** and select **NEW VERSION**.
3.  For **New File**, click **UPLOAD** to select the new version of the file from your local machine. The new file must have the same extension as the original file.
4.  For **Name**, keep the existing name from the file, or modify it as needed.
5.  Click **UPLOAD**.

**Note:**  If the document is [locked](Lock_Document_Smart_Service.html), a warning banner on the **Upload New Version** dialog will appear. Proceeding with the upload will break the other user's lock on the document.

### Deleting documents

A user must have **Administrator** permissions to the document and its folder in order to delete it. Deleting a document removes the specific file and all of its previous versions.

To delete a document in the **Build** view:

1.  Select the checkbox next to the document you want to delete.
2.  Click **DELETE**.
3.  Confirm that the document has no dependents.
4.  Click **DELETE**.

### Moving documents

You can move documents to other applications or folders if you have **Administrator** permissions to the source parent folder and at least **Editor** permissions to the destination parent folder or knowledge center.

When you move a document, Appian retains the history of previous versions.

#### Move to different folders

To move a document to a different folder:

1.  From the **Build** view, open the document folder.
2.  Select the checkbox next to the document you want to move.
3.  Click **MOVE** and select **Move to Folder**.
4.  For **Destination**, select the folder you where you want to move the document.
5.  Click **MOVE**.

#### Move to different applications

To move the document to a different application:

1.  From the **Build** view, select the checkbox next to the document you want to move.
2.  Click **MOVE** and select **Move to App**.
3.  Select the application where you want to move the document.
4.  Select **Keep objects in current app** to have the document in both applications.
5.  For **Destination**, select the folder you where you want to move the document.
6.  Click **MOVE**.

### Downloading documents

You can download the contents of entire knowledge centers and folders if you have at least **Viewer** permissions to them.

To download documents and folders from the **Build** view:

1.  Select the checkbox next to the documents you want to download.
2.  Click **MORE** and select **DOWNLOAD**.

The files and folders selected for download are packaged in a ZIP file and retain the hierarchy they had in Appian.

### Uploading documents and folders into Appian

From a document folder, you can upload a ZIP file containing files and folders. Uploading this zip will create document folders and documents in Appian in the exact structure as the folders and files are inside the ZIP. This is useful when you need to create many documents at once or have a folder structure you want to bring into Appian.

You must have at least **Editor** permissions to the document folder in order to upload a ZIP. You must also have at least **Viewer** permissions to all of the folders and knowledge centers that the document folder resides in.

To upload a ZIP file:

1.  Compress your files into a ZIP format archive.
2.  In the **Build** view of your application, open the document folder where you'd like create the documents and folders.
3.  Click **UPLOAD ZIP**.
4.  For **File (ZIP)**, click **UPLOAD** to select the ZIP archive from your computer.
5.  Keep **Add contents to the current application** selected to automatically create a constant for each file. Constants will be added to your current application and its corresponding rule folder.

    If your application does not contain a [rule folder](folder-object.html#rule-folders), Appian will automatically create a rule folder and add the constants to it.

6.  Click **UPLOAD**.

**Note:**  Any special characters used in filenames by files in your ZIP archive are replaced with hyphen (-) characters upon upload.

## Managing process reports

[Process reports](Process_Reports.html) are stored as documents in Appian, as Appian Report Files (`.arf`). They can be created, edited, and moved between document folders just like document objects.

## Managing application documentation

Appian stores [application documentation](application-settings.html#application-documentation) as document objects. You can manage your newly uploaded document directly from within the **Application Documentation** dialog (accessible from the **Build** and **Explore** views) or in the objects grid of the **Build** view.

You must remove the document object from the documentation list before you try to [delete the document object](#deleting-documents) or [remove the document object](build-view.html#remove-objects-from-the-application) from the application. Otherwise, Appian will block the action.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...