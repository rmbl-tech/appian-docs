---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_torecordidentifier.html
original_path: fnc_system_a_torecordidentifier.html
version: "25.3"
title: "a!toRecordIdentifier() Function"
page_id: "fnc_system_a_torecordidentifier"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!toRecordIdentifier() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!toRecordIdentifier**( _recordType, identifier_ )

Matches record IDs with their record type to return a value of type Record Identifier for each record ID passed to the function.

**See also:**

-   [Record Type](Appian_Data_Types.html#record-type)
-   [Record Identifier](Appian_Data_Types.html#record-identifier)
-   [Post Event to Feed Smart Service](Post_Event_to_Feed_Smart_Service.html)
-   [Post System Event to Feed Smart Service](Post_System_Event_to_Feed_Smart_Service.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_RecordType_

 |

The record type that contains the record.

 |
|

`identifier`

 |

_Any Type Array_

 |

Individual record IDs within the record type.

 |

## Returns

Record Identifier Array

## Usage considerations

### Record IDs for different source types

-   For [record types that use a database](configure-record-data-source.html#connect-to-a-database) as the source, record ID is the primary key in the data store entity.
-   For [record types that use a web service](configure-record-data-source.html#prodlink-web-service) as the source, record ID is the value returned to the ID field produced by the record's source expression.
-   For [record types that use a process model](configure-record-data-source.html#connect-to-a-process-model) as the source, record ID is the ID for the process.

## Example

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

`a!toRecordIdentifier(recordType: recordType!Employee, identifier: {"536870111", "536870555"})` returns an array of two Record Identifier values with the first pointing to the first record in the `identifiers` list and the second pointing to the second record.

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
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...