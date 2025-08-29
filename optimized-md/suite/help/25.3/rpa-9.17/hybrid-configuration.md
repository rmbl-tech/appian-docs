---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/hybrid-configuration.html
original_path: rpa-9.17/hybrid-configuration.html
version: "25.3"
title: "Appian RPA Hybrid Configuration"
page_id: "rpa-9.17/hybrid-configuration"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian RPA Hybrid Configuration

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

We understand that you may be interested in using Appian RPA's capabilities in your self-managed environments. Appian RPA works best in a hosted setup within an Appian Cloud environment. However, you can opt for a self-managed approach, either in the cloud or on-premise, via an Appian on Kubernetes deployment. While a hybrid configuration that combines hosted and self-managed environments is possible, it's less ideal. The first two options will provide the best experience.

This page describes how a hybrid configuration for Appian RPA works in your on-premise environment, how to set it up, and how to use robotic tasks in your applications. Some Appian RPA capabilities aren't available in a hybrid configuration. We've also included tips for maintenance.

**Tip:**  The following information on this page is for on-premise environments only. If you're self-managing Appian on Kubernetes, check out the [RPA on Appian Kubernetes](self-managed-rpa-on-kubernetes.html) page instead for essential requirements and setup details.

## What is a hybrid configuration?

In the context of Appian RPA, a hybrid configuration refers to the connection between a self-managed Appian site and a separate Appian Cloud site, where Appian RPA is available.

You can continue to build and deploy apps in the environments you're used to, while the robotic tasks are created and executed in the Appian Cloud. The two environments are integrated using an [HTTP connected system](../Connected_System_Object.html). With the connected system, business applications can communicate with robotic tasks in your Appian Cloud environment. The connected system enables you to execute robotic tasks and retrieve results.

## Understanding robotic task synchronization in process models

Simply put, the self-managed site initiates a request to the Appian Cloud site. The Appian Cloud site then executes the robotic task and communicates the results back to the self-managed site. This back-and-forth ensures asynchronous, or potentially synchronous, execution and reporting.

When creating process models to carry out robotic tasks, it's important to note that the execution of these tasks within a process model is synchronous. However, if you're running the process model in a self-managed site and integrating it with a cloud site, the execution becomes asynchronous. Therefore, you'll need to set up the process model on the self-managed site to pause and wait for completion of the process model running in the cloud site. Once completed, the results can then be fetched separately before moving on.

**Note:**  While you could use a polling pattern to continually check the status of the robotic task, this is not recommended because it could cause your process to reach the 1000-node limit and/or dramatically increase the size of your process history.

The steps on this page aim to help you execute a robotic task from a self-managed site and retrieve the results of the execution once the robotic task is finished. Most of these objects are reusable, so you can create them once and apply them to future robotic task and process model configurations.

Data passes between objects in the following way:

![hybrid-config-exampleflow](images/hybrid-config-exampleflow.png)

## Key components

The steps outlined on this page provide you with a fully synchronous application that includes the following objects.

![cloud](images/cloud.png) **Appian Cloud site**

-   **Web APIs (1)**: Starts the Appian Cloud process model, called from the self-managed process model
-   **Connected system (1)**: HTTP connected system in Appian Cloud to connect to the self-managed web API
-   **Process model (1)**: Executes the robotic task
-   **Constant (1)**: Points to the process model in Appian Cloud
-   **Integration (1)**: HTTPS integration to call the self-managed site's web API
-   **Group (1)**: Sets the security on all other objects
-   **Service Account (1)**: Used by the self-managed site's connected system to authenticate access to the Appian Cloud site

![circle-nodes](images/circle-nodes.png) **Self-managed site**

-   **Web APIs (1)**: Called by the Appian Cloud site, receives results/process model ID
-   **Connected system (1)**: Used to connect to your Appian Cloud web API
-   **Process models (2)**:
    -   Calls the web API in Appian Cloud to execute the robotic task
    -   Sends message events
-   **Constant (1)**: References the process report used by the web API
-   **Integration (1)**: HTTPS integration used to call the Execute robotic task web API
-   **Process Report (1)**: Maps the process ID back to the original process that called it
-   **Service Account (1)**: Used by the Appian Cloud HTTP connected system to authenticate access to the self-managed site

## Hybrid configuration workflow

Below is a table that outlines the essential steps for setting up a hybrid configuration.

| **Step** | **Action** |
| --- | --- |
| 1 | [Create service accounts](#step-1-create-service-accounts) |
| 2 | [Deploy CDTs](#step-2-deploy-cdts) |
| 3 | [Create a group](#step-3-create-a-group) |
| 4 | [Configure a robotic task](#step-4-configure-a-robotic-task) |
| 5 | [Configure a connected system](#step-5-configure-a-connected-system) |
| 6 | [Create an integration to execute the Appian Cloud robotic task](#step-6-create-an-integration-to-execute-the-appian-cloud-robotic-task) |
| 7 | [Create the process model to execute the integration](#step-7-create-the-process-model-to-execute-the-integration) |
| **Note** | This marks the end of the instructions if you want to execute robotic tasks asynchronously. If you need your process model to wait for the robotic task results before continuing, you need to complete the additional steps outlined below. |
| 8 | [Create a process report](#step-8-create-a-process-report) |
| 9 | [Update the process model](#step-9-update-the-process-model) |
| 10 | [Create send completion message process model](#step-10-create-send-completion-message-process-model) |
| 11 | [Create a Web API](#step-11-create-a-web-api) |
| 12 | [Create a connected system to the self-managed site](#step-12-create-a-connected-system-to-the-self-managed-site) |
| 13 | [Create integration to call the web API](#step-13-create-integration-to-call-the-web-api) |
| 14 | [Execute the integration](#step-14-execute-the-integration) |
| **Note** | This marks the end of the instructions if you only want to resume the self-managed process model when the robotic task completes. If you need to send the results of the execution to the self-managed site, continue to Step 15. |
| 15 | [Send results to the self-managed process model](#step-15-send-results-to-the-self-managed-process-model) |

* * *

## Steps 1-7: Mandatory for all

### Step 1: Create service accounts

**Where**: ![cloud](images/cloud.png) Appian Cloud site and ![circle-nodes](images/circle-nodes.png) Self-managed site

-   First, [create a service account](../Appian_Administration_Console.html#service-accounts) in your Appian Cloud environment to authenticate access from the self-managed site.
-   Second, on your self-managed site, set up a service account to authenticate access from the Appian Cloud site.

Complete these steps to create a service account.

1.  Open the Admin Console.
2.  Click **API Keys** under the **Authentication** menu.
3.  Click **Create**.
4.  In the **Create New API Key** dialog, add a **Description** for the key.
5.  Click **Create Service Account** to create a new service account to associate with this API key.
6.  In the **Create Service Account** dialog, type a name for the service account and click **Create**.
7.  Once the account is created, you'll return to the **Create New API Key** dialog. Click **Create** to complete the process.
8.  The API key is shown. Copy this value now and save it for later—you won't have another chance to view it.

### Step 2: Deploy CDTs

Next, you need to export the relevant CDTs from your self-managed site and import those to the Cloud environment.

In a hybrid configuration, the self-managed Appian site communicates with the Appian Cloud site to execute a robotic task and retrieve the results. Robotic tasks usually interact with Appian data in some way. Therefore, the Appian Cloud site and the self-managed site must have the same CDTs if they're being used in a robotic task. The robotic task uses the Appian Cloud site CDT in the robotic task, but once complete, returns the updated data to the self-managed site. It's important that any data used by the robotic task uses the appropriate structure so it can be sent back to the self-managed site.

You can [import CDTs](../Custom_Data_Types.html#import) to the Appian Cloud environment as part of a deployment package. Learn more about [deployment considerations regarding CDTs](../Application_Deployment_Guidelines.html#custom-data-types).

### Step 3: Create a group

**Where**: ![cloud](images/cloud.png) Appian Cloud site

[Create a group](../Group_Management.html) to secure the application objects you'll create in the following steps.

### Step 4: Configure a robotic task

**Where**: ![cloud](images/cloud.png) Appian Cloud site

1.  **Create a robotic task**: Use Appian Designer to [create the robotic task](robotic-task-definition.html) and any objects you might need to support the robotic task.
2.  **Create a process model to execute the robotic task**: In this step, you need to create a process model to execute the robotic task from Appian Cloud then create a constant pointing to this process model.

    | **If the robotic task has…** | **Then…** |
    | --- | --- |
    | **Inputs** | define the variable in the process model and include it as an **input** in the Execute Robotic Task smart service node.
    ![hybrid_config_robotictask.png](images/hybrid_config_robotictask.png) |
    | **Outputs** | create a new variable in the process model (type Map) and include it as an **output** in the Execute Robotic Task smart service node.
    ![hybrid-config-node-outputs.png](images/hybrid-config-node-outputs.png) |

3.  **Create a [web API](../Designing_Web_APIs.html) to launch the process model from the self-managed site**:
    1.  Create a web API of type **START PROCESS** and use the constant pointing to the process model during the creation.
    2.  Choose an endpoint for the web API. You'll use these endpoints in the integration you create on the self-managed site
    3.  Create a service account in the Appian Cloud site to use on this endpoint (SA\_CLOUD). Remember to copy the API KEY. You will need to use it in the next step.

### Step 5: Configure a connected system

**Where**: ![circle-nodes](images/circle-nodes.png) Self-managed site

To communicate with the integration on the Appian Cloud site, you need to configure an [HTTP connected system](../http-connected-system.html) on your self-managed site. This connected system is used to call the robotic task.

1.  In your self-managed environment, open the Appian Designer.
2.  Open the application where you want to use a robotic task.
3.  Click **NEW** > **Connected System**.
4.  Select **HTTP** as your template.
5.  In the **Base URL** field, put the URL for your Appian Cloud site followed by `/suite/webapi`. For example: `https://www.example.com/suite/webapi/`.
6.  In the **Authentication** menu, select **API Key** and add the following values:
    -   **Send As**: Choose **Header**.
    -   **Header Name**: Type **Authorization**.
    -   **Value**: Paste the API key associated with the service account you set up in the Appian Cloud site.
7.  Click **Create**.

[![images/cs-example-properties.png](images/cs-example-properties.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1361)

[![](images/cs-example-properties.png)](#_)

### Step 6: Create an integration to execute the Appian Cloud robotic task

**Where**: ![circle-nodes](images/circle-nodes.png) Self-managed site

To execute a robotic task or retrieve its results from the Appian Cloud site, you need to create a corresponding [integration](../Integration_Object.html) in your self-managed site. This HTTPS integration is used to call the Execute robotic task Web API.

1.  Click **NEW** > **Integration**.
2.  Select the Connected System you created in [Step 5](#step-5-configure-a-connected-system).
3.  Configure the following parameters:

    | **Parameter** | **Action** |
    | --- | --- |
    | **Relative Path** | Enter the cloud endpoint you created in [Step 5](#step-5-configure-a-connected-system). |
    | **Method** | Select **POST**. |
    | **Usage** | Select **Queries data** |
    | **Content Type** | Select **JSON (application/json)** |
    | **Response Body Parsing** | Select **Convert JSON to Appian Value** |

4.  If the robotic task has inputs, create a rule input with the parameters and include them in the **Request Body**.

### Step 7: Create the process model to execute the integration

**Where**: ![circle-nodes](images/circle-nodes.png) Self-managed site

Now you can asynchronously execute the Appian Cloud robotic task from a process model on the self-managed site. When you create the process model, remember to include the inputs on the integration call.

[![images/callint-node.png](images/callint-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1362)

[![](images/callint-node.png)](#_)

**Tip:**  This marks the end of the instructions if you want to execute robotic tasks asynchronously. If you prefer to execute robotic tasks synchronously, complete the additional setup steps provided in the next section.

* * *

## Steps 8-14: Synchronous execution

**Note:**  Be sure to complete [Steps 1-7](#steps-1-7-mandatory-for-all) before you begin.

### Step 8: Create a process report

**Where**: ![circle-nodes](images/circle-nodes.png) Self-managed site

Create a [process report](../Process_Reports.html) that looks up the ID of the process instance that executed the robotic task.

1.  In Appian Designer, click **New > Process Report** to create a new Process Report object.
2.  Click the **Duplicate existing process report** option.
3.  Select the **Active Processes** report that comes out-of-the-box.
4.  Click **Create** to create the new report.
5.  Open the new report to edit it.
6.  Click **Edit** and then click the **Data** tab.
7.  Select all existing column names and click **Delete**.
8.  Click **New Data** and add two new columns: one for the process instance ID (`pp!id`) and one for the execution ID (`pv!cloudProcessId`). The second column will be blank for any robotic tasks from process models without this variable.

    **Note:**  It's important that this report only contain two columns. If additional columns exist, the query breaks in the web API (detailed below).

9.  Save your changes.
10.  Set the security on the process folder and/or knowledge center so that the group you created in step 1 has **Viewer** access.
11.  Create a constant that points to this process report so it can be referenced by the web API later on. In this pattern, we named this constant `INSTANCE_EXECUTION_MAPPING_REPORT`. Select `Document` for the constant type.

### Step 9: Update the process model

**Where**: ![circle-nodes](images/circle-nodes.png) Self-managed site

1.  Open the process model that you created in [Step 7: Create the process model to execute the integration](#step-7-create-the-process-model-to-execute-the-integration).
2.  In the **Execute Robotic Task** node, create a new output to save the cloud process model's ID.

    -   Create a custom output with the assigned value `ac!Result.body.pp.id`, and
    -   store this value in the `cloudProcessId` variable, which is defined in the report.
        **Example**:

    [![images/step7-cloudProcessId.png](images/step7-cloudProcessId.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1363)

    [![](images/step7-cloudProcessId.png)](#_)

3.  Add a [Receive Message Event](../Receive_Message_Event.html) node to wait for the robotic task to complete.
    **Example**:

    [![images/receive_message_event.png](images/receive_message_event.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1364)

    [![](images/receive_message_event.png)](#_)

### Step 10: Create send completion message process model

**Where**: ![circle-nodes](images/circle-nodes.png) Self-managed site

Next, create the process model to send a message to the main process model when the robotic task execution finishes.

This process is started by the `notifyProcessOfCompletion` [web API (described below)](#step-11-create-a-web-api) and takes in a specific process instance ID to send a message to. The process ID is crucial here to ensure that the process-to-process message is targeted rather than just sending a massive message to any listening process model.

This process model contains three nodes: Start, Send Message, and End.

![rpa-send-completion-msg-pm.png](images/rpa-send-completion-msg-pm.png)

1.  In the new process model, create a process variable called `processInstance` of type Number (Integer). **Parameter** should be set to `Yes`.
2.  Create a [Send Message Event](../Send_Message_Event.html) node. On the **Data** tab, in the `DestinationProcessID` row, map the **Value** to the `processInstance` process variable (`=pv!processInstance`).
3.  Set the security of the process model so that the group you created has **Initiator** access.

After you save the process model, create a constant called `SEND_COMPLETION_MSG_PM` pointing to it. You'll use this constant in the web API.

### Step 11: Create a web API

**Where**: ![circle-nodes](images/circle-nodes.png) Self-managed site

Next, create the [web API](../Web_APIs.html) object. This web API is called from the Appian Cloud process model to notify the originating process that it has completed. It is designed to be generic, so that all you need to pass in is the `cloudProcessID` and the API sends the message to the correct process instance.

1.  Create a web API object called `ONPREMISE_WEBAPI`.
2.  Choose **Create from scratch** and choose **POST** in the HTTP Method field.
3.  In the **Endpoint** field, type `send-completion-msg`.
    -   **Note:** This is used as part of the web API's URL to identify it and will be seen by end users and in log files for network devices and servers. The combination of the HTTP method and endpoint must be unique across all web APIs in the system.
4.  Click **Create**.

The code below uses two constants:

-   `ONPREMISE_PROCESS_REPORT_CONSTANT` points to the process report you [created in step 8](#step-8-create-a-process-report). The report maps process instances with execution IDs.
-   `ONPREMISE_PROCESS_MODEL_NOTIFY_CONSTANT` points to the [Send Completion Message process model](#step-10-create-send-completion-message-process-model). The web API initiates this process model when it receives a process ID as input.

After you've created the object, use the following expression to configure the web API:

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
52
53
a!localVariables(
  local!processId: index(
    a!queryProcessAnalytics(
      report: cons!ONPREMISE_PROCESS_REPORT_CONSTANT,
      query: a!query(
        /* Filter the query results by the execution ID */
        filter: a!queryFilter(field: "c1", operator: "=", value: a!fromJson(http!request.body).processId),
        pagingInfo: a!pagingInfo(1, 1)
      )
    ).data,
    /* Index to receive only the process instance ID */
    "c0",
    {}
  ),
  if(
    length(local!processId)=0,
    /* If the query returned no results, there are no active processes waiting on that robotic process */
    a!httpResponse(
      statusCode: 200,
      headers: {
        a!httpHeader(name: "Content-Type", value: "application/json")
      },
      body: "There are no active processes to notify of the completion"
    ),
    /* Otherwise, start the process to send a message to the process instance */
    a!startProcess(
      processModel: cons!ONPREMISE_PROCESS_MODEL_NOTIFY_CONSTANT,
      processParameters: {
        processInstance: local!processId
      },
      onSuccess: a!httpResponse(
        statusCode: 200,
        headers: {
          a!httpHeader(name: "Content-Type", value: "application/json")
        },
        body: a!toJson(
          fv!processInfo
        )
      ),
      onError: a!httpResponse(
        statusCode: 500,
        headers: {
          a!httpHeader(name: "Content-Type", value: "application/json")
        },
        body: a!toJson(
          {
                        error: "There was an error starting the process"
          }
        )
      )
    )
  )
)
```

### Step 12: Create a connected system to the self-managed site

**Where**: ![cloud](images/cloud.png) Appian Cloud site

1.  Click **NEW > Connected System**.
2.  Select **HTTP** as your template.
3.  In the Base URL field, enter the URL for your self-managed site followed by`/suite/webapi`. For example: `https://www.example.com/suite/webapi/`.
4.  In the Authentication menu, select **API Key** and add the following values:
    -   Send As: Choose **Header**.
    -   Header Name: Enter **Appian-API-Key**.
    -   Value: Paste the API key associated with the self-managed service account you [set up in Step 11: Create a web API](#step-11-create-a-web-api).
5.  Click **Create**.

### Step 13: Create integration to call the web API

**Where**: ![cloud](images/cloud.png) Appian Cloud site

1.  Click **NEW > Integration**.
2.  Select the Connected System you created in [Step 12](#step-12-create-a-connected-system-to-the-self-managed-site).
3.  Configure the following parameters:

    | **Parameter** | **Action** |
    | --- | --- |
    | **Relative Path** | Enter `send-completion-msg`. |
    | **Method** | Select **POST**. |
    | **Usage** | Select **Queries data** |
    | **Content Type** | Select **JSON (application/json)** |
    | **Response Body Parsing** | Select **Convert JSON to Appian Value** |

4.  Create a rule input with the `cloudProcessId` and include it in the **Request Body**.

### Step 14: Execute the integration

**Where**: ![cloud](images/cloud.png) Appian Cloud site

Add a new action in the Appian Cloud process model to call the integration when the robotic task's execution ends.

**Tip:**  This concludes the steps if you only want to resume the self-managed process model when the robotic task completes. If you need to send the results of the execution to the self-managed site, continue to Step 15.

* * *

## Final Step: Sending results (Optional)

**Tip:**  This step is optional and should be completed only if you need to send the results of the execution to the self-managed site.

### Step 15: Send results to the self-managed process model

**Where**: ![cloud](images/cloud.png) Appian Cloud site

1.  In the [Web API](#step-11-create-a-web-api), add a new rule input of type Map and include it the Body with the tag result.

    ```
    1
    2
    3
    4
       a!toJson({
         "processId" : rilcloudProcessId,
         "result" : rilroboticProcessExecutionResult
       })
    ```

2.  Include the robotic task's execution results [in the call to the integration](#step-14-execute-the-integration). ![execution-results-config.png](images/execution-results-config.png)
3.  Include the map in the call to the process model.

    ```
    1
    2
    3
    4
    5
    6
     a!startProcess(
       processModel: cons!ONPREMISE_PROCESS_MODEL_NOTIFY_CONSTANT,
       processParameters: {
         processInstance: local!processID,
         roboticProcessExecutionResult: a!fromJson(http!request.body).result
       },
    ```

4.  Create the variable `roboticProcessExecutionResult` as an input parameter. Then, use this value to add a new message to the **Send Message Event** on the [send completion message process model](#step-10-create-send-completion-message-process-model).
    **Example**

    [![images/roboticProcessExecutionResult.png](images/roboticProcessExecutionResult.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1365)

    [![](images/roboticProcessExecutionResult.png)](#_)

5.  Add a **Receive Message Event** on the main process model. Read the variable sent by the previous process and store it in a map.

## Test it out

Once you have all objects configured and connected, you're ready to test. Use the **Start Process for Debugging** option in the process model to get started.

If the process model doesn't proceed past the **Receive Message Event**, check these common issues:

-   Does your service account have the right permissions assigned? Remember that Appian RPA users, robots, and robotic tasks need to [share at least one permission in common](security-rpa.html) to execute properly.
-   Is your robot included in the appropriate [robot pools](robot-pool-object.html) that have permission to execute the robotic task?
-   Is your integration fully set up? Open the `executeRoboticTask` integration object to confirm the desired robotic task is selected.
-   Is your robot online? Make sure the desired robot is online and communicating with the Operations Console and orchestration server.
-   Did the robotic task complete successfully, but didn't send a message back to the `Send Completion Message` process model? It could be that the process report isn't set up properly. In Appian RPA, go to the robotic task's execution log. If you see a line that says "Response body: There are no active processes to notify of the completion," check the process report to confirm that the robotic task execution ID is properly matched with the process model instance.

## Maintaining robotic tasks in a hybrid configuration

Now that your hybrid configuration is set up, you and your team can focus on developing robotic tasks. To do that, you'll need to grant developers access to your Cloud site. User accounts aren't automatically synched between your self-managed site and your Cloud site, so you may also want to evaluate the available [user authentication](../Authentication.html) mechanisms. Synching certain user accounts automatically can help save you time by managing user accounts in just one environment.

Routinely evaluate data integrity and security in your Appian RPA implementation. [Securing data in a robotic task](security-rpa.html#securing-data-in-a-robotic-task) is an important consideration in all environments.

Consider your deployment strategy when you're integrating robotic tasks with your applications. You'll likely have development, test, and production environments for both of your self-managed and Appian Cloud sites, so it's important to have a thorough understanding of how your deployment process works with hybrid configuration in place.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...