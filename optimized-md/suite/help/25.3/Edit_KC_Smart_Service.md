---
source_url: https://docs.appian.com/suite/help/25.3/Edit_KC_Smart_Service.html
original_path: Edit_KC_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Edit KC Properties Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Edit KC node lets you update the name, description and/or expiration date of a selected Knowledge Center. To execute this node, you must be a System Administrator, a member of the Document Administrators group, or a Knowledge Center Administrator.

**Caution:**  This node can only be executed with the appropriate user rights. Attempting to complete this task without sufficient rights generates an error message for the Process Administrator and pauses the process.

Keep in mind that the changes made by your process, such as giving a Knowledge Center a new name, might not be visible until you have refreshed the page.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Edit_KC_Properties.png)

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
| Name | Text | No | No |
| Description | Text | No | No |
| Expiration Days | Number | No | No |

If the node is run without being assigned to a user (or a group) you must specify values for each of the Node Inputs listed in the table above. You can either manually enter data into the text-field, or a value can be generated using the Expression Editor. When using the Expression Editor, you can reference and modify Process Variables, rules, constants, and other data. The expressions then specify your Node Input values.

The default file-expiration interval is 10000 days.

If the node is assigned, the Node Input values are typed by your assigned user(s) into a form.

**Note:**  When modifying the Knowledge Center's expiration date, enter the number of days until it expires, not an actual date.

## a!editKnowledgeCenterProperties()

The [Edit Knowledge Center Properties smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!editKnowledgeCenterProperties**( _knowledgeCenter, name, description, expirationDays, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`knowledgeCenter`

 |

_Knowledge Center_

 |

The knowledge center to modify.

 |
|

`name`

 |

_Text_

 |

The new name of the knowledge center.

 |
|

`description`

 |

_Text_

 |

The new description of the knowledge center.

 |
|

`expirationDays`

 |

_Number (Integer)_

 |

The number of days after which documents in the selected knowledge center will expire.

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