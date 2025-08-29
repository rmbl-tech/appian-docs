---
source_url: https://docs.appian.com/suite/help/25.3/Testing_and_Debugging_Problems_with_Process_Models.html
original_path: Testing_and_Debugging_Problems_with_Process_Models.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Troubleshooting Process Models

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Troubleshoot Your Process Model

This video from [Academy Online](https://academy.appian.com/) gives an overview of debugging and resolving common process errors.

## Overview

The Appian [Process Modeler](process-model-object.html) makes it easy to integrate your enterprise processes into your applications. Using different [process nodes and smart services](Smart_Services.html), you can execute business rules, manipulate data, automate processes, and more.

There are cases though when your process model may return an error, or they may not execute as expected. When either of these situations occur, use this page to learn why they happened and possible ways to resolve the issue.

## Types of issues

There are two types of issues that can occur within a process model:

-   Issues that result in a process error.
-   Issues that do not result in a process error, but still impact the process model’s execution.

### Process errors

Process errors can be caused an issue with the process properties that affect the entire process model, or they can be caused by an issue within a single node. The most common issues are typically a result of insufficient privileges, invalid node or expression configuration, or an evaluation timeout on a node.

These errors will trigger an email alert so specific users (like your system administrator or administrators of the process model) are notified about the problem in your process. The email will contain a link to the process instance’s error in the **[Monitor view](monitoring_view.html)** so you can view where the problem occurred, why it happened, and when.

![images:viewing_process_error.png](images/processErrorEx.png)

**Tip:**  You can customize who is notified of process errors from the [Alerts tab](process-model-object.html#alerts-tab) of the process model properties.

When a node triggers a process error, the process will pause at that node and cannot continue until an administrator troubleshoots the issue. Most issues will occur in your development environment and can be addressed by changing the configuration of your process model and restarting the process model.

However, there are also some errors that can occur in your production environment. In these instances, it may be necessary to modify the process in-flight and restart or resume any affected nodes. This allows the process to continue and doesn’t require restarting the entire process from scratch.

See the [Issues that return process errors](#unexpected-issues-that-do-not-return-process-errors) section below for more information on the different types of issues and their possible solutions.

### Unexpected issues

There are cases, though, when there are no process errors, but the process model still didn’t execute as expected. For example, a process model assigns a specific user to a task, but the user can’t see the new task. Or perhaps a gateway didn’t send a workflow to the appropriate outflow.

When these types of issues occur, it’s likely a result of an incorrect configuration somewhere in your process. In the examples above, the issues could stem from a missing process variable, the user not having permission to view the interface, or perhaps the data was just entered wrong.

We’ve provided a list of possible issues you could run into during development that do not trigger errors in the [Unexpected issues that do not return process errors](#unexpected-issues-that-do-not-return-process-errors) section below.

## Issues that return process errors

The following section describes some possible process errors and ways to resolve them. This is not an exhaustive list, but it covers some of the most common errors that you may encounter.

To quickly see all process errors that have occurred in your application, go to the **Monitor** view in your application and select [**Process Activity**](monitoring_view.html#process-activity). Here you can see a list of all unresolved process errors, and choose to review resolved process issues as well.

**Tip:**  A process error is resolved when the process is completed or canceled, or if you manually start a process from a paused node and it succeeds.

### Insufficient object permissions

Every node is evaluated in the [context of a user](User_Contexts_for_Expressions.html). This means that if a node is started by a user that does not have the appropriate permission to perform a node’s action, that node will throw an error.

For example, let’s say a user has permission to start a process that creates a folder within a knowledge center, but that user does not have permission to that knowledge center. In this case, the process would error on the node that creates the new folder.

#### Resolution

Ensure that any objects referenced in your process model (like a record type, group, or expression rule) have the appropriate [object security](object-security.html), including the process model itself.

For a user to start the process model, they must have at least **Initiator** permissions. If a process is triggered by a timer or as a subprocess, it will be executed as the user who deployed the process model into production. As such, make sure this user account has the appropriate permissions on all objects referenced within the process model.

Review the [process model security](process-model-object.html#prodlink-security) to ensure all appropriate users can start and interact with the process, or use the [Modify Process Security Smart Service](Modify_Process_Security_Smart_Service.html) to give a user the appropriate permissions via a process.

Additionally, you should review the security role map for each object involved in your process to ensure users have the appropriate level of permission. In the example above, this would mean that users need at least **Editor** permissions to modify objects within a knowledge center.

See [Object security](object-security.html) to learn more.

### Incorrect user type

In addition to object-level security, users must also be the appropriate [user type](User_Management.html#manage-user-rights-and-security) to complete certain tasks.

For example, if the initiator of the process is a Basic User, but the process uses the [Remove Group Members](Remove_Group_Members_Smart_Service.html) smart service—which requires that the user be a System Administrator—the process will error.

#### Resolution

Ensure that only users who are System Administrators can access processes that involve user creation, modification, or deletion.

### Unable to write data

Process models are often used to add new data to a database using the [Write Records](Write_Records_Smart_Service.html), [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html), or [Write to Multiple Data Store Entities](Write_to_Multiple_Data_Store_Entities_Smart_Service.html) smart services.

But, a write operation could fail for the following reasons:

-   **Incorrect smart service configuration**:
    -   The input in the smart service is misconfigured. For example, in the Write Records smart service, this would happen when the input is using an unsupported record type, or there is an error in the expression calling the process model.
    -   There is a mismatch between the source and the node input trying to pass in data.
    -   The node input is the wrong data type.
-   **Database configurations that impact your process**:
    -   A null value is passed, but the field is not nullable.
    -   Auto-increment is not set on the primary key column and a value has not been provided for that field.
    -   A value exceeds the field's maximum length.
-   **Unavailable source**:
    -   The record type or data store entity is unavailable.

**Note:**  If you are updating data that is used as the source of a record type with [data sync](about-data-sync.html) enabled and the smart service fails, the record data will be unavailable until the next successful full sync.

#### Resolution

To ensure your smart services successfully write to your database:

-   **Review your smart service configuration**:
    -   When using the Write Records smart service, ensure you are only referencing database-backed record types with data sync enabled.
    -   Make sure that you are capturing all of the necessary values prior to reaching the smart service.
    -   If you are Write to Data store Entity smart service, you must supply values for each field in your CDT; otherwise, a null value will be written to any blank fields.
    -   If needed, cast node input values to the proper data type using the [cast()](fnc_informational_cast.html) function.
-   **Add validations to your start forms**:
    -   Prevent users from supplying null values or values greater than the field’s maximum length by adding a [custom validation](Validation_Message.html) on your interface.
-   **Modify your database table or CDT**:
    -   If you must pass null values, modify the affected column so null is set to _true_.
    -   If you are not providing the database table with a primary key value, ensure that auto-increment is set for the table in your database.
    -   Adjust the table column definition to support the type of incoming data.
    -   When using the Write to Data Store Entity smart service, consider using the `@Column` [JPA annotation](Mapping_CDTs_to_Pre-defined_Database_Tables.html#annotations) with the length attribute in your CDTs to control the maximum number of characters a column can hold.

### Expression evaluation errors

Similar to other design objects in Appian, process models frequently use expressions. If there is a runtime error, where the expression is valid but there are invalid rule inputs or parameter values, it can cause a process error.

These errors can occur in any configuration within a process node or in the process model properties, but they most commonly occur within the input or output of a node.

Expression evaluation errors are often caused by issues such as:

-   Syntax errors like missing commas, parentheses, or operators, or invalid function or variable references.
-   Casting errors when trying to cast from one data type to another.
-   Calling functions that cannot be used in a process model, such as `a!save()`, custom field functions, or smart service functions.

#### Resolution

Each expression evaluation error will return an error message with details on how to resolve the error. You can often resolve the error by replicating the error within an expression rule and determining what expression changes will fix the error.

### Required node inputs are missing or the wrong type

Some process nodes require a value for certain inputs or require a certain type to ensure the node executes correctly. For example, the _records_ node input of the [Write Records](Write_Records_Smart_Service.html) smart service requires an input of type [Record Type](Appian_Data_Types.html#record-type).

If no value is provided or the wrong type is provided, the node will pause and cannot continue until the issue is corrected.

#### Resolution

Review the node to identify if any inputs are required. Required inputs always appear with an asterisk (`*`). Also check to see what input is used for the node and ensure the value you provide matches it or can be cast to the correct type.

### A node or expression references an object that does not exist

If an object does not exist when the process tries to reference it, the process will pause by exception. For example, if a script task references a group that was deleted earlier in the process, the process will pause.

Many objects in Appian can cause this issue, including:

-   Constants
-   Connected systems
-   Data store entities
-   Documents
-   Folders
-   Groups
-   Users
-   Process models (called as a subprocess)
-   Record types
-   Rules

#### Resolution

Make sure your expressions and configurations point to objects that exist. Also when deleting objects, make sure there aren’t any dependencies before deleting the object.

### A node that uses multiple node instances has 0 nodes

Multiple node instances is a property that allows a node to be executed multiple times to achieve parallelization, such as sending tasks to many users at once. The property requires an additional configuration to identify how many times to execute the node. If the number of nodes to execute is 0 (possibly because an expression evaluates to 0), the node will pause.

#### Resolution

Make sure the number of nodes to execute is always greater than or equal to one. You can add a gateway before the node to execute to check that at least one node will be executed. If not, the gateway can be set to skip the node.

## Unexpected issues that do not return process errors

The following section describes some issues you may encounter when building your process and ways to resolve them. The issues below will not return a process error and are likely a result of incorrect configuration somewhere in your process.

### Unable to start the process model

If required process information is missing or invalid, you won’t be able to start the process model.

For example, if a required process variable is not provided a value, or an expression evaluation occurs in a required process configuration, then you will not be able to start the process.

#### Resolution

Review all required process information, like process properties, process variables, and default alerts.

Although this issue will not trigger a process error, you will still receive an error message that contains more information about the issue and specific resolution steps.

### User cannot see their assigned task

[Tasks](Tasks.html) can be assigned to a single user or a group of users. If a task is assigned to a user, but that user cannot see the task, it may be because:

-   The logged in user is not the person or a member of the group that's assigned the task.
-   The user input task has been configured as a [quick task](Process_Model_Recipes.html#creating-a-quick-task). Quick tasks appear as related actions on process-backed record types.
-   The assignment of the task is being handled through process data, which is not getting the correct values.

#### Resolution

To ensure the assigned user can see their task:

-   If the task is assigned to a group, make sure the user is a member of that group.
-   Ensure the [User Input Task](Configuring_the_User_Input_Task.html) is not configured as a quick task:
    -   Open the **User Input Task**.
    -   On the **General** tab, ensure the **Quick Task** checkbox is deselected.
-   If the task is assigned via a process variable, ensure that variable has the correct value set before the user input task.

### User cannot open a task

If a user is receiving an error when they try to open a task, it’s likely due to an issue with the interface or how the interface is connected to the task.

For example, the form could be mapped to a value that does not exist. Or, perhaps there is an error within the interface that is preventing it from rendering.

#### Resolution

To ensure users can open the task:

-   Verify that all rule inputs map to an existing parameter or value.
-   Within the form interface, ensure that there are no expression errors with test data present.
-   Check the value of your process variables and/or activity class parameters. If a null value is not allowed to be passed into the interface, ensure that there’s a value present.

### A gateway did not send a process to the correct outflow

[Gateway nodes](Gateways.html) allow you to evaluate different criteria to make decisions on which path your workflow should follow. When a gateway does not send a workflow to the expected outgoing path, the problem may be:

-   A **Condition** value is not properly captured or is misconfigured.
-   The gateway **Results** are misconfigured.
-   For XOR and Complex gateways configured as XORs, the order of the conditional checks are incorrect.

#### Resolution

To ensure the gateway sends the process to the correct outgoing path:

-   Review the process history to ensure the value you intend to compare is set.
-   Ensure that your **Result** is going to the correct outgoing path.
-   Ensure that each expression you’re evaluating triggers a value of _true_ with the appropriate value. It is often useful to test the condition independently using an expression rule.
-   Within XOR conditions, make sure that there is no overlap in the outcomes of each condition. For example, you'd want to avoid two conditions like `pv!value > 5` and `pv!value > 10` since a value of `15` would still cause the first condition to execute.

### A gateway has not completed but no errors have occurred

If a [gateway node](Gateways.html) is configured incorrectly, the gateway could end up with no paths to execute and the process will pause indefinitely.

This usually occurs for one of two reasons:

-   When using an OR gateway, if none of the conditions evaluate to _true_, then the node cannot execute any of the results.
-   When using an OR or XOR gateway, if multiple paths enter the gateway, only the first path will execute the gateway. Any subsequent paths that enter the gateway will pause the node.

#### Resolution

To ensure a gateway successfully completes:

-   When using an OR gateway, at least one condition must evaluate to _true_ to ensure the node completes.
-   When using an OR or XOR gateway, ensure that there is only one path that enters the gateway.

### An activity in a subprocess is not getting the parent’s values

When working with [subprocesses](Sub-Process_Activity.html), setup is required in both the parent process model and the subprocess.

If either of the following is true, then your subprocess may not work correctly:

-   The subprocess's process variables are not set as parameters.
-   The subprocess activity in the parent model's input data mapping is not configured properly.

#### Resolution

To ensure the activity in a subprocess receives the parent’s values:

-   In the subprocess process model, ensure that all of the process variables that need data from the parent process are configured as parameters.
-   In the parent model, within the subprocess activity, check the input variables section to ensure all parent/subprocess data mapping is correct.

### A smart service is inserting a new row of data instead of updating an existing one

The [Write Records](Write_Records_Smart_Service.html), [Write to Data Store Entity](Write_to_Data_Store_Entity_Smart_Service.html), and [Write to Multiple Data Store Entities](Write_to_Multiple_Data_Store_Entities_Smart_Service.html) smart services are all able to create and update data in a database. However, If the smart service is creating data when you expect it to update existing data, it's likely because the record or value being passed to the node does not have a value set for the primary key field.

#### Resolution

To ensure you are updating existing data instead of creating a new row of data:

-   Ensure that the process is supplied with the primary key value for the row of data you want to update.
-   If the update is occurring in the same process model after the row is created:
    -   For Write Records, ensure that you are capturing the result of the **Records Updated** output parameter in the record process variable.
    -   For Write to Data Store Entity and Write to Multiple Data Store Entities, ensure that you are capturing the result of the insert activity in the CDT process variable from the **Stored Values** output.

### Changes to the process model do not appear when running the process

If you have made changes to your process model, but those changes aren’t appearing when you start the debugging process or when an end user runs the process, it’s likely because the process model hasn’t been published since the changes were made.

Alternatively, someone else may have published a new version of the process model than the one you’re running. Luckily, both have an easy fix.

#### Resolution

To have your process changes appear when running the process:

-   Publish the process model:
    -   In the process model, go to **File** > **Save & Publish**.
-   Check that your process model version is the most recent. If not, refresh your process model and try running the process again.

### Unable to display a process model in a site

When you configure your [sites](sites_object.html#add-a-page), you have the option to add actions as a page type. This page type allows users to initiate a process, like submitting a new service request.

If you cannot select a specific process model for your action, it’s because there is no start form associated with that process model.

#### Resolution

Actions can only be used in a site if the process model has a [start form](process-model-object.html#process-start-form-tab). This is because the form will show up when an action page is selected. Either modify your process model to include a start form, or choose a different process model.

### A user does not see a start form upon starting an action

Usually when starting an action, a user will complete information on a form required for the process. However, if the start form does not display it may mean that the user input task is not set up correctly.

#### Resolution

To ensure the form appears when starting the action, review the start form configuration in the [Process start form tab](process-model-object.html#process-start-form-tab) of the **Process Model Properties** dialog.

If you're using a [User Input Task](Configuring_the_User_Input_Task.html), make sure there is [activity chaining](Process_Model_Recipes.html#using-activity-chaining-to-display-multiple-forms-in-succession) between all nodes from the start form to the user input task.

### A process node is skipped

If you expect a node to execute but the process continues on without completing it, often the node is not property connected or the process model has not been published.

#### Resolution

Make sure the node is actually connected. In the image below, notice that the script task does not have an arrow entering the node. This occurs because the node is above the path but is not actually connected to it.

![images:viewing_process_error.png](images/unattachedNode.png)

Additionally, make sure the process model is published. This ensures the process executes with the latest version, which should contain any node updates.

To publish a process model:

-   In the process model, go to **File** > **Save & Publish**.

### A node doesn’t execute when the process flow reaches that step

When a process flow reaches a node, the node will attempt to execute and it should show as green when it is active. However, there are a few reasons that the node could delay starting, such as being scheduled or a condition for starting has not been met.

#### Resolution

Check to see if the node has been scheduled for a future time. The node will not start until that time is met.

Also remember that the time it is executed depends on the time zone of the process model, which is usually inherited from the default time zone of the designer of the process model.

### The process does not complete when it reaches an end node

In order for a process to complete, all active flows must reach an [end node](End_Event.html). This means that if there are multiple active flows, the process is still considered active even if only one of them reaches an end node.

#### Resolution

First ensure that the process is configured to have all active flows reach an end node.

You should also add a [Terminate trigger](End_Event.html#adding-a-terminate-process-trigger) on your end node. When using this trigger, any node that reaches this end node will complete the process, even if there are other active flows.

**Tip:**  It's recommended to set most end nodes to terminate unless the process specifically expects to have multiple active flows.

### A process variable used in the output of a node is not updated correctly

The outputs of a node are used to capture changes from the node and persist the results into process variables that can be used later on in the process. However, if the inputs or outputs are misconfigured, the output may not save the correct data.

#### Resolution

When saving data into a variable on the output, make sure the same variable is not also being updated by the Save Into parameter on the input. When the node completes, the results from the inputs tab are saved after the results on the outputs tab.

If you have a custom output, make sure the output expression is returning the correct result. It’s often helpful to test this expression in an expression rule outside of the process model.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...