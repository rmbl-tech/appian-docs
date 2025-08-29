---
source_url: https://docs.appian.com/suite/help/25.3/Execute_Robotic_Task.html
original_path: Execute_Robotic_Task.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Execute Robotic Task Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><i class="fa fa-check-square-o" aria-hidden="true"></i></td><td>This content applies solely to Appian RPA, which should be marked separately from the Appian low-code platform on your customer order form. Not sure if you have access to Appian RPA? <a href="https://appian.com/contact-us.html">Contact us</a> to find out.</td></tr></tbody></table>

## Overview

[Appian RPA](rpa-9.17/appian-rpa.html) customers can initiate robotic tasks in their Appian process models. The Execute Robotic Task smart service streamlines the integration and executes the robotic task synchronously in the context of the overall process model. Synchronous execution is useful if you want to return data from the robotic task execution and use it in subsequent nodes in the same process model. When the robotic task is executed asynchronously, the process model moves to the next node whether or not the robotic task is complete, and the results aren't automatically returned.

**Tip:**  A new version of the Execute Robotic Task smart service was made available in the Appian 24.1 release. This version of the smart service lets you configure robotic tasks directly in the process node, eliminating the need for connected systems or integration rules.

### Permissions needed

When the smart service is called, the process compares the permissions required for the robotic task with the permissions granted to the user initiating the process. You do not need to configure additional permissions for this smart service to execute.

### Properties

-   **Category**: Robotic Tasks
-   **Icon**: ![Execute Robotic Task Icon](images/Smart_Service_Icons/Execute_Robotic_Process.png)
-   **Assignment Options**: Unattended/Attended.

## Configuration options

This section contains tab configuration details specific to the Execute Robotic Task smart service. For more information about common configurations see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

-   [Setup tab](#setup-tab)
-   [Data tab](#data-tab)

### Setup tab

This Setup tab is used to pre-configure the Configure Execute Robotic Task smart service with certain values and parameters. The fields you configure on this tab impact what you see on the [Data tab](#data-tab).

![rpa-smartservice-setup-tab.png](images/rpa-smartservice-setup-tab.png)

#### Robotic Task

In this field, you can select a robotic task to run. You have the option to find and choose a task by directly searching for robotic tasks. The search results only include robotic task design objects for which you have, at a minimum, viewer permissions. Map the rule inputs/outputs on the [Data tab](#data-tab).

#### Preferred Robot

This field gives you the option to choose whether the robotic task should be executed on the next available robot or by a specific robot that you select. Regardless of the option you select, ensure the robot is part of a robot pool.

-   For general use, select the _Use next available robot (recommended)_ option.
-   Select the _Execute on a specific robot_ option if a specific execution instance of the robotic task requires a certain robot (e.g., for attended automation on a user's machine). If you use this option, be sure to also configure the [Preferred Robot](#node-inputs) input field on the Data tab.

#### Set Retries

You can configure the robotic task's retry behavior if it fails the first time it executes. The smart service automatically retries when the robotic task runs into an unexpected failure during the previous execution.

Use the dropdown menu to select the number of retry attempts, up to 5.

### Data tab

#### Node inputs

When you select a robotic task, the robotic task's [parameterized variables](rpa-9.17/robotic-task-variables.html#using-parameterized-variables) automatically appear as node inputs. If you modify the robotic task or update its parameterized variables outside of the Process Modeler, you need to first navigate to the Setup tab. This action ensures your changes are synchronized with the robotic task inputs on the Data tab.

If you choose the _Execute on a specific robot_ option on the [Setup tab](#setup-tab), the **Preferred Robot** input field automatically displays. Enter the robot's identifier in the **Value** field. The identifier can be found on the [robot's properties](rpa-9.17/manage-robots.html#robot-properties). For advanced settings, like setting the time when the robotic task should run, use the expression editor next to the **Value** field.

![preferred-robot-value.png](images/preferred-robot-value.png)

#### Node outputs

| Output | Data Type | Multiple | Description |
| --- | --- | --- | --- |
| Success | Boolean | No | Whether the robotic task started successfully or not. |
| ExecutionId | Text | No | Id of the robotic task execution displayed in the Appian RPA Console. |
| Status | Text | No | If the robotic task is started successfully, returns one of the following values: ENQUEUED, RUNNING, SUCCESS, FAILURE, ABORTED. If the status is anything other than SUCCESS or FAILURE, variables may include partial results. |
| Variables | Map | No | Variables configured by the developer in the robotic task configuration. |
| Retries | Integer | No | The number of time the robotic task had to retry before successfully executing. |
| FailureSection | Text | No | If the robotic task execution fails, the name of the workflow section where the failure occurred. Returns `null` if the execution finished successfully. |

## Runtime behavior

-   Once the Execute Robotic Task smart service is initiated, the process calls the robotic task.
-   The robotic task continues running in the background even if the process model is paused. To pause or cancel the robotic task, visit the Appian RPA console.
-   If a process encounters an exception event that results in your node being canceled or deleted, any robotic task that was launched by that process is also canceled, if it hasn't started executing yet.
-   When a robotic task is queued for execution, the corresponding node is active. You can add an exception event on the [Exceptions tab](Process_Node_and_Smart_Service_Properties.html#exceptions-tab) to stop the node based on a specific amount of time.
-   If the task doesn't execute within 96 hours, the active node will time out, generate an error, and automatically remove the robotic task from the queue. This can happen for any of the following reasons:
    -   the robotic task is running, but stuck in an infinite loop.
    -   the robotic task is still in the queue due to no available robots.
    -   the robotic task just moved from the queue to start running, but won't complete before the node's time limit.

### Status descriptions

| Smart Service Status | Description | Robotic Task Status |
| --- | --- | --- |
| PENDING | The execution has not finished, and results are still pending. | ENQUEUED or RUNNING |
| DONE | The execution is done, and the results are available. | SUCCESS, FAILURE, or ABORTED |
| FAILED | The execution is done, but resulted in an error. The node is marked with an error. | N/A |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...