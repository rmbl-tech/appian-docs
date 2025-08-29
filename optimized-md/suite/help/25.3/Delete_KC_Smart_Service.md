---
source_url: https://docs.appian.com/suite/help/25.3/Delete_KC_Smart_Service.html
original_path: Delete_KC_Smart_Service.html
version: "25.3"
title: "Delete KC Smart Service"
page_id: "Delete_KC_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Delete KC Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Delete KC node allows you to select a Knowledge Center and then completely remove it from the system, along with any child folders. You must be a System Administrator, a member of the Document Administrators group, or Knowledge Center Administrator to complete this task.

**Caution:**  This node can only be executed with the appropriate user rights. Attempting to complete this task without sufficient rights displays an error message and pauses the process.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Delete_kc.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

This tab displays all the Node Inputs and Node Outputs for the Service Node. You can add additional inputs and outputs, if needed. The default inputs are:

| Input | Type | Required | Multiple |
| --- | --- | --- | --- |
| Knowledge Center | Knowledge Center | Yes | No |
| Delete Children | Number | Yes | No |

If the node is run without being assigned to a user (or a group) you must specify values for each of the Node Inputs listed in the table above. You can either manually enter data into the text-field, or a value can be generated using the using the Expression Editor. When using the Expression Editor, you can reference and modify Process Variables, rules, constants, and other data. The expressions then specify your Node Input values.

If the node is assigned, the Node Input values are typed by your assigned user(s) into a form.

## a!deleteKnowledgeCenter()

The [Delete Knowledge Center smart service](#) is available as an expression function that can be executed inside a saveInto on a [component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!deleteKnowledgeCenter**( _knowledgeCenter, deleteSubfolders, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`knowledgeCenter`

 |

_Knowledge Center_

 |

The knowledge center to delete.

 |
|

`deleteSubfolders`

 |

_Boolean_

 |

If set to `true`, deletes all child folders of this Knowledge Center. Default is `false`.

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