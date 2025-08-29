---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_folder.html
original_path: fnc_scripting_folder.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# folder() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**folder**( _folderId, property_ )

Returns a property of the requested folder. The return type will be the type of that property; for example selecting `dateCreated` as the property parameter returns a Date and Time value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`folderId`

 |

_Integer_

 |

The Id number of the folder or the folder object.

 |
|

`property`

 |

_Text_

 |

The information you need to retrieve regarding the document.

 |

## Returns

Any Type

## Usage considerations

The _property_ parameter accepts the following case-sensitive values (with their return values in parentheses):

-   changesRequireApproval (Boolean)
-   creator (Text)
-   dateCreated (Date and Time)
-   documentChildren (List of Document)
-   folderChildren (List of Folder)
-   id (Number \[Integer\])
-   inheritSecurityFromParent (Boolean)
-   knowledgeCenterId (Number \[Integer\])
-   knowledgeCenterName (Text)
-   knowledgeCenterSearchable (Boolean)
-   name (Text)
-   numberOfDocuments (Number \[Integer\])
-   parentFolderId (Number \[Integer\])
-   parentFolderName (Text)
-   pendingApproval (Number \[Integer\])
-   searchable (Boolean)

The `documentChildren` and `folderChildren` properties return up to the first 1000 documents or folders, respectively, that are direct children of the selected folder. Results are returned in alphabetical order by name.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`folder(54,"knowledgeCenterName")` returns `System Knowledge Center`

`folder(3, "documentChildren")` returns `[Document:4149]; [Document:4160]; [Document:4212]; [Document:4161]`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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