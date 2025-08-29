---
source_url: https://docs.appian.com/suite/help/25.3/Post_Hazard_to_Feed_Entry_Smart_Service.html
original_path: Post_Hazard_to_Feed_Entry_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Post Hazard to Feed Entry Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This smart service activity allows your process to highlight process problems in the feed to facilitate rapid and collaborative exception handling.

-   The message displays an exclamation mark icon ![](images/Hazard.png) and appears with a shaded red background.
-   It runs without user input.
-   You can specify the user context for the activity on the Assignment Tab.

### Properties

-   **Category**: Social

-   **Icon**: ![](images/Smart_Service_Icons/Post_Hazard_To_Feed.png)

-   **Assignment Options** - Always Attended

See also: [Smart Services](Smart_Services.html)

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | System Data Type | Required | Description |
| --- | --- | --- | --- |
| Entry Id | [Text](Appian_Data_Types.html#text) | Yes | This input takes the system-defined Entry ID number that was generated as an output from a [Post System Event to Tempo Smart Service](Post_System_Event_to_Feed_Smart_Service.html) or a [Post Event to Tempo Smart Service](Post_Event_to_Feed_Smart_Service.html). |
| Message | [Text](Appian_Data_Types.html#text) | Yes | The text of the hazard that you want to send, either entered manually or determined by a process variable, rule, or constant entered through the Expression Editor. The maxiumum is 4,000 bytes.-   If you leave the message parameter blank or the input contains more than 4,000 bytes, the activity is cancelled by exception at runtime.
-   See also: [Tempo Best Practices](Tempo_Best_Practices.html) regarding message content. |

#### Node outputs

| Name | System Data Type | Description |
| --- | --- | --- |
| Comment Id | [Text](Appian_Data_Types.html#text) | The system-generated ID number assigned to the hazard message. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...