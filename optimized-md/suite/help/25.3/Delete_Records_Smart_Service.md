---
source_url: https://docs.appian.com/suite/help/25.3/Delete_Records_Smart_Service.html
original_path: Delete_Records_Smart_Service.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Delete Records Smart Service

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The Delete Records smart service is a powerful tool that allows you to easily delete data from the source system and then automatically sync the changes in Appian. The service lets you delete one or more records at a time per node.

To use this smart service, the record type you want to affect must meet the following conditions:

-   The record type uses a database as its source.
-   The record type has [data sync](about-data-sync.html) enabled.

Related records can also be deleted when you delete a base record. See the specific [usage considerations](#delete-related-records) for deleting related records.

### Permissions needed

The user executing this activity must have Viewer permissions for the selected record type in order to delete information. If the user does not, the node will fail and pause the process with an exception.

**Note:**  Since the Delete Records Smart Service works directly with your record type's source, review the recommendations in [Build Your Best Data Fabric](build-best-data-fabric.html) before implementing this smart service.

## Properties

-   **Category**: Data Services
-   **Icon**: ![Delete Records](images/Smart_Service_Icons/Delete_Records.png)
-   **Assignment Options**: Automated activity

## Configuration options

This section contains configuration details specific to this smart service. For more information about common configurations, see the [Process Node Properties](Process_Node_and_Smart_Service_Properties.html) page.

### Data tab

#### Node inputs

| Name | Data Type | Description | Required | Multiple |
| --- | --- | --- | --- | --- |
| Records | List of Any Type | A list of records to be deleted identified by their primary key. The smart service can delete 50,000 records per node. This limit includes the base records and any related records affected by the delete operation. | Yes | Yes |
| Pause On Error | Boolean | Determines whether the node should pause by exception if an error occurs deleting data in the source. Default: `true`. | No | No |

See also: [Record Type](Appian_Data_Types.html#record-type)

#### Node outputs

| Name | Data Type | Description |
| --- | --- | --- |
| Count of Records Deleted | Number (Integer) | The number of base records deleted from the source |
| Error Occurred | Boolean | Returns `true` if any write to the source system or Appian fails; returns `false` if all writes succeed |
| Errors | List of Any Type | The error that occurred when writing the records and the list of records that failed to write. This is only returned when the Pause On Error input is `false`. |

## Usage considerations

### Pass record data to process models

This smart service can be used to power a [related action](record-actions.html#related-actions) that lets the user review some data and then confirm that it should be deleted. This can be done with a simple process model like the one shown in the following example.

[![Process model for deleting Order records](images/delete-order-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img103)

[![](images/delete-order-process.png)](#_)

To perform the delete operation, you'll need to pass data from the start form interface to the process model. First, you should create a process variable that will take the record data from your interface and move it through the process. Since this is a related action, the variable will also be used in the following places:

-   As the Records value on the smart service's Input tab.
-   To set the context and launch the interface configured as the [process start form](process-model-object.html#process-start-form-tab).

The interface needs a rule input that uses the same record type as its data type. When the user submits the form, the data saved to rule input will include the primary key of any base records to be deleted.

See [Hard delete a record using a process model](#hard-delete-a-record-using-a-process-model) for an example. Learn more about [passing data between objects](https://www.youtube.com/watch?v=fofrLNviRTA) on our YouTube channel.

**Tip:**  For faster configuration, Appian can automatically [generate a Delete record action](record-actions.html#generate-record-actions).

### Hard and soft deletes

The Delete Records smart service permanently removes data from the source (that is, it performs a hard deletion). If your app or database design requires data to be soft deleted for auditing or to maintain [referential integrity](record-type-relationships.html#referential-integrity), you can use the [Write Records](Write_Records_Smart_Service.html) smart service to mark a record as deleted according to your schema. For example, your data source may have a field like `isDeleted` or `deletedTime`. You could configure a [sync filter](records-filter-source-data.html) so rows that are marked as deleted are no longer synced in Appian.

### Delete related records

You can use a single Delete Records smart service to delete a record and its related records at the same time, or you can use multiple Delete Records smart services to delete records from different record types in a sequence.

#### Use a single node to delete records and related records

When you delete records in a base record type, related records from a one-to-many or one-to-one relationship to the base are also deleted.

For Appian to delete data for a base record and related records, the following conditions must be met:

-   The records have the same data source.
-   The **Write or delete…** option must be selected on the relationship.- For a one-to-many relationship, the base record's [common field](record-type-relationships.html#common-field-values) can be the primary key or another unique key.
-   For a one-to-one relationship, the base record's primary key must be used as the common field in the relationship configuration. Relationships defined with other unique keys are not supported.

The Delete Records node executes all of the deletes as a single transaction. This ensures that either all of the input data is deleted or none of the data is deleted. This helps avoid incomplete deletes (such as where an Order is written, but an Order Line Item is not).

The smart service takes one of two actions depending on how the [record type relationship is configured](record-type-relationships.html#add-relationships).

| Configuration option | Delete behavior |
| --- | --- |
| Allow writing or deleting | Related records are deleted from the data source. |
| Do not allow writing or deleting | The related record's foreign key field referencing the base record is set to null. |

If foreign keys are used in your source table, you should ensure the correct delete behavior is set for the foreign key constraint.

| Configuration option | Delete behavior setting |
| --- | --- |
| Allow writing or deleting | `CASCADE` |
| Do not allow writing or deleting | `SET NULL` |

If the record types do not share a single source schema or database, the smart service deletes the base record and makes no change to the related record.

#### Delete records and related records by record type

If you want to delete records one record type at a time, you can delete related records and the base record in separate Delete Records nodes. For example, you may have a Customer record type that has a one-to-many relationship with a Payment Type record type storing credit card data. If you delete a customer record, you also want to delete any payment data associated with the customer. A process model of this workflow would look similar to the following example:

[![Process model showing deleting related records](images/delete-records-related-workflow.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img104)

[![](images/delete-records-related-workflow.png)](#_)

#### Delete document information

When you use this smart service to delete a document identifier from a [document management record type](manage-docs-with-records.html), the document itself will still exist in the generated document folder; however, the document will be inaccessible since there is no way to reference it.

Documents without an associated record will be automatically deleted based on the [cleanup schedule](manage-docs-with-records.html#clean-up-documents). You can also add a [Delete Document](Delete_Document_Smart_Service.html) smart service to your process models to immediately delete unused documents.

Once the document is deleted from the document folder, the document information will also be removed from the [Document record type](document-record-type.html).

### Data sync behavior for record types

If you use this smart service to delete data in a database table, and that table is the source of a record type with [data sync](about-data-sync.html) enabled, those changes will be automatically synced in Appian. This is called a _smart service sync_.

If a smart service sync occurs at the same time as a scheduled full sync, all changes from the smart service sync will be immediately synced and available. Then, when the full sync completes, all other changes from the source will also be available.

## a!deleteRecords()

The Delete Records smart service is available as an expression function that can be executed inside a _saveInto_ on a [Interface Component](executing_smart_services.html) or as part of a [Web API](Web_APIs.html). When creating a web API, select the **Delete Records** template to generate the object with this function automatically configured.

### Syntax

**a!deleteRecords**( _records, onSuccess, onError_ )

### Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`records`

 |

_Any Type_

 |

A list of records to be deleted (up to a maximum of 1,000 records). Each item in the list must include the primary key for the record. Use the `recordType!` domain to [reference your record type](reference-records.html). Any related record data is ignored.

 |
|

`onSuccess`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute after the smart service successfully deletes rows. Created with `a!save()` or `a!httpResponse()`. Use `fv!countOfRecordsDeleted` to reference the number of records deleted.

 |
|

`onError`

 |

_Any Type_

 |

A list of saves or an HTTP response to execute when the smart service fails to delete records. Created with `a!save()` or `a!httpResponse()`. Use `fv!errors` to reference any errors returned by the data source.

 |

### Automatic refresh on record views

When you use this smart service on a [record view](record-view.html), the view will automatically refresh with the latest record data.

This means that when your record view interface has a [Record Action component](Record_Action_Component.html) that triggers the Delete Records smart service, or a button component that triggers the `a!deleteRecords()` function, the record view data will automatically refresh after the delete occurs.

This refresh behavior only applies to data supplied by [rv!record](reference-records.html#use-rvrecord). If your record view definition uses `rv!identifier` or a local variable to supply the record data, the data will not automatically refresh; instead, you will need to configure additional refresh behavior.

## Possible errors

This section explains some of the common reasons the Delete Records smart service might fail.

### Configuration errors

Configuration errors can occur when the node setup or inputs are misconfigured and attempts to write to the source cannot succeed.

Some examples of misconfiguration include:

-   Using an unsupported record type (for example, a record type with a non-database source).
-   An error in the related Event History record type or Event Type Lookup record type (for example, a field is deleted or the record type is deleted).
-   An error in the expression calling the process model or the `a!deleteRecords()` function.
-   Attempting to write related record data when the relationship is not configured to allow updates to related records.

### Errors with the data source

Appian is unable to change data in the source in some circumstances.

These situations include:

-   Schema mismatches, such as conflicting data types.
-   Database connection problems, like timeouts or invalid credentials.
-   Database triggers that cause the requested data change to fail. Appian is not aware of any configured triggers, so they may need to be changed or removed for the smart service to work correctly.

If Appian is unable to write to the database, the record data will still remain available even if the smart service fails.

### Errors writing to a related record type

The Delete Records node executes all of the writes as a single transaction. This means that if you're updating data in multiple database tables, then data is successfully written to all tables or none of the tables.

For example, let's say a Delete Records node is deleting data from three different database tables: Orders, Customers, and Employees. If the node is unable to delete data in the Employees table, then the node will not delete data in the Orders or Customers table either. This helps avoid incomplete writes (like deleting a Customer, but not their Orders).

### Errors syncing data changes

When Appian attempts to sync changes to the source data, the sync will fail when one of the following occurs:

-   The record type exceeded the [synced row limit](about-data-sync.html#sync-data-from-large-data-sources).
-   A record field contains an [invalid value](Records_Monitoring_Details.html#invalid-value-in-a-source-row-field).
-   The record type's [sync filter](records-filter-source-data.html) is invalid (for example, if the source field is no longer available).

If Appian is unable to sync changes from the source, the record data will be unavailable. For more information on the different types of sync errors and steps to resolve these errors, see [Troubleshooting Syncs](Records_Monitoring_Details.html).

## Examples

The following examples show the different ways you can use the `a!deleteRecords()` function to delete your record data.

The following example data is from the Appian Retail application, available for free in Appian Community Edition. To follow along with this example, [log in](https://explore.appian.community/suite/webapi/global-redirect) to Appian Community and register for Appian Community Edition.

### Hard delete a record using a process model

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

    [![images/delete-records-pv.png](images/delete-records-pv.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img105)

    [![](images/delete-records-pv.png)](#_)

    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the `record` rule input from the interface.
4.  Drag and drop a Delete Records node into your process model.
5.  Go to the **Data** tab.
6.  For the **Records** input, set the **record** process variable as the **Value**.

    [![images/delete-records-config.png](images/delete-records-config.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img106)

    [![](images/delete-records-config.png)](#_)

7.  Click **OK**.
8.  (Optional) [Configure a cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow).
9.  Save and publish the process model.

    [![images/delete-employee-process.png](images/delete-employee-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img107)

    [![](images/delete-employee-process.png)](#_)

10.  [Create a record action](record-actions.html#configure-record-action-manually) that launches the new process model.

The process node examines the primary key field (in this case, the `id` field) and deletes that record from the source.

![Process details for a Write Records node](images/delete-records-process-details.png)

### Hard delete a record and its related records using a process model

**Goal**: Use the Delete Records smart service to permanently delete a record and its related records.

Sometimes data is created by mistake or your business could be required to delete information on customer request. When the data in question is modeled with a record type and related record types, users will need the ability to remove record data from your application in a seamless way.

**Tip:**  For faster configuration, you can automatically [generate a Delete record action](record-actions.html#generate-record-actions). The generated process model for this action will use the Delete Records smart service to delete the selected record and its related records.

**Example**

Imagine you need to delete an Order from the Appian Retail application. The Order record type has six relationships that you need to consider when building the action to delete these records.

[![images/delete-records-order-relationships.png](images/delete-records-order-relationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img108)

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

    [![images/delete-related-records-pv.png](images/delete-related-records-pv.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img109)

    [![](images/delete-related-records-pv.png)](#_)

    -   Go to the **Process Start Form** tab and select your interface.
    -   Map your `record` process variable to the `record` rule input from the interface.
4.  Drag and drop a Delete Records node into your process model.
5.  Go to the **Data** tab.
6.  For the **Records** input, set the **record** process variable as the **Value**.

    [![images/delete-records-config.png](images/delete-records-config.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img110)

    [![](images/delete-records-config.png)](#_)

7.  Click **OK**.
8.  (Optional) [Configure a cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow).
9.  Save and publish the process model.

    [![images/delete-order-process.png](images/delete-order-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img111)

    [![](images/delete-order-process.png)](#_)

10.  [Create a record action](record-actions.html#configure-record-action-manually) that launches the new process model.

The process node examines the primary key field (in this case, the `id` field) and deletes that Order record from the source, as well as any Line Item or Event History records associated with that Order. Any Case records with an `orderId` value matching the Order's `id` will now show `null` for `orderId`.

### Soft delete a record using a process model

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

     [![images/soft-delete-records-example.png](images/soft-delete-records-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img112)

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

### Soft delete a related record using a process model

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

[![images/soft-delete-comment-interface.png](images/soft-delete-comment-interface.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img113)

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

### Delete a record using an expression

**Goal**: Use the `a!deleteRecords()` function to delete a record.

Instead of building an entire process model to delete data, you can use the `a!deleteRecords()` function to let users delete data directly from an interface.

**Example**

For example, in a retail application, you could create an [editable grid](Editable_Grid_Component.html) that lets users add, update, and delete inventory data.

[![images/inventory-data-crud.png](images/inventory-data-crud.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img114)

[![](images/inventory-data-crud.png)](#_)

In one of the columns, we'll display a rich text icon and set its _link_ parameter so the icon is clickable. When the user clicks the icon, the _saveInto_ deletes the current row's record data using `a!deleteRecords()`. To remove it from the grid, you should also use the _onSuccess_ parameter to remove the now-deleted record from the local variable storing the data.

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
a!richTextDisplayField(
  value: a!richTextIcon(
    icon: "trash",
    altText: "delete " & fv!index,
    caption: "Delete " & fv!item[recordType!Item.fields.name],
    link: a!dynamicLink(
      value: fv!index,
      saveInto: {
        a!deleteRecords(
          records: fv!item,
          onSuccess: {
            a!save(local!items, remove(local!items, save!value)),
            }
        )
      }
    ),
    linkStyle: "STANDALONE",
    color: "NEGATIVE"
  )
),
```

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

## Versions

A smart service consists of a function and a node. There are some instances when the smart service function is evolved separately from the smart service node. When the function or node is evolved, a new version of the function or node is available.

The following sections detail the different versions of the Delete Records function and Delete Records node.

### Function versions

You can identify the version of a smart service function by looking at the function name to see if there is a version suffix.

If you are using a previous version, be sure to refer to the corresponding documentation from the list below. To use the latest version of the function, replace the old version of the function with the latest version.

| Function Versions | Reason for Update |
| --- | --- |
| [a!deleteRecords\_23r3](/suite/help/25.3/Delete_Records_Smart_Service_23r3.html) |
Allow deleting records and related records at the same time.

 |

### Node versions

You can identify the version of a smart service node by looking at node type and version.

To review a node's type and version:

1.  In the Process Modeler, click **Tools > Generate Documentation**.
2.  In the generated documentation, review the **Node Type** and **Version** for the specific node.

If you are using a previous version, be sure to refer to the corresponding documentation from the list below. To use the latest version of the node, replace the old version of the node with a new node.

| Appian Version | Node Type | Node Version | Reason for Update |
| --- | --- | --- | --- |
| 22.3 | delete\_records\_from\_source | 1 |
Original version of the Delete Records node.

 |
| 23.4 | delete\_records\_from\_source\_23r4 | 4 |

Allow deleting records and related records at the same time.

 |
| 24.2 | delete\_records\_from\_source\_23r4 | 6 (Current) |

Allow deleting related records from a one-to-many relationship where the [common field](record-type-relationships.html#common-field-values) is a unique key field.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...