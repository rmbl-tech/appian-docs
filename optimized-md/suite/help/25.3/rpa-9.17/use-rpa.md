---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/use-rpa.html
original_path: rpa-9.17/use-rpa.html
version: "25.3"
title: "Use Robotic Tasks"
page_id: "rpa-9.17/use-rpa"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Use Robotic Tasks

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

After you plan and build your robots and robotic tasks, you're ready to use them in your business processes. You can integrate them with a new or existing process model in Appian. This way, you can choose how and when the robotic task starts in the context of a broader business process.

Although there are multiple [ways to execute a robotic task](robotic-task-execution.html), this page focuses on how to use the Execute Robotic Process smart service in a process model.

To use a robotic task in your application, complete the following steps.

1.  [Create or update a process model.](#create-or-update-a-process-model)
2.  [View the results.](#view-the-results)
3.  [Deploy the robotic task](#deploy-a-robotic-task-or-robot)

## Create or update a process model

1.  Create a [process model object](../process-model-object.html) or find and open an existing process model.
2.  In the Process Modeler, drag the [Execute Robotic Process smart service](../Execute_Robotic_Process.html) to the Process Model canvas.
3.  Open the smart service to configure it.
4.  Click the **Setup** tab and choose the integration you set up earlier.
5.  Click the **Data** tab to configure the input and output:
    -   If the integration uses rule inputs, configure the smart service inputs to pass the appropriate value for each rule input.
    -   The smart service lists `variables` as an output. If a robotic task variable is a CDT, you can reference a specific field using dot notation.
6.  Click **OK** to save the smart service configuration.
7.  Continue designing or updating the process model. If you're using the robotic task results in other nodes, be sure to update those properties appropriately.
8.  To save the robotic task results in your Appian datastore, add and configure a write to data store node.
9.  Publish the process model.

## View the results

Finally, you'll want to consider how to display or use the results of the robotic task. How you display the results is determined by your goal. If you're sharing a set of this information with others, an Appian record in your application could be a good option. Alternatively, if you're looking to troubleshoot or optimize your robotic task (notably in the development phases), you might want to take a look at the **Execution Details** in the Appian RPA console.

This section describes both approaches. Learn how to create a record type and populate it with details from a CDT, and how to create a record-powered grid.

### Create a record

Appian records aggregate and display your data to provide users with information they need, whether to act or be informed. When a robotic task execution concludes and sends information back to Appian, it's time to use it in your application.

See [Create a Record Type](../Create_a_Record_Type.html) to learn how to display robotic task results alongside your other Appian data.

### View the execution details

Sometimes it's more helpful to view all information about a robotic task, including metadata about the execution. All of these details are available in the Appian RPA console.

To view [execution details](troubleshoot.html#execution-details):

1.  Go to the **Robotic tasks** tab in the Appian RPA console.
2.  Click the robotic task you're interested in.
3.  On the **List of executions**, click an execution to view its details.
4.  Three tabs appear:
    1.  **Workflow**: This tab shows you the actions the robotic task went through. The robotic task definition appears just as it does in the robotic task configuration. See the [Robotic Task Definition](robotic-task-definition.html) for more information about how to set this up.
    2.  **Results**: If your robotic task acts on items, the results tab displays information about each execution cycle, as well as a summary of the robotic task overall. This tab uses color-coding to show items by their status.
    3.  **Execution log**: This tab shows the most technical information for the robotic task. Each time the robotic task starts or completes an action, or encounters an issue, it sends a message to this log with a timestamp. The execution log is valuable for troubleshooting and debugging. You can configure your robotic task to send custom messages to the log as well.

## Deploy a robotic task or robot

Deploying a robotic task between environments is an essential piece of the development lifecycle. During testing, the robotic task might access other testing environments so it doesn't manipulate production data or interact with live systems. Appian uses an [import customization file](../Managing_Import_Customization_Files.html) to help you update certain values quickly and easily when deploying to another environment.

When deploying a robotic task, the ICF may need to include values for new or updated credentials that the robotic task references.

When you're ready to deploy robots and robotic tasks to another Appian environment, you'll include the design objects in your [deployment package](../prepare-deployment-packages.html).

You may need to manually configure the target environment if your robotic task uses global support files. Make sure those files are available in that environment.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...