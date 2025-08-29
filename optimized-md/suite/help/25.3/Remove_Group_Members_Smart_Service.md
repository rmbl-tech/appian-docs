---
source_url: https://docs.appian.com/suite/help/25.3/Remove_Group_Members_Smart_Service.html
original_path: Remove_Group_Members_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Remove Group Members Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Remove Group Members node allows you to select a user within a group, and remove that user from the group. You must be either a System Administrator or a Group Administrator in order to run this node.

**Caution:**  The Remove Group Members Service Node can only be executed by someone with Group or System Administrator rights. Attempting to complete this task without sufficient user rights causes a runtime error message to be sent to the Process Administrator and pauses the process.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Remove_Group_Members.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

This tab displays the node inputs and node outputs for the service node. You can add additional inputs and outputs, if needed.

#### Node inputs

The default inputs are:

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| Choose Members | People | Yes | Yes |
| Group | Group | Yes | No |

If the node is run without being assigned to a user (or a group) you must specify values for each of the Node Inputs listed in the table above. You can either manually enter data into the text-field, or a value can be generated using the Expression Editor. When using the Expression Editor, you can reference and modify Process Variables, rules, constants, and other data. The expressions then populate your Node Input values.

If the node is assigned, the Node Input values are typed by your assigned user(s) into a form.

#### Node outputs

This node does not return any values.

## a!removeGroupMembers()

The [Remove Group Members smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!removeGroupMembers**( _group, members, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`group`

 |

_Group_

 |

The users to remove as members of this group.

 |
|

`members`

 |

_List of User or Group_

 |

The users that will be removed as members.

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