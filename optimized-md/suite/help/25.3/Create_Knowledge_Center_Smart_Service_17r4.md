---
source_url: https://docs.appian.com/suite/help/25.3/Create_Knowledge_Center_Smart_Service_17r4.html
original_path: Create_Knowledge_Center_Smart_Service_17r4.html
version: "25.3"
title: "Create Knowledge Center Smart Service (17.4)"
page_id: "Create_Knowledge_Center_Smart_Service_17r4"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create Knowledge Center Smart Service (17.4)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Create Knowledge Center Smart Service](/suite/help/25.3/Create_Knowledge_Center_Smart_Service.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Create_Knowledge_Center_Smart_Service.html#Old_Version)

## Overview

A knowledge center is a second-level container in Appian Document Management (below Communities). All folders and files are stored in knowledge centers. By creating knowledge centers and granting access to other users, you can share files and collaborate on them, either within a process, or through a portal page.

The **Create KC** smart service node allows you to create a knowledge center and configure its [security](folder-object.html#prodlink-knowledge-center-security) from a process.

### Properties

-   **Category**: Document Management

-   **Icon**: ![](images/Smart_Service_Icons/Create_KC.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

This tab displays all the Node Inputs and Node Outputs for the Service Node. You can add additional inputs and outputs, if needed. The default inputs are:

| Input | Type | Required | Multiple |
| --- | --- | --- | --- |
| Parent Community | Collaboration Community | No | No |
| Knowledge Center Name | Text | Yes | No |
| Knowledge Center Description | Text | No | No |
| Security Level (Deprecated) | Number | Yes | No |

If the node is run without being assigned to a user (or a group) you must specify values for each of the Node Inputs listed in the table above. You can either manually enter data into the text-field, or a value can be generated using the using the Expression Editor. When using the Expression Editor, you can reference and modify Process Variables, rules, constants, and other data. The expressions then specify your Node Input values.

If the node is assigned, the Node Input values are collected from a form.

**To retain the ID of the KC for use elsewhere in the Process Model**:

1.  Click the **Outputs** property sheet.
2.  Select **The created knowledge center**. The Result Properties are displayed.
3.  Create a Process Variable or select an existing PV (with a Knowledge Center data type) from the **Target** list.

## a!createKnowledgeCenter\_17r4()

The [Create Knowledge Center smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!createKnowledgeCenter\_17r4**( _name, description, securityLevel, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`name`

 |

_Text_

 |

The name of the new Knowledge Center.

 |
|

`description`

 |

_Text_

 |

The description of the new Knowledge Center.

 |
|

`securityLevel`

 |

_Text_

 |

(Deprecated) Security Level of the Knowledge Center to create. Valid values include `"HIGH"` (default), `"MEDIUM"`, `"LOW"`. See [knowledge center security](folder-object.html#prodlink-knowledge-center-security) for details regarding permission levels.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!knowledgecenter` function variable (Knowledge Center) is available to specify the knowledge center that was created. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

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