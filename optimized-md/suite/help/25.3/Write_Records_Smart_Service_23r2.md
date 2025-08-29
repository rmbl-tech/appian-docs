---
source_url: https://docs.appian.com/suite/help/25.3/Write_Records_Smart_Service_23r2.html
original_path: Write_Records_Smart_Service_23r2.html
version: "25.3"
title: "Write Records Smart Service (23.2)"
page_id: "Write_Records_Smart_Service_23r2"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Write Records Smart Service (23.2)

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

You can only update records in one record type. To update a record and its related records, you must first update the base record, then update your related record with another Write Records node. Learn more about how to [write records and related records](#create-records-and-related-records).

**Note:**  The only exception to the above rule is when you use the Write Records smart service to write records and [record events](record-events.html) at the same time. To use the latest version of this smart service, add a new Write Records node into your process model.

### Permissions needed

The user executing this node must have **Viewer** permissions to the selected record type in order to update or insert information. If the user does not, the node will fail and pause the process with an exception.

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

    [![images/blank_writeRecords_setup_tab.png](images/blank_writeRecords_setup_tab.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img158)

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
| Records Updated | List of Any Type | A list of records updated by the smart service. |
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

When you update an existing record, only include the data you want to change. For example, imagine your Employee record type has fields for `firstName` and `lastName`, but you only need to update an employee's last name from `Anderson` to `Kwan`. You can pass just the record's identifier and the new `lastName`. Any fields not included in the update are ignored. In this example, the `firstName` field is not included, so the employee's first name remains unchanged.

```
1
2
3
4
recordType!Employee(
  recordType!Employee.fields.id: 233,
  recordType!Employee.fields.lastName: "Kwan"
)
```

### Create and update related records

If you try to write related records in the **Records Input**, they will be ignored. For example, if you try to write orders and related order items, only orders will be written; the order items will be ignored.

Instead, to write related records, your process model must include a separate node for each record type and related record type you want to update. [See an example below](#create-records-and-related-records).

### Unsupported fields in the Records Input

If you include [custom record fields](custom-record-fields.html) in the **Records Input**, they will be ignored. Custom record fields are defined by and exist only in Appian, so attempting to write values for them will have no effect.

### Write records and events

If the record type selected in the **Records Input** has [record events](record-events.html) configured, you can write records and events at the same time, in the same node. This means that when the node executes, the record type will be updated, as well as the related Event History record type.

For example, let's say you configure a Write Records node to create a new order. If the Order record type has record events configured, you can specify that when a new order is created, a new event is also created to capture who created the order and when.

If you are updating multiple records in one node, then each new record will have a corresponding event created. For example, if you create order 1, order 2, and order 3, each order will have its own unique event created.

**Note:**  You can only write records and events using the Write Records smart service. You cannot use the `a!writeRecords_23r2()` function to write records and events at the same time.

### Conditionally choose event values

You can conditionally set the value for any event input, like **Event Type**, **User**, or **Timestamp**. This approach is useful when you use a single Write Records smart service to add and update data, or when you want to write different event values depending on a value in the record.

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

[![images/before-writing-events.png](images/before-writing-events.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img159)

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

[![images/write-events-without-records.png](images/write-events-without-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img160)

[![](images/write-events-without-records.png)](#_)

### Automatic refresh on record views

When you use this smart service on a [record view](record-view.html), the view will automatically refresh with the latest record data.

This means that when your record view interface has a [Record Action component](Record_Action_Component.html) that triggers the Write Records smart service, or a button component that triggers the `a!writeRecords_23r2()` function, the record view data will automatically refresh after the write occurs.

This refresh behavior only applies to data supplied by [rv!record](reference-records.html#use-rvrecord). If your record view definition uses `rv!identifier` or a local variable to supply the record data, the data will not automatically refresh; instead, you will need to configure additional refresh behavior.

## a!writeRecords\_23r2()

The Write Records smart service is available as an expression function that can be executed inside a _saveInto_ on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html). When creating a web API, select the **Write Records** template to generate the object with this function automatically configured.

**Note:**  You can only write records and events using the Write Records smart service. You cannot use the `a!writeRecords_23r2()` function to write records and events at the same time.

### Syntax

**a!writeRecords\_23r2**( _records, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`records`

 |

_Any Type_

 |

A list of all the records to update (up to 50,000 records and events combined). Use the `recordType!` domain to [reference your record type](reference-records.html). If any related data is included in this parameter, that related data is ignored.

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
-   An error in the expression calling the process model or the `a!writeRecords_23r2()` function.
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

Let's say you need to create a record action that allows users to add new customers in a retail application. The application contains a Customer record type, which stores all customer information. This record type also has [record events](record-events.html) configured, so you also want to capture an event whenever a new customer is created.

To create this action, you could:

1.  Create an interface that allows users to enter the customer's information. Use the Customer record type as a rule input in the interface to save the entered data.
2.  Create a new process model and configure the process model properties:

    -   Go to the **Variables** tab and create a new process variable called `customer`. Set the **Type** to the **Customer** record type, and select the **Parameter** checkbox.

    [![images/write-records-pv-workflow.png](images/write-records-pv-workflow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img161)

    [![](images/write-records-pv-workflow.png)](#_)

    -   Go to the **Process Start Form** tab and select your interface. Map your `customer` process variable to the inputs from the interface.
3.  Drag and drop a Write Records node into your process model.
4.  Go to the **Setup** tab.
5.  For **Records Input**, select the **customer** process variable. By default, the **Record Type** input populates with the **Customer** record type. Since the Customer record type has record events configured, the **Write Events** section can be set up.
6.  For **Choose when to write events for the Customer record type**, leave the default **Always**. The smart service will always write an event whenever a new customer is created.
7.  Select the values to write for the event:

    -   For **Event Type**, select **Created Customer**.
    -   For **User**, keep the default **Process Initiator**.
    -   For **Timestamp**, keep the default **Now**.

    [![images/configured-setup-tab-writeRecords.png](images/configured-setup-tab-writeRecords.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img162)

    [![](images/configured-setup-tab-writeRecords.png)](#_)

8.  Click **OK**.
9.  (Optional) [Configure a cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow).

The process model looks something like this:

[![images/write-records-example.png](images/write-records-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img163)

[![](images/write-records-example.png)](#_)

When you start the process, Appian will only write data to the fields you specify. To give you a complete picture of your records, the node output will return all record fields and event field values—even those that were not updated.

**Tip:**  For faster configuration, you can automatically [generate a Create or Update record action](record-actions.html#generate-record-actions). The generated process model for these actions will use the Write Records smart service to write records and record events.

### Create a new record using an expression

Now let's say you want to create a form that updates your Status record type with a new status option for orders. Instead of building an entire process model to update this reference data, you can just build a form and use the `a!writeRecords_23r2()` function in the submit button. This will automatically write and sync any data provided in the form whenever a user clicks **Submit**.

To create the form in this example, you could:

1.  Create a new interface using a [form layout](Form_Layout.html).
2.  Create a local variable called `status`. This will store the new status value and pass it to the `a!writeRecords_23r2()` function.
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

### Create records and related records

You cannot write records and related records in the same node. Instead, you will need to configure a separate Write Records node for each record type you want to update.

For example, let's say you need to create a new record action so users can enter information about new salespeople joining the company. To represent people, your application's data model includes three record types:

-   Person, the base record type with data like `firstName` and `lastName`.
-   Employee, a related record type for data like `hireDate` and `dateOfBirth`.
-   Sales Person, a related record type with data for `salesQuota` and `commissionRate`.

[![Relationships between Person, Employee, and Sales Person record types](images/write-records-related-record-relationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img164)

[![](images/write-records-related-record-relationships.png)](#_)

This means you'll need to write to three different record types in order to add a new salesperson. As such, you will need three different Write Records smart services to update the different record types since you cannot use [relationship references](reference-records.html#reference-a-relationship) in the smart service.

The process model to create a new Sales Person will look something like this:

[![Process model for writing base and related records](images/write-records-related-records-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img165)

[![](images/write-records-related-records-model.png)](#_)

Let's break down what's happening:

-   The process model uses an interface as a [start form](Process_Node_and_Smart_Service_Properties.html#form-setup) so new user data is passed to the process model and set as the initial values for three process variables (`person`, `employee`, and `salesperson`).

-   The first Write Records node uses the `person` variable as the **Records Input** to create the new Person record.

    Since you need to reference the new person ID in order to create the related records in the Employee and Sales Person record types, you'll store the person ID in the output.

    [![Records Updated output saved as person process variable](images/write-records-related-records-update-person.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img166)

    [![](images/write-records-related-records-update-person.png)](#_)

-   The process variable `person` now includes the `id` generated for the person (in this example, the value is `20778`).

    [![Variable updated with new record data](images/write-records-create-person.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img167)

    [![](images/write-records-create-person.png)](#_)

-   Next, a [script task](Configuring_the_Script_Task.html) automatically sets the `personId` of the `employee` and `salesperson` variables to `20778` (the `id` of the Person record).

    [![Configuration details of Set ID fields script task](images/write-records-related-records-id-fields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img168)

    [![](images/write-records-related-records-id-fields.png)](#_)

    [![Script task updating ID values](images/write-records-update-ids.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img169)

    [![](images/write-records-update-ids.png)](#_)

-   The process writes the related Employee and Sales Person records in their own nodes, and they will be correctly associated with the Person.

    [![Related data nodes](images/write-records-related-records-nodes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img170)

    [![](images/write-records-related-records-nodes.png)](#_)

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