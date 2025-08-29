---
source_url: https://docs.appian.com/suite/help/25.3/Post_System_Event_to_Feed_Smart_Service.html
original_path: Post_System_Event_to_Feed_Smart_Service.html
version: "25.3"
title: "Post System Event to Feed Smart Service"
page_id: "Post_System_Event_to_Feed_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Post System Event to Feed Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Post System Event to Feed Smart Service allows you to automatically publish system events from a designated source (such as your CRM or HR system) to the News feed.

When publishing feed information from your process, you can have the information appear as being attributed to a given system or a specific user.

Use this activity when you want the information to show it was posted by the **system** or a **specific application**.

Use the [Post Event to Feed Smart Service](Post_Event_to_Feed_Smart_Service.html) when you want the information to list that it was posted by a **specific user**.

You can specify the user context for the activity on the Assignment Tab.

See also: [Assignment Tab](Process_Node_and_Smart_Service_Properties.html#assignment-tab)

The user designated to run this activity will see the system event in his/her news feed only if he/she is specified in the Viewers input.

**Note:**  Once posted, system events can only be deleted by system administrators.

### Permissions needed

The user designated to run this smart service must have permission to post an entry to the specified feed.

Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

### Properties

-   **Category**: Social

-   **Icon**: ![](images/Smart_Service_Icons/Post_System_Event_To_Feed.png)

-   **Assignment Options** - Always Unattended

See also: [Smart Services](Smart_Services.html)

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | System Data Type | Required | Multiple | Description |
| --- | --- | --- | --- | --- |
| Feed | Feed | Yes | No | Specifies a subscription feed to use when posting the event.
-   You must define at least one feed in the application before configuring this smart service.
-   See also: [Feeds](Feeds.html)

 |
| Message | [Text](Appian_Data_Types.html#text) | Yes | No | The message text of the feed entry for this event, either entered manually or determined by a process variable, rule, or constant entered through the Expression Editor. The maxiumum is 4,000 bytes.

-   If you leave the message parameter blank or the input contains more than 4,000 bytes, the activity is cancelled by exception at runtime.
-   See also: [Tempo Best Practices](Tempo_Best_Practices.html) regarding message content.

 |
| Attachments | [Document](Appian_Data_Types.html#document) | No | Yes | The file(s) to attach to the event.

-   If any viewer of the event does not have access to view a file or a file is deleted, the event displays with the files the viewer can access and a message indicating how many files he/she could not see.
-   See also: [Folder and Document Management](folder-and-document-management.html)

 |
| Record Tags | [Record Identifier](Appian_Data_Types.html#record-identifier) | No | Yes | The records to tag to the event.

-   If any viewer of the event does not have access to view a record or a record is deleted, a record tag is not displayed for that record.

 |
| Icon | [Document](Appian_Data_Types.html#document) | No | No | The image or logo of the system that is posting the event.

-   See also: [System Event Icons](Appian_Icons.html#news-event-icons).

 |
| Source | [Text](Appian_Data_Types.html#text) | Yes | No | The name of the system that is publishing the event (such as your CRM system). |
| Viewers | [Users](Appian_Data_Types.html#user) and [Groups](Appian_Data_Types.html#group) | No | Yes | The selected users and members of the selected groups who can see the feed entry for this event.

-   You can enter the value as an expression.
-   When the input is left unspecified, all users can view the entry.
-   If you specify a user/group that cannot be found at runtime, the activity is cancelled by exception.
-   If you select a personal group for targeting, the group name is hidden from non-administrators.

 |
| Personalization Group | [Group](Appian_Data_Types.html#group) | No | No | A group to be associated with the event for use in subscription personalization.

-   If the value of the Personalization Group that you specify can't be found at runtime (such as when the group is deleted or when an invalid expression is used) the activity is canceled by exception.

 |
| Action Process | [Process Model](Appian_Data_Types.html#process-model) | No | No | An action the users can start when they click the link called **Open a Case** on the feed entry when this input is configured. The link only displays if you configure this input.

-   See also: [Enabling users to open a case from the feed entry](#enabling-users-to-open-a-case-from-the-feed-entry)

 |
| Action Instructions | [Text](Appian_Data_Types.html#text) | No | No | The instructions displayed as a tooltip when a user rests their pointer on the **Open a Case** link. |
| Event Data | [LabelValue](Appian_Data_Types.html#labelvalue) (CDT) | No | No | Additional details regarding the posted event.

-   The list of label value entries must be mapped from a multiple-value process variable that is populated by other activities in your process model.
-   See also: [Populating Event Data Inputs](Populating_Label_Value_Inputs.html)

 |

#### Node outputs

| Name | System Data Type | Description |
| --- | --- | --- |
| Entry Id | [Text](Appian_Data_Types.html#text) | The ID of the newly created feed entry |

## Usage considerations

### Enabling users to open a case from the feed entry

Event postings made by the Post System Event to Feed Smart Service provide users the additional option to `Open a Case` by clicking a link on the post.

-   When you click the link, you are prompted to add optional instructions.
-   A `case opened` message appears as a comment to the event, listing the user who opened a case, when it was opened, and any additional comments that were entered.
-   You cannot directly pass data from the process that posted an event to the new process that is started.
-   Instructions or additional details can be provided by the user when the user opens a case (starts the process).

You can enable this feature for your users by configuring the proper smart services and target process model.

#### Configuring a case management target process

To configure a case management target process:

1.  Create a process model designed to handle the issue.
    -   The process model should not include a process start form.
    -   Process start forms are ignored when a process is started using an **Open a Case** link.
2.  Assign Viewer rights to the process model for the intended users.
3.  Assign a task to the user or group you want to follow up on the case that is opened by a user.
4.  Within that task, display the notes or comments entered by the user by including a read-only text field that displays the `pv!feedActionNotes` from the process that was started. You can access this parameter by referencing it within an expression.
5.  When you've build your case management process, be sure to **Save & Publish** the process model to enable it as a target action.

#### Configuring the smart services

To configure the smart services:

1.  On the **Data** tab, click the **Action Process** node input.
2.  Click the **Browse** button next to the **Value** field.
3.  Select a published process model.

Note:

-   Any instructions entered by the user are passed to the process that is started using the `pp!feedActionNotes` parameter.
-   If users don't have Initiator rights for the selected process model, they still see the `Open a case` link. In such cases, an error is displayed when the user clicks the link.
-   If the process model you specify is not found when the user clicks the link, an error is displayed.

#### Case management parameters

The following reserved parameters are populated automatically when a process is started by opening a case.

You must [create these parameters](process-model-object.html#variables-tab) individually within your target process model.

| Parameter | System Data Type | Description |
| --- | --- | --- |
| `pv!feedEntryId` | [Text](Appian_Data_Types.html#text) | The entry ID of the Tempo feed event that provided the context for opening a case. |
| `pv!feedMessage` | [Text](Appian_Data_Types.html#text) | The feed entry text of the Tempo feed event that provided the context for opening a case. |
| `pv!feedUser` | [Text](Appian_Data_Types.html#text) or [User](Appian_Data_Types.html#user) | The user ID of the process actor associated with posting the feed entry. |
| `pv!feedPubTime` | [Date and Time](Appian_Data_Types.html#date-and-time) | The publication timestamp of the feed entry. |
| `pv!feedActionNotes` | [Text](Appian_Data_Types.html#text) | The optional information entered by the user when opening the case. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...