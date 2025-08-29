---
source_url: https://docs.appian.com/suite/help/25.3/User_Contexts_for_Expressions.html
original_path: User_Contexts_for_Expressions.html
version: "25.3"
title: "User Contexts for Expressions"
page_id: "User_Contexts_for_Expressions"
section: "Feedback"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# User Contexts for Expressions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The user context taken by expressions (and certain logic executed behind-the-scenes) can encounter user-rights issues when the system is attempting to derive information at runtime. For example: if a process is initiated by a certain user who does not have sufficient rights to access a resource requested by an activity input, that activity may encounter an exception that halts process execution.

-   When an activity is run in unattended mode, you have the option of using the user context of the process designer or the process initiator.
-   If the activity is attended, you can opt to run the activity in a [subprocess](Sub-Process_Activity.html) that takes its user context from the parent process designer.

The following contexts are used for derived items.

| Evaluated Logic | User Context |
| --- | --- |
| Node name | Initiator |
| Node deadline | **Attended:** initiator
**Unattended:** initiator or designer (as configured) |
| Node paused by exception notification | **Attended:** initiator
**Unattended:** initiator or designer (as configured) |
| Form element | Initiator |
| Form element refresh | If non-SAIL form, initiator; if interface, task owner if accepted, otherwise current task viewer |
| Activity input | **Attended**: If non-SAIL form, initiator; if interface, task owner if accepted, otherwise current task viewer
**Unattended**: initiator or designer (It takes the configured context for primary activities. The programmed smart service context is used for other activities.) |
| Activity input refresh | **Attended:** If non-SAIL form, task owner if accepted, otherwise initiator (first time task is clicked on, it's initiator); If interface, task owner if accepted, otherwise current task viewer
**Unattended:** initiator or designer (as configured)
**Note**: If you re-run the expression as task owner and an error occurs, the existing value (run as **Initiator**) remains. |
| Activity output | **Attended:** task owner
**Unattended:** initiator or designer (as configured) |
| Gateway condition | Initiator |
| Parallel spawned node output behavior | Initiator |
| Number of node instances to spawn | Initiator |
| Receive message output expression | Initiator |
| Receive message filtering | Initiator |
| Timer absolute start time | Initiator |
| Timer relative start time | Initiator |
| Timer filtering | Initiator |
| Timer timezone configuration | Initiator |
| Timer recurrence configuration | Initiator |
| Timer recurrence end time | Initiator |
| Timer recurrence end condition | Initiator |
| Process paused by exception notification | Initiator |
| Process name | Initiator |
| Process deadline | Initiator |
| Process variable defined using an expression | Initiator |
| Rule evaluation | Initiator |
| Message start event process variable evaluation | `UserName` property from message |
| Timer start event process variable evaluation | Process model owner. If null, then designer. |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...