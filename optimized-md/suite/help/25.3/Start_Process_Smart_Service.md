---
source_url: https://docs.appian.com/suite/help/25.3/Start_Process_Smart_Service.html
original_path: Start_Process_Smart_Service.html
version: "25.3"
title: "Start Process Smart Service"
page_id: "Start_Process_Smart_Service"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Start Process Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This page provides guidance on how to use the Start Process Smart Service to initiate processes in your process models, interfaces, and web APIs. By default, processes initiated using this smart service are run asynchronously, meaning that the current process flow will continue without waiting for these processes to complete. You can also [run processes synchronously](#start-a-process-synchronously) if you need to wait for data from the other process.

Learn more about other ways to start a process, and how they compare to this smart service, [here](Ways_to_Start_a_Process_From_a_Process.html#starting-a-process-from-a-process).

### Permissions needed

The behavior of the node depends on the permissions of the user running the smart service, both when starting the process and when the process is complete. The following table shows the result of running the smart service at different permission levels.

| Permission Level | Result of Executing Smart Service |
| --- | --- |
| **Deny or Not in Role Map** | The smart service errors, generating an error message for the process administrators and preventing the process from being started. |
| **Initiator** | The process is started, but when starting the process synchronously, only the process instance ID or instance UUID (`processInfo.pp.id, processInfo.pp.instanceUuid`) is populated. All other processInfo values will be null, and the PV domain (`processInfo.pv`) will be empty.
 |
| **Viewer and Above** | The process is started, and all process model properties, process instance properties, and process variable values are populated in the processInfo output value. |

**Note:**  The [Modify Process Security smart service](Modify_Process_Security_Smart_Service.html) can change a user's permissions for a specific process. When starting a process synchronously, Appian checks the user's permission when the process completes and returns the appropriate data for that level.

### Properties

-   **Category**: Process Management

-   **Icon**: ![Start Process smart service](images/Smart_Service_Icons/Start_Process.png)

-   **Assignment Options**: Unattended/Attended - Note: When this smart service is attended, the form that the user sees is the form configured on the node, not the start form for the specified process model.

## Configuration options

This section contains tab configuration details specific to this smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

This tab makes it simple to pick a process model, choose how it should run, and configure the inputs and outputs so data flows correctly.

#### Start a process asynchronously

The smart service can start other processes to run in the background.

[![images/start-process-setup-async.png](images/start-process-setup-async.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img129)

[![](images/start-process-setup-async.png)](#_)

To start a process asynchronously:

1.  On the Configure Start Process dialog, click the **Setup** tab.
2.  For Process Model, select the process model you want to start. You can select a model by name, or you can use an expression to select a process model (using a constant referencing the process model or the process model's ID).
3.  For How Should This Process Run?, select **Asynchronously**.
4.  For Inputs, do one of the following:
    1.  If you selected the process model by name, the parameters will appear automatically, letting you set the values using the dropdowns.
    2.  If you selected the process model using an expression, click **Add Parameter**, then enter the parameter name and add a value.
    3.  Click **Edit as Expression** and [use a map or dictionary](#set-the-process-parameters) to define the parameters and values.
5.  Click **OK** to close the dialog.

#### Start a process synchronously

The smart service can wait for the other process to complete, and you can then assign any returned data to a process variable for use later in the process.

[![images/start-process-setup-sync.png](images/start-process-setup-sync.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img130)

[![](images/start-process-setup-sync.png)](#_)

To start a process synchronously:

1.  On the Configure Start Process dialog, click the **Setup** tab.
2.  For Process Model, select the process model you want to start. You can select a model by name, or you can use an expression to select a process model (using a constant referencing the process model or the process model's ID).
3.  For How Should This Process Run?, select **Synchronously**.
4.  For Inputs, do one of the following:
    -   If you selected the process model by name, the parameters will appear automatically, letting you set the values using the dropdowns.
    -   If you selected the process model using an expression, click **Add Parameter**, then enter the parameter name and add a value.
    -   Click **Edit as Expression** and [use a map or dictionary](#set-the-process-parameters) to define the parameters and values.
5.  For Outputs, do the following:
    1.  Click **Add Save Target**.
    2.  For Value, select the ProcessInfo property that you want to store in the save target.
    3.  For Operator, select the way the value should be saved.
    4.  For Save Target, select a process variable to contain the output.
6.  Click **OK** to close the dialog.

## Usage considerations

### Starting multiple processes at once

You can use the Start Process smart service to start multiple processes at the same. The method for starting multiple processes differs depending on whether [autoscale is enabled](autoscale-processes.html):

-   **If the process model does _not_ have autoscale enabled**: Use the [Multiple Node Instances (MNI)](looping.html#mni-on-smart-services) option on the Start Process smart service.
-   **If the process model has autoscale enabled**: Build a [looping flow](looping.html) to start multiple asynchronous processes with the Start Process smart service.

[![images/epex/start-process-loop.png](images/epex/start-process-loop.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img131)

[![](images/epex/start-process-loop.png)](#_)

### Process depth protections

Each time you start another process with the smart service, Appian increments a counter that tracks the depth of nested processes associated with the first process. This counter stops a recursive or deeply nested process model from starting more processes than the system can handle. Autoscaled processes have a maximum depth of 1000 processes; processes without autoscale have a maximum depth of 100.

Importantly, there is only one counter that tracks the current process depth and checks it as each process is started; you may encounter the limit at an unexpected point if you mix processes with and without autoscale. For example, say you start an autoscaled process that recursively starts 250 more autoscaled processes. If the 250th process needs to start the next process without autoscale, this would result in an error because 251 is greater than the 100 limit.

### Run processes in parallel

When you need groups of work to happen at once, you can use the smart service to launch multiple, parallel processes. While you can draw parallel flows in a process model, the nodes on these branches will run in sequence.

There are three configurations where processes started synchronously run in parallel:

-   An autoscaled process starts a process without autoscale enabled.
-   A process without autoscale enabled starts an autoscaled process.
-   A process without autoscale enabled starts a process without autoscale.

All processes started asynchronously run in parallel.

### Using activity chaining

This smart service and the `a!startProcess()` function act on [activity chaining](Process_Model_Recipes.html#using-activity-chaining-to-display-multiple-forms-in-succession) in specific ways depending on whether you are starting an asynchronous or synchronous process.

If you chain through an asynchronous Start Process node or use `a!startProcess()` with `isSynchronous` set to `false`, the original process continues without interruption. No connection is maintained with the process that is started by the smart service, and any activity chaining is separate from the original process.

If you chain through a synchronous Start Process node or use `a!startProcess()` with `isSynchronous` set to `true`, the original process waits for other process to complete before continuing. Any activity chaining in the started process is not connected to the original process, so a [broken chain](Process_Model_Recipes.html#breaking-a-chain) will not return process variables to the original process. If a chained flow encounters an attended activity, the activity will be assigned to the user that the Start Process smart service was run as, but it will not open the associated form.

## a!startProcess()

The [Start Process smart service](#) is available as an expression function that can be executed inside a saveInto on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html). To learn more about using this function in interfaces, see [Starting Processes From an Interface](Ways_to_Start_a_Process_From_a_Process.html#starting-a-process-from-an-interface).

### Syntax

**a!startProcess**( _processModel, processParameters, isSynchronous, onSuccess, onError, onIncomplete_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`processModel`

 |

_Process Model_

 |

The process model to start, identified by a constant or the process model's ID.

 |
|

`processParameters`

 |

_Any Type_

 |

A dictionary or map of the parameters and values to set at the start of the process.

 |
|

`isSynchronous`

 |

_Boolean_

 |

When true, `onSuccess` is not evaluated until the child process is complete, regardless of any activity chaining. If the process is not completed within 30 seconds, `onIncomplete` is triggered. The child process will continue to run and can complete beyond the timeout. By default, this parameter is false.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of `a!save()` or an `a!httpResponse()` to execute after the smart service executes successfully. When configuring this input, the `fv!processInfo` function variable (ProcessInfo) is available to specify process properties of the process that was started (such as `fv!processInfo.pp.id`), properties of the process model (such as `fv!processInfo.pm.name`), and the values of process variables (such as `fv!processInfo.pv.employeeId`). The available values depend on whether the process was run synchronously or asynchronously. For more information, see Function Variables.

 |
|

`onError`

 |

_Any Type_

 |

A list of `a!save()` or an `a!httpResponse()` to execute when the smart service does not start successfully.

 |
|

`onIncomplete`

 |

_Any Type_

 |

A list of `a!save()` or an `a!httpResponse()` to execute when _isSynchronous_ is true and any of the following occur: the process is canceled, the process cannot complete because of errors, the process does not finish within 30 seconds, or the initiator does not have permission to view the process. The `fv!processInfo` function variable (ProcessInfo) is available to specify properties of the started process (such as `fv!processInfo.pp.id`) and properties of the process model (such as `fv!processInfo.pm.name`). Most process properties (`fv!processInfo.pp`) are only available if the process has been started before timing out. The `instanceUuid` is only available for processes with autoscaling mode enabled. Otherwise, this variable will be null. Process variable values are not available.

 |

#### Set the process parameters

The Process Parameters property is a [map](fnc_system_map.html) or [dictionary](parts-of-an-expression.html#dictionaries) where the keys are process parameter names and the values are parameter values. If any required parameters are missing or a parameter is not valid for the selected process model, the process will not start.

For example, if you have a process model that controls an employee review cycle, it might have a required parameter named `employeeId` and optional parameters named `deadline` and `reasonCode`.

To successfully start this process, the Process Parameters input would look like one of the following:

```
1
2
3
a!map(
  employeeId: 12345,
)
```

```
1
2
3
4
a!map(
  employeeId: 12345,
  deadline: today()+30,
)
```

```
1
2
3
4
5
a!map(
  employeeId: 12345,
  deadline: today()+30,
  reasonCode: "ANNUAL"
)
```

In the following examples, the process would not start. For the first two cases, the reason is that the required process model parameter, `employeeId`, was not provided. For the third case the reason is that an entry in the Process Parameters input, `supervisorId`, did not match any of the parameters of the process model.

```
1
2
a!map(
)
```

```
1
2
3
a!map(
  deadline: today()+30,
)
```

```
1
2
3
4
a!map(
  employeeId: 12345,
  supervisorId: 6789
)
```

#### Node outputs

| Output | Data Type | Description |
| --- | --- | --- |
| Process Info | [ProcessInfo](Appian_Data_Types.html#processinfo) | Contains information about the process that was started, its model, and the values of its process variables |

### Handle a!startProcess() results

When configuring `a!startProcess()`, you should set each result parameter (_onSuccess_, _onError_, and _onIncomplete_) so the user starting the process knows what happened and if they need to take further action.

The _onSuccess_ parameter is evaluated at different times depending on whether the process is run asynchronously or synchronously and whether autoscale is enabled.

-   When a process without autoscale enabled runs asynchronously, _onSuccess_ is evaluated when the request to start the process is successfully sent.
-   When an autoscaled process runs asynchronously, _onSuccess_ is evaluated when the process is added to the queue; some time may pass before the process actually starts.
-   When a process runs synchronously (with or without autoscale enabled), _onSuccess_ is not evaluated until the process is complete.

The _onError_ parameter is evaluated if the selected process can't be started, regardless of whether it is run asynchronously or synchronously. It will _not_ evaluate if a node in the started process cannot complete because of errors.

The _onIncomplete_ parameter is only evaluated if a process runs synchronously and any of the following occur:

-   The process is canceled.
-   The process cannot complete because of errors.
-   The process does not finish within 30 seconds.
-   The initiator does not have permission to view the process when it completes.

For example, when you [create a web API with the Start Process template](Designing_Web_APIs.html#create-a-web-api-using-a-template), these parameters are set up with appropriate HTTP responses (including status codes and data). You can then customize each `a!httpResponse()` to suit your application.

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
a!startProcess(
  processModel: cons!ID_WRITE_LOG,

  /* A dictionary or map of parameters passed to the process model */
  processParameters: a!fromJson(http!request.body),
  isSynchronous: false(),

  /* This expression will run when the process is started (when run asynchronously) or completed (when run synchronously) */
!  onSuccess: a!httpResponse(
    statusCode: 200,
    headers: {
      a!httpHeader(
        name: "Content-Type",
        value: "application/json"
      )
    },
    body: if(
      a!isNotNullOrEmpty(fv!processInfo),
      a!toJson(fv!processInfo),
      null()
    )
  ),

  /* This expression will run if the process fails to start */
!  onError: a!httpResponse(
    statusCode: 500,
    headers: {
      a!httpHeader(
        name: "Content-Type",
        value: "application/json"
      )
    },
    body: a!toJson(
      {
        error: "There was an error starting the process"
      }
    )
  ),

  /* If the process is started synchronously, this expression will run if the process does not complete in 30 seconds */
!  onIncomplete: a!httpResponse(
    statusCode: 504,
    headers: {
      a!httpHeader(
        name: "Content-Type",
        value: "application/json"
      )
    },
    body: a!toJson(fv!processInfo)
  )
)
```

### Use a!startProcess() with web APIs

When designing a web API that will call `a!startProcess()` with _isSynchronous_ set to true, you should consider that Appian has a default pool of 200 concurrent HTTP requests available. This pool is shared by web APIs and end users of your applications, so a web API serving many requests at once can negatively impact site performance for end users.

## ProcessInfo properties

When you start a process synchronously, data is returned in the [ProcessInfo](Appian_Data_Types.html#processinfo) activity class parameter (or `fv!ProcessInfo` for `a!startProcess()`).

These and the following properties can be mapped to an output of the smart service node or the _onSuccess_, _onError_, or _onIncomplete_ parameter of `a!startProcess()`.

The following table lists the properties available based on the state of the process.

| Property | onSuccess | onIncomplete (process started) | onIncomplete (process queued or deleted) | Notes |
| --- | --- | --- | --- | --- |
| pv | ✓ | Empty list | Empty list |   |
| pp!id | ✓ | ✓ | Null | Available when autoscale is not enabled |
| pp!instanceUuid | ✓ | ✓ | ✓ | Available when autoscale is enabled |
| pp!name | ✓ | ✓ | Null |   |
| pp!priority | ✓ | ✓ | Null |   |
| pp!initiator | ✓ | ✓ | Null |   |
| pp!designer | ✓ | ✓ | Null |   |
| pp!startTime | ✓ | ✓ | Null |   |
| pp!endTime | ✓ | Null | Null |   |
| pp!deadline | ✓ | ✓ | Null |   |
| pp!timeZone | ✓ | ✓ | Null |   |
| pp!execId | ✓ | ✓ | Null | Available when autoscale is not enabled |
| pp!errorCount | ✓ | ✓ | 0 when queued, null when deleted |   |
| pm!id | ✓ | ✓ | ✓ |   |
| pm!name | ✓ | ✓ | ✓ |   |
| pm!description | ✓ | ✓ | ✓ |   |
| pm!version | ✓ | ✓ | ✓ |   |
| pm!creator | ✓ | ✓ | ✓ |   |
| pm!timeZone | ✓ | ✓ | ✓ |   |
| pm!uuid | ✓ | ✓ | ✓ |   |

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

## Old versions

There are older versions of this smart service. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!startProcess\_24r3](/suite/help/25.3/Start_Process_Smart_Service_24r3.html) |
This function was evolved to be compatible with autoscale and to allow processes to start synchronously.

 |

To use the latest version of the smart service node:

1.  Drag in a new Start Process Smart Service node from the palette, and place it on the same connector as the current node.
2.  Configure the new node with settings matching your current, older node.
3.  Delete the old Start Process Smart Service node.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...