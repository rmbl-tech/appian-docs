---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_document.html
original_path: fnc_scripting_document.html
version: "25.3"
title: "document() Function"
page_id: "fnc_scripting_document"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# document() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**document**( _documentId, property_ )

Returns property information for a document.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`documentId`

 |

_Number_

 |

The Id of the document. This parameter accepts document objects as well. Document objects are represented by their Id number internally.

 |
|

`property`

 |

_Text_

 |

Information to retrieve for this document.

 |

## Returns

Text

## Usage considerations

### Using the property parameter

The _property_ parameter accepts the following case-sensitive values:

-   `dateCreated`
-   `description`
-   `expirationDate`
-   `extension`
-   `folderId`
-   `folderName`
-   `id`
-   `knowledgeCenterId`
-   `knowledgeCenterName`
-   `lastUserToModify`
-   `lockedBy`
-   `name`
-   `totalNumberOfVersions`
-   `pendingApproval`
-   `size` (in bytes)
-   `approved`
-   `changesRequireApproval`
-   `url`

### Using this function with a record field

If you use a [record type to manage documents](manage-docs-with-records.html), you can access most of these properties by querying the related [Document record type](document-record-type.html).

**Note:**  You must have the appropriate [record-level security](record-level-security.html) to the document in order to access its properties.

However, if you need to access the following document properties, you can use the `document()` function:

-   `knowledgeCenterId`
-   `knowledgeCenterName`
-   `lastUserToModify`
-   `lockedBy`
-   `pendingApproval`
-   `approved`
-   `changesRequireApproval`

### Access and update document properties before submitting a form

You can use the `document()` function in a [file upload component](File_Upload_Component.html) to allow users to immediately view and edit the properties of their uploaded documents.

For example, after a user uploads a document, you can allow them to edit the file name and add a description to the document so the document has all the correct information when it's submitted. Learn how to [build this example](File_Upload_Component.html#file-upload-in-a-start-form-or-task).

[![images/edit-document-details-before-submitting.gif](images/edit-document-details-before-submitting.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img39)

[![](images/edit-document-details-before-submitting.gif)](#_)

The `document()` function can access the following properties for documents that have not been submitted yet:

-   `id`
-   `name`
-   `description`
-   `extension`
-   `size`
-   `dateCreated`

**Note:**  Only the user who uploaded the document can view and edit the document properties. If you plan to allow users to view and edit document properties in a [portal](portals-service-accounts.html), note that service accounts will also have access to the properties.

### Using this function with autoscaled processes

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

### Return document properties from a document management record type

_Record type references are specific to each environment. If you copy and paste examples with record types into an interface, it will not evaluate. Use those examples as a reference only._

```
1
document(ri!record[recordType!RE Order Document.fields.documentId], "knowledgeCenterName")
```

Returns the out-of-the-box knowledge center `Record Document Knowledge Center`.

### Return document properties from a static document identifier

```
1
document(101,"expirationDate")
```

Returns `12/21/05 2:28 PM GMT`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Partially compatible |
Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...