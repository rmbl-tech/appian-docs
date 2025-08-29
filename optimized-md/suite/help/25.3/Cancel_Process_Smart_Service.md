---
source_url: https://docs.appian.com/suite/help/25.3/Cancel_Process_Smart_Service.html
original_path: Cancel_Process_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Cancel Process Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

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

#### Node outputs

| Output | Data Type | Description |
| --- | --- | --- |
| Already Closed | Boolean | `true` if the process was already closed prior to execution of this smart service, otherwise `false` |

## a!cancelProcess()

The [Cancel Process smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!cancelProcess**( _processId, onSuccess, onError_ )

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

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!alreadyClosed` function variable (Boolean) is available to indicate whether or not the process was already canceled prior to execution of this smart service. For more information, see [Function Variable](parts-of-an-expression.html#function-variables).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Runtime Behavior

When this smart service runs, the specified process will be canceled. This matches the behavior as if the user clicked the **Cancel** button from the [**Monitor** view](monitoring_view.html), which means that all process flow stops, all tasks for the process are removed from user's task lists, and the end events of the process do not execute. The user who executed the smart service will be listed in the process's history as having canceled the process. Additionally, for processes that have already been canceled, an error will not be thrown.

Appian also cancels any synchronous subprocesses running without autoscale enabled. Any pending tasks associated with those subprocesses will also be canceled.

These processes will _not_ be canceled:

-   Any synchronous subprocesses running with autoscale enabled.
-   Any synchronous processes started with the Start Process smart service. Any pending tasks associated with these processes will also not be canceled.

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

## Old versions

There are older versions of this smart service. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!cancelProcess\_17r3](/suite/help/25.3/Cancel_Process_Smart_Service_17r3.html) |
This function was updated to handle scenarios where the selected process has already been canceled or completed. Instead of throwing an error in these cases, a new function variable, fv!alreadyClosed, will be set to true and available for use in your logic.

 |

To use the latest version of the smart service node:

1.  Drag in a new Cancel Process Smart Service node from the palette, and place it on the same connector as the current node.
2.  Configure the new node with settings matching your current, older node.
3.  Delete the old Cancel Process Smart Service node.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...