---
source_url: https://docs.appian.com/suite/help/25.3/Modify_KC_Security_Smart_Service.html
original_path: Modify_KC_Security_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Modify KC Security Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Modify KC Security node allows you to select users and groups to be added to a Knowledge Center with one of a specific set of security roles. See [Knowledge Center Security](folder-object.html#prodlink-knowledge-center-security) for more information.

The available security roles for this are:

-   Readers
-   Authors
-   Administrators

You cannot remove users from a security role, using this smart service.

Only the owner or administrator of a Knowledge Center, a member of the Document Administrators group, or a System Administrator can add users to these roles. Prior security properties can be overridden by this node.

**Caution:**  This node can only be executed with the appropriate user rights. Attempting to complete this task without sufficient rights generates an error message for the Process Administrator and pauses the process.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Modify_KC_Security.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

This tab displays all the Node Inputs and Node Outputs for the Service Node. You can add additional inputs and outputs, if needed.

#### Node inputs

The default inputs are:

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| Knowledge Center | Knowledge Center | Yes | No |
| Readers | People | No | Yes |
| Authors | People | No | Yes |
| Administrators | People | No | Yes |

If the node is run without being assigned to a user (or a group) you must specify values for each of the Node Inputs listed in the table above. You can either manually enter data into the text-field, or a value can be generated using the using the Expression Editor. When using the Expression Editor, you can reference and modify Process Variables, rules, constants, and other data. The expressions then specify your Node Input values.

If the node is assigned, the Node Input values are typed by your assigned user(s) into a form.

## a!modifyKnowledgeCenterSecurity()

The [Modify Knowledge Center Security smart service](#) is available as an expression function that can be executed inside a saveInto parameter on an [interface component](SAIL_Components.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!modifyKnowledgeCenterSecurity**( _knowledgeCenter, readers, authors, administrators, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`knowledgeCenter`

 |

_Knowledge Center_

 |

The knowledge center you want to set security for.

 |
|

`readers`

 |

_List of User or Group_

 |

The new users and groups to have reader access to the folder.

 |
|

`authors`

 |

_List of User or Group_

 |

The new users and groups to have author access to the folder.

 |
|

`administrators`

 |

_List of User or Group_

 |

The new users and groups to have administrator access to the folder.

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