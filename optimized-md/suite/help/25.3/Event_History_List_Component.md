---
source_url: https://docs.appian.com/suite/help/25.3/Event_History_List_Component.html
original_path: Event_History_List_Component.html
version: "25.3"
title: "Event History List"
page_id: "Event_History_List_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Event History List

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!eventHistoryListField**( _label, labelPosition, instructions, helpTooltip, emptyListMessage, eventData, eventStyle, formatTimestamp, displayUser, displayUserColorScheme, previewListPageSize, pageSize, showWhen, refreshAlways, refreshAfter, refreshInterval, refreshOnReferencedVarChange, refreshOnVarChange, userFilters, eventFilters, CollapseDetailsByDefault, showSearchBox, showReverseSortButton, commentLayout, mentionableUsers, commentCardColor, notificationUrl_ )

Displays the event history for one or more record types. If you configured [record events](record-events.html) on your record type, we recommend using the Event History record type to populate this list.

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the list label.

 |
|

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values:

-   `ABOVE` (default) Displays the label above the component.
-   `ADJACENT` Displays the label to the left of the component.
-   `COLLAPSED` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `JUSTIFIED` Aligns the label alongside the component starting at the edge of the page.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this list.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

 |
|

Empty List Message

 |

`emptyListMessage`

 |

_Text_

 |

Text to display in the list when no data is available. Default is `"No events to display"`.

 |
|

Data Source

 |

`eventData`

 |

_List of Event Data_

 |

The record event data that populates the list, created using one or more instances of [a!eventData()](Event_Data_Component.html).

 |
|

Event Style

 |

`eventStyle`

 |

_Text_

 |

Determines how the component displays. Valid values: `"PREVIEW_LIST"` (default), `"FULL_LIST"`, `"TIMELINE"`, `"LIST_WITH_COMMENTS"`. The "PREVIEW\_LIST", "FULL\_LIST", and "LIST\_WITH\_COMMENTS" styles are sometimes referred to collectively as list styles. See the [UX Design System](sail/ux-event-history-list.html) for best practices on when to use which style.

 |
|

Date Display

 |

`formatTimestamp`

 |

_Text_

 |

Determines how the component formats the event data timestamp. Valid values: `"DATE"`, `"DATE_TIME"` (default), `"DATE_TIME_TIMEZONE"`.

 |
|

User Image Style

 |

`displayUser`

 |

_Text_

 |

Determines if and how to display user avatars. Valid values include: `"NONE"`, `"INITIALS"` (default), `"IMAGE"`.

 |
|

User Color Scheme

 |

`displayUserColorScheme`

 |

_Any Type_

 |

If no profile picture is available, determines which color scheme to use for users in the event history list. Valid values: `"PARACHUTE"` (default), `"VIBRANT"`, `"CLASSIC"` or define a custom color scheme using [a!colorSchemeCustom()](Chart_Custom_Color_Scheme_Component.html). See [Chart Color Scheme](Chart_Color_Scheme.html) for color scheme examples.

 |
|

Preview List Page Size

 |

`previewListPageSize`

 |

_Number (Integer)_

 |

The maximum number of rows to display in each page of the initial list when the `"PREVIEW_LIST"` event style is selected. To set the paging for the **View All** dialog, see _pageSize_. Valid values include 1-10. Default: 5.

 |
|

Page Size

 |

`pageSize`

 |

_Number (Integer)_

 |

The maximum number of rows to display in each page of the list when the `"FULL_LIST"` or `"TIMELINE"` event style is selected. When the `"PREVIEW_LIST"` event style is selected, this parameter applies to the list as it appears in the **View More** dialog. Valid values include 1-100. Default: 10.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to `false`, the component is hidden and is not evaluated. Default: `true`.

 |
|

Refresh after each user interaction

 |

`refreshAlways`

 |

_Boolean_

 |

When true, _eventData_ will be refreshed after each user interaction and each interval refresh. Default: `false`.

 |
|

Refresh after record action completes

 |

`refreshAfter`

 |

_List of Text String_

 |

Refreshes _eventData_ data each time a specified action completes. Valid values: `"RECORD_ACTION"`.

 |
|

Refresh after an interval of time

 |

`refreshInterval`

 |

_Number (Decimal)_

 |

How often grid data gets refreshed in minutes. When null, _eventData_ will not be refreshed on an interval. Valid values: `"0.5"`, `"1"`, `"2"`, `"3"`, `"4"`, `"5"`, `"10"`, `"30"`, and `"60"`.

 |
|

Refresh after referenced variable changes

 |

`refreshOnReferencedVarChange`

 |

_Boolean_

 |

When true, grid data will be refreshed each time the value of any variable referenced in the _eventData_ parameter is updated. To refresh grid data when another variable that is not used in the _eventData_ parameter changes, use _refreshOnVarChange_. Default: `true`.

 |
|

Refresh after variable changes

 |

`refreshOnVarChange`

 |

_Any Type_

 |

Refreshes data each time any of these specific variables change. This allows you to refresh the data when a variable that is not referenced in the _eventData_ parameter is updated. You can define a single variable (for example, `refreshOnVarChange: local!var1`) or a list of variables (for example, `refreshOnVarChange: {local!var1, local!var2}`).

 |
|

User Filters

 |

`userFilters`

 |

_List of Variant_

 |

List of user filter references to display, configured using the `recordType!` domain. For example, `recordType!Order.filters.status`. You may only reference user filters defined on the record type used for the _eventData_. This parameter only applies when there is only one instance of [a!eventData()](Event_Data_Component.html).

 |
|

Component Filters

 |

`eventFilters`

 |

_List of Text_

 |

Determines which out-of-the-box filters to show. These filters exist only on the component, not on the record type. Use any combination of the following values {`"USER"`, `"EVENT_TYPE"`, `"DATE_RANGE"`}.

 |
|

Initially collapse event details

 |

`CollapseDetailsByDefault`

 |

_Boolean_

 |

Determines if the event details are collapsed when the interface first loads. Default: `true`.

 |
|

Show search box

 |

`showSearchBox`

 |

_Boolean_

 |

Determines if the record search box should be shown. Default: `true`.

 |
|

Show reverse sort button

 |

`showReverseSortButton`

 |

_Boolean_

 |

Determines if the list should include a button to reverse the event data sort. Default: `true`.

 |
|

Comment Layout

 |

`commentLayout`

 |

_Text_

 |

If [top-level comments are enabled](#allow-users-to-collaborate), determines whether to display events in a list or card view. Valid values: `"LIST"`, `"CARD"` (default).

 |
|

Mentionable Users

 |

`mentionableUsers`

 |

_Text_

 |

If top-level comments are enabled, this constant specifies the group of users who can be mentioned in comments. Mentioned users will receive email notifications when mentioned in comments.

 |
|

Comment Card Color

 |

`commentCardColor`

 |

_Text_

 |

Determines the color applied to the comment background for list and card layouts. Valid values: any valid hex color or `"STANDARD"` (default).

 |
|

Notification URL

 |

`notificationUrl`

 |

_Text_

 |

Determines the URL the user will be directed to from the notification email. If collaboration is enabled, the URL included in comment notification emails. Accepts `a!urlForRecord()`.

 |

## Usage considerations

### Using the eventStyle parameter

The _eventStyle_ parameter allows you to display your event history in the following styles:

| Style | Parameter Value | Description |
| --- | --- | --- |
| Preview List | `"PREVIEW_LIST"` | Displays a short list of events with the ability to view all events in a dialog. The dialog will display a longer list of events that users can search and filter on.

This option is best when you want to display your event history in a record view or alongside other components. You cannot use this style when the component displays in a dialog. |
| Full List | `"FULL_LIST"` | Displays a long list of events that users can search and filter on. If collaboration features are enabled, users can add top-level comments and threaded conversations.

This option is best when you want to display your event history as a single page in a site. If you enabled collaboration features, this option is best when you want the component to focus more on the events than on conversations. |
| Comment List | `"LIST_WITH_COMMENTS"` | Displays a list of events with the ability to add top-level comments, reply in threaded conversations, and view a unified activity stream.

This option is best when you want to enable [ad hoc user collaboration](#allow-users-to-collaborate) in event history list components. |
| Timeline | `"TIMELINE"` | Displays a timeline of events where events are organized by the timestamp field.

This option is best if you want to analyze events based on time rather than event type. |

### Display automation types

If you are capturing the specific automation type that completed an event, you can use [a!automationType()](fnc_informational_a_automationtype.html) to display the automation type in the _details_ parameter of the component.

For example, in the `a!eventData()` function, you could use the following expression in the _details_ parameter to explain when an order is completed by automation.

```
1
2
3
4
5
if(
  a!isNullOrEmpty(fv!data[recordType!Order Event History.fields.user]),
  a!automationType(fv!data[recordType!Order Event History.fields.automationTypeId]) & " completed this order.",
  {}
)
```

### Allow users to collaborate

When you select the **Component List** style or the **Full List** style, you can allow users to collaborate on the event history list component by enabling one or both of the following options:

-   [**Allow users to add comments**](#allow-users-to-add-comments): Allows users to add [top-level comments](record-events-collaboration.html#top-level-comments), which appear in-line with other events in the component.
-   [**Allow users to reply**](#allow-users-to-reply): Allows users to start [threaded conversations](record-events-collaboration.html#threaded-conversations), which appear threaded underneath top-level comments and other events.

When these options are enabled, users can add context to events, mention other users, and subscribe to conversations so they receive email notifications whenever someone adds to the conversation.

Appian will automatically write any user comments and replies to the Event History record type and Reply Thread record type selected in your [record events configuration](record-events-configuration.html#event-record-types). If users delete a comment or reply, that data will also be deleted from the record type.

**Note:**  Users can only delete their own comments and replies. However, any user with **Administrator** permission to the Event History record type can delete any comment or reply.

#### Allow users to add comments

To allow users to add comments on the event history list component:

1.  Ensure you've [enabled top-level comments in your record events configuration](record-events-collaboration.html#enable-top-level-comments).
2.  Configure the following parameters in the `a!eventHistoryListField()` function:

    | Parameter | Action |
    | --- | --- |
    | _eventStyle_ | Set the value to `"LIST_WITH_COMMENTS"`. |
    | _commentLayout_ | (Optional) Specify how to display comments. By default, comments display as cards. |
    | _mentionableUsers_ | (Optional) Specify a constant pointing to the group of users that can be mentioned in a comment. |

3.  Configure the following parameters in the `a!eventData()` function:

    | Parameter | Action |
    | --- | --- |
    | _allowUsersToComment_ | Set the value to `true`. |
    | _comment_ | Select the `comment` field from the Event History record type specified in the _recordType_ parameter. |
    | _baseRecordIdForComment_ | Write an expression indicating the identifier that links a comment to a specific record in the base record type. In most cases, you can reference the common field that links the Event History record type to the base record type.

    You can index using a rule input or local variable to return the identifier. For example, if your interface has a rule input that points to the base record type, this would be: `ri!record[recordType!Order.fields.Id]`. |

#### Allow users to reply

To allow users to reply and start threaded conversations on the event history list component:

1.  Ensure you've [enabled threaded conversations in your record events configuration](record-events-collaboration.html#enable-threaded-conversations).
2.  In the `a!eventData()` function, set the _allowUsersToReply_ parameter to `true`.

### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

## Examples

The following examples illustrate how to configure different styles of the event history list component.

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Preview list of events

[![images/previewList_eventHistory.png](images/previewList_eventHistory.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img58)

[![](images/previewList_eventHistory.png)](#_)

The expression looks like this:

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
a!eventHistoryListField(
    label: "Event History Preview List",
    labelPosition: "COLLAPSED",
    eventData: {
      a!eventData(
        recordType: recordType!Order Event History,
        filters: null,
        timestamp: recordType!Order Event History.fields.timestamp,
        user: recordType!Order Event History.fields.user,
        eventTypeName: fv!data[recordType!Order Event History.relationships.eventType.fields.eventName],
        details: if(
          isNullOrEmpty(fv!data[recordType!Order Event History.fields.details]),
          "No additional details",
          fv!data[recordType!Order Event History.fields.details]
        ),
        recordTypeForTag: recordType!Order,
        recordIdentifier: recordType!Order Event History.fields.recordId
      )
    },
    refreshAfter: "RECORD_ACTION",
    eventStyle: "PREVIEW_LIST",
    previewListPageSize: 5,
    pageSize: 10,
    formatTimestamp: "DATE_TIME",
    collapseDetailsByDefault: false,
    displayUser: "IMAGE",
    showSearchBox: true,
    eventFilters: { "EVENT_TYPE", "DATE_RANGE" },
    showReverseSortButton: true
  )
```

### Full list of events

[![images/fullList_eventHistory_24-4.png](images/fullList_eventHistory_24-4.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img59)

[![](images/fullList_eventHistory_24-4.png)](#_)

The expression looks like this:

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
33
a!eventHistoryListField(
    label: "Event History Full List",
    labelPosition: "COLLAPSED",
    eventData: {
      a!eventData(
        recordType: recordType!Order Event History,
        filters: null,
        allowUsersToComment: true,
        /* The "record" rule input is set to Type Order to pass in the specific order */
        baseRecordIdForComment: ri!record[recordType!Order.fields.id],
        timestamp: recordType!Order Event History.fields.timestamp,
        user: recordType!Order Event History.fields.user,
        comment: recordType!Order Event History.fields.comment
        eventTypeName: fv!data[recordType!Order Event History.relationships.eventType.fields.eventName],
        details: if(
          isNullOrEmpty(fv!data[recordType!Order Event History.fields.details]),
          "No additional details",
          fv!data[recordType!Order Event History.fields.details]
        ),
        recordTypeForTag: recordType!Order,
        recordIdentifier: recordType!Order Event History.fields.recordId
      )
    },
    refreshAfter: "RECORD_ACTION",
    eventStyle: "FULL_LIST",
    pageSize: 10,
    formatTimestamp: "DATE_TIME",
    collapseDetailsByDefault: true,
    displayUser: "IMAGE",
    showSearchBox: true,
    eventFilters: { "EVENT_TYPE", "DATE_RANGE" },
    showReverseSortButton: true
  )
```

### Comment list

[![images/listwithcomments_eventHistory_24-4.png](images/listwithcomments_eventHistory_24-4.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img60)

[![](images/listwithcomments_eventHistory_24-4.png)](#_)

In this example, the interface has a rule input that points to the Order record type. The _baseRecordIdForComment_ parameter indexes into the rule input to return the identifier of the record associated with the comment.

The expression looks like this:

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
a!eventHistoryListField(
  label: "Event History List with Comments",
  labelPosition: "COLLAPSED",
  eventData: a!eventData(
    recordType: recordType!Order Event History,
    filters: null,
    timestamp: recordType!Order Event History.fields.timestamp,
    user: recordType!Order Event History.fields.user,
    allowUsersToComment: true,
    comment: recordType!Order Event History.fields.comment,
    baseRecordIdForComment: ri!record[recordType!Order.fields.Id],
    allowUsersToReply: true,
    eventTypeName: fv!data[recordType!Order Event History.relationships.orderEventType.fields.eventName],
  ),
  refreshAfter: "RECORD_ACTION",
  eventStyle: "LIST_WITH_COMMENTS",
  commentLayout: "CARD",
  mentionableGroup: cons!ACCOUNT_MANAGERS,
  pageSize: 10,
  displayUser: "IMAGE"
)
```

### Timeline of events

[![image](images/timeline_eventHistory.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img61)

[![](images/timeline_eventHistory.png)](#_)

The expression looks like this:

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
a!eventHistoryListField(
    label: "Event History Timeline",
    labelPosition: "COLLAPSED",
    eventData: {
      a!eventData(
        recordType: recordType!Order Event History,
        filters: null,
        timestamp: recordType!Order Event History.fields.timestamp,
        user: recordType!Order Event History.fields.user,
        eventTypeName: fv!data[recordType!Order Event History.relationships.eventType.fields.eventName],
        recordTypeForTag: recordType!Order,
        recordIdentifier: recordType!Order Event History.fields.recordId
      )
    },
    refreshAfter: "RECORD_ACTION",
    eventStyle: "TIMELINE",
    previewListPageSize: 5,
    pageSize: 5,
    formatTimestamp: "DATE_TIME",
    collapseDetailsByDefault: true,
    displayUser: "IMAGE",
    showSearchBox: true,
    eventFilters: { "EVENT_TYPE", "DATE_RANGE" },
    showReverseSortButton: true
  )
```

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