---
source_url: https://docs.appian.com/suite/help/25.3/manage-record-data.html
original_path: manage-record-data.html
version: "25.3"
title: "Recipes for Writing and Deleting Records"
page_id: "manage-record-data"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Recipes for Writing and Deleting Records

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Write or Delete a Base Record and Related Records in a Single Node in Appian

This video teaches you to use the Write Records and Delete Records smart service to easily manage record data at any point in the data lifecycle.

## Overview

Adding, updating, and deleting data are essential parts of any application. Whether it’s creating new orders, updating existing ones, or archiving old ones, these types of data operations are common in every enterprise.

When your business data is managed using record types, you can take advantage of purpose-built smart services—[Write Records](Write_Records_Smart_Service.html) and [Delete Records](Delete_Records_Smart_Service.html)—to create, update, and delete data. Traditional software often needs complex logic to handle the consequences and side effects of each data change. By contrast, Appian's smart services use the context and information you provide about record types and their relationships to manage all aspects of making changes to your data.

This page provides recipes related to creating, updating, and deleting data. Use these as a reference or follow along by [adapting them to use your data](#adapt-recipes-for-your-data).

**Note:**  All of the examples on this page use process models to illustrate the concepts. Similar results may be achieved using the [a!writeRecords()](Write_Records_Smart_Service.html#a!writerecords\(\)) or [a!deleteRecords()](Delete_Records_Smart_Service.html#a!deleterecords\(\)) functions.

### Adapt recipes for your data

The recipes below use example record types and data. Record type references are specific to each environment. If you follow along with recipes, or copy and paste these examples into an expression, they will not evaluate.

Use these recipes as a reference, or replace the record type references to use the record type reference in your environment.

If you replace the record type references, you must use a record type with [data sync enabled](about-data-sync.html), and that record type must use a [database as the source](configure-record-data-source.html#connect-to-a-database).

## Create data

The recipes in this section use the [Write Records smart service](Write_Records_Smart_Service.html) to create new data in one or more record types.

### Create a record

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

    [![images/create-record-start-form-mapping.png](images/create-record-start-form-mapping.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img461)

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

[![images/write-records-example.png](images/write-records-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img462)

[![](images/write-records-example.png)](#_)

The node output will return the primary keys of the record and any related records included in the node input.

### Create records and related records

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

[![images/write-related-records-form-example.png](images/write-related-records-form-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img463)

[![](images/write-related-records-form-example.png)](#_)

To create this record action, you could:

1.  Create a new [form interface](interface_object.html#forms) that allows users to enter the case and customer information.
2.  Create a rule input called `record` and set the type to the Case record type. This will allow you to pass support case data and any related task or comment data to the process model.
3.  [Create a process model](process-model-object.html#creating-a-process-model) and configure the process model properties to use the new form and pass record data:

    -   Go to **File** > **Properties**.
    -   Go to the **Variables** tab and create a new process variable called `record`.
    -   Set the **Type** to the **Customer** record type.
    -   Select the **Parameter** checkbox.

    [![images/write-related-records-pv-workflow.png](images/write-related-records-pv-workflow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img464)

    [![](images/write-related-records-pv-workflow.png)](#_)

    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the `record` rule input from the interface.

    [![images/create-related-record-start-form-mapping.png](images/create-related-record-start-form-mapping.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img465)

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

### Create a record and related documents

**Goal**: Use the Write Records smart service to make a new record and upload related documents.

**Example**

For example, let's say you need to create a new record action so users can create a support case and upload documents related to that case, like system logs, images, or contracts.

To manage documents associated with each support case, the Case record type has a one-to-many relationship to a Case Document record type, which is a [document management record type](manage-docs-with-records.html). This means that the new case data needs to be written to the Case record type, and the document identifiers for the uploaded documents need to be written to the Case Document record type.

To create this record action, you could:

1.  Create a new form interface that allows users to enter case information and upload related documents. For this example, we'll use the form from the [Upload Multiple Documents in an Editable Grid](recipe-upload-files-in-editable-grid.html) recipe.

    [![Form to create a support case and an editable grid to upload documents](images/doc_management/recipe-editable-grid-to-upload-docs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img466)

    [![](images/doc_management/recipe-editable-grid-to-upload-docs.png)](#_)

2.  Create the following process variables:

    | Rule Input Name | Type | Description |
    | --- | --- | --- |
    | `case` | Case record type | Stores the user input provided in the **Title** and **Description** fields, and the **Document** and **Document Type** columns in the grid.

    Since Case has a one-to-many relationship with Case Document, we can use this process variable to store data for both record types. |
    | `deletedCaseDocuments` | Case Document record type | Stores the documents that are removed from the editable grid when a user clicks X on a row. |
    | `cancel` | Boolean | Stores true or false to indicate if the action was canceled. |

3.  [Create a process model](process-model-object.html#creating-a-process-model).
4.  Configure the start form using the interface created in step 1. Automatically create the process variables based on the rule inputs from the interface.

    [![images/doc_management/pv-write-case-and-case-documents-example.png](images/doc_management/pv-write-case-and-case-documents-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img467)

    [![](images/doc_management/pv-write-case-and-case-documents-example.png)](#_)

5.  Add a Delete Records node to delete the document identifier from any documents removed from the editable grid in the start form. The identifiers of deleted documents are stored in the `deletedCaseDocuments` rule input, so we'll set the **Records** input to the **deletedCaseDocuments** process variable.

    [![images/doc_management/delete-record-documents-node.png](images/doc_management/delete-record-documents-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img468)

    [![](images/doc_management/delete-record-documents-node.png)](#_)

6.  Add a Write Records node to write the case information to the Case record type and the document identifier to the Case Document record type. Since Case and Case Document are related, we only need to specify the **record** process variable to write to both record types.

    [![images/doc_management/write-record-documents-node.png](images/doc_management/write-record-documents-node.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img469)

    [![](images/doc_management/write-record-documents-node.png)](#_)

    **Note:**  In this example, the Case record type does not have record events configured, so no events will be written.

7.  [Add a cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow).
8.  Save and publish the process model.
9.  [Create a record action](record-actions.html#configure-record-action-manually) that launches the new process model.

### Duplicate a record

**Goal**: Use the Write Records smart service to make a copy of a record.

There are some cases when users may want to duplicate an existing record so they can reuse existing information in a new record. A related action that copies an existing record can save your users a lot of time and effort when working on similar data.

When your process model executes a Write Records node, the node checks for the primary key field on the input record and any related records. When a primary key is included, the smart service updates the record matching that identifier with any changed data passed to the input.

By contrast, if the input record (or related record) does not include a primary key, Appian creates a new record with the data passed to the input. This new record is a duplicate of the original.

We can use this behavior to create a copy of a record with a couple new design objects:

-   An new Copy interface similar to one you'd use to update an existing case.
-   A process model with a Write Records smart service node. This process will use the Copy interface as its process start form.

**Example**

Let's say you're working on a case management application. It has a Case record type for managing support case data. The support representatives using your application want to be able to clone support cases and save time by reusing information already available in another case.

To duplicate a record using this example:

1.  Create a new [form interface](interface_object.html#forms) where users can view and edit an existing support case.
2.  Create a rule input called `record` and set the value to the Case record type. This will allow you to pass support case data to the process model.
3.  For the form's submit button, set the following properties on `a!buttonWidget()` to save a null value for the primary key field:

    ```
    1
    2
    3
    4
    5
    6
    a!buttonWidget(
       label: "Copy",
       submit: true,
       value: null,
       saveInto: ri!record[recordType!Case.fields.id]
    )
    ```

    **Note:**  Depending on the record type, there are likely other record fields that you may want to set as null or to a default value when cloning. This includes fields like create or start dates and task assignees.

4.  [Create a process model](process-model-object.html#creating-a-process-model) and use the new interface as the [process start form](process-model-object.html#process-start-form-tab).
5.  Add a Write Records node to take the data from the form (as `pv!record`) and write a new Case record.
6.  Save and publish the process model.
7.  [Create a related action](record-actions.html#configure-record-action-manually) that launches the new process model.

## Update data

**Goal**: Use the Write Records smart service to update an existing record

No matter what type of work your business users are engaged in, at some point they will need to update existing data. These changes are often made with an interface to let users view and edit existing data.

With the Write Records smart service, you can use that interface as the start form of an easy-to-understand process model that writes record data changes. In fact, the smart service is so flexible that, when you generate record actions to create and update data, Appian creates one process model and one interface for both actions.

**Example**

Let's look at how this generated process changes data in a customer management app.

[![Example record data update process](images/write-records-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img470)

[![](images/write-records-example.png)](#_)

1.  The process starts with one data variable called `record`.
2.  The Write Records node takes data passed from the process start form and creates or updates the record data based on one factor: whether the `record` includes a value for the record type's primary key field.
    -   If there is no primary key value included, a new record is created.
    -   If a value is present, the record identified by that value is updated. For updates, Appian will only write data to the fields you change, so you do not need to include any unmodified fields in the `record` value.
3.  The process ends after the Write Records node is finished writing data.

## Delete data

To a business user, deleted data is that which is no longer accessible. As a developer, you have two options for achieving this result, each with pros and cons.

_Hard deleting_ is a destructive action. With a hard delete, you tell the record type source to permanently remove the data in question. This might be required if your application deals with sensitive data. When your record type has [one-to-many or one-to-one relationships](record-type-relationships.html#about-relationships), you can [choose to hard delete](record-type-relationships.html#write-and-delete-related-records) the related records as well. Or you can have Appian set the common field value to `null` to indicate that the relationship was severed.

_Soft deleting_ makes data unavailable by setting a field like `isDeleted` or `deletedTime`. Then, you can use a sync filter on the record type to keep these rows from being synced. If your organization has data retention requirements for auditing purposes or you need to maintain [referential integrity](record-type-relationships.html#referential-integrity), soft deleting lets you meet your retention needs while removing the data from your app.

Let's look at how to achieve both of these goals.

### Hard delete a record

**Goal**: Use the Delete Records smart service to permanently delete a record.

Sometimes data is created by mistake or your business could be required to delete information on customer request. Users will need the ability to remove record data from your application in those types of situations.

**Tip:**  For faster configuration, you can automatically [generate a Delete record action](record-actions.html#generate-record-actions). The generated process model for these actions will use the Delete Records smart service to delete the selected record.

**Example**

Imagine you need to remove an Employee from the Appian Retail application. You can let users delete record data using a [related action](record-actions.html#related-actions) connected to a process model. Set a process variable using the record type as the data type to pass the user's selection to the Delete Records smart service.

1.  Create a new [form interface](interface_object.html#forms) that allows users to review the employee's information and confirm they want to delete the Employee record.
2.  Create a rule input called `record` and set the type to the Employee record type. This will allow you to pass employee data to the process model.
3.  [Create a new process model](process-model-object.html#creating-a-process-model) and configure the process model properties to use the new form and pass record data:

    -   Go to **File** > **Properties**.
    -   Go to the **Variables** tab and create a new process variable called `record`.
    -   Set the **Type** to the **Employee** record type.
    -   Select the **Parameter** checkbox.

    [![images/delete-records-pv.png](images/delete-records-pv.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img471)

    [![](images/delete-records-pv.png)](#_)

    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the `record` rule input from the interface.
4.  Drag and drop a Delete Records node into your process model.
5.  Go to the **Data** tab.
6.  For the **Records** input, set the **record** process variable as the **Value**.

    [![images/delete-records-config.png](images/delete-records-config.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img472)

    [![](images/delete-records-config.png)](#_)

7.  Click **OK**.
8.  (Optional) [Configure a cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow).
9.  Save and publish the process model.

    [![images/delete-employee-process.png](images/delete-employee-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img473)

    [![](images/delete-employee-process.png)](#_)

10.  [Create a record action](record-actions.html#configure-record-action-manually) that launches the new process model.

The process node examines the primary key field (in this case, the `id` field) and deletes that record from the source.

![Process details for a Write Records node](images/delete-records-process-details.png)

### Hard delete a record and its related records

**Goal**: Use the Delete Records smart service to permanently delete a record and its related records.

Sometimes data is created by mistake or your business could be required to delete information on customer request. When the data in question is modeled with a record type and related record types, users will need the ability to remove record data from your application in a seamless way.

**Tip:**  For faster configuration, you can automatically [generate a Delete record action](record-actions.html#generate-record-actions). The generated process model for this action will use the Delete Records smart service to delete the selected record and its related records.

**Example**

Imagine you need to delete an Order from the Appian Retail application. The Order record type has six relationships that you need to consider when building the action to delete these records.

[![images/delete-records-order-relationships.png](images/delete-records-order-relationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img474)

[![](images/delete-records-order-relationships.png)](#_)

When you delete a record, you want to consider whether or not any related data should also be deleted.

In this example:

-   **Order Event History** and **Order Line Item** each store supporting data about orders. This means that if an order is deleted, the related order line items and events are no longer needed.
-   **Case** stores data about support cases submitted by customers. You'll want to keep all logged cases even if an order is deleted since support engineers' performance is evaluated based on the number of cases they close.
-   **Address**, **Customer**, and **Employee** are not reliant on order information since many orders can belong to the same address, customer, or employee.

Based on how the data is related, you'll want to [update the relationship configurations](record-type-relationships.html) for your record types so certain related data is deleted whenever an order is deleted:

| Record Type | Relationship Configuration |
| --- | --- |
| **Order Event History** | Select **Write or Delete when modifying Orders**. |
| **Order Line Item** | Select **Write or Delete when modifying Orders**. |
| **Case** | Select **Do not write or delete**. |

You cannot write or delete data from a many-to-one relationship, so you don't need to update the relationships to the **Address**, **Customer**, or **Employee** record types.

Once the relationships are properly configured, you can create a [related action](record-actions.html#related-actions) to delete a record and any relevant related records.

To create a related action that deletes a record and its related records:

1.  Create a new [form interface](interface_object.html#forms) that allows users to review the order information and confirm they want to delete the Order record. Because line items and the event history will also be deleted, the interface should indicate this fact. To do so, you could use one of these options:

    -   Show the order line items in a [grid component](Paging_Grid_Component.html) and the order event history in an [event history list component](Event_History_List_Component.html) on the form.
    -   Warn the user that this related data will be deleted by stating that fact in the confirmation dialog.
2.  Create a rule input called `record` and set the type to the Order record type. This will allow you to pass order data to the process model.
3.  [Create a new process model](process-model-object.html#creating-a-process-model) and configure the process model properties to use the new form and pass record data:

    -   Go to **File** > **Properties**.
    -   Go to the **Variables** tab and create a new process variable called `record`.
    -   Set the **Type** to the **Order** record type.
    -   Select the **Parameter** checkbox.

    [![images/delete-related-records-pv.png](images/delete-related-records-pv.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img475)

    [![](images/delete-related-records-pv.png)](#_)

    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the `record` rule input from the interface.
4.  Drag and drop a Delete Records node into your process model.
5.  Go to the **Data** tab.
6.  For the **Records** input, set the **record** process variable as the **Value**.

    [![images/delete-records-config.png](images/delete-records-config.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img476)

    [![](images/delete-records-config.png)](#_)

7.  Click **OK**.
8.  (Optional) [Configure a cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow).
9.  Save and publish the process model.

    [![images/delete-order-process.png](images/delete-order-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img477)

    [![](images/delete-order-process.png)](#_)

10.  [Create a record action](record-actions.html#configure-record-action-manually) that launches the new process model.

The process node examines the primary key field (in this case, the `id` field) and deletes that Order record from the source, as well as any Line Item or Event History records associated with that Order. Any Case records with an `orderId` value matching the Order's `id` will now show `null` for `orderId`.

### Soft delete a record

**Goal**: Use the Write Records smart service to remove a record from a record type but keep the data available in the source.

Some delete actions need to make the data generally inaccessible in your app, but administrators or other privileged users can retain access in the record type's source (like a database). This type of deleting lets you restore the data if needed.

A related action is a simple way to let users select a record to remove and confirm they want to delete it by clicking a button. This action starts a process model that sets an `isDeleted` field to `true`. You can then create a sync filter so only records that have an `isDeleted` field set to `false` or `null` are synced in Appian.

**Example**

Let's say you need a record action that allows users to delete orders from a retail application. You want the Order data to persist in the data source, but it should not be available in Appian.

The application contains an Order record type, which stores all order information. This record type has [record events](record-events.html) configured with the following [event types](record-events.html#make-your-event-types-specific):

-   Created Order
-   Updated Order
-   Shipped Order
-   Delivered Order
-   Deleted Order

To ensure this action can be traced back to a specific user, we'll want to capture a Deleted Order event.

Here's one way you could create this action:

1.  Create an interface that lets users confirm that they want to delete the order.
2.  For the form's submit button, update the `value` and `saveInto` properties so the `isDeleted` field is set to `true`:

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
    a!buttonWidget(
       label: "Delete",
       icon: "trash",
       submit: true,
       style: "GHOST",
       color: "NEGATIVE",
       value: true,
       saveInto: ri!record[recordType!Order.fields.isDeleted]
    )
    ```

3.  [Create a new process model](process-model-object.html#creating-a-process-model) and configure the process model properties:
    -   Go to **File** > **Properties**.
    -   Go to the **Variables** tab and create a new process variable called `record`.
    -   Set the **Type** to the **Order** record type.
    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the input from the interface.
4.  Drag and drop a Write Records node into your process model.
5.  Go to the **Setup** tab.
6.  Add a Write Records node to take the data from the form (as `pv!record`) and write the soft delete to the Order record type.
7.  For **Records Input**, select the **order** process variable. By default, **Record Type for Events** populates with the **Order** record type. Since the Order record type has record events configured, the **Write Events** section can be set up.
8.  For **Choose when to write events for the Order record type**, leave the default **Always**. The smart service will always write an event whenever an order is soft deleted.
9.  Select the values to write for the event:
    -   For **Event Type**, select **Soft Deleted Order**.
    -   For **User**, keep the default **Process Initiator**.
    -   For **Automation Type**, select **None (User)**.
    -   For **Timestamp**, keep the default **Now**.
10.  Save and publish the process model.

     [![images/soft-delete-records-example.png](images/soft-delete-records-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img478)

     [![](images/soft-delete-records-example.png)](#_)

11.  [Create a related action](record-actions.html#configure-record-action-manually) that launches the new process model. Use the Order record type in the related action context as `rv!record`.

12.  In the Order record type, add a [sync filter](records-filter-source-data.html) so only records with an `isDeleted` value of `null` or `false` are synced. This filter must be created using expression mode because you need to use the `OR` operator for the two filter conditions.

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
     a!queryLogicalExpression(
       operator: "OR",
       filters: {
         a!queryFilter(
           field: "IS_DELETED", /* The filter matches the source field's name, not the record field */
           operator: "is null"
         ),
         a!queryFilter(
           field: "IS_DELETED",
           operator: "=",
           value: false()
         )
       },
       ignoreFiltersWithEmptyValues: true
     )
     ```

### Soft delete a related record

**Goal**: Use the Delete Records smart service to remove a related record but keep the data available in the source.

Some related records, like line items on an order, are managed in the context of a base record. In those situations, your interface may need to allow users to select and delete these related records.

Appian has many interface components for selecting data, including [checkboxes](Checkbox_Component.html) and [radio buttons](Radio_Button_Component.html). In this example, we'll use a [dynamic link](Dynamic_Link_Component.html) to create clickable text that saves a value to a rule input property.

**Example**

Let's say you need a record action that allows users to update a support case, including any of the comments on the case. Comments are in a separate record type and referenced in the Case through a [record type relationship](record-type-relationships.html).

In this scenario, we'll mark the comment as deleted and use a sync filter to exclude deleted comments from the record type. Since we are soft deleting the comments, they are still available in the source for auditing purposes.

A user should be able to delete comments if they meet either of the following conditions:

-   They are the comment's author.
-   They are a manager of the support department.

In the following example, if Alice K. views the case, she will only be able to delete her comment.

[![images/soft-delete-comment-interface.png](images/soft-delete-comment-interface.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img479)

[![](images/soft-delete-comment-interface.png)](#_)

Since a case can have one or more comments, a reusable interface will let you add multiple instances of these components without unnecessarily repeating code. You can see an example of how to do this in our [video explaining the use of a!forEach() in interfaces](https://www.youtube.com/watch?v=MDEu1x7TmTI).

Before you build the record action:

1.  Create the interface that will display each comment.
2.  Name the interface `commentBox`.

To create this action, you could:

1.  Create an interface that lets users view the case and select the comments the want to delete. Use the Case record type as a rule input.
2.  In the interface, add a [section layout](Section_Layout.html) where you want the case comments to appear.
3.  In the section's `contents` parameter, add a `a!forEach()` [loop](looping.html) that uses the `commentBox` interface to display each comment on the case. Each comment box is followed by a dynamic link that sets the `isDeleted` field to `true` when clicked.

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
    a!forEach(
     /*
     The items evaluated for each loop are the Comments related to each case.
     To loop through them, you must specify the record type relationship here.
     */
     ri!record[recordType!Case.relationships.Comment],
      {
        if(
          fv!isFirst,
          a!horizontalLine(color: "#ffffff"),
          a!horizontalLine(
            showWhen: and(
            fv!item[recordType!Comment.fields.isDeleted] <> true,
            count(fv!item) > 1
          ))
        ),
        if(
          fv!item[recordType!Comment.fields.isDeleted],
          a!richTextDisplayField(),
          rule!commentBox(fv!item),
        ),
        a!linkField(
          labelPosition: "COLLAPSED",
          links: {
            a!dynamicLink(
              label: "Delete comment",
              value: true(),
              saveInto: ri!record[recordType!Case.relationships.Comment][fv!index][recordType!Comment.fields.isDeleted],
              showWhen: {
                and(
                  fv!item[recordType!Comment.fields.isDeleted] <> true,
                  if(
                    or(
                      loggedInUser() = fv!item[recordType!Comment.fields.createdBy],
                      a!isUserMemberOfGroup(loggedInUser(), "AT Support Managers")
                    ),
                    true(),
                    false()
                  )
                )
              }
            )
          }
        )
       }
    )
    ```

4.  [Create a new process model](process-model-object.html#creating-a-process-model) and configure the process model properties:
    -   Go to **File** > **Properties**.
    -   Go to the **Variables** tab and create a new process variable called `record`.
    -   Set the **Type** to the **Case** record type.
    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the input from the interface.
5.  Drag and drop a Write Records node into your process model.
6.  Go to the **Setup** tab.
7.  Add a Write Records node to take the data from the form (as `pv!record`) and write any soft deletes to the Comment record type.
8.  For **Records Input**, select the **record** process variable. By default, **Record Type for Events** populates with the **Case** record type. Since the Case record type has record events configured, the **Write Events** section can be set up.
9.  For **Choose when to write events for the Case record type**, leave the default **Always**. The smart service will always write an event whenever an case is changed.
10.  Select the values to write for the event:
     -   For **Event Type**, select **Updated Case**.
     -   For **User**, keep the default **Process Initiator**.
     -   For **Automation Type**, select **None (User)**.
     -   For **Timestamp**, keep the default **Now**.
11.  Save and publish the process model.
12.  In the Case record type, [create a related action](record-actions.html#configure-record-action-manually) that launches the new process model. Use the Case record type in the related action context as `rv!record`.
13.  In the Comments record type, add a [sync filter](records-filter-source-data.html) so only records with an `isDeleted` value of `null` or `false` are synced. This filter must be created using expression mode because you need to use the `OR` operator for the two filter conditions.

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
     a!queryLogicalExpression(
       operator: "OR",
       filters: {
         a!queryFilter(
           field: "IS_DELETED", /* The filter matches the source field's name, not the record field */
           operator: "is null"
         ),
         a!queryFilter(
           field: "IS_DELETED",
           operator: "=",
           value: false()
         )
       },
       ignoreFiltersWithEmptyValues: true
     )
     ```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...