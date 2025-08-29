---
source_url: https://docs.appian.com/suite/help/25.3/manage-docs-with-records.html
original_path: manage-docs-with-records.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Manage Documents with Record Types

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

How to Manage Documents with Record Types

Learn how to simplify document management in your Appian application using record types.

## Overview

Documents are often a key part of your application workflows. Whether it’s a customer attaching a system log to a support case or an employee uploading an expense form, documents can be an essential part of your business processes.

You can use [record types](Record_Type_Object.html) to easily manage documents created and updated as part of your application workflows.

This page explains how to create record types to secure, relate, and manage documents in your applications.

**Tip:**  If you need to upload documents directly in Appian Designer so you can use them to build your application, use [folders to manage documents](folder-and-document-management.html) instead.

## Why use record types

When you use record types to manage documents, you can:

-   Create [relationships](record-type-relationships.html) between documents and application data, so you can easily display all relevant information in one place.

-   Configure [record-level security](record-level-security.html) to provide more granular access control over who can see your documents. You can even reference relationships in your security rules so users can only see documents if they can see the related record.

-   Leverage powerful AI features like [smart search](records-smart-search.html) and [Document chat](Documents_Chat_Component.html) to explore and interact with documents.

-   [Streamline process models](#create-and-delete-documents) by removing folder management tasks.

-   Use the out-of-the-box [Document record type](document-record-type.html) to filter, sort, and aggregate on document data in your application interfaces and reports. The Document record type contains key information about all of the documents that are managed by record types in your environment, like their names, sizes, and extension types.

## Required object

To manage documents with record types, simply [create a new record type](#create-a-record-type-to-manage-documents) and add a field of type [Document](Appian_Data_Types.html#document).

A record type with a field of type Document is referred to as a _document management record type_. This record type manages where documents are stored, how they're secured, and how those documents relate to your other application data. It's also how you'll reference documents in your application, using familiar [record field references](#display-documents).

[![Diagram of record type needed manage documents](images/objects-for-doc-management-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img602)

[![](images/objects-for-doc-management-records.png)](#_)

When you create a document management record type:

-   A many-to-one [relationship](record-type-relationships.html) is added to the [Document record type](document-record-type.html) so you can easily access information about your documents, like the name, description, and extension type.
-   A [document folder](#generated-folders) is generated to store documents for the record type. The generated document folder will be created in the [**Record Document System Knowledge Center**](folder-object.html#record-document-system-knowledge-center), which is provided out of the box in every environment.

[![Diagram of the  folders and relationships that are generated when you create a doc management record type](images/folders-and-relationship-for-doc-record-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img603)

[![](images/folders-and-relationship-for-doc-record-type.png)](#_)

## Data model for managing documents

A document management record type defines how documents are related to your other application data. As a result, a document management record type typically has three fields:

-   A primary key field.
-   A Document field. This will automatically create a many-to-one relationship to the [Document record type](document-record-type.html).
-   A recordId field. This field allows you to [add a many-to-one relationship](record-type-relationships.html#add-relationships) to another record type in your application.

You can think of a document management record type like a join table in a [many-to-many relationship](record-type-relationships.html#add-many-to-many-relationships). Since the Document record type stores information about all documents in your environment, you’ll use the document management record types to relate specific documents to a specific business entity in your app—like documents related to each support case.

[![Diagram of documents managed by record types](images/doc_management/record-document-data-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img604)

[![](images/doc_management/record-document-data-model.png)](#_)

You can have multiple document management record types in your application.

For example, your application may have the following record types:

-   A Case record type to store support case information. Each support case can have multiple system logs and screenshots associated with it.
-   A Candidate record type to store information about potential hires. Each candidate can have many related files, like a work sample, resume, and cover letter.

You could create two document management record types: a **Case Document** record type to manage documents associated with each case, and a **Candidate Document** record type to manage documents associated with each candidate. Both document management record types will automatically have a relationship to the Document record type.

[![Relationship diagram of the Case Document record type and Candidate Document record type](images/doc_management/total-record-document-data-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img605)

[![](images/doc_management/total-record-document-data-model.png)](#_)

## Create a record type to manage documents

You can generate a document management record type when you use [codeless data modeling](create-record-data-source.html#generate-a-related-record-type-to-manage-documents) to build out your application data.

To manually create a document management record type:

1.  [Create a record type](Create_a_Record_Type.html).
2.  Enable [data sync](about-data-sync.html) on the record type.
3.  Add a field of type Document.
4.  (Optional) Add additional fields to capture other information relevant to your document. For example, you could add an `isDeprecated` field to indicate when a document should not be used anymore.
5.  [Add relationships](record-type-relationships.html#add-relationships) from the document management record type to other record types containing relevant data.

    A document management record type will always have a relationship to the [Document record type](document-record-type.html).

Once you create the document management record type, you'll notice a **Document** page where you can [monitor](#monitor-documents) and [cleanup your documents](#clean-up-documents) in Appian Designer.

### Generated folders

When you create a document management record type, Appian will also generate a document folder called `<Record Type Name> Folder` to store documents for the record type. This generated folder will be in the [**Record document system knowledge center**](folder-object.html#record-document-system-knowledge-center), which is provided out of the box in every environment.

These folders are not accessible when browsing objects in Appian Designer. If you need to view, download, or delete documents while you're building in Appian Designer, you can go to the [**Documents** page](#monitor-documents) of your document management record type.

If you need to reference the generated document folder in a [File Upload component](File_Upload_Component.html), [smart service](Smart_Services.html), or [plug-in](https://community.appian.com/b/appmarket), you can use the [a!documentFolderForRecordType()](fnc_system_documentFolderForRecordType.html) function to access the folder.

## Create and delete documents

Once you [create a document management record type](#create-a-record-type-to-manage-documents), you can configure different interface components, smart services, and plug-ins to create and delete documents managed by that record type. As you configure these elements to create and delete documents, you'll also need to write the document identifier to the document management record type.

The document identifier in the document management record type is how you’ll relate the document to other business data, and how you’ll display it in your applications. If you do not write the document identifier to the record type, you cannot relate or reference the document in your application.

In most cases, documents are created and deleted alongside your other application data, like creating an invoice for a specific customer. However, you may also need to create or delete a document by itself, like creating a FAQ document to share with the entire company.

The following sections describe how to create and delete documents:

-   [With other application data](#with-application-data).
-   [Without other application data](#without-application-data).

### With application data

In most cases, users will create and delete documents alongside other application data. For example, users may upload system logs and screenshots related to their support case.

The easiest way for users to create and delete documents alongside application data is using a [process model](process-model-object.html) that includes:

-   A start form. This interface should allow users to create application data and upload related documents. See the following interface recipes to learn how you can create this type of start form:
    -   [Upload Multiple Documents in an Editable Grid](recipe-upload-files-in-editable-grid.html).
    -   [Upload Multiple Documents and Edit Document Properties](recipe-upload-files-in-card-layout.html).

-   A [Delete Records](Delete_Records_Smart_Service.html) node. This node should delete the document identifiers from the document management record type if any documents are removed from the start form. The [document cleanup schedule](#clean-up-documents) will remove the document from the associated document folder.

-   A [Write Records](Write_Records_Smart_Service.html) node. This node should write the application data to the appropriate record type and write the document identifiers to the document management record type.

**Tip:**  You can quickly build this type of process model by [generating a record action](record-actions.html#generate-record-actions) on a record type that has a one-to-many relationship with your document management record type.

[![Process model for this use case](images/doc_management/create-and-update-docs-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img606)

[![](images/doc_management/create-and-update-docs-process.png)](#_)

### Without application data

This section describes how to configure interfaces and process models that allow users to create and delete a document by itself. These objects are used to create record actions on the document management record type.

You can also [generate record actions](record-actions.html#generate-record-actions) on the document management record type to quickly create and configure these interfaces and process models.

#### Create a document

You can configure your application so that the system or a user can create a document in the following ways:

-   A [File Upload component](File_Upload_Component.html) in an interface.
-   A Document Generation [smart service](Smart_Services.html#Smart_Services).
-   Receiving a [binary](Integration_Object.html#receiving-a-binary-document) or [Base64](Integration_Object.html#receiving-base64-inline-with-json) document through an integration.

When the document is created, it will exist in the generated document folder, but can only be accessed via the identifier in the document management record type.

The most common way to create documents is using a File Upload component.

To allow users to create a document using a File Upload component:

1.  [Create an interface](interface_object.html#create-an-interface-object). This is where users will upload a document.
2.  [Add a rule input](working_in_design_mode.html#defining-rule-inputs) and set the type the document management record type.
3.  Add a [File Upload component](File_Upload_Component.html) to the interface and configure the file upload component as follows:

    -   For the **Target** parameter, use the `recordType!` domain to reference the document management record type. For example, `recordType!Resource`.
    -   Set the _value_ and _saveInto_ parameters to the document field in the document management record type. For example, `recordType!Resource.fields.documentId`.

    **Tip:**  See the recipe [Upload and Name a File](recipe-upload-and-name-file.html) for an example.

4.  [Create a process model](process-model-object.html#creating-a-process-model).
5.  [Add a process variable](process-model-object.html#variables-tab) that matches the rule input name and type from the interface containing the File Upload component.
6.  [Set the interface as the start form](process-model-object.html#process-start-form-tab).
7.  Add a [Write Records node](Write_Records_Smart_Service.html) to write the document identifier to the document management record type.

    For example, the process model could look like this:

    [![images/doc_management/create-doc-alone.png](images/doc_management/create-doc-alone.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img607)

    [![](images/doc_management/create-doc-alone.png)](#_)

8.  Open the document management record type.
9.  [Manually add the process model as a record list action](record-actions.html#configure-record-action-manually).

#### Delete a document

If a user no longer needs a document, you can allow them to delete it with a simple record action.

When the document identifier is deleted from the document management record type, the document object still exists in Appian. To delete the document object, you can use the [Delete Document smart service](Delete_Document_Smart_Service.html).

If you’re in a development environment and need to delete documents, you can also [delete documents from the document management record type](#clean-up-documents).

To allow users to delete a document:

1.  [Create an interface](interface_object.html#create-an-interface-object). This interface should confirm that users want to delete the document.
2.  [Create a process model](process-model-object.html#creating-a-process-model).
3.  [Add a process variable](process-model-object.html#variables-tab) and set the type to the document management record type.
4.  [Set the interface as the start form](process-model-object.html#process-start-form-tab).
5.  Add a [Delete Records node](Delete_Records_Smart_Service.html). This will delete the document identifier from the document management record type.
6.  Add a [Delete Document node](Delete_Document_Smart_Service.html) after the Delete Records node. This will delete the document object from the generated document folder and remove the document’s information from the Document record type.

    For example, the process model could look like this:

    [![images/doc_management/delete-doc-alone.png](images/doc_management/delete-doc-alone.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img608)

    [![](images/doc_management/delete-doc-alone.png)](#_)

7.  Open the document management record type.
8.  [Manually add the process model as a related action](record-actions.html#configure-record-action-manually).

## Move documents to a document management record type

In an existing application, you may already have documents stored in folders, and a record type that stores the document identifiers in a Number (Integer) field.

To take full advantage of [smart search](records-smart-search.html), you can change your existing record type to a [document management record type](#required-object). Then, with just a few modifications to your application, you can use the document management record type to fully access and secure new and existing documents.

To move existing documents to a document management record type:

1.  In your existing record type, [change the data type of the field](configure-record-data-source.html#change-record-field-names-and-data-types) that stores document identifiers to type **Document**.

    When you save the change to the record type, it will automatically [generate a document folder](#generated-folders) for the record type and add a relationship to the [Document record type](document-record-type.html).

2.  Create a process model to [move documents to the generated document folder for the record type](Move_Document_Smart_Service.html#example-move-documents-to-a-document-management-record-type). For example:

    [![images/move-documents-to-record-type-folder.png](images/move-documents-to-record-type-folder.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img609)

    [![](images/move-documents-to-record-type-folder.png)](#_)

3.  Update any objects that create or update documents so those documents are stored in the document folder for your record type. Use the [a!documentFolderForRecordType()](fnc_system_documentFolderForRecordType.html) function to access the appropriate folder.
4.  In your existing process models, continue to write the document identifier to your record type. You can remove folder management tasks since document organization and [security](#document-security) is controlled by the record type.

## Document security

A document will only be available to the document creator and system administrators until the [document identifier is written to the document management record type](#create-and-delete-documents).

Once the document information is written to the document management record type, the following security is applied:

-   [Record type security](record-security.html): If a user has **Viewer** permission to the document management record type, they can create, update, view, and download all documents in the record type.

-   [Record-level security](record-level-security.html): You can provide more granular security by determining who can see which documents. For example, if documents are related to other application data, you can configure record-level security so that only users who can see the related record can also see the documents.

## Display documents

Once you write to the document management record type, you can easily display documents in your applications using a [record field reference](reference-records.html). Simply query or select the field of type Document to display specific documents in your interfaces.

For example, you can use the expression below to display a single document using the [Document Viewer component](Document_Viewer_Component.html), and allow users to download and share the document using the [Document Link component](Document_Link_Component.html).

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
a!sectionLayout(
  label: ri!record[recordType!Case Document.relationships.documentProperties.fields.name],
  labelSize: "MEDIUM",
  labelColor: "STANDARD",
  contents: {
    a!richTextDisplayField(
      align: "RIGHT",
      marginBelow: "LESS",
      value: {
        a!richTextIcon(
          icon: if(
            ri!record[recordType!Case Document.relationships.documentProperties.fields.extension] = "pdf",
            "file-pdf",
            "file-word"
          )
        ),
        a!richTextItem(
          text: " Download Document",
          link: a!documentDownloadLink(
            document: ri!record[recordType!Case Document.fields.documentId]
          )
        )
      }
    ),
    a!documentViewerField(
      label: "",
      labelPosition: "COLLAPSED",
      document: ri!record[recordType!Case Document.fields.documentId],
      height: "TALL"
    )
  }
)
```

This expression would display something like this:

[![images/doc_management/display-document-ex.png](images/doc_management/display-document-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img610)

[![](images/doc_management/display-document-ex.png)](#_)

You can also show a list of documents using a [records-powered grid](Paging_Grid_Component.html). Select the document management record type as the source of a grid to populate it with links and relevant information about your documents.

Alternatively, you could display documents in a grid with your other application data. For example, you could create a grid with all active claims and have a column with a list of their related documents.

[![images/doc_management/display-grid-of-docs.png](images/doc_management/display-grid-of-docs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img611)

[![](images/doc_management/display-grid-of-docs.png)](#_)

## Monitor documents

As users submit and upload new versions of their documents, you can monitor and verify that you’re always working with the right set of documents from the **Documents** page in your document management record type.

[![Documents page in the record type object](images/doc_management/document-page-rtd.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img612)

[![](images/doc_management/document-page-rtd.png)](#_)

From the **List** tab, you can:

-   Use the filters or search to locate a specific document.
-   Click the name of the document to see a preview.
-   Select the checkbox next to one or more documents and click **DOWNLOAD**. A zip file will be created if you download multiple documents.
-   [Immediately clean up documents](#immediately-clean-up-documents).
-   [Manually delete documents](#manually-delete-documents).

From the **Configurations** tab, you can customize or disable [automatic document cleanup](#clean-up-documents).

## Clean up documents

When you delete data from the document management record type, the document itself will still exist in the generated document folder. A document without an associated record is referred to as an _orphaned document_. Even though the document is still in the document folder, it's not accessible in your applications since there is no way to reference the document.

To help manage resources and remove unnecessary documents, a [default cleanup schedule](Appian_Administration_Console.html#data-retention) is enabled on all document management record types. The cleanup schedule will automatically delete orphaned documents that have not been modified after a certain number of days. For example, if the default cleanup schedule is 30 days, then any orphaned document that has not been modified in the last 30 days will be deleted on day 31.

You can [customize](#customize-the-document-cleanup-schedule) or [disable](#disable-the-document-cleanup-schedule) the document cleanup schedule on specific record types to best fit your needs. As you build and test your applications, you can also delete orphaned documents in bulk using an [immediate document cleanup](#immediately-clean-up-documents), or [manually delete](#manually-delete-documents) individual documents.

[![Configurations tab in the Document page in the record type object](images/doc_management/document-page-configuration-rtd.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img613)

[![](images/doc_management/document-page-configuration-rtd.png)](#_)

### Customize the document cleanup schedule

If a record type manages large files, you may want to delete unused orphan documents from that record type more frequently than the default cleanup schedule allows.

To customize the document cleanup schedule on a record type:

1.  In the record type, go to **Documents**.
2.  Go to the **Configurations** tab.
3.  Under **Automatic Document Cleanup**, select **Custom Settings**.
4.  For **Automatic Document Cleanup**, keep **Yes** selected.
5.  For **Delete After Number of Days**, enter the number of days after which an unused orphaned document will be deleted. For example, if you enter 10 days, then orphaned documents that have not been modified in the last 10 days will be deleted on day 11.
6.  For **Start Cleanup At**, select when to start the automatic cleanup.
7.  Click **SAVE**.

### Disable the document cleanup schedule

If you need to keep all documents that have been uploaded, even those that are no longer needed, you can disable document cleanup.

To disable document cleanup on a record type:

1.  In the record type, go to **Documents**.
2.  Go to the **Configurations tab**.
3.  Under **Automatic Document Cleanup**, select **Custom Settings**.
4.  For **Automatic Document Cleanup**, select **No**.
5.  Click **SAVE**.

### Immediately clean up documents

If you need a one-time cleanup to remove a batch of orphaned documents, you can start an immediate document cleanup.

To start an immediate document cleanup:

1.  In the record type, go to **Documents**.
2.  From the **List** tab, click **CLEAN UP DOCUMENTS**.
3.  For **Delete Orphaned Documents Older Than (Days)**, enter the number of days after which unused orphaned documents will be deleted.
4.  Click **CLEANUP**.

Any documents older than the specified number of days will be immediately deleted.

### Manually delete documents

While [automatic document cleanup](#clean-up-documents) will delete documents without associated records after a certain number of days, you may want to immediately delete an unused document when you're testing your app.

To manually delete one or more documents:

1.  In the record type, go to **Documents**.
2.  From the **List** tab, select the checkbox next to the documents you want to delete.
3.  Click **DELETE**.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...