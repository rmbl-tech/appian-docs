---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_urlforrecord_23r4.html
original_path: fnc_scripting_urlforrecord_23r4.html
version: "25.3"
title: "urlforrecord\_23r4 Function"
page_id: "fnc_scripting_urlforrecord_23r4"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# urlforrecord\_23r4 Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!urlForRecord() Function](/suite/help/25.3/fnc_scripting_urlforrecord.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_scripting_urlforrecord.html#Old_Version)

## Function

**urlForRecord\_23r4**( _recordType, recordIds_ )

This function allows you to return the URLs for one or more records or a record list view that can then be used in a link component.

**See also**:

-   [Record Type](Appian_Data_Types.html#record-type)
-   [Link Component](Link_Component.html)
-   [Database-Backed Record Type Tutorial](Records_Tutorial.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_RecordType_

 |

The record type for the record(s).

 |
|

`recordIds`

 |

_Any Type Array_

 |

The identifiers of the record(s) to return URLs for.

 |

## Returns

Text Array

## Usage considerations

The user executing the function must have at least viewer rights to the record type or the expression will fail and an error will occur. They do not need to have viewer rights to the record(s).

For a process model record type, the _recordIds_ value is the process Id. For a data store entity record type, it is the primary key for the entity.

If the _recordIds_ value is null or empty, the function returns the URL for the record list view of the _recordType_ value record type.

If the record type for the _recordType_ value does not exist, the expression will fail and an error will occur.

If a user does not have at least viewer rights to the record or record type in the returned URL, the user will see an error when trying to open the URL.

## Examples

These examples are designed to illustrate how to use the `urlforrecord()` function in the [Expression Rule Interface](Expression_Rules.html).

**Note:**  Record type object references are specific to each environment. If you copy and paste these examples into the Expression Rule interface, they will not evaluate in your Test Rules interface. Use them as a reference only.

### URL for a Single Record

`urlforrecord(recordType!Employee, "7")`

returns `"https://records.appian.com/suite/tempo/records/item/lEBSrlhKCqg69HAu5p42M3632RnTYq-d5AqIKaBom7sLiFvJOSzpARyM-kd7KgN-8MOapw8znEfVTQBBN2Qnr-ZrMF7tmb3PDA6qF3LnSzTO5o/view/summary"`

### URLs for Multiple Records

`urlforrecord(recordType!Employee, {"7","8"})`

returns `{"https://records.appian.com/suite/tempo/records/item/lEBSrlhKCqg69HAu5p42M3632RnTYq-d5AqIKaBom7sLiFvJOSzpARyM-kd7KgN-8MOapw8znEfVTQBBN2Qnr-ZrMF7tmb3PDA6qF3LnSzTO5o/view/summary", "https://records.appian.com/suite/tempo/records/item/lEBSrlhKCqg69HAu5p42M3632RnTYq-d5AqIKaBom7sLiFvJOSzpARyM-kd7KgN-8MOapw8znEfVTQBB92QKQVUVC4xY-d68bk8oOb1HICAjKA/view/summary"}`

### URL for a Record Type

`urlforrecord(recordType!Employee, null)`

returns `"https://records.appian.com/suite/tempo/records/type/V1muDw/view/all"`

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