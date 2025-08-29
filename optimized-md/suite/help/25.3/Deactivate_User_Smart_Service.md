---
source_url: https://docs.appian.com/suite/help/25.3/Deactivate_User_Smart_Service.html
original_path: Deactivate_User_Smart_Service.html
version: "25.3"
title: "Deactivate User Smart Service"
page_id: "Deactivate_User_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Deactivate User Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Deactivate User smart service allows you to select an existing user and disable them from the system. [Deactivated users](User_Management.html#deactivate-users) are still present in the system, but will not be able to log in. You must be a System Administrator or the Administrator user account in order to perform this task.

**Caution:**  The Deactivate User node can only be run with System Administrator rights. Attempting to run this node without sufficient user rights causes a runtime exception that pauses the process and sends an alert to the Process Administrator.

The Administrator user account cannot be deactivated using this smart service.

The Deactivate User node is located under **Appian Smart Services** > **Identity Management** in the Process Modeler Palette.

### Properties

-   **Category**: Identity Management

-   **Icon**: ![](images/Smart_Service_Icons/Deactivate_User.png)

-   **Assignment Options**: Attended/Unattended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

The [Data tab](Process_Node_and_Smart_Service_Properties.html#data-tab) displays the node inputs and node outputs for the service node. You can add additional inputs and outputs, if needed.

#### Node inputs

The default input is:

| Input | Data Type | Required | Multiple |
| --- | --- | --- | --- |
| User | User | Yes | No |

## a!deactivateUser()

The [Deactivate User smart service](#) is available as an expression function that can be executed inside a saveInto parameter on an [interface component](SAIL_Components.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!deactivateUser**( _user, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`user`

 |

_User_

 |

The user to deactivate.

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