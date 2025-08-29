---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robotic-task-execution.html
original_path: rpa-9.17/robotic-task-execution.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Methods for Robotic Task Execution

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes the different methods you can use to execute a robotic task.

To extend automation, robotic tasks can be triggered to execute automatically in multiple ways. The method you use to execute a robotic task depends on its purpose and context. Choose one of the following options that describes your use case:

-   [Use the Appian RPA robotic task in a process model](#execute-a-robotic-task-in-a-process-model): This integrated method is best for developers to integrate robotic tasks into a business process.
-   [Use the Appian RPA connected system in an interface](#execute-a-robotic-task-from-an-interface): This method is helpful for complex workflows contained in a single interface. For example, you can use this method when a user needs to kick off a robotic task from a dashboard and see the results when it completes.
-   [Execute manually in the Appian RPA console](#execute-a-robotic-task-manually-in-the-appian-rpa-console): This method is best for developers while testing or debugging.

## Execute a robotic task in a process model

Call an RPA robotic task using the Execute Robotic Task Process smart service from your process model to execute synchronously. Synchronous execution is useful if you want to return data from the robotic task execution and use it in subsequent nodes in the same process model.

To execute a robotic task in Appian RPA asynchronously, you can call the integration using the [Call Integration smart service](../Call_Integration_Smart_Service.html). When the robotic task is executed asynchronously, the process model moves to the next node whether or not the robotic task is complete, and the results aren't automatically returned.

To use a robotic task in your application, complete the following steps.

1.  [Create or update a process model.](#create-or-update-a-process-model)
2.  [View the results.](#view-the-results)
3.  [Deploy the robotic task](#deploy-a-robotic-task-or-robot)

### Create or update a process model

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

### View the results

Finally, you'll want to consider how to display or use the results of the robotic task. How you display the results is determined by your goal. If you're sharing a set of this information with others, an Appian record in your application could be a good option. Alternatively, if you're looking to troubleshoot or optimize your robotic task (notably in the development phases), you might want to take a look at the **Execution Details** in the Appian RPA console.

This section describes both approaches. Learn how to create a record type and populate it with details from a CDT, and how to create a record-powered grid.

#### Create a record

Appian records aggregate and display your data to provide users with information they need, whether to act or be informed. When a robotic task execution concludes and sends information back to Appian, it's time to use it in your application.

See [Create a Record Type](../Create_a_Record_Type.html) to learn how to display robotic task results alongside your other Appian data.

#### View the execution details

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

## Execute a robotic task from an interface

You can adapt the [Refresh Data After Executing a Smart Service](../recipe-refresh-until-asynchronous-action-completes.html) recipe to execute a robotic task and retrieve results in an interface.

Note that this recipe needs some modification to work for this purpose:

-   **Call a Process Model:** Start by calling a process model. This model will kick off the robotic task and give you back an execution ID.
-   **Generate a Process Report:** Create a process report. This report should display the execution ID, the current status, and relevant output variables.
-   **Set Up a Reevaluation Variable:** Establish a variable for periodic checks. Use this variable to repeatedly query the process report, filtering by the execution ID, to keep track of the status and show the results.

Be aware that with this method, you won't have access to the running robotic task's details, which is a limitation you need to consider. This process differs from some existing mechanisms that might provide more in-task details.

## Execute a robotic task manually in the Appian RPA console

You can manually execute a robotic task within the Appian RPA console. Open the robotic task's configuration and click the **Execute** icon. This option also appears in the **Actions** column in the **List of robotic tasks**. The **Execute robotic task** dialog appears:

![rpa-execution-options.png](images/rpa-execution-options.png)

Before you click **Execute** ![rpa-execute-icon.png](images/rpa-execute-icon.png), fill in all required fields.

A warning message appears if the robotic task has any restrictions to keep it from executing, such as new executions are disabled in the console or the maximum number of simultaneous executions has been reached.

If the robotic task requires any input parameters, these appear at the top of the **Execution options** window. Other execution options appear below:

-   **Robot**: Select a robot for the execution to occur. The options include robots where the robotic task has [permissions](security-rpa.html) to execute. By default, the first available robot is selected. The robotic task will run on the first connected robot for which it has permissions to run. This list also shows robots that are **Unconnected** and **Connected but incompatible** due to mismatched permission tags.
-   **Priority**: If desired, change the execution priority defined in the robotic task configuration.
-   **Trace level**: Depending on the trace level selected, information written in the [Execution log](troubleshoot.html#execution-details) will be higher or lower.
-   **Description**: Add an optional short description of the process or execution.
-   **Executions to launch**: Specify how many executions to launch.
-   **Color**: If desired, change the default color for the execution, defined in the robotic task configuration.
-   **Debugging?**: Select this checkbox to begin a debugging execution. You can [debug in RPA](troubleshoot.html#debug-a-robotic-task) to walk you through the workflow action-by-action and isolate where issues might arise.
-   **Testing?**: Select this checkbox to specify that the execution is a test. This option will highlight this execution on the lists where executions are displayed.
-   **Capture screenshots?**: Select this checkbox to capture images of the robot screen at the beginning and the end of each action.
-   **Enable video recording?**: Select this checkbox to record a video of the execution with additional options.
-   **Deferred execution?**: Select this checkbox to defer the execution to the chosen date and time.

After the execution finishes, see the [execution details](troubleshoot.html#execution-details) for more information.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...