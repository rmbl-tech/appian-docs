---
source_url: https://docs.appian.com/suite/help/25.3/rpa-9.17/robotic-task-variables.html
original_path: rpa-9.17/robotic-task-variables.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Robotic Task Variables

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction to robotic task variables

Robotic tasks automate routine tasks, notably those involving data input and retrieval. You can use robotic task variables to pass data between actions in a robotic task definition and even between your robotic task and other design objects.

When you call a robotic task, you can pass data in through the parameters. When querying the results of a robotic task, all variables are returned, so you can use them within other objects of your application. Robotic task variables are typed like other Appian variables, and you can even use custom data types (CDTs) to easily pass complex data between objects.

This page provides an overview of how robotic task variables flow through your robotic task. Unfamiliar with how to get started? Learn how to [create robotic task variables](configure-edit-tab.html#robotic-task-variables) when configuring your robotic task.

## Passing data

Similar to process variables in a process model, robotic task variables are placeholders for data that can be accessed throughout the lifecycle of a robotic task. Robotic task variables can be called at the beginning of the execution to [pass initial values](#using-parameterized-variables), and throughout the robotic task using [low-code actions](#using-low-code-actions) in your robotic task definition.

### Using parameterized variables

When [creating robotic task variables](configure-edit-tab.html#robotic-task-variables), you have the option to mark the variable as a parameter. Parameterized variables allow you to add custom inputs to your robotic task's execution, such as a search term for a website or a CDT of data to enter into a form. This data is often required for the robotic task to execute and its value can be used later on in the robotic task. Think of parameterized variables like process parameters in a process model: when you [create a process variable](../process-model-object.html#variables-tab), you can mark it as a parameter so you can pass a value at the start of the process model.

To pass values to your parameterized variables at the start of the robotic task, use the [Execute Robotic Task smart service](../Execute_Robotic_Process.html). Using this smart service, you can configure node inputs to pass one or multiple values to your robotic task. Later on, you'll use this same smart service to retrieve the results of the robotic task. For manual executions from the robotic task definition, you can supply a value to the input field on the **Execution options** page. However, executions from the robotic task definition can only pass one value to a parameterized variable, even if your parameterized variable is set to support multiple values.

### Using low-code actions

To pass robotic task variables throughout your robotic task definition, you can reference them in [low-code actions](rpa-modules.html#low-code-actions). You can use variables as parameters or use them to store the results of the action.

When you have a robotic task variable that is a CDT, you can reference individual fields of the CDT using the **Variable** dropdown.

![process variables cdt](images/process-variables-cdt.png)

After the robotic task collects this data, it can be passed to the next action in the robotic task definition or saved to the database when your robotic task is part of a process model.

## Retrieving results

You'll use the [Execute Robotic Task smart service](../Execute_Robotic_Process.html) to kick off a robotic task in Appian RPA as part of a process model. The smart service returns the robotic task variables as node outputs. You can use this data later in the process model, or configure it so it's saved to the database when it's returned.

If you save the return values to the database, you can then use them throughout your Appian application. For example, in an interface, robotic task variables operate in ways similar to rule inputs. Map the results of a robotic task execution to rule inputs to create an interface that quickly summarizes key data. You can use robotic task variables in this way to create data visualizations such as dashboards and charts.

## How the data flows together

This section describes an example scenario to help demonstrate how the data flows through a business application and a robotic task.

This example is a common task: checking the status of a shipment by looking at the vendor's website. You can use a process model and robotic task to check the status at a regular interval and display the results as needed, or notify the appropriate group when the status changes.

**Tip:**  Looking to learn how to build a robotic task using low-code actions? See [Low-Code Robotic Tasks](rpa-modules.html) for more specific steps on configuring the robotic task.

There are two key variables in this scenario: the tracking number and status. The tracking number is necessary as input on the web form, and the status is the data to capture. Robotic task variables allow you to share this information with other parts of your application.

In this example, a business uses a generic email inbox to receive shipment notifications. A process model [receives these emails](../Receive_Message_Event.html) and parses the information within it, specifically finding the tracking number for a given shipment. The shipment information is saved in a CDT called "Incoming\_inventory".

The "Check shipment status" robotic task automatically checks the USPS website to see the latest shipment status. In the robotic task definition, a robotic task variable is mapped to the "Incoming\_inventory" CDT. In the robotic task definition, there are actions to launch the USPS website, use the tracking number as form input, and find and capture shipment's tracking status from the results page.

![package-workflow](images/new-package-workflow.png)

A second process model is set to execute every day at 9AM to check the status of all shipments in progress. It uses the "Incoming\_inventory" CDT as process variables to get started. The Execute Robotic Task smart service calls the "Check shipment status" robotic task and uses the "Incoming\_inventory" CDT as inputs, passing the tracking number to the robotic task.

"Check shipment status" begins execution. It launches a web browser, navigates to USPS.com, finds the tracking number field, fills the field with a tracking number, and submits the form. After the results load, the robotic task finds the status and saves it as a variable in the CDT.

![tracking-number](images/tracking-number.png)

When the robotic task execution finishes, the smart service returns the results to the process model. Finally, the process model writes the updated information to the database, where it can be shown in the application as needed: in a record, user input task, or interface.

The entire end-to-end activity appears as follows:

[![images/Variables_in_Appian_RPA.png](images/Variables_in_Appian_RPA.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img1387)

[![](images/Variables_in_Appian_RPA.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...