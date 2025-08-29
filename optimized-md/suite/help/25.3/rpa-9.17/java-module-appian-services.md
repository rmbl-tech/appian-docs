---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/java-module-appian-services.html
original_path: rpa-9.17/java-module-appian-services.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Services Java Module

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

The Appian Services module extends robotic process automation capabilities within your Appian applications. Using the methods within the module, your robotic task can automatically send data to or request data from Appian numerous times throughout the task execution. These actions occur without initiating an Appian process model, making communication faster and simpler.

This module contains the service class `IAppian` to define and implement calls to Appian actions. It sends the message to the Appian RPA Console, which then communicates with Appian. Using the server as an intermediary for communication between the robot and Appian bolsters security by protecting passwords and other sensitive information from being exposed on the robot.

Additionally, the module is built for ease of use between environments:

-   It automatically references the environment's base URL so there's no need to hard-code it in the robotic task or update it when deploying to Production.
-   Authentication is simpler and more secure by eliminating the need to use environmental variables and credentials. Appian actions are executed in the context of the user who starts the robotic task. In most cases, the robotic task initiator is actually the service account that already authenticates Appian and Appian RPA. The Appian Services module relies on this authentication mechanism when executing robotic tasks, eliminating the need for additional credentials to be defined in the Appian RPA Console or referenced in the robotic task code.

Some methods, like the _uploadDocument()_ and _downloadDocument()_, can only be called from the source code. This page describes how to use methods in the Java module. See the [low-code Appian Services module](actions-appian-services.html) page for guidance in an easier and more robust development experience.

## Using the Appian Services Java module

You can call the Appian Services module from the robotic task code to perform actions such as querying data, calling a smart service, and calling a Web API in Appian. The Web API method includes helpers that make it simpler to perform common actions like upload or download a document from Appian.

Unlike other Appian RPA modules, you don't need to include a Maven dependency in the `pom.xml`. The Appian Services module is configured to use in robotic tasks out-of-the-box.

### Call a Web API

Use the _IWebApiRequestBuilderFactory_ API class within the Appian Services module to call Web APIs in Appian.

The class references the environment's base URL in requests so you simply need to include the API endpoint instead of the full URL. You won't need to update the endpoint URL or Appian environment when deploying the robotic task elsewhere. However, if you update the endpoint in the Appian design object, remember to update the endpoint value here as well.

For security reasons, the API call originates from the RPA server, not the robot itself. This protects access tokens from being exposed during the request communication.

To get started, you'll first have to [create the Web API object](../Designing_Web_APIs.html) in your Appian application to properly receive and parse the data. You can configure the API response to return the data you're interested in. You can also [set up the Web API to execute a smart service](../Designing_Web_APIs.html#executing-a-smart-service).

Find more details about the Web API class and associated functions in the Appian RPA Javadocs. In the console, click **Help > Javadocs**.

Two common uses for calling a Web API in Appian are to upload or download documents. There are two methods that can help you implement those calls faster:

#### Upload document

Use the _uploadDocument()_ method to upload a document in a robotic task:

`IWebApiRequestBuilderFactory uploadDocument(endpoint, file, destFileName)`

| Parameter | Type | Description |
| --- | --- | --- |
| endpoint | String | API object endpoint |
| file | File | File to upload. You can pass the file as an input stream from the file path so the Web API can reference the file wherever it is currently stored. |
| destFileName | String | File name to use when upload is complete. If empty, the value will be taken from the `file` parameter. |

#### Download document

Use _downloadDocument()_ method to retrieve a document from Appian. To retrieve the correct document, include the document ID in the following function:

`IWebApiRequestBuilderFactory downloadDocument(endpoint, documentId)`

| Parameter | Type | Description |
| --- | --- | --- |
| endpoint | String | the API object endpoint |
| documentId | Integer | ID of the Appian document to retrieve |

Because the document ID is stored in Appian, you might find it easier to push this information to the robotic task by including [parameterized variables](configure-edit-tab.html#robotic-task-variables).

### Accessing robotic task variables

Although it is recommended to call robotic task variables from the [low-code modules](rpa-modules.html#low-code-actions) in your robotic task definition, you can also call them using the Java method _getWorkflowVariables()_ in the server function. This method allows you to capture and use the variable in other points of the robotic task.

The code snippet below is an example of using the _server.getWorkflowVariables()_ function:

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
// Gets the map of workflow variables containing those defined into the robot configuration page
Map<String, IRobotVariable> variables = server.getWorkflowVariables();

// Gets the variable called "var1"
IRobotVariable rv = variables.get("var1");

// Updates the value of var1 to the current value of item
rv.setValue(item);

```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...