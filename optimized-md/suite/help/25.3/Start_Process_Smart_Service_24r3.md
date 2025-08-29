---
source_url: https://docs.appian.com/suite/help/25.3/Start_Process_Smart_Service_24r3.html
original_path: Start_Process_Smart_Service_24r3.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Start Process Smart Service (24.3)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Start Process Smart Service](/suite/help/25.3/Start_Process_Smart_Service.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Start_Process_Smart_Service.html#Old_Version)

Modularize Workflows Using Start Processes & Sub Processes

This video from [Academy Online](https://academy.appian.com/) compares subprocesses and start processes.

## Overview

This page provides guidance on how to use the Start Process Smart Service (24.3) to initiate processes in your process models, interfaces, and web APIs. Processes initiated using this smart service are run asynchronously, meaning that the current process flow will continue without waiting for these processes to complete.

Learn more about other ways to start a process, and how they compare to this smart service, [here](Ways_to_Start_a_Process_From_a_Process.html#starting-a-process-from-a-process).

### Permissions needed

The behavior of the node depends on the permissions of the user running the smart service. The following table details the result of running the smart service given different permission levels.

| Permission Level | Result of Executing Smart Service |
| --- | --- |
| **Deny or Not in Role Map** | The smart service errors, generating an error message for the process administrators and pausing the process |
| **Initiator** | The process is started, but only the process instance ID (`processInfo.pp.id`) is populated in the process info variable. All other process info values will be null |
| **Viewer and Above** | The process is started, and all process model properties, process instance properties, and process variable values are populated in the process info output value |

### Properties

-   **Category**: Process Management

-   **Icon**: ![Start Process smart service](images/Smart_Service_Icons/Start_Process.png)

-   **Assignment Options**: Unattended/Attended - Note: When this smart service is attended, the form that the user sees is the form configured on the node, not the start form for the specified process model.

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Input | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Process Model | Process Model | The process model to start asynchronously | Yes | No |
| Process Parameters | Dictionary | A dictionary containing the parameters for the process and their values | No | No |

The Process Parameters property is a [dictionary](parts-of-an-expression.html#dictionaries) where the keys are process parameter names and the values are parmeters' values. If any required parameters are missing or if the dictionary contains any entries that do not match parameters of the selected process model, the process will not start.

For example, if you have a process model that controls an employee review cycle, it might have a required parameter named `employeeId` and optional parameters named `deadline` and `reasonCode`.

To successfully start this process, the Process Parameters input would look like one of the following:

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

In the following examples, the process would not start. For the first two cases, the reason is that the required process model parameter, `employeeId`, was not provided. For the third case the reason is that an entry in the Process Parameters input, `supervisorId`, did not match any of the parameters of the process model.

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

#### Node outputs

| Output | Data Type | Description |
| --- | --- | --- |
| Process Info | [ProcessInfo](Appian_Data_Types.html#processinfo) | Contains information about the process that was started, its model, and the values of its process variables |

## Usage considerations

## a!startProcess\_24r3()

The [Start Process smart service (24.3)](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html). To learn more about using this function in interfaces, see [Starting Processes From an Interface](Ways_to_Start_a_Process_From_a_Process.html#starting-a-process-from-an-interface).

### Syntax

**a!startProcess\_24r3**( _processModel, processParameters, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`processModel`

 |

_Process Model_

 |

The process model to start asynchronously. You must provide a constant referencing the process model or a process model ID.

 |
|

`processParameters`

 |

_Dictionary_

 |

A dictionary containing the parameters for the process and their values.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service executes successfully. Created with `a!save()` or `a!httpResponse()`. When configuring this input, the `fv!processInfo` function variable ([ProcessInfo](Appian_Data_Types.html#processinfo)) is available to specify process properties of the process that was started (such as fv!processInfo.pp.id), properties of the process model (such as fv!processInfo.pm.name), and the values of process variables (such as fv!processInfo.pv.employeeId) once all initial activity-chaining is complete. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not execute successfully. Created with `a!save()` or `a!httpResponse()`.

 |

## Leveraging activity-chaining

This smart service follows [activity-chaining](Process_Model_Recipes.html#using-activity-chaining-to-display-multiple-forms-in-succession), completing only when the activity chain is complete or [broken](Process_Model_Recipes.html#breaking-a-chain). The smart service then returns the process variables as of the completion of activity chaining through the `processInfo.pv` output. This means that the Start Process smart service (24.3) can be used to complete multiple smart services and retrieve the results of the smart services from within an interface or web API. This can be a very powerful tool. Nonetheless, consider the following notes when using activity-chaining to ensure you use the smart service properly:

-   The smart service may take a long time to complete if you have activity-chaining from the start node in your target process model. Ensure that only nodes whose execution is critical to your original process or form should be included in the initial chain on the target process. Per documentation on [configuring activity-chaining](Process_Model_Recipes.html#using-activity-chaining-to-display-multiple-forms-in-succession), long activity chains are strongly discouraged.
-   If a chained flow encounters an attended activity, the activity will be assigned to the user that the smart service was run as, but it will not open the associated form.
-   The "onError" parameter will only evaluate if the process fails to start. It will _not_ evaluate if a node in the started process pauses by exception.

## Feature compatibility

The table below lists this smart service function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
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