---
source_url: https://docs.appian.com/suite/help/25.3/Delete_Group_Smart_Service.html
original_path: Delete_Group_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Delete Group Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Delete Group smart service allows you to select a group and remove it from the system.

**Note:**  The [Portal Administrators](Application_Portal.html) and [Document Administrators](Document_Administrators.html) custom groups are built into Appian and cannot be deleted, even by system administrators.

### Permissions needed

The Delete Group activity can only be executed by a system administrator or by an administrator of the group. Attempting to run this node without sufficient rights causes an error message to be sent to the process administrator and pauses the process.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Delete_Group.png)

-   **Assignment Options**: This smart service can be either attended or unattended (default)

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Type | Required | Multiple | Default Value | Comments |
| --- | --- | --- | --- | --- | --- |
| Group | Group | Yes | No |  | The group to delete. |

Selecting a Personal _Visibility_ input value sets other associated node input values automatically. Be aware that the node input lists on the Data tab and the dropdown lists displayed task form are not automatically filtered when this happens to show only valid options for the Visibility. Any invalid selections (made by you at design time, or by your users at runtime) are ignored when the group is created.

## a!deleteGroup()

The [Delete Group smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!deleteGroup**( _group, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`group`

 |

_Group_

 |

The group to delete.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!group` function variable (Any Type) is available to specify the group that was created. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

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