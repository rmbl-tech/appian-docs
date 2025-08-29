---
source_url: https://docs.appian.com/suite/help/25.3/Cancel_Process_Smart_Service_17r3.html
original_path: Cancel_Process_Smart_Service_17r3.html
version: "25.3"
title: "Cancel Process Smart Service (17.3)"
page_id: "Cancel_Process_Smart_Service_17r3"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Cancel Process Smart Service (17.3)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Cancel Process Smart Service](/suite/help/25.3/Cancel_Process_Smart_Service.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Cancel_Process_Smart_Service.html#Old_Version)

## Overview

The Cancel Process Smart Service allows you to halt all process flow and cancel all tasks associated with a process.

### Permissions needed

The user running the smart service must have administrator rights to the selected process. Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

### Properties

-   **Category**: Process Management

-   **Icon**: ![Cancel Process Icon](images/Smart_Service_Icons/Cancel_Process.png)

-   **Assignment Options**: Unattended/Attended

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Process Id | Number (Integer) | The Id of the process to cancel | Yes | No |

## a!cancelProcess\_17r3()

The Cancel Process smart service is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!cancelProcess\_17r3**( _processId, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`processId`

 |

_Number(Integer)_

 |

The id of the process to cancel.

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

## Runtime Behavior

When this smart service runs, the specified process will be canceled. This matches the behavior as if the user clicked the **Cancel** button from the [**Monitor** view](monitoring_view.html), which means that all process flow stops, all tasks for the process are removed from user's task lists, and the end events of the process do not execute. The user who executed the smart service will be listed in the process's history as having canceled the process.

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