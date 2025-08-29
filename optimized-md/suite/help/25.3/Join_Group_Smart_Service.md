---
source_url: https://docs.appian.com/suite/help/25.3/Join_Group_Smart_Service.html
original_path: Join_Group_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Join Group Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Join Group smart service allows you to select a public group and add yourself to it as a member, when the group has an `Automatic` [group membership policy](Configuring_Security_for_Groups.html#group-membership-policy).

You cannot use this smart service to join a group that has a restricted or exclusive membership policy.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Add_Group_Members.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

The [data tab](Process_Node_and_Smart_Service_Properties.html#data-tab) displays the node inputs and outputs for the smart service. You can add additional inputs and outputs, if needed.

#### Node inputs

The default input is `Group`.

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| Group | Group | Yes | No |

If the activity is run without being assigned to a user (or a group) you must designate a value for the `Group` node input. You can either manually enter the group, or a value can be generated using the Expression Editor. When using the Expression Editor, you can reference process variables, incorporate rules and constants, and other data. The expression you create is used at runtime to populate your node input.

If the activity is not assigned, it runs as the user who started the process.

It is also possible to set the unattended task to run as the process designer, which may not be useful for this activity.

#### Node outputs

The activity does not return any values.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...