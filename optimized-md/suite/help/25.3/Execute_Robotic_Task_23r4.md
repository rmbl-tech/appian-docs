---
source_url: https://docs.appian.com/suite/help/25.3/Execute_Robotic_Task_23r4.html
original_path: Execute_Robotic_Task_23r4.html
version: "25.3"
title: "Execute Robotic Task Smart Service (23.4)"
page_id: "Execute_Robotic_Task_23r4"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Execute Robotic Task Smart Service (23.4)

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

[Appian RPA](rpa-9.17/appian-rpa.html) customers can initiate robotic tasks in their Appian process models. The Execute Robotic Task smart service streamlines the integration and executes the robotic task synchronously in the context of the overall process model. Synchronous execution is useful if you want to return data from the robotic task execution and use it in subsequent nodes in the same process model.

To execute a robotic task in Appian RPA asynchronously, you can call the integration using the [Call Integration smart service](Call_Integration_Smart_Service.html). When the robotic task is executed asynchronously, the process model moves to the next node whether or not the robotic task is complete, and the results aren't automatically returned.

### Permissions needed

This smart service calls the **Execute Robotic Task** integration set up using an [Appian RPA Connected System object](appian-rpa-connected-system.html). When the smart service is called, the integration is executed using the service account used to set up the connected system, not the user who initiated the process model. You won't need to configure additional permissions for this smart service to execute.

### Properties

-   **Category**: Robotic Tasks
-   **Icon**: ![Execute Robotic Task Icon](images/Smart_Service_Icons/Execute_Robotic_Process.png)
-   **Assignment Options**: Unattended/Attended.

## Configuration options

### Setup tab

#### Select RPA Integration

The Setup tab allows you to select or create an Appian RPA integration.

-   **Select Integration**: Search or browse to select an existing RPA integration using the **Execute Robotic Task** operation.
-   **Edit Integration**: Open the selected integration in the integration designer. This button is only shown when an integration is selected. Users with viewer access will see the **View Integration** button instead and will be able to open the integration designer in read-only mode.
-   **Create RPA Integration**: Create a new Appian RPA integration to call with the smart service. The form allows you to enter the name and description of the new integration, where to save it, and what application to add it to. You can also select existing node inputs that should be added as inputs to the new integration.

#### Set Retries

You can configure the robotic task's retry behavior if it fails the first time it executes. The smart service automatically retries when the robotic task runs into an unexpected failure during the previous execution.

Use the dropdown menu to select the number of retry attempts, up to 1. You can also use the expression editor to set the number of retries. The expression must evaluate to an integer between `0` and `5` (inclusive).

### Data tab

#### Node inputs

When an integration is selected, the integration's inputs will automatically appear as node inputs. If you change the selected integration or the inputs of the selected integration are updated outside the Process Modeler, the node inputs will be refreshed the next time you view the Data tab.

#### Node outputs

| Output | Data Type | Multiple | Description |
| --- | --- | --- | --- |
| Success | Boolean | No | Whether the robotic task started successfully or not. |
| ExecutionId | Text | No | Id of the robotic task execution displayed in the Appian RPA Console. |
| Status | Text | No | If the robotic task is started successfully, returns one of the following values: ENQUEUED, RUNNING, SUCCESS, FAILURE, ABORTED. If the status is anything other than SUCCESS or FAILURE, variables may include partial results. |
| Variables | Map | No | Variables configured by the developer in the robotic task configuration. |
| Retries | Integer | No | The number of time the robotic task had to retry before successfully executing. |
| FailureSection | Text | No | If the robotic task execution fails, the name of the workflow section where the failure occurred. Returns `null` if the execution finished successfully. |
| Error | [IntegrationError](fnc_system_a_integrationerror.html) | No | If the robotic task was not started successfully, this contains information about the error encountered. If the robotic task was started successfully but has a status of FAILURE or ABORTED, error details are not provided here. |

## Runtime behavior

Once the Execute Robotic Task smart service is initiated, the integration calls the chosen robotic task. The robotic task continues running in the background even if the process model is paused, cancelled, or deleted. To pause or cancel the robotic task, visit the Appian RPA console.

If the robotic task is queued for execution, the node remains active. The node will time out after 96 hours, for any of the following reasons:

-   the robotic task is running, but stuck in an infinite loop.
-   the robotic task is still in the queue due to no available robots.
-   the robotic task just moved from the queue to start running, but won't complete before the node's time limit.

When the node times out, you'll receive an error. If the robotic task remains in the queue, it will be removed automatically.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...