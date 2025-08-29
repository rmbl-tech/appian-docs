---
source_url: https://docs.appian.com/suite/help/25.3/Working_with_Data_in_Process.html
original_path: Working_with_Data_in_Process.html
version: "25.3"
title: "Working with Data in Process"
page_id: "Working_with_Data_in_Process"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Working with Data in Process

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How do I Pass Data through Appian Objects?

Watch this video to learn how data is passed between objects, as well as the difference between rule inputs, local variables, activity class parameters, and process variables.

## Overview

A major component of applications is the creation, editing, and moving of data through the lifecycle of your business workflows. From querying data from a database and showing data to a user on a task form, to taking user input on a form and writing that data to your business data source, process models in Appian allow you to do all of that.

This page outlines how to interact and manage data inside your process flows.

## Types of data in process

Before we outline how data flows in process, let's briefly overview the different types of data that you will work with in process models.

### Process variables

A process variable is a placeholder for data that can be accessed throughout the lifecycle of a process. It is how data is transferred between different nodes in a model. [Node inputs](#node-inputs--activity-class-parameters) are mapped to process variables on either the [Data Tab](Process_Node_and_Smart_Service_Properties.html#data-tab) or the [Setup tab](Process_Node_and_Smart_Service_Properties.html#setup-tab) of each activity or smart service.

![process_variables_zoom.png](images/working_with_data_in_process/process_variables_zoom.png)

Process variables often serve as the basis for [process report data](Process_Reports.html) during the process instance's lifecycle as well.

#### Process variables from process properties

The **Value** of your process variable can be taken from a process property, such as the Process ID.

Process properties do not appear in the expression editor when designing the process model (as there are no active process instances); however, you can reference them by name in your expressions.

### Node inputs / activity class parameters

Node inputs are how data is used by nodes in your process. Node inputs can be mapped to process variables or they can be constants, literal values, or an expression to be evaluated. Any data you want to be used by a process node needs to be mapped to a node input. When a node completes, its node input values are no longer available, so node input values must be saved into a process variable to be used later in the process.

![node_inputs_zoom.png](images/working_with_data_in_process/node_inputs_zoom.png)

If the process variable you are mapping the node input to doesn't currently have a value, you can instead specify a default value for the node input by using the **Value** field in the **Node Inputs** dialog.

When you use a record type as a node input, you can expand the input to see all field of the record type and any related record types. You can save the entire record node input into a process variable or individual fields as needed.

![Node input configured with a record type](images/working_with_data_in_process/node_input_record_type.png)

When you have a node input that is a [custom data type (CDT)](Custom_Data_Types.html), you can expand the input to see all of the fields of the CDT. You can save the node input into a process variable at the parent level or save into individual fields of the CDT. If saving at the top-level, all fields will be updated even if there is no new data. Fields without new data will be set to a null value.

![node_input_cdt.png](images/working_with_data_in_process/node_input_cdt.png)

### Node outputs

![node_outputs_zoom.png](images/working_with_data_in_process/node_outputs_zoom.png)

Node outputs are often the result of executing a process node (like, the new group you create with the Create Group smart service). These output values can be further manipulated in the Output tab of the Data Tab, but for other parts of your process to use those values, they must be saved back into a process variable.

**Note:**  You should not save into the same process variable in node inputs as you do in node outputs. Because these both save at the same time, the value you intend to end the node with may be overwritten.

![Using_node_inputs_and_outputs.png](images/working_with_data_in_process/Using_node_inputs_and_outputs.png)

### Interface inputs

![form_data_zoom.png](images/working_with_data_in_process/form_data_zoom.png)

When your process has an [user input task](Configuring_the_User_Input_Task.html), you must define the interface that will display as the form. When configuring that user input task's [forms tab](Process_Node_and_Smart_Service_Properties.html#forms-tab), you specify what values to pass to the interface.

[![images/working_with_data_in_process/interface_inputs_to_form_inputs.png](images/working_with_data_in_process/interface_inputs_to_form_inputs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img853)

[![](images/working_with_data_in_process/interface_inputs_to_form_inputs.png)](#_)

Most commonly, we display a form to a user to collect some data and then leverage it later in that same process (for writing it to database table, executing business rules based on the values, etc.)

## How the data flows together

Let's try to piece it all together by using an example process model.

We have a Support Ticket Management application that allows users to submit support tickets. Those support tickets then need to be worked on. This app allows a user to task another user with work regarding the support ticket.

In this example, we'll display the following on the form: information about the record, information about the task that was sent, and the tasked user's response when they complete the task.

When a user fills out a form, any data you want to collect for your process must be listed as an interface input, and that interface input must be mapped to a node input. Data from a form **cannot** be saved straight from a form to a process variable. When a node completes, its node input values are no longer available, so node input values must be saved into a process variable to be used later in the process. You can only save into process variables that have the same data type as the node input/output. Appian process variables, node inputs, node outputs, and interface inputs are strongly typed, so they are configured to hold and represent only certain kinds of data. If the value being saved into one of these isn't the correct type, the value will be cast to correct type, which may alter the value in a way you don't expect. Learn more on the [Appian Data Types page](Appian_Data_Types.html#mapping-data).

[![images/working_with_data_in_process/process_data_flow_callouts.png](images/working_with_data_in_process/process_data_flow_callouts.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img854)

[![](images/working_with_data_in_process/process_data_flow_callouts.png)](#_)

As you can see above, the `comments` process variable is passed into the **Record Task** user input task where it is mapped to a node input. That node input is also mapped on the Forms tab of the user input task to the `STM_TaskForm`'s interface inputs so we can collect that data and then save it back to the process variable once the task completes. Here's how it would look like on the form itself:

[![images/working_with_data_in_process/task_form_filled_out_callouts.png](images/working_with_data_in_process/task_form_filled_out_callouts.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img855)

[![](images/working_with_data_in_process/task_form_filled_out_callouts.png)](#_)

The form above displays all of the data related to the record (support ticket) and the task itself. We aren't editing any of that information on this form, so we don't need to map the record's process variables to node inputs, we can just feed the interface the process variable values since they won't be overwritten. Notice that there is a comments section for the user to fill out, that input is what we want to save back into a variable that can be used later in the process to write the user's comments to the database. That's why we map the comments interface input to the comments node input.

In general, if you need to edit data on a form that will then be used in a process, you need to map node inputs to your interface inputs. If you are only displaying certain values, those process variables can be referenced directly in the interface inputs without the additional process variable to node input mapping.

**Tip:**  To learn how to use process models to create, update, and delete record data, see the [Record Data Management Recipes](manage-record-data.html).

## Making updates to the configuration of your data flow

### Changing process variable names

Changing the name of a process variable in the Process Model Properties dialog automatically changes the name of the variable in the process instances listed as automatic in the following table:

| Process Variable Usage | Automatic Versus Manual |
| --- | --- |
| Expressions | Manual |
| Conditions | Manual |
| Rules | Manual |
| Custom node output expressions | Manual |
| Node input mappings | Automatic |
| Node output mappings | Automatic |
| Variables displayed as default form values | Automatic |
| Expressions used to calculate default form values | Automatic |
| Gateway conditions | Automatic |

If you change a variable's name, you can view each place the variable is used that requires a manual change by clicking the **Validate** button. The missing process variable triggers validation errors, which you can click to display the dialog where the rule or expression can be edited to use the new variable name.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...