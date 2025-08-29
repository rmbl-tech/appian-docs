---
source_url: https://docs.appian.com/suite/help/25.3/record-events-collaboration.html
original_path: record-events-collaboration.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Enable Collaboration with Record Events

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to configure record events so your users can collaborate using the event history list component.

## Overview

Once you are capturing event data with [record events](record-events.html), you can use the [event history list component](Event_History_List_Component.html) to display event data in record views, interfaces, and reports. You can also enable user collaboration on your event history list components so users can have conversations and ask questions directly in the context of their records.

When you enable collaboration with record events, you can allow users to add [top-level comments](#top-level-comments), [threaded conversations](#threaded-conversations), or both.

When users comment or reply in conversations, they can mention other users so those users will receive email notifications about important updates or questions. Users can also choose to [subscribe](#enable-subscribers) to receive email notifications any time someone adds to a conversation.

### Top-level comments

Top-level comments appear alongside other events in the event history list component. Because these comments are visible at a glance, they're a good way to highlight an important update or to prompt additional conversation in a thread.

[![images/top-level-comments.png](images/top-level-comments.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img503)

[![](images/top-level-comments.png)](#_)

Top-level comments are stored as [ad hoc events](record-events.html#decide-whether-to-track-ad-hoc-events) in the [Event History record type](record-events-configuration.html#event-record-types)

### Threaded conversations

Threaded conversations appear under events, including top-level comments, in the event history list component. Enabling threaded conversations makes it easy to have organized conversations about a specific event or comment in the component.

[![images/threaded-conversations.png](images/threaded-conversations.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img504)

[![](images/threaded-conversations.png)](#_)

Threaded conversations are not events, and are stored separately in the Reply Thread record type.

## Before you begin

Before you can enable collaboration, you'll need to [configure record events](record-events-configuration.html).

Your next steps will depend on how you configure record events:

-   If you decide to generate event record types, your new record events configuration will already meet the requirements to enable collaboration. You can then set up the event history list component to [allow users to collaborate](Event_History_List_Component.html#allow-users-to-collaborate).

-   If you decide to use existing record types, or if you already configured record events and want to enable collaboration, you can easily modify your existing record types or create new record types as needed following the instructions below.

## Enable collaboration with record events

To enable collaboration with record events:

1.  Decide whether you want to enable [top-level comments](#top-level-comments), [threaded conversations](#threaded-conversations), or both.
2.  Update the record events configuration to enable:
    -   [Top-level comments](#enable-top-level-comments).
    -   [Threaded conversations](#enable-threaded-conversations).
    -   [Subscribers](#enable-subscribers).
3.  [Enable collaboration features on an event history list component](Event_History_List_Component.html#allow-users-to-collaborate).

## Enable top-level comments

To support [top-level comments](#top-level-comments) on the event history list component, you must have the following:

-   A `comment` field to store comments on the Event History record type.
-   An event type to use when users add comments.
-   The **Comment Field** property selected in the record events configuration.

If you already have these elements, you can set up your event history list component to allow users to add top-level comments.

If you don't have these elements, follow the steps below to add these elements to your existing record types and record event configuration:

To enable [top-level comments](#top-level-comments) on the event history list component:

1.  On the Event History record type, [add a field](update-source-from-record-type.html#add-a-field) and configure the following properties to store comments:

    | Property | Action |
    | --- | --- |
    | Name | Enter an easily recognizable name, like `comment`. |
    | Data Type | Select the **Text** data type. |

    Appian will automatically write comments to this field when users add comments on the event history list component, so you do not need to create or update any process models to capture user comments.

2.  On the Event Type Lookup record type, add a new event type for adding comments:
    1.  Go to **Data Preview**.
    2.  Click **Add Row**.
    3.  For **eventName**, enter the name of the new field. For example, `Commented on Order`.
    4.  Click **ADD**.
    5.  When you're ready to write your changes, click **WRITE CHANGES**.
    6.  Click **WRITE**.

3.  On the base record type, edit the record events configuration:
    1.  Go to **Events**.
    2.  Click **EDIT**.
    3.  Configure the following properties:

        | Property | Value |
        | --- | --- |
        | **Comment Field** | Select the new Text field you created on the Event History record type. |
        | **Event Name for Adding Comments** | Select the new event type you created on the Event Type Lookup record type. |

4.  [Update the event history list component](Event_History_List_Component.html#allow-users-to-add-comments) to allow users to add comments.

## Enable threaded conversations

To support [threaded conversations](#threaded-conversations) on the event history list component, you must have the following:

-   A Reply Thread record type.
-   The **Reply Thread** properties selected in the record events configuration.

If you already have these elements, you can set up your event history list component to allow users to have threaded conversations.

If you don't have these elements, follow the steps below to create a new record type and update the record event configuration.

To allow users to add [threaded conversations](#threaded-conversations):

1.  [Create a new record type](Create_a_Record_Type.html) that will store comments and replies from threaded conversations on the event history list component.

2.  In the new record type, add the following fields:

    | Field | Type | Purpose |
    | --- | --- | --- |
    | User | User | Stores the user that added the comment or reply |
    | Reply | Text | Stores comments and replies from threaded conversations |
    | Timestamp | Date and Time | Stores the date and time the comment or reply was added |
    | Event ID | Number (Integer) | The common field that establishes a relationship between the Reply Thread record type and the Event History record type. |

3.  In the Event History record type, create a [one-to-many relationship](record-type-relationships.html) to the new record type that stores threaded conversations.

4.  On the base record type, edit the record events configuration:
    1.  Go to **Events**.
    2.  Click **EDIT**.
    3.  Configure the following **Reply Thread** properties:

        | Property | Value |
        | --- | --- |
        | **Record Type** | Select a related record type to store the different types of events. The Event History record type must have a many-to-one relationship to this record type. |
        | **User Field** | Select a field of type User from the selected Reply Thread record type. This field will store the user that added the comment or reply in a threaded conversation on the event history list component. |
        | **Reply Field** | Select a field of type Text from the selected Reply Thread record type. This field will store the reply or comment. |
        | **Timestamp Field** | Select a field of type Date and Time from the selected Reply Thread record type. This field will store the date and time each comment or reply was added. |

5.  [Update the event history list component](Event_History_List_Component.html#allow-users-to-reply) to allow users to reply.

## Enable subscribers

You can allow users to subscribe to conversations on the [event history list component](Event_History_List_Component.html) so they receive email notifications whenever someone adds a top-level comment or adds to a threaded conversation.

Users can only subscribe to conversations when the event history record type is displaying events for a single record, like in a [record view](record-view.html).

To allow users to subscribe to conversations on an event history list component, you must have the following:

-   A Subscriber record type.
-   The **Subscriber** properties selected in the record events configuration.

If you already have these elements, the subscription feature is automatically enabled on the event history list component.

If you don't have these elements, follow the steps below to create a new record type and update the record event configuration.

To allow users to subscribe to conversations:

1.  [Enable top-level comments](#enable-top-level-comments), [threaded conversations](#enable-threaded-conversations), or both to allow users to collaborate.

2.  [Create a new record type](Create_a_Record_Type.html) that will store the users subscribed to email notifications for conversations on the event history list component.

3.  In the new record type, add the following fields:

    | Field | Type | Purpose |
    | --- | --- | --- |
    | User | User | Stores the user subscribed to conversations on the event history list component |
    | Record ID | Number (Integer) | The common field that establishes a relationship between the Subscriber record type and the base record type. |

4.  In the base record type, create a [one-to-many relationship](record-type-relationships.html) to the new record type that stores subscribers.

5.  On the base record type, edit the record events configuration:
    1.  Go to **Events**.
    2.  Click **EDIT**.
    3.  Configure the following **Subscriber** properties:

        | Property | Value |
        | --- | --- |
        | **Record Type** | Select a related record type to store the users subscribed to conversations on an event history list component. The base record type must have a one-to-many relationship to this record type. |
        | **User Field** | Select a field of type User from the selected Subscriber record type. This field will store the users currently subscribed to conversations on the event history list component. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...