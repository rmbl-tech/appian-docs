---
source_url: https://docs.appian.com/suite/help/25.3/Leave_Group_Smart_Service.html
original_path: Leave_Group_Smart_Service.html
version: "25.3"
title: "Leave Group Smart Service"
page_id: "Leave_Group_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Leave Group Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Leave Group node allows you to select a department or team and remove yourself as a member. If you attempt to leave a group that you were not a member of, no actions take place.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Leave_Group.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

This tab displays the node inputs and node outputs for the service node. You can add additional inputs and outputs, if needed.

#### Node inputs

The default inputs are:

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| Group | Group | Yes | No |

If the node is run without being assigned to a user (or a group) you must specify values for each of the Node Inputs listed in the table above. You can either manually enter data into the text-field, or a value can be generated using the Expression Editor. When using the Expression Editor, you can reference and modify Process Variables, rules, constants, and other data. The expressions then populate your Node Input values.

If the node is assigned, the Node Input values are typed by your assigned user(s) into a form.

#### Node outputs

This node does not return any values.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...