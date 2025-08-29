---
source_url: https://docs.appian.com/suite/help/25.3/Write_Records_Smart_Service_23r4.html
original_path: Write_Records_Smart_Service_23r4.html
version: "25.3"
title: "Write Records Smart Service (23.4)"
page_id: "Write_Records_Smart_Service_23r4"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Write Records Smart Service (23.4)

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Write Records Smart Service](/suite/help/25.3/Write_Records_Smart_Service.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Write_Records_Smart_Service.html#Old_Version)

## Overview

The Write Records smart service is a powerful tool that allows you to easily insert or update data in your source system and then automatically sync those changes in Appian.

To write data using this smart service, you must use a record type that meets the following conditions:

-   The record type uses a database as its source.
-   The record type has [data sync](about-data-sync.html) enabled.

You can update records in your record type and your related record types. See the specific [usage considerations](#write-related-records) for writing related records.

### Permissions needed

The user executing this node must have **Viewer** permissions to all record types where data is created or updated. If the user does not, the node will fail and pause the process with an exception.

For example, if a user is creating a new Order, they need **Viewer** permission to the Order record type. When the Order is updated with line items, the user will need to write both the Order and the Order Item, so they will also need permission for the Order Item record type.

## Properties

-   **Category**: Data Services
-   **Icon**: ![Create Folder](images/Smart_Service_Icons/Write_Records.png)
-   **Assignment Options**: Automated activity

## Configuration options

This section contains configuration details specific to this smart service. For more information about common configurations, see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Setup tab

The **Setup** tab is where you'll configure the records to write, as well as any corresponding [record events](record-events.html) to write. If your record type does not have record events configured, you will only specify the records to write on this tab.

To configure the **Setup** tab:

1.  (Optional) [Configure record events](record-events-configuration.html) for any record types you want to capture events for. You can only write records and events at the same time if the record type has record events configured.
2.  In your process model, open the **Write Records** node.
3.  Go to the **Setup** tab.

    [![images/blank_writeRecords_setup_tab.png](images/blank_writeRecords_setup_tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img171)

    [![](images/blank_writeRecords_setup_tab.png)](#_)

4.  For **Records Input**, specify the data to write:

    | To write to... | Action |
    | --- | --- |
    | Base record type | Select a process variable of type Record Type.

    This allows you to write data to the record type and any of its one-to-one or one-to-many related record types in a single transaction. |
    | Related record types that have the relationship configured to [**Write or delete…**](record-type-relationships.html#allow-writes-and-deletes) |
    | Unrelated record types | Select multiple process variables of type Record Type.

    This allows you to write to each of those record types in a single transaction. |
    | Related record types that have the relationship configured to [**Do not write or delete…**](record-type-relationships.html#do-not-allow-writes-and-deletes) |

    **Tip:**  If you need custom conditions or to update data with static values, you can write an expression with the data to update.

5.  If you selected multiple process variables in the **Records Input**, review the list of record types in **Record Type for Events**, and remove all except the record type you want to write events for. You can only write events for a single record type per node.

    **Note:**  If the record type does not have record events configured or multiple record types are selected, no events will be written.

6.  If the record type in **Record Type for Events** has record events configured, **choose when to write events**:

    | Option | Description |
    | --- | --- |
    | **Always** | Write events whenever the node executes. |
    | **Never** | Never write events whenever the node executes. |
    | **Only when…** | Specify the condition in which events are written. Click **Edit Condition** to write an expression defining the specific condition. |

7.  Select the values to write for the event. The field inputs are populated from the related [Event History record type](record-events-configuration.html#generated-event-history-record-type).

    You must map values for the following field inputs:

    | Input | Description |
    | --- | --- |
    | **Event Type** | The type of event that occurred. The dropdown list is populated from the values in the [Event Type Lookup record type](record-events-configuration.html#generated-event-type-lookup-record-type). If you use an expression, you must use the event type identifier to indicate the type of event. Learn more about [conditionally choosing event values](Write_Records_Smart_Service.html#conditionally-choose-event-values). |
    | **User** | Who completed the event. If the event will be completed by an automated task, set the value to **Null (Set as System Event)**. |
    | **Automation Type** | The [type of automation](record-events-automation.html) that completed the event. If the event isn't automated, set the value to **None (User)** to indicate it will be completed by a user. |
    | **Timestamp** | The date and time when the event occurred. Select **Now** to capture the date and time when the node executed. |

8.  Click **OK**.
9.  Click **Save & Publish** in the process model.

### Data tab

The **Data** tab allows you to add additional inputs and store the resulting node outputs.

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Pause On Error | Boolean | Determines whether the node should pause by exception if an error occurs writing to the source. Default: `true`. | No | No |

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| Records Updated | Any Type | A list of records containing just the primary keys of records and related records updated by the smart service. Its data type is the record type configured on the Setup tab. |
| Error Occurred | Boolean | Returns `true` if any write to the source system or Appian fails; returns `false` if all writes succeed. |
| Error | Text | The error that occurred when writing the records and the list of records that failed to write. This is only returned when the Pause On Error input is `false`. |

## Usage considerations

### Pass data using a record data type

To pass data into the Write Records smart service or function, you must use a [record data type](Appian_Data_Types.html#record-data-types). This means that when you build a start form, you should use record types as your rule inputs or local variable, and any process variables should have a **Type** of **Record Type**.

If you're not passing data from a variable, you can use a [record type constructor](reference-records.html#use-a-record-type-constructor) to pass in the record data type and the data to write in a script task.

**Note:**  You only need to pass in the data you want to update, not all record fields and their values. This smart service will only update the data you provide. It will not write null values for any fields that are not provided. See [Update existing records](#update-existing-records) for an example.

### Create new records

A new record will be created when one of the following is true:

-   The source table is set to `AUTO_INCREMENT` the primary key column and you omit the primary key field or set it as null.
-   The record type's primary key field is configured to [use a sequence to generate key values](configure-record-data-source.html#prodlink-database-fields) and you omit the primary key field or set it as null.
-   The source table is not configured to `AUTO_INCREMENT` or use a sequence and you provide a primary key value that does not exist.

### Update existing records

To update existing data, the record must include a primary key value. For example, if you want to update an employee record, you must pass the employee's `Id` to the Write Records smart service.

When you update an existing record, only the changed data is written. For example, imagine your Employee record type has fields for `firstName`, `lastName`, and other personal information, but you only need to update an employee's last name from `Anderson` to `Kwan`. You can pass just the record's identifier and the new `lastName`, and only the changed field will be updated in the source.

In this example, we query the entire Employee record. When we pass the updated data, only `lastName` is updated in the source; the employee's first name and other data remains unchanged.

```
1
2
3
4
5
recordType!Employee(
  recordType!Employee.fields.id: 233,
  recordType!Employee.fields.firstName: "Alice",
!  recordType!Employee.fields.lastName: "Kwan"
)
```

### Write related records

You can update records in one record type or you can include related records with a one-to-many or one-to-one relationship to the base record type. To write data for a base record and related records, the following conditions must be met:

-   The relationship must be configured to allow [writing related records](record-type-relationships.html#add-relationships).
-   All records being updated have the same data source. The record types must share one schema (or database if schemas are not supported by your data source). For example, say you have Customer and Order record types. If the source tables are in separate People and Sales schemas, you can't update these records in a single Write Records node.
-   The base record's primary key is used for relationship field. Relationships defined with other unique keys are not supported.

The Write Records node executes all of the writes as a single transaction. This ensures that either all of the input data is written or none of the data is written. This helps avoid incomplete writes (such as where an Order is written, but an Order Line Item is not).

### Unsupported fields in the Records Input

If you include [custom record fields](custom-record-fields.html) in the **Records Input**, they will be ignored. Custom record fields are defined by and exist only in Appian, so attempting to write values for them will have no effect.

### Write records and events

If the record type selected in the **Records Input** has [record events](record-events.html) configured, you can write records and events at the same time, in the same node. This means that when the node executes, the record type will be updated, as well as the related Event History record type.

For example, let's say you configure a Write Records node to create a new order. If the Order record type has record events configured, you can specify that when a new order is created, a new event is also created to capture who created the order and when.

If you are updating multiple records in one node, then each new record will have a corresponding event created. For example, if you create order 1, order 2, and order 3, each order will have its own unique event created.

The Write Records smart service can only write events for a single record type, and that record type must be specified in **Record Type for Events**. Event data is not automatically create for any related record data, but it can be created using a separate Write Records node.

You can also include events for a related record type by adding the data to the process variable. Events will be written for the record and the related record when then node executes. See [Write events for multiple record types in one node](#write-events-for-multiple-record-types-in-one-node) for an example.

**Note:**  You can only write records and events using the Write Records smart service. You cannot use the `a!writeRecords_23r4()` function to write records and events at the same time.

### Capture automation types

When you're capturing [automation](Automation_Landing.html) types in your event data, you can configure your Write Records nodes to write the type of automation that completed each event. Remember, even though a process might involve multiple users or automation types, you want your event data to show the user or automation type that actually completed the task.

In general, use the following guidelines to configure the **User** and **Automation Type** properties when writing events:

-   If the event was completed by a human, set the **User** property to the appropriate field from the Event History record type. Then, set the **Automation Type** property to **None (User)**.

-   If the event was completed by automation, set the **User** property to **Null (Set at System Event)**. Then, select the appropriate automation type for the **Automation Type** property.

Learn more about [capturing automation types](record-events-automation.html).

### Conditionally choose event values

You can conditionally set the value for any event input, like **Event Type**, **User**, **Automation Type**, or **Timestamp**. This approach is useful when you use a single Write Records smart service to add and update data, or when you want to write different event values depending on a value in the record.

For example, when you [generate Create and Update record actions](record-actions.html#generate-record-actions) at the same time, Appian will create a single process model to perform both actions. If you selected the [**Include Common Event Types**](record-events-configuration.html#generate-new-event-record-types) option when you generated your event record types, the generated process model is automatically configured to write events correctly. As a result, "Created record" events are only written when a new record is created, and "Updated record" events are only written when a record is updated.

You may also want to write different event types depending on the value of a record. For example, let's say an order is updated to have a status of "Reviewed" so you want write an event called "Reviewed Order" instead of "Updated Order".

To conditionally set the event type for this example:

1.  In your Write Records smart service, go to the **Setup** tab.
2.  Next to **Event Type**, click **Edit as Expression**.
3.  Write an expression using an [if()](fnc_logical_if.html) statement and the order status value. Use the event type identifier to specify the event type. For example:

    ```
    1
    2
    3
    4
    5
    6
    7
    if(
     pv!record[recordType!Order.relationships.status.fields.name] = "Reviewed",
     /* The ID for the "Reviewed Order" event type */
     3,
     /* The ID for the "Updated Order" event type */
     2
    )
    ```

    **Tip:**  For easier maintenance, use a [constant](Constants.html) to specify the event type identifier instead of entering a static numerical value.

### Write events without writing records

There are some scenarios where you may want to write an event without making any changes to the base record type.

For example, let's say you sent a feedback form to a customer after an order is shipped. If the customer doesn't respond to the form in five days, the process model will automatically send an email reminder.

[![images/before-writing-events.png](images/before-writing-events.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img172)

[![](images/before-writing-events.png)](#_)

To capture an event for the automatic email reminder, you can write directly to the Event History record type. To do this:

-   Add a [Script Task](Configuring_the_Script_Task.html) node and configure it with the data to pass to the Write Records node. Use a [record type constructor](reference-records.html#use-a-record-type-constructor) to specify the event information to write to the Event History record type. For example:

    ```
    1
    2
    3
    4
    5
    6
     recordType!Customer Events(
         recordType!Customer Events.fields.recordId: pv!customer[recordType!Customer.fields.recordId],
         recordType!Customer Events.fields.timestamp: now(),
         recordType!Customer Events.fields.user: null,
         recordType!Customer Events.fields.activityId: cons!CUSTOMER_EVENT_EMAIL_REMINDER_ID
     )
    ```

    **Note:**  A null `user` field indicates that this is an automated activity, it was not started by a specific user.

-   Add a [Write Records](Write_Records_Smart_Service.html) node and set the **Records Input** to a process variable or expression that evaluates to the Event History record type.

The updated process would look something like this:

[![images/write-events-without-records.png](images/write-events-without-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img173)

[![](images/write-events-without-records.png)](#_)

### Continue a process using updated record data

When your process needs to use or act on the data written by a Write Records node, you must query the record type using the identifier provided in the Records Updated output. The output of the node only contains the primary keys of affected records for two reasons.

1.  Listing only the primary keys guarantees accurate output when multiple processes write to the same record type simultaneously.
2.  Returning only the primary keys improves performance of the Write Records node. For simple processes, you may only need to know that the node completed without error. If your process is more complex, letting you choose to query the record type after a Write Records node means Appian doesn't spend resources on unnecessary queries.

If you need to get the latest record data after writing, you can quickly build that query using a [Script Task](Configuring_the_Script_Task.html).

To use the Records Updated output in a Script Task:

1.  Create a new process variable with the following properties:

    | Property | Value |
    | --- | --- |
    | **Name** | `recordsUpdated` |
    | **Type** | Select the same record type used in the **Record Input**. |

2.  Drag a **Script Task** node from the palette and drop it on the connector exiting the Write Record node.
3.  Double-click the **Script Task**.
4.  Click the **Data** tab and then select the **Outputs** subtab.
5.  Add a **New Custom Output**.
6.  For the **Expression** property, use `a!queryRecordType()` or `a!queryRecordByIdentifier()` to query for the data you need.
7.  For **Target**, select `recordsUpdated`.
8.  Add the remaining nodes needed for your process and use the `recordsUpdated` as needed to work with your newly written data.

### Automatic refresh on record views

When you use this smart service on a [record view](record-view.html), the view will automatically refresh with the latest record data.

This means that when your record view interface has a [Record Action component](Record_Action_Component.html) that triggers the Write Records smart service, or a button component that triggers the `a!writeRecords_23r4()` function, the record view data will automatically refresh after the write occurs.

This refresh behavior only applies to data supplied by [rv!record](reference-records.html#use-rvrecord). If your record view definition uses `rv!identifier` or a local variable to supply the record data, the data will not automatically refresh; instead, you will need to configure additional refresh behavior.

## a!writeRecords\_23r4()

The Write Records smart service is available as an expression function that can be executed inside a _saveInto_ on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html). When creating a web API, select the **Write Records** template to generate the object with this function automatically configured.

**Note:**  You cannot use the `a!writeRecords_23r4()` function to write records and events at the same time. You can only write records and events using the Write Records smart service.

### Syntax

**a!writeRecords\_23r4**( _records, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`records`

 |

_Any Type_

 |

A list of all the records and related records to update (up to 50,000 records, related records, and events combined). Use the `recordType!` domain to [reference your record type](reference-records.html).

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service writes data successfully. Created with `a!save()` or `a!httpResponse()`. Use `fv!recordsUpdated` to reference the updated records in the success response. For more information, see [Function Variables](parts-of-an-expression.html#function-variables).

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service does not write data successfully. Created with `a!save()` or `a!httpResponse()`. Use `fv!error` to reference any errors from the source.

 |

## Possible errors

This section explains some of the common reasons the Write Records smart service might fail.

### Configuration errors

Configuration errors can occur when the node setup or inputs are misconfigured and attempts to write to the source cannot succeed.

Some examples of misconfiguration include:

-   Using an unsupported record type (for example, a record type with a non-database source).
-   An error in the related Event History record type or Event Type Lookup record type (for example, a field is deleted or the record type is deleted).
-   An error in the expression calling the process model or the `a!writeRecords_23r4()` function.
-   Attempting to write related record data when the relationship is not configured to allow updates to related records.

-   Using one node to write data to record types with different sources. This could be different databases or schemas, or different data sources (like a database and Salesforce).

### Errors writing too much data

If you have a field of type Extra Long Text and you try to write more than 64,000 characters to this field, the write will fail.

Ensure you configure a character limit on your [paragraph](Paragraph_Component.html) or [styled text editor](Styled_Text_Editor_Component.html) components so users don't accidentally write more than the 64,000 character limit.

### Errors with the data source

Appian is unable to change data in the source in some circumstances.

These situations include:

-   Schema mismatches, such as conflicting data types.
-   Database connection problems, like timeouts or invalid credentials.
-   Database triggers that cause the requested data change to fail. Appian is not aware of any configured triggers, so they may need to be changed or removed for the smart service to work correctly.

If Appian is unable to write to the database, the record data will still remain available even if the smart service fails.

### Errors writing to a related record type

The Write Records node executes all of the writes as a single transaction. This means that if you're updating data in multiple database tables, then data is successfully written to all tables or none of the tables.

For example, let's say a Write Records node is updating data in three different database tables: Orders, Customers, and Employees. If the node is unable to write to the Employees table, then the node will not write to the Orders or Customers table either. This helps avoid incomplete writes (like if an Order is written, but the Customer is not).

### Errors syncing data changes

When Appian attempts to sync changes to the source data, the sync will fail when one of the following occurs:

-   The record type exceeded the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources).
-   A record field contains an [invalid value](Records_Monitoring_Details.html#invalid-value-in-a-source-row-field).
-   The record type's [sync filter](records-filter-source-data.html) is invalid (for example, if the source field is no longer available).

If Appian is unable to sync changes from the source, the record data will be unavailable. For more information on the different types of sync errors and steps to resolve these errors, see [Troubleshooting Syncs](Records_Monitoring_Details.html).

## Examples

The section walks you through the different ways you can use the Write Records smart service to create or update your record data.

### Create a new record using a process model

**Goal**: Use the Write Records smart service to make a new record.

No matter what kind of business your app is designed for, creating a new record in a record type is one of the most common data actions. To create a new record, you can build a form that allows users to input information, then pass that information into a process model containing the Write Records smart service.

**Tip:**  The example below illustrates how to manually configure a "Create" action to explain the general workflow of creating a record. In your own application, you can [generate a Create record action](record-actions.html#generate-record-actions) for faster configuration.

**Example**

Let's say you need to create a record action that allows users to add new customers in a retail application. The application contains a Customer record type, which stores all customer information. This record type also has [record events](record-events.html) configured, so you also want to capture an event whenever a new customer is created.

To create this action, you could:

1.  Create a new [form interface](interface_object.html#forms) that allows users to enter the customer's information.
2.  Create a rule input called `record` and set the type to the Customer record type. This will allow you to pass customer data to the process model.
3.  [Create a new process model](process-model-object.html#creating-a-process-model) and configure the process model properties to use the new form and pass record data:

    -   Go to **File** > **Properties**.
    -   Go to the **Process Start Form** tab and select your interface.
    -   In the **Create Process Parameters** dialog, click **YES**. This will automatically create process variables that map to your rule inputs.

    [![images/create-record-start-form-mapping.png](images/create-record-start-form-mapping.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img174)

    [![](images/create-record-start-form-mapping.png)](#_)

4.  Drag and drop a **Write Records** node into your process model.
5.  Go to the **Setup** tab.
6.  For **Records Input**, select the **record** process variable. By default, **Record Type for Events** populates with the **Customer** record type. Since the Customer record type has record events configured, the **Write Events** section can be set up.
7.  For **Choose when to write events for the Customer record type**, leave the default **Always**. The smart service will always write an event whenever a new customer is created.
8.  Select the values to write for the event:
    -   For **Event Type**, select **Created Customer**.
    -   For **User**, keep the default **Process Initiator**.
    -   For **Automation Type**, select **None (User)**.
    -   For **Timestamp**, keep the default **Now**.
9.  Click **OK**.
10.  (Optional) [Configure a cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow).
11.  Save and publish the process model.
12.  [Create a record action](record-actions.html#configure-record-action-manually) that launches the new process model.

The process model looks something like this:

[![images/write-records-example.png](images/write-records-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img175)

[![](images/write-records-example.png)](#_)

The node output will return the primary keys of the record and any related records included in the node input.

### Create records and related records using a process model

**Goal**: Use the Write Records smart service to make a new record and related records.

Creating a record and related records is similar to creating a single record. You can create a form that allows users to update different types of data from different record types, and then pass that information to a process model. The Write Records smart service will automatically write the data to the selected record type and any of its related record types.

You can write records and related records in the same node as long as the [relationship configuration allows it](record-type-relationships.html#configuration-options) and the records share one data source.

**Example**

For example, let's say you need to create a new record action so users can enter information about support cases opened by customers. Because more than one department may need to take action to resolve the customer's problem, those actions are tracked as separate tasks. The support agent can also choose to add a comment to capture any information about the case that isn't part of the form.

To represent these support cases, your application's data model includes three record types to store the data:

-   Case, the base record type with data like `title` and `description` and `reportedDate`.
-   Task, a related record type for data like `assignee` and `type`.
-   Comment, a related record type with data for `commentText` and `author`.

The Case record type has a one-to-many relationship with the Task record type and the Comment record type, and each relationship allows the Write Records node to write the Case and Task or Comment simultaneously. Case also has [record events](record-events.html) configured, so you can capture an event whenever a new case is created.

When a support agent submits a case, the process model writes to the base record type, Case, and the related record types in order to add both the new case, the required tasks, and any comments. This is done by passing all of that data as a single record variable to a single Write Records node.

[![images/write-related-records-form-example.png](images/write-related-records-form-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img176)

[![](images/write-related-records-form-example.png)](#_)

To create this record action, you could:

1.  Create a new [form interface](interface_object.html#forms) that allows users to enter the case and customer information.
2.  Create a rule input called `record` and set the type to the Case record type. This will allow you to pass support case data and any related task or comment data to the process model.
3.  [Create a process model](process-model-object.html#creating-a-process-model) and configure the process model properties to use the new form and pass record data:

    -   Go to **File** > **Properties**.
    -   Go to the **Variables** tab and create a new process variable called `record`.
    -   Set the **Type** to the **Customer** record type.
    -   Select the **Parameter** checkbox.

    [![images/write-related-records-pv-workflow.png](images/write-related-records-pv-workflow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img177)

    [![](images/write-related-records-pv-workflow.png)](#_)

    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the `record` rule input from the interface.

    [![images/create-related-record-start-form-mapping.png](images/create-related-record-start-form-mapping.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img178)

    [![](images/create-related-record-start-form-mapping.png)](#_)

4.  Add a Write Records node to take the data from the form (as `pv!record`) and write a new Case record, as well as new Task and Comment data if they are part of the Case.
5.  Drag and drop a Write Records node into your process model.
6.  Go to the **Setup** tab.
7.  For **Records Input**, select the **record** process variable. By default, **Record Type for Events** populates with the **Case** record type. Since the Case record type has record events configured, the **Write Events** section can be set up.
8.  For **Choose when to write events for the Case record type**, leave the default **Always**. The smart service will always write an event whenever a new case is created.
9.  Select the values to write for the event:
    -   For **Event Type**, select **Created Case**.
    -   For **User**, keep the default **Process Initiator**.
    -   For **Automation Type**, select **None (User)**.
    -   For **Timestamp**, keep the default **Now**.
10.  Click **OK**.
11.  Save and publish the process model.
12.  [Create a record action](record-actions.html#configure-record-action-manually) that launches the new process model.

### Create a new record using an expression

**Goal**: Use the `a!writeRecords_23r4()` function to create a record.

Instead of building an entire process model to update data, you can just build a form and use the `a!writeRecords_23r4()` function in the submit button.

**Example**

Let's say you want to create a form that updates your Status record type with a new status option for orders. This will automatically write and sync any data provided in the form whenever a user clicks **Submit**.

To create this form, you could:

1.  Create a new interface using a [form layout](Form_Layout.html).
2.  Create a local variable called `status`. This will store the new status value and pass it to the `a!writeRecords_23r4()` function.
3.  Add components that allow users to add new values. In this example, you could add a [Text field](Text_Component.html) to allow users to add a new status label.
4.  In the primary button of the form, add a _saveInto_ parameter with the following values:

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
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Submit",
          saveInto: {
            a!writeRecords(
              records: {
                recordType!Status(
                  recordType!Status.fields.label: local!status
                )
              }
            )
          },
          submit: true,
          style: "SOLID"
          )
        },
      )
```

Now, whenever a user clicks **Submit**, a new record will be created in the Status record type.

### Write events for multiple record types in one node

**Goal**: Create record events for more than one record type using one Write Records node.

Some business processes involve a record type and related record type where it's important to capture events for each of them. When the related record data is an essential part of each base record, we'll use a single Write Records node to write all of the record and related record data at once.

**Example**

For example, in a retail application, you may have a process for creating a new order that uses two record types:

-   **Order**: Stores information like `date`, `customerId`, and `assignee`.
-   **Order Line Item**: Stores information like the `itemId` and `quantity` for each product being ordered.

Using one node ensures that either all of the data is written or none of the data is written. This helps avoid incomplete orders (where an Order is written, but an Order Line Item is not).

Both record types have [events](record-events.html) configured, and we want to capture the creation event for both. The **Setup** tab allows you to easily specify the event information to write for the Order record type (the record type selected in the **Records Input**), but we'll need to specify the event information for the Order Line Item record type separately.

To write events for a related record type in the same Write Records node, you can use one of the following options:

-   In the start form, configure the submit button to save the event information for the related record type in the same rule input as the other form data.
-   In the process model, use a script task to specify the event information and pass that information into the Write Records node.

**Tip:**  If writing in a single step is not important for your process, you can use separate variables and Write Records nodes. This way, you can configure the events on the Setup tab for each record type.

We'll use the first option in this example. To add the event data when the form is submitted, you can use a list of `a!save()`, one for each relevant field in the Event History record type (like `eventTypeId`, `user`, `automationTypeId`, and `timestamp`.)

[![images/save-related-record-event.png](images/save-related-record-event.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img179)

[![](images/save-related-record-event.png)](#_)

Then, when the rule input is passed to the process model, the process variable used by the Write Records node contains all of the record data, related record data, and event data.

[![images/related-record-event-pv.png](images/related-record-event-pv.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img180)

[![](images/related-record-event-pv.png)](#_)

In this example, an `eventHistory` was created for both the Order and Order Line Item simultaneously. Appian automatically created the event data for the Order using the settings from the **Setup** tab. The event data for the Order Line Item was created using the data passed into the process:

`eventHistory={timestamp=7/21/2023 1:44 PM, user=alice.kwan, automationTypeId=1}`

## Feature compatibility

The table below lists this smart service function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...