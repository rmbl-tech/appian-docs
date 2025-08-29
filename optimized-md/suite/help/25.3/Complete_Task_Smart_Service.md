---
source_url: https://docs.appian.com/suite/help/25.3/Complete_Task_Smart_Service.html
original_path: Complete_Task_Smart_Service.html
version: "25.3"
title: "Complete Task Smart Service"
page_id: "Complete_Task_Smart_Service"
section: "Configuration options"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Complete Task Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Complete Task Smart Service allows you to complete a task belonging to another process from your current process.

**Permissions Needed**

The user running the smart service must have [rights to complete the selected task](process-model-object.html#process-security). Attempting to complete this task without the proper user rights generates an error message for the process administrator and pauses the process.

**Properties**

-   **Category**: Process Management

-   **Icon**: ![Complete Task Icon](images/Smart_Service_Icons/Complete_Task.png)

-   **Assignment Options**: Unattended/Attended - Note: When this smart service is attended, the form that the user sees is the form configured on the node, not the form for the specified task.

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

<table class="appianTable table table-striped"><tbody><tr><td>Input</td><td>Data Type</td><td>Description</td><td>Required</td><td>Multiple</td></tr><tr><td>Task Id</td><td>Number (Integer)</td><td>The id of the task to complete.</td><td>Yes</td><td>No</td></tr><tr><td>Task Inputs</td><td>Any Type</td><td>A dictionary containing keys and values that corresponds to the task’s inputs.</td><td>No</td><td>No</td></tr></tbody></table>

The Task Inputs property is a [dictionary](parts-of-an-expression.html#dictionaries) that must contain entries for any required parameters for the selected task. It may also contain fields for optional parameters for the task. If any required parameters are missing or if the dictionary contains any entries that do not match parameters of the selected task, the target task will not be completed and this node will pause.

For example, if you have a task that is a part of an employee review cycle, it might have a required parameter named `employeeId` and optional parameters named `deadline`, and `reasonCode`.

To successfully complete this task, the Task Inputs input would look like one of the following:

```
1
2
3
{
    employeeId: 12345
}
```

```
1
2
3
4
{
    employeeId: 12345,
    deadline: today()+30
}
```

```
1
2
3
4
5
{
    employeeId: 12345,
    deadline: today()+30,
    reasonCode: "ANNUAL"
}
```

In the examples below, the target task does not complete. For the first two cases, the reason is that the required task input, `employeeId`, was not provided. For the third case the reason is that an entry in the task input, `supervisorId`, did not match any of the inputs of the task.

```
1
2
3
{

}
```

```
1
2
3
{
    deadline: today()+30
}
```

```
1
2
3
4
{
    employeeId: 12345,
    supervisorId: 6789
}
```

## a!completeTask()

The [Complete Task smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html).

### Syntax

**a!completeTask**( _taskId, taskInputs, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`taskId`

 |

_Number(Integer)_

 |

The ID of the task to complete.

 |
|

`taskInputs`

 |

_Dictionary_

 |

A dictionary containing keys and values that corresponds to the task’s inputs.

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