---
source_url: https://docs.appian.com/suite/help/25.3/document-record-type.html
original_path: document-record-type.html
version: "25.3"
title: "Document Record Type"
page_id: "document-record-type"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Document Record Type

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-info-circle" aria-hidden="true"></i></td><td>The capabilities described on this page are included in Appian's <a href="/suite/help/25.3/Appian_Tiers.html">advanced and premium capability tiers</a>. Usage limits may apply.</td></tr></tbody></table>

## Overview

Each Appian environment has a Document record type, which contains a directory of all [documents that are managed by record types](manage-docs-with-records.html). This record type contains fields with relevant document information, like document name, size, and extension type, so you can easily filter, sort, or aggregate on document data in your applications.

This page explains the out-of-the-box Document record type and how to use it. You can only make certain modifications to this record type.

**Note:**  The Document record type does not capture information about [documents managed by folders](folder-and-document-management.html).

[![Document record type image](images/doc_management/ootb-doc-record-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img599)

[![](images/doc_management/ootb-doc-record-type.png)](#_)

## Reference the document record type

You cannot query the Document record type directly in your applications. Instead, the Document record type is only accessible as a related record type. This allows you to access information about specific documents in your application.

For example, the Case Document record type manages documents related to each support case. To query the documents and related information about those documents (like name, description, and extension), you can query the Case Document record type and reference fields from that record type and the related Document record type.

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
a!queryRecordType(
    recordType: recordType!Case Document,
    fields: {
        recordType!Case Document.fields.documentId,
!       recordType!Case Document.relationships.documentProperties.fields.name,
!       recordType!Case Document.relationships.documentProperties.fields.description,
!       recordType!Case Document.relationships.documentProperties.fields.extension,
    }
    pagingInfo: a!pagingInfo(
        startIndex: 1,
        batchSize: 100
    )
).data
```

## Fields

By default, the Document record type contains the following fields.

You cannot edit or remove any Appian-configured record fields, but you can [create new custom record fields](custom-record-fields.html).

|
Field

 |

Data Type

 |

Description

 |
| --- | --- | --- |
| Id | Number (Integer) | The unique identifier of the document. |
| name | Text | The name of the document. |
| description | Text | The description of the document. |
| size | Number (Integer) | The size of the document in bytes. |
| dateCreated | Date and Time | The date when the document was created in Appian. |
| extension | Text | The file extension of the document. |
| folderId | Number (Integer) | The unique identifier for the document folder.

This folder is automatically created by Appian to store documents for the record type. This folder is not accessible from Appian Designer, but it can be referenced in plug-ins and smart services using the [a!documentFolderForRecordType()](fnc_system_documentFolderForRecordType.html) function. |
| folderName | Text | The name of the document folder. This folder is not accessible from Appian Designer. |
| totalNumberOfVersions | Number (Integer) | The number of [versions](Managing_Object_Versions.html) of the document uploaded to Appian. |
| url | Text | The URL to the document, which you can use to preview the document. |

## Relationships

The Document record type cannot have relationships to other record types since it [cannot be directly queried](#reference-the-document-record-type).

However, any record type that has a field of type [Document](Appian_Data_Types.html#document) will automatically have a many-to-one relationship to the Document record type. By default, the relationship name is `documentProperties`.

## Security

By default, all users have **Viewer** permission to the Document record type.

Each document in the Document record type inherits the [record-level security](record-level-security.html) from the document management record type.

For example, if the Case Documents record type has record-level security configured so that only the assigned engineer can see the documents for a case, then that same security is applied to the document properties. This way, the assigned engineer can see the document and its related properties, while unassigned engineers cannot.

## Sync the record type

A sync will automatically occur on the Document record type when a user submits a form or executes a process model that:

-   Creates a new document.
-   Create a new version of a document.
-   Moves a document from one folder to another.
-   Modifies the document properties, like the document name or description.

You can also start a manual full sync from the **Sync History** page as needed.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...