---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_documentFolderForRecordType.html
original_path: fnc_system_documentFolderForRecordType.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!documentFolderForRecordType() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!documentFolderForRecordType**( _recordType_ )

Returns the [folder](manage-docs-with-records.html#generated-folders) where documents are stored for a record type.

See [Manage Documents with Record Types](manage-docs-with-records.html) for more information.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_RecordType_

 |

A reference to a record type that contains a field of type [Document](Appian_Data_Types.html#document). You must reference the record type directly from the `recordType!` domain. For example, `recordType!Order Documents`.

 |

## Returns

[Folder](Appian_Data_Types.html#folder)

## Usage considerations

When you [create a document management record type](manage-docs-with-records.html), Appian will also generate a document folder called `<Record Type Name> Folder` to store those documents. These generated document folders are not accessible from Appian Designer.

If you need to reference the generated document folder in a [Document smart service](Smart_Services.html) or [plug-in](https://community.appian.com/b/appmarket), you can use the `a!documentFolderForRecordType()` function.

## Example

See the [Move Document smart service](Move_Document_Smart_Service.html#example-move-documents-to-a-document-management-record-type) for an example using the `a!documentFolderForRecordType()` function.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
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
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...