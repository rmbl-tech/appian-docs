---
source_url: https://docs.appian.com/suite/help/25.3/Edit_Group_Smart_Service.html
original_path: Edit_Group_Smart_Service.html
version: "25.3"
title: "Edit Group Smart Service"
page_id: "Edit_Group_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Edit Group Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Edit Group smart service allows you to select a group and update any of its available fields, including its name, description, and parent group.

### Permissions needed

The Edit Group smart service can only be executed by a system administrator or by an administrator of the group. Attempting to run this node without sufficient rights causes an error message to be sent to the process administrator and pauses the process. This also occurs if you attempt to rename a group using an existing name or specify an object that does not exist.

Attempting to execute this task as a Basic User causes a runtime exception that pauses the process and sends an alert to the Process Administrator.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Add_Group_Members.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Type | Required | Multiple | Default Value | Comments |
| --- | --- | --- | --- | --- | --- |
| Group | Group | Yes | No |  |  |
| Name | Text | Yes | No |  |
The following characters are not allowed in group names.

`/ \ < > " , . * '`

 |
| Description | Text | No | No |  |  |
| Delegated Creation? | Integer |  | No | 0 (No) | The default values are Yes or No. The integer 1 equals yes. 0 equals no. |
| Parent Group | Group | No | No |  | The user account that activates this activity must have Administrator rights for the parent group in order to add this new group as a child. |
| Membership Policy | Number | Yes | No | Closed | Default value options: Closed, Exclusive, Automatic |
| Visibility | Number | Yes | No | Public | Default value options: Public, Personal, Restricted |
| Privacy Policy | Number | Yes | No | Low | Default value options: Low, High |

If the activity is run without being assigned to a user (or a group) you must specify values for each of the node inputs listed.

Selecting a **Personal** visibility input value sets other associated node input values automatically. Be aware that the node input lists on the Data tab and the dropdown lists displayed task form are not automatically filtered when this happens to show only valid options for the visibility. Any invalid selections (made by you at design time, or by your users at runtime) are ignored when the group is created.

If the Visibility input is set to **Personal**, the following settings are configured automatically.

-   The Group Type input is set to **Custom**
-   No value can be specified for the Parent Group node input.
-   The membership policy node input is set to **Closed**.
-   The privacy policy node input is set to **High**.

## a!editGroup()

The [Edit Group smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!editGroup**( _group, name, description, delegatedCreation, parent, membershipPolicy, securityType, groupPrivacy, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`group`

 |

_Group_

 |

The group to modify.

 |
|

`name`

 |

_Text_

 |

The name of the group.

 |
|

`description`

 |

_Text_

 |

The description of the group.

 |
|

`delegatedCreation`

 |

_Boolean_

 |

Should administrators of this group be permitted to create additional groups as children? The default value is `false`.

 |
|

`parent`

 |

_Group_

 |

The group's parent. You must be an administrator of this group.

 |
|

`membershipPolicy`

 |

_Text_

 |

The membership policy of the new group. Valid values include `CLOSED` (default), `EXCLUSIVE`, `AUTOMATIC`. See [Group Membership Policy](Configuring_Security_for_Groups.html#group-membership-policy) for definitions of the membership policies.

 |
|

`securityType`

 |

_Text)_

 |

The security type of the new group. Valid values include `PUBLIC` (default), `PERSONAL`, `RESTRICTED`. See [Group Visibility](Configuring_Security_for_Groups.html#group-visibility) for definitions of the security types.

 |
|

`groupPrivacy`

 |

_Text_

 |

The privacy policy of the new group. Valid values include `LOW` (default), `HIGH`. See [Group Privacy Policy](Configuring_Security_for_Groups.html#group-privacy-policy) for definitions of the group privacy rules.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`.

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

### Returns

[Save](fnc_evaluation_save.html)

### Example

See [Create Group Smart Service](Create_Group_Smart_Service.html#example)

## Feature compatibility

The table below lists this smart service function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
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