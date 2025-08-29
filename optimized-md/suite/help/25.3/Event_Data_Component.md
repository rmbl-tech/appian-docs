---
source_url: https://docs.appian.com/suite/help/25.3/Event_Data_Component.html
original_path: Event_Data_Component.html
version: "25.3"
title: "Event Data Component"
page_id: "Event_Data_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Event Data Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-event-history-list.html">SAIL Design System guidance available for Event History List</a><p class="ds-release-notice-p">The event history list component should allow users to see all relevant event data at a glance. Check out the design guidance page to learn how to display your data in a structured, easy-to-scan layout to help your users find what they need.</p></td></tr></tbody></table>

## Function

**a!eventData**( _recordType, filters, timestamp, user, eventTypeName, details, recordTypeForTag, recordIdentifier, comment, allowUsersToComment, baseRecordIdForComment, allowUsersToReply_ )

This function determines the event data to display for a single record type in the [Event History List component](Event_History_List_Component.html).

**See also**: [Configure Record Events](record-events.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Record Type

 |

`recordType`

 |

_Record Type_

 |

A reference to a record type, configured using the `recordType!` domain. For example, `recordType!Order`. If you configured [record events](record-events.html), use the Event History record type.

 |
|

Filters

 |

`filters`

 |

_Any Type_

 |

A single logical expression or a list of query filters, which are applied together with an `AND` operation, can be provided to apply additional filters to the record set. Queries also inherit the [record-level security](record-level-security.html) or [default filters](default-filters.html) defined on the referenced record type. When filtering, use only record fields or related record fields from the referenced record type. Record types sourced from a web service or other expression only support this parameter if data sync is enabled.

 |
|

Timestamp

 |

`timestamp`

 |

_Record Field_

 |

A record field of type Date and Time, Date, or Time that displays the timestamp when an event occurred. The list of event data will be sorted in descending order by this field. If you generated an Event History record type, use the `timestamp` field from that record type. For example, `recordType!Order Event History.fields.timestamp`.

 |
|

User

 |

`user`

 |

_Any Type_

 |

A record field of type User that displays who completed the event. If you generated an Event History record type, use the `user` field from that record type. For example, `recordType!Order Event History.fields.user`.

 |
|

Event Type Name

 |

`eventTypeName`

 |

_Any Type_

 |

A record field of type Text that displays the type of event that occurred. If you generated an Event Type Lookup record type, use the `eventType` relationship on the Event History record type to select the `name` field. You must use the `fv!data` prefix to access the data in this field. For example, `fv!data[recordType!Order Event History.relationships.eventType.fields.name]`.

 |
|

Additional Details

 |

`details`

 |

_Text_

 |

Any additional information about the event. If you generated an Event History record type, this field is not automatically included, but can be manually added by a developer. You must use the `fv!data` prefix to access the data in this field. For example, `fv!data[recordType!Order Event History.fields.details]`.

 |
|

Record Type for Tag

 |

`recordTypeForTag`

 |

_Record Type_

 |

The record type linked in the tag for an event.

 |
|

Record Identifier for Tag

 |

`recordIdentifier`

 |

_Record Field_

 |

A record field that contains the record identifier associated with each event. This parameter is used to configure the link in a tag. This field is typically the [common field](record-type-relationships.html#common-field-values) used in the relationship between the base record type and event history record type.

 |
|

Comment

 |

`comment`

 |

_Record Field_

 |

A record field of type Text that displays the comment. If you generated an Event History record type, use the `comment` field from that record type. For example, `recordType!Order Event History.fields.comment`.

 |
|

Allow users to add comments

 |

`allowUsersToComment`

 |

_Boolean_

 |

Determines if users can add top-level comments on the component. Top-level comments appear inline with other events and are automatically captured as events in the selected record type. If you selected a generated Event History record type, these comments will be stored in the `comment` field. Set _eventStyle_ to `“LIST_WITH_COMMENTS”` to allow users to add top-level comments.

 |
|

Base Record Id

 |

`baseRecordIdForComment`

 |

_Any Type_

 |

The identifier for a specific record in the base record type that is used to link comments and subscribers to a record. For example, if you are displaying events about orders, this parameter should reference the identifier of the specific order a comment is about or that a user is subscribed to. The identifier must be the same data type as the primary key field in the base record type. For more information, see [enable user collaboration](Event_History_List_Component.html#allow-users-to-collaborate).

 |
|

Allow users to reply

 |

`allowUsersToReply`

 |

_Boolean_

 |

Determines if users can start threaded conversations on the component. Comments and replies in threaded conversations will be automatically captured in the Reply Thread record type. If you generated a Reply Thread record type, comments and replies in threaded conversations will be stored in the `reply` field. The event history list component can display a maximum of 500 items in each thread.

 |

## Usage considerations

### Where to use this function

This function can only be used to configure the [Event History List component](Event_History_List_Component.html). For the fastest configuration, we recommend using design mode to configure this component.

### Recommended record types

You can select any record type in the _recordType_ parameter, but this function works best when you select an Event History record type that's used in your [record events](record-events.html) configuration.

If you [generated an Event History record type](record-events-configuration.html#generated-event-history-record-type), you can easily map those generated fields to the parameters in this function.

For example, let's say you configured record events on an Order record type by generating an Event History record type and an Event Type Lookup record type. To configure this function to display the order event history, you'd select the following fields:

| Parameter | Example Event History Record Field |
| --- | --- |
| _timestamp_ | `recordType!Order Event History.fields.timestamp` |
| _user_ | `recordType!Order Event History.fields.user` |
| _eventTypeLookup_ | `recordType!Order Event History.relationships.eventType.fields.name` |

Then, if you are logging the specific automation type that completed an event, you could use the following expression in the _details_ parameter to show which type of automation completed the order:

```
1
2
3
4
5
if(
  isNullOrEmpty(recordType!Order Event History.fields.user),
  a!automationType(recordType!Order Event History.fields.automationId) & " completed this order.",
  {}
)
```

## Examples

See the [Event History List component](Event_History_List_Component.html) for examples using this function.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
| Offline Mobile | Incompatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
| Real-Time Custom Record Fields | Incompatible |
Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...