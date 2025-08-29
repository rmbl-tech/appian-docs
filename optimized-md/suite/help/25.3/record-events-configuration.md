---
source_url: https://docs.appian.com/suite/help/25.3/record-events-configuration.html
original_path: record-events-configuration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Record Events

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to configure record events to capture event data.

## Overview

To set up a new [record events](record-events.html) configuration, first consider the record events [guidelines](record-events.html#guidelines) to help you decide what events to track and what features you need.

You can configure record events on any [record type](Record_Type_Object.html) that uses a database as the source and has [data sync](about-data-sync.html) enabled.

To configure record events:

1.  [Generate](#generate-new-event-record-types) or [specify](#use-existing-event-record-types) record types to store event data.

    **Note:**  Review the [required record types](#event-record-types) for record events.

2.  [Modify the Event History record type as needed](#modify-the-event-history-record-type).
3.  Configure optional record events features:
    -   [Enable collaboration with record events](record-events-collaboration.html).
    -   [Measure automation with record events](record-events-automation.html).
4.  [Write events with the Write Records smart service](#write-events).

## Event record types

To configure record events, you'll need the following record types to store your event data:

| Record Type Name | Required? | Description |
| --- | --- | --- |
| **Event History** | Yes | The record type used to store who completed an event and when.

For example, John Smith created order SO1234 on February 28, 2023. |
| **Event Type Lookup** | Yes | The record type used to store the different types of events that can occur in your business processes. This data is static and allows you to consistently reference the types of events that can occur. In a database, this would be considered a lookup table.

For example, Created Order, Updated Order, Reviewed Order, Shipped Order. |
| **Reply Thread** | No\* | The record type used to store [threaded conversations](record-events-collaboration.html#threaded-conversations) from the [event history list component](Event_History_List_Component.html).

For example, John Smith replied commented on order SO1234 on February 29, 2023. |
| **Subscriber** | No\* | The record type used to store users subscribed to conversations on record events in an [event history list component](Event_History_List_Component.html).

For example, john.smith or john.doe. |

\* These record types are required when you [generate event record types](#generate-new-event-record-types); however, you can [remove them from the record events configuration](#edit-the-record-events-configuration) if you do not want to use threaded conversations or subscribers in the event history list component.

## Generate new event record types

If you're setting up a brand new record events configuration or you want to standardize your event data, you can generate new record types to store this data.

When you generate new record types to store your event data, Appian will generate the underlying database tables for the new record types. The new tables will always be written to the same source used for the base record type. We'll also automatically [add custom record fields to your base record type](#modify-the-base-record-type) to calculate key process metrics.

**Note:**  Appian can only generate database tables for event record types in a MariaDB, MySQL, Oracle, SQL Server, PostgreSQL, or Aurora MySQL database.

To generate new record types:

1.  In the record type you want to track events for, go to **Events**.
2.  Click **GENERATE EVENT RECORD TYPES**.
3.  Under **Types of Events**, specify the types of events that can occur in your business processes. Use the [record events guidelines](record-events.html#guidelines) to choose which events to track. The event types will be written as values in the generated Event Type Lookup record type.

    | Option | Action |
    | --- | --- |
    | **Include Common Event Types** | Keep the **Created records, Updated records, and Commented on records** checkbox selected to automatically include these event types in the generated Event Type Lookup record type. If you are using record events to improve your business processes, do not select this option since it includes [ad hoc events](record-events.html#decide-whether-to-track-ad-hoc-events).

    When this option is selected:
    -   Appian will automatically configure any [generated Create or Update record actions](record-actions.html#generate-record-actions) to write records and events.
    -   Any top-level comments on an event history list component will be automatically captured as a "Commented on Record" event type.

    If you've already configured or generated record actions before you configured record events, you will need to manually update your Write Records nodes in your process models to also write events. [Learn more](#write-events). |
    | **Other Event Types** | Enter any additional event types that you'd like to capture. If you included common event types, they will be automatically included with any other event types you enter.

    Enter each additional event type on a separate line and format them in the past tense. For example:
    `Reviewed Order`
    `Approved Order`
    `Canceled Order`
    `Shipped Order`
    `Delivered Order` |

4.  Under **Record Type Names**, enter names for the following record types:

    | Record Type | Example Name |
    | --- | --- |
    | **Event History** | `Order Event History` |
    | **Event Type Lookup** | `Order Event Type` |
    | **Reply Thread** | `Order Reply Thread` |
    | **Subscriber** | `Order Subscriber` |

5.  For **Application**, specify where you want Appian to create the new record types. This option only appears if your base record type is associated with more than one application and you have permission to view those applications.
6.  Keep the **Download database script** checkbox selected to download an auto-generated database script when you click **GENERATE**. This script contains the SQL commands that Appian will use to create database tables for the new record types.

    **Caution:**  The auto-generated database script is not saved in Appian, so we strongly recommend downloading the script now and storing it locally.

7.  Click **GENERATE** to generate the new record types and configure record events.
8.  Click **SAVE**.

### Generated Event History record type

#### Object security

The generated Event History record type copies the group [object security](record-security.html) of the base record type. Generated record types do not copy individual user security.

#### Relationships

When you generate an Event History record type, it has the following [relationships](record-type-relationships.html):

| Base record Type | Relationship | Related Record Type | Purpose |
| --- | --- | --- | --- |
| Where you're configuring record events | One-to-many | Event History | Allows you to reference the different events associated with each record. |
| Event History | Many-to-one | Where you're configuring record events | Allows you to reference the record associated with each event. |
| Event History | Many-to-one | [Event Type Lookup](#generated-event-type-lookup-record-type) | Allows you to reference the types of events that can occur. |
| Event History | Many-to-one | [User](Configure_Tempo_Users.html) | Allows you to reference the user who completes an event. |
| Event History | One-to-many | [Reply Thread](#generated-reply-thread-record-type) | Allows you to reference a comment or reply from a threaded conversations on an [event history list component](Event_History_List_Component.html). |
| Where you're configuring record events | One-to-many | [Subscriber](#generated-subscriber-record-type) | Allows you to reference the users subscribed to conversations on an [event history list component](Event_History_List_Component.html). |

The following diagram shows an example of the relationships between an Order record type and its generated record events record types:

[![Diagram showing relationships between event history record types. The Order Event History record type has a many-to-one relationship to the Order record type, the User record type, and the Order Event Type record type. The Order Event History record type has a one-to-many relationship with the Order Reply Thread record type. The Order record type has a one-to-many relationship with the Order Subscriber record type.](images/generated-event-history-relationships-24_4.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img505)

[![](images/generated-event-history-relationships-24_4.png)](#_)

#### Fields

By default, the Event History record type contains the following fields:

| Default Field | Data Type | Description |
| --- | --- | --- |
| `id` | Number (Integer) | This is the primary key field, which is the unique identifier for each event. |
| `recordId` | Number (Integer) | The common field that establishes a relationship between the Event History record type and the base record type.

This field has a foreign key constraint in the generated database table. |
| `eventTypeId` | Number (Integer) | The common field that establishes a relationship between the Event History record type and the Event Type Lookup record type.

This field has a foreign key constraint in the generated database table. |
| `user` | User | The user who completed the event. If this value is null, Appian assumes the event occurred due to an automated activity in the process model. |
| `automationTypeId` | Number (Integer) | The type of automation that completed the event. |
| `comment` | Text | The comment that a user added to the event history list component. Appian automatically writes to this field when users leave comments. |
| `timestamp` | Date and Time | The date and time when the event occurred. |

**Note:**  You can [modify the generated Event History record type](#modify-the-event-history-record-type) to meet any additional business requirements.

### Generated Event Type Lookup record type

#### Object security

The generated Event Type Lookup record type copies the group [object security](record-security.html) of the Event History record type. Generated record types do not copy individual user security.

#### Fields

By default, the Event Type Lookup record type contains two fields. Appian does not recommend adding fields to this record type, because it's meant to serve as a lookup table for the Event History record type.

| Default Field | Data Type | Description |
| --- | --- | --- |
| `id` | Number (Integer) | This is the primary key field, which is the unique identifier for each activity.

This field is also the common field that establishes the relationship between the Event History record type and the Event Type Lookup record type. |
| `name` | Text | The name of the event that occurred. |

### Generated Reply Thread record type

#### Object security

The generated Reply Thread record type copies the group [object security](record-security.html) of the Event History record type. Generated record types do not copy individual user security.

#### Fields

By default, the Reply Thread record type contains the following fields:

| Default Field | Data Type | Description |
| --- | --- | --- |
| `id` | Number (Integer) | This is the primary key field, which is the unique identifier for the comment or reply in a threaded conversation. |
| `event_id` | Number (Integer) | The common field that establishes a relationship between the Reply Thread record type and the Event History record type.

This field has a foreign key constraint in the generated database table. |
| `user` | User | The user who added the comment or reply. |
| `reply` | Text | The comment or reply from the threaded conversation. |
| `timestamp` | Date and Time | The date and time the comment or reply was added. |

**Tip:**  The Reply Thread record type supports an optional record events feature. [Learn more about enabling collaboration with record events](record-events-collaboration.html).

### Generated Subscriber record type

#### Object security

The generated Subscriber record type copies the group [object security](record-security.html) of the Event History record type. Generated record types do not copy individual user security.

#### Fields

By default, the Subscriber record type contains the following fields:

| Default Field | Data Type | Description |
| --- | --- | --- |
| `id` | Number (Integer) | This is the primary key field, which is the unique identifier for the subscribed user. |
| `recordId` | Number (Integer) | The common field that establishes a relationship between the Subscriber record type and the base record type.

This field has a foreign key constraint in the generated database table. |
| `user` | User | The user subscribed to conversations on the [event history list component](Event_History_List_Component.html). |

**Tip:**  The Subscriber record type supports an optional record events feature. [Learn more about enabling collaboration with record events](record-events-collaboration.html).

## Use existing event record types

You may already have record types that store your event history and event types, and want to use those record types instead of generating new ones. You can easily configure record events using existing record types.

When you set up a new record events configuration, we'll also automatically [add custom record fields to your base record type](#modify-the-base-record-type) to calculate key process metrics.

To configure record events using existing record types:

1.  Review your existing [Event History record type](#event-history-record-type-requirements) and [Event Type lookup record type](#event-type-lookup-record-type-requirements) to ensure they have the necessary fields and relationships.
2.  In the record type you want to track events for, go to **Events**.
3.  Click **USE EXISTING RECORD TYPES**.
4.  Configure the following **Event History** properties:

    | Property | Value |
    | --- | --- |
    | **Record Type** | Select a related record type to store all event data. The base record type must have a one-to-many relationship to this record type. |
    | **User Field** | Select a field of type User from the selected Event History record type. This field will store the users who complete each event. |
    | **Automation Identifier Field** | Select a field of type Number (Integer) from the selected Event History record type. This field will store the event's automation type. Make sure any existing data in this field corresponds to the list of [supported automation identifiers](fnc_informational_a_automationid.html#usage-considerations).

    For more information, see [Measure Automation with Record Events](record-events-automation.html). |
    | **Timestamp Field** | Select a field of type Date and Time from the selected Event History record type. This field will store the date and time when each event occurred. |
    | **Comment Field** | Select a field of type Text from the selected Event History record type. This field will store user comments on the event history list component.

    For more information, see [Enable Collaboration with Record Events](record-events-collaboration.html). |

5.  Configure the following **Event Type Lookup** properties:

    | Property | Value |
    | --- | --- |
    | **Record Type** | Select a related record type to store the different types of events. The Event History record type must have a many-to-one relationship to this record type. |
    | **Event Name Field** | Select a field of type Text from the selected Event Type Lookup record type. This field will store the names of the different event types. |
    | **Event Name for Adding Comments** | Select a field of type Text from the selected Event Type Lookup record type. This field will store the event name to capture if a user adds a comment on the event history list component.

    For more information, see [Enable Collaboration with Record Events](record-events-collaboration.html). |

6.  (Optional) Configure the properties for **Reply Thread** and **Subscriber**. Review the [requirements for Reply Thread record type](#reply-thread-record-type-requirements) and the [Subscriber record type](#subscriber-record-type-requirements).
7.  Click **FINISH** to configure record events.
8.  Click **SAVE**.

### Event History record type requirements

The Event History record type stores who completed an event and when.

When selecting an existing record type to store your event history, make sure it meets the following requirements:

-   The event history record type has a [many-to-one relationship](record-type-relationships.html) to the base record type.
-   The relationship to the base record type allows Appian to [write related records](record-type-relationships.html#write-and-delete-related-records).

The record type you select to store your event history must have the following required fields. If the record type doesn't have have these fields, you can edit the record type to [add new fields](update-source-from-record-type.html#add-a-field).

| Field | Type | Required? | Purpose |
| --- | --- | --- | --- |
| User | User | Yes | Stores the user that completed the event |
| Timestamp | Date and Time | Yes | Stores the date and time the event occurred |
| Automation type | Number (Integer) | [If capturing automating type](record-events-automation.html) | Stores event automation types using their [corresponding identifiers](fnc_informational_a_automationid.html#usage-considerations) |
| Comment | Text | [If capturing user comments](record-events-collaboration.html) | Stores comments that users add to the event history list component |

### Event Type Lookup record type requirements

The Event Type Lookup record type stores the names of event types you want to track in your event data.

When selecting an existing record type to store your event types, make sure it meets the following requirements:

-   The event types record type has a [one-to-many relationship](record-type-relationships.html) to the record type that stores your event history.
-   The record type should contain the names of [specific event types](record-events.html#make-your-event-types-specific) to track.

The record type you select to store your event types must have the following required fields. If the record type doesn't have have these fields, you can edit the record type to [add new fields](update-source-from-record-type.html#add-a-field).

| Field | Type | Purpose |
| --- | --- | --- |
| Event Name | Text | Stores the name of the event type |

### Reply Thread record type requirements

The Reply Thread record type stores comments and replies from threaded conversations on the [event history list component](Event_History_List_Component.html). This record type is required if you want to [enable threaded conversations](record-events-collaboration.html).

When you create a new record type to store threaded conversations from an event history list component, make sure the Event History record type has a [one-to-many relationship](record-type-relationships.html) to the record type that stores threaded conversations.

The new record type must have the following required fields:

| Field | Type | Purpose |
| --- | --- | --- |
| User | User | Stores the user that added the comment or reply |
| Reply | Text | Stores comments and replies from threaded conversations |
| Timestamp | Date and Time | Stores the date and time the comment or reply was added |
| Event ID | Number (Integer) | The common field that establishes a relationship between the Reply Thread record type and the Event History record type.

This field has a foreign key constraint in the generated database table. |

### Subscriber record type requirements

The Subscriber record type stores users subscribed to conversations on an [event history list component](Event_History_List_Component.html). This record type is required if you want to [enable subscribers](record-events-collaboration.html).

When you create a new record type to store users subscribed to conversations on an event history list component, the base record type must have a [one-to-many relationship](record-type-relationships.html) to the record type that stores subscribers.

The new record type must have the following required fields:

| Field | Type | Purpose |
| --- | --- | --- |
| User | User | Stores the users currently subscribed to conversations on an event history list component |
| Record ID | Number (Integer) | The common field that establishes a relationship between the Subscriber record type and the base record type.

This field has a foreign key constraint in the generated database table. |

## Modify the Event History record type

You can modify an Event History record type to meet any additional business requirements.

For example, you can [add fields](update-source-from-record-type.html#add-a-field), like `description`, to collect more information about an event. Any fields you add to the record type will appear in the Write Records smart service so you can specify the values to write for the event.

You will most likely need to add new fields if you decide to [measure automation](record-events-automation.html) or [enable collaboration](record-events-collaboration.html). If you add new fields to support these features, you'll need to update your record events configuration for [automation](record-events-automation.html#update-your-record-events-configuration) and [collaboration](record-events-collaboration.html) as well.

Appian also recommends enabling the [**Keep data available at high volumes**](records-data-sync.html#keep-data-available-at-high-volumes) sync option on the Event History record type. Since an event can be logged whenever a record is added or changed, this can result in a large quantity of event data. Enabling this sync option will ensure that you always have access to the latest event data, even as your data grows.

## Modify the base record type

Appian helps you calculate common success metrics for your business processes using custom record fields on the base record type in your record events configuration.

When you configure record events, we automatically add the following custom record fields to the record type where you're configuring record events:

| Field Name | Description |
| --- | --- |
| `minEventTimestamp` | The timestamp for the first event related to the record. |
| `maxEventTimestamp` | The timestamp for the most recent event related to the record. |
| `duration` | The difference between `minEventTimestamp` and `maxEventTimestamp`, in days. |

These fields are used to calculate how long it takes to complete your business process for each record in the record type. You can use this calculation to measure monthly process performace, average process duration, and more.

If you have an existing record events configuration, you can easily add these custom record fields with the [**Calculate Duration** template](custom-record-fields.html#calculate-duration--_realtime-).

## Edit the record events configuration

You can edit your record events configuration as your application grows and changes.

For example, you may want to update a field in your record events configuration if the original field was removed. Or, perhaps you want to enable threaded replies and subscribers in your event history list component, so you need to add record types to store that data.

To edit the record events configuration:

1.  In the record type you want to track events for, go to **Events**.
2.  Click **EDIT**.
3.  Update or remove the record types and fields associated with each event record type.
4.  Click **UPDATE**.
5.  Click **SAVE**.

## Write events

Once you configure record events, you can incorporate event tracking into your new and existing process models using the [Write Records smart service](Write_Records_Smart_Service.html). When you configure the smart service to write records, you can also specify what events to write, when to write them, and how the events are completed.

**Note:**  You can only write records and events together by using the Write Records node in a process model. You cannot use the `a!writeRecords` function to write records and events at the same time.

If you [generate Create or Update record actions](record-actions.html#generate-record-actions), Appian will automatically configure the Write Records node to write events.

If you do not generate your record actions, or you want to write more specific types of events (like Reviewed Order or Shipped Order), you can manually configure the Write Records node to write events.

To write events:

1.  (Optional) [Configure record events](record-events-configuration.html) for any record types you want to capture events for. You can only write records and events at the same time if the record type has record events configured.
2.  In your process model, open the **Write Records** node.
3.  Go to the **Setup** tab.

    [![images/blank_writeRecords_setup_tab.png](images/blank_writeRecords_setup_tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img506)

    [![](images/blank_writeRecords_setup_tab.png)](#_)

4.  For **Records Input**, specify the data to write:

    | To write to... | Action |
    | --- | --- |
    | Base record type | Select a process variable of type Record Type.

    This allows you to write data to the record type and any of its one-to-one or one-to-many related record types in a single transaction. |
    | Related record types that have the relationship configured to [**Write or delete…**](record-type-relationships.html#allow-writes-and-deletes) |
    | Unrelated record types | Select multiple process variables of type Record Type.

    This allows you to write to each of those record types in a single transaction. |
    | Related record types that have the relationship configured to [**Do not write or delete…**](record-type-relationships.html#do-not-allow-writes-and-deletes) |

    **Tip:**  If you need custom conditions or to update data with static values, you can write an expression with the data to update.

5.  If you selected multiple process variables in the **Records Input**, review the list of record types in **Record Type for Events**, and remove all except the record type you want to write events for. You can only write events for a single record type per node.

    **Note:**  If the record type does not have record events configured or multiple record types are selected, no events will be written.

6.  If the record type in **Record Type for Events** has record events configured, **choose when to write events**:

    | Option | Description |
    | --- | --- |
    | **Always** | Write events whenever the node executes. |
    | **Never** | Never write events whenever the node executes. |
    | **Only when…** | Specify the condition in which events are written. Click **Edit Condition** to write an expression defining the specific condition. |

7.  Select the values to write for the event. The field inputs are populated from the related [Event History record type](record-events-configuration.html#generated-event-history-record-type).

    You must map values for the following field inputs:

    | Input | Description |
    | --- | --- |
    | **Event Type** | The type of event that occurred. The dropdown list is populated from the values in the [Event Type Lookup record type](record-events-configuration.html#generated-event-type-lookup-record-type). If you use an expression, you must use the event type identifier to indicate the type of event. Learn more about [conditionally choosing event values](Write_Records_Smart_Service.html#conditionally-choose-event-values). |
    | **User** | Who completed the event. If the event will be completed by an automated task, set the value to **Null (Set as System Event)**. |
    | **Automation Type** | The [type of automation](record-events-automation.html) that completed the event. If the event isn't automated, set the value to **None (User)** to indicate it will be completed by a user. |
    | **Timestamp** | The date and time when the event occurred. Select **Now** to capture the date and time when the node executed. |

8.  Click **OK**.
9.  Click **Save & Publish** in the process model.

The Write Records smart service can only write events for a single record type, and that record type must be specified in **Record Type for Events**. Event data is not automatically create for any related record data, but it can be created using a separate Write Records node.

**Tip:**  There are some scenarios where you may only want to write events and not records, like when you want to capture events for an automated task or a task escalation. See the [Write Records smart service](Write_Records_Smart_Service.html#write-events-without-writing-records) to learn how to write events without writing records.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...