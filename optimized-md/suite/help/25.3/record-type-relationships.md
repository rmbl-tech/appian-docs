---
source_url: https://docs.appian.com/suite/help/25.3/record-type-relationships.html
original_path: record-type-relationships.html
version: "25.3"
title: "Add Record Type Relationships"
page_id: "record-type-relationships"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add Record Type Relationships

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Relate Data with Record Types

Watch this video from the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity) to learn how to relate your data using record type relationships.

This page explains what record type relationships are and how to take advantage of them.

## Overview

It’s not often that you have one record type to rule them all. Instead, you usually have several record types that work together to create a comprehensive view of your enterprise data. For example, if you work at a Customer Support Center, you may have a Case record type, and a separate record type for Customers who submit cases.

Since there is a business relationship between these data sets, you'll need to query data from each record type to know which cases are associated with each customer, what support level each customer pays for, and more. To make working with this data easier, data experts may create database views to relate the data so developers can build their applications more quickly and simply.

When you [sync your data in Appian](about-data-sync.html), you don't need a data expert to relate your data—you can build the relationships yourself. Using record type relationships, you can use a low-code experience to relate your record data so you can start building your applications faster.

[![images/recordTypesConnected.png](images/recordTypesConnected.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img526)

[![](images/recordTypesConnected.png)](#_)

## About relationships

Record type relationships provide a fast and easy way to connect and reference related data. Just as you can reference a record type’s fields, filters, and actions throughout your applications, you can reference its related record data by defining relationships with other record types.

Relationships can be established between record types with [data sync](about-data-sync.html) enabled. This means you can go beyond the traditional relationships established in a database—you can establish relationships between any record types that have sync enabled, regardless of the source.

So if your enterprise data lives in different database tables and in Salesforce, you can unify this data in Appian without making copies of your data, or migrating your data to have the same source type.

[![images/relationship-sources.png](images/relationship-sources.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img527)

[![](images/relationship-sources.png)](#_)

Once you relate your enterprise data, you can easily build interfaces and expressions that [reference related data](#reference-related-data), and even [create and update related records](#pass-related-record-fields-into-a-process-model) at the same time as your other application data.

## Configuration options

This section describes the different configuration options you have set up a record type relationship. It also details the effects of these choices on other features that let you write and delete records.

### Supported relationship types

Record type relationships can be built with the following relationship types:

-   **One-to-many relationships**: One record in the record type is related to many records in the related record type.

    For example, you want to create a column chart that shows the number of orders associated with each customer. All orders are in the Order record type, and all customer information is in the Customer record type. Since a customer can have one or more orders, you can add a one-to-many relationship on the Customer record type. Now, you can reference the `id` field on the Order record type to count the number of orders associated with each customer.

-   **Many-to-one relationships**: Many records in the record type are related to one record in the related record type.

    For example, you want to create a pie chart that shows the number of customers per industry, and this information lives in two separate record types: the Customer record type, and the Industry record type. Since many customers belong to the same industry, you can add a many-to-one relationship on the Customer record type so you can reference the `industryLabel` field on the Industry record type to group the number of customers by industry.

-   **One-to-one relationships**: Each record in the record type relates to exactly one record in the related record type.

    For example, you need to display the phone number and address associated with each employee on the Employee record list, but that information lives in a separate record type called Employee Contact Information. Since each employee has their own contact information, you could create a one-to-one relationship on the Employee record type so you can easily reference the `phoneNumber` and `address` fields from the Employee Contact Information record type on the Employee record list.

**Tip:**  Although you cannot set up a direct many-to-many relationship between two record types, you can still achieve many-to-many behavior. [Learn how](#add-many-to-many-relationships).

### Common field values

_Common fields_ are the two fields shared between the base record type and the related record type. When configuring a relationship, you'll select common fields to enforce the selected [relationship type](#supported-relationship-types).

For example, in a many-to-one relationship between customers and industries, you could use the `industryId` field from the Customer record type and the primary key field (`id`) from the Industry record type as the two common fields. This will tell Appian to use the `industryId` field to look up the corresponding value of the `id` field in the Industry record type and return the associated data for that industry.

[![images/customer-industry-commonfields.png](images/customer-industry-commonfields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img528)

[![](images/customer-industry-commonfields.png)](#_)

When configuring your common fields, note the following:

-   **Supported fields**:
    -   You can select any record fields, including [sync-time custom record fields](custom-record-fields.html#prodlink-sync-time-evaluations), as common fields. If you select a sync-time custom record field as a common field, you cannot [allow writes to related records](#write-and-delete-related-records).
-   **Field requirements**:
    -   The fields must be of type [Number (Integer)](Appian_Data_Types.html#number-integer), [Text](Appian_Data_Types.html#text), [User](Appian_Data_Types.html#user), or [Group](Appian_Data_Types.html#group).
    -   The fields must be the same data type.
-   **Unique value requirements**:
    -   You must select a field with unique values on the one-side of the relationship. This can be the primary key field or a field with a uniqueness constraint.
    -   In a one-to-one relationship, both common fields must be unique.

### Write and delete related records

When configuring one-to-many and one-to-one relationships, you can allow Appian to make changes to your base records and related records simultaneously. When you select the **Write or delete…** option on a relationship, you can use a single [Write Records smart service](Write_Records_Smart_Service.html) or [Delete Records smart service](Delete_Records_Smart_Service.html) node to perform these actions.

[![Write and Delete Related Records option on relationship dialog](images/allow-related-record-writes.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img529)

[![](images/allow-related-record-writes.png)](#_)

You should allow changes to related records when the base record type and related record type need to be updated together.

For example, Orders and Order Line Items should almost always be updated together, so the relationship on the Order record type should allow updates to Order Line Items when modifying Orders. When an Order is created, its Order Line Items also need to be created. Likewise, the Order Line Items from a deleted Order are no longer needed, so they should also be deleted at the same time.

Alternatively, Customers and Orders do not need to be updated together—updating a customer's phone number should not impact the order—so you should not allow updates to Orders when modifying Customers. In this case, the **Do not write or delete…** option should be selected to prevent these updates.

#### Allow writes and deletes

By default, Appian will allow writes and deletes to related records when you create a new relationship to a record type with the same data source.

For existing relationships, you will need to update the configuration to allow writes and deletes to related records.

To allow Appian to write and delete related records:

-   **Source requirements**:
    -   The related record type must have the same data source as the base record type.
-   **Relationship configuration requirements**:
    -   The **Write or delete…** option must be selected on the relationship.
-   **Common field requirements**:
    -   Custom record fields cannot be used as the [common fields](#common-field-values) in the relationship configuration.
    -   For one-to-many relationships, the base record type must use the primary key or another unique key as the common field in the relationship configuration.
    -   For one-to-one relationships, the base record type must use its primary key as the common field. The common field on the related record type must be a unique key, but it cannot be the primary key.

#### Do not allow writes and deletes

To prevent Appian from writing and deleting related records, select the **Do not write or delete…** option on the relationship. This option is automatically selected if your base record type and related record type do not share the same source.

When this option is selected, the base record is deleted; what happens to the related record depends on the data source of the related record type.

If the related record type is:

-   From the same database data source, the common field is set to null.
-   From a different database data source, the related record is ignored. For example, say your base record type is from the Appian Cloud database and the related record type is from a Postgres database. These do not share a single data source, so no action is taken on any related records when a base record is deleted.
-   A web service, process model, or Salesforce, the node will fail. Your process should update the related record first and then delete the base record using a Delete Records node.

### Referential integrity

When data experts relate data by joining database tables into a database view, they rely on the referential integrity of foreign keys: that is, a foreign key will only refer to a valid row in another table, or it will be null. This means that when rows of data are deleted, this integrity can be maintained by also deleting the rows in other tables that refer to the deleted rows, or by failing the delete operation.

When you relate your data using record type relationships, Appian leverages your synced data. This means that the data in these relationships reflect the data and rules enforced by your source. As a result, whenever you add, update, or remove data from the source of your record type, the changes are written directly to your source and then synced in Appian, which means that record type relationships do not inherently enforce referential integrity; instead, any referential integrity enforced on your source data will be reflected in Appian when it's synced.

**Tip:**  Whenever you [generate a source](create-record-data-source.html) or [update the source](update-source-from-record-type.html) from your record type, Appian will automatically create a foreign key with the common fields used to create a relationship. This will enforce referential integrity between your base record type and related record type.

For example, let's say that the Customer and Order record types are related, and in the database tables that they use, the Order table has a foreign key to Customer which enforces referential integrity.

If you use a process model to delete a Customer from the database table, any Orders referencing that Customer would have an invalid foreign key. Therefore, the database will either cause the delete operation to fail and nothing will be deleted, or it will delete both the Customer and all Orders associated with that Customer. If the delete operation fails, no sync is needed because data has not changed. If it succeeds, Appian will immediately sync the deletions from both record types.

Now, let's say that the Customer record type also has a relationship with the Industry record type, and in this case it's the Customer database table that holds a foreign key to the Industry table, since Industry is just reference information.

When you delete a Customer, there's no need to affect the Industry table because the foreign key itself is being deleted and there's no risk to referential integrity. In this case, Appian will immediately sync the change to the Customer record, but a sync will not occur on the Industry record type.

If you enforce referential integrity on the sources of your related record types, it's recommended to keep these record types on a similar sync schedule. This way, you can be sure that your foreign key relationships are consistently reflected in the synced data, and any changes to the data as a result of referential integrity are synced at the same time.

**Note:**  If you create a relationship between record types with different sources, referential integrity cannot be enforced by any one system.

## Add relationships

You can add up to 50 relationships on a record type.

To add a record type relationship:

1.  In a record type, go to **Data Model**.
2.  Click **ADD RELATIONSHIP**.
3.  For **Related Record Type**, enter the name of the record type you want to establish a relationship with.
4.  Click **NEXT**.
5.  For **Relationship Name**, enter a name for the relationship. This is how you’ll reference the relationship to access the related record fields.
6.  For **Relationship Type**, select a [relationship type](#supported-relationship-types):
    -   **One-to-Many**
    -   **Many-to-One**
    -   **One-to-One**
7.  For **Common Fields**, choose the fields to enforce the relationship type.

    The common fields must meet the following requirements:

    -   **Field requirements**:
        -   The fields must be of type [Number (Integer)](Appian_Data_Types.html#number-integer), [Text](Appian_Data_Types.html#text), [User](Appian_Data_Types.html#user), or [Group](Appian_Data_Types.html#group).
        -   The fields must be the same data type.
    -   **Unique value requirements**:
        -   You must select a field with unique values on the one-side of the relationship. This can be the primary key field or a field with a uniqueness constraint.
        -   In a one-to-one relationship, both common fields must be unique.

8.  For **Write and Delete Related Records**, select the **Write or delete…** option to enable the Write Records and Delete Records smart services to update the base record and any related records simultaneously. This option is only available for one-to-many and one-to-one relationships.
9.  For **Preview**, select a record to see a preview of the related record.

    [![images/one-to-many-records.png](images/one-to-many-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img530)

    [![](images/one-to-many-records.png)](#_)

10.  Click **ADD**.
11.  Click **SAVE**.

### Add many-to-many relationships

In addition to one-to-many, many-to-one, and one-to-one relationships, it's likely that your enterprise data also contains many-to-many relationships. For example, say you have an Employee record type and a Project record type. Each project has a team of multiple employees, and a given employee can be on more than one project.

Unlike the other relationship types, you can’t implement a direct many-to-many relationship between these two record types in Appian. Instead, you can effectively create a many-to-many relationship by creating a third record type to connect the other two.

This third record type will sit between the two record types of the many-to-many relationship. It should include a primary key field, and two additional fields that references the primary key fields from the other two record types. In a database, this would be your join table. Once you set up the source, you can then connect the three record types using one-to-many and many-to-one relationships.

Let's look at the Employee and Project example.

[![images/many-to-many-diagram.png](images/many-to-many-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img531)

[![](images/many-to-many-diagram.png)](#_)

To create a many-to-many relationship between employees and projects:

1.  Create a new record type. In this example, we'll call it **Project Assignments**.
2.  Set the data source of the record type to a join table. In this example, the Project Assignment record type uses a join table with the fields `Id` (primary key), `employeeId`, and `projectId`.

    **Note:**  In the underlying data source of your third record type, you must have a primary key field. It's also recommended to add foreign keys to the fields that reference the primary keys from the other two record types. This will allow your source to enforce [referential integrity](#referential-integrity).

3.  From the **Project Assignment** record type, add a **many-to-one relationship** with the **Employee** record type, and a **many-to-one relationship** with the **Project** record type.

    [![images/join-record-type.png](images/join-record-type.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img532)

    [![](images/join-record-type.png)](#_)

4.  Click **SAVE**.
5.  From the **Employee** record type, add a **one-to-many relationship** with the **Project Assignment** record type.
6.  From the **Project** record type, add a **one-to-many relationship** with the **Project Assignment** record type.

Now, you can use the relationship on the Employee record type to index into the Project Assignment record type, then use the relationship on the Project Assignment record type to index into the Project record type. For example, `recordType!Employee.relationships.projectAssignments.relationships.projects.fields.name` would return the related project names for a given employee.

Since the Project record type also has a relationship with Project Assignments, you can use the Project record type to return fields from the Employee record type. In this instance, you could use `recordType!Project.relationships.projectAssignments.relationships.employees.fields.lastName` to return the related employee last names for a given project.

By connecting all three record types, you can easily reference your many-to-many data in your grids, charts, queries, and more.

### Add suggested relationships

By default, a relationship only exists on the record type where it was created. For example, if the Order record type has a relationship to the Customer record type, the Customer record type does not inherently have a relationship to the Order record type.

You can easily create a bi-directional relationship, where both record types reference each other, using _suggested relationships_.

Suggested relationships will appear on a record type when there is an opportunity to create a bi-directional relationship with another record type. For example, if the Order record type has a relationship to the Customer record type, then the Customer record type would have a suggested relationship to the Order record type.

[![images/suggested-relationships.png](images/suggested-relationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img533)

[![](images/suggested-relationships.png)](#_)

To add a suggested relationship:

1.  In a record type, go to **Data Model**.
2.  Under **Suggested Relationships**:
    -   Click to add a relationship to a specific record type.
    -   Click **ADD ALL RELATIONSHIPS** to add relationships to all the record types in the list.
3.  Click **SAVE**.

## Manage relationships

Once you add relationships to the record type, you can:

-   [View all relationships](#view-relationships).
-   [Edit relationships](#edit-relationships).
-   [View relationship dependents](#view-relationship-dependents).
-   [Delete relationships](#delete-relationships).

### View relationships

All relationships defined in the record type will appear in the **RELATIONSHIPS** section of the **Data Model** page.

To view all relationships accessible from your record type, select the **Show relationships from related record types** checkbox under the relationship diagram.

To enlarge the diagram and easily view complex relationships, click the **Expand relationship diagram in dialog box** button.

[![images/relationship-diagram.png](images/relationship-diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img534)

[![](images/relationship-diagram.png)](#_)

### Edit relationships

There are scenarios where you may need to edit the name of a relationship, change the relationship type, or update a common field.

To edit a record type relationship:

1.  In the record type, go to **Data Model**.
2.  Under **RELATIONSHIPS**, click the name of the relationship. The **Edit Relationship** dialog appears.
3.  Change the **Relationship Name**, **Relationship Type**, or **Common Fields** as necessary.
4.  Click **OK**.
5.  Click **SAVE**.

### View relationship dependents

To see which objects depend on the record type relationship:

1.  In the record type, go to **Data Model**.
2.  Under **RELATIONSHIPS**, click ![record-field-dependents](images/record-field-dependents.png) **View objects that reference this relationship** next to the relationship name.

A list of relationship dependents will appear.

### Delete relationships

To delete a record type relationship:

1.  In the record type, go to **Data Model**.
2.  Under **RELATIONSHIPS**, click **Remove Relationship** next the relationship name.

    **Caution:**  If you remove a relationship, any references to the relationship will break.

3.  Click **SAVE**.

## Reference related data

Once you configure a record type relationship, you can easily reference related data to build advanced interfaces, reports, queries, and process models.

This section explains how to:

-   [Reference a related record field in an interface or expression](#reference-a-related-record-field).
-   [Filter, sort, and limit related records](#filter-sort-and-limit-related-record-fields).
-   [Pass related record fields into a process model](#pass-related-record-fields-into-a-process-model).

**Note:**  When you reference related data, Appian automatically enforces the [record type object security](record-security.html) and any [record-level security](record-level-security.html) configured on the related record type. This means you don't need to add any additional configurations to your queries to filter out sensitive or conditionally available information.

### Reference a related record field

Once you configure a relationship on your record type, you can use the [_relationships_ property](reference-records.html#reference-a-relationship) to reference fields from that relationship or any _nested relationships_. A nested relationship is a relationship defined on a related record type.

For example, if the Customers record type has a relationship to the District record type, then you can access data from the District record type and any of the record types related to the District record type, like Warehouses.

[![images/nestedRelationshipExample.png](images/nestedRelationshipExample.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img535)

[![](images/nestedRelationshipExample.png)](#_)

Depending on the object, you can reference a related record field in design mode or expression mode. Let’s look at examples referencing related record fields in design mode and expression mode within an interface.

#### In design mode

In an interface, you can use design mode to easily reference related record fields in any [records-powered component](Using_the_Records_Tab.html#interface-components), like a read-only grid or chart.

Whenever you select a field to display in the component, a list of record fields and relationships defined on the record type will appear. To select a related record field, hover over the relationship in the list.

[![images/customer-support-ticket.gif](images/customer-support-ticket.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img536)

[![](images/customer-support-ticket.gif)](#_)

To select a related record field from a nested relationship, hover over a relationship in the list. In the list of fields and relationships configured on the related record type, hover over a relationship.

[![images/nested-relationship.gif](images/nested-relationship.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img537)

[![](images/nested-relationship.gif)](#_)

#### In expression mode

In expression mode, you can reference a related record field using the `recordType!` domain followed by `.` dot notation and the `relationships` property. A list of relationships configured on the record type will appear, where you can select a relationship. Then, you can use `.` dot notation and the `fields` property to select a related record field.

[![images/relationshipReferenceExpressionMode.png](images/relationshipReferenceExpressionMode.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img538)

[![](images/relationshipReferenceExpressionMode.png)](#_)

For example, the following expression uses an [a!linkField()](Link_Component.html) component to link to the district related to each customer. The label of the link uses `recordType!Customer.relationships.district.fields.name` to display the **Name** field from the **District** record type.

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
a!linkField(
  links: {
    a!recordLink(
      label: fv!row[recordType!Customer.relationships.district.fields.name],
      recordType: recordType!Customer,
      identifier: fv!row[recordType!Customer.relationships.district.fields.id]
    )
  }
)
```

Learn more about the [_relationship_ property](reference-records.html#reference-a-relationship).

### Filter, sort, and limit related record fields

When you select the related record fields to display in your interfaces or queries, you may decide that you only need a limited amount or a filtered subset of your related data—especially when you reference data from a one-to-many relationship.

For example, if the Support Case record type has a one-to-many relationship with the Comments record type, you may not want to list every comment left on a case in your read-only grid. Instead, you just want to display the most recent comment left on each case.

To return the exact data you need, you can use [a!relatedRecordData()](fnc_system_relatedrecorddata.html) to filter, sort, and limit the related record set returned from a one-to-many relationship. You can use this function in [a!queryRecordType()](fnc_system_queryrecordtype.html), [a!recordData()](fnc_system_recorddata.html), or in a [read-only grid](fnc_system_recorddata.html).

Let's look at an example configuring `a!relatedRecordData()` in a read-only grid in design mode and expression mode.

#### In design mode

In design mode, you can easily filter, limit, and sort your related record data in a [read-only grid](fnc_system_recorddata.html) by clicking **FILTER RELATED RECORDS**.

For example, to only display the latest comment for each case, you can limit the number of comments returned to `1` and sort by the latest value in the `createdOn` field from the Comment record type.

**Note:**  When applying a sort or filter, you must start your record type reference directly from the related record type (`recordType!<Related record type name>`). See [Filtering and sorting the related record set](fnc_system_relatedrecorddata.html#filtering-and-sorting-the-related-record-set) for more information.

[![images/relatedRecordData_dv.png](images/relatedRecordData_dv.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img539)

[![](images/relatedRecordData_dv.png)](#_)

#### In expression mode

In expression mode, you can filter, sort, and limit a related record set using `a!relatedRecordData()` in the _relatedRecordData_ parameter of `a!recordData()` or `a!queryRecordType()`.

To return the latest comment left on each case in a read-only grid, the full expression would look like this:

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
a!gridField(
  label: "Support Cases",
  labelPosition: "ABOVE",
  data: a!recordData(
    recordType: recordType!Case,
    relatedRecordData: a!relatedRecordData(
      relationship: recordType!Case.relationships.comment,
      limit: 1,
      sort: a!sortInfo(
        field: recordType!Comment.fields.createOn,
        ascending: false
      ),
    )
  ),
  columns: ...
)
```

Both configurations in design mode and expression mode would return something like this:

[![images/related-record-data-grid-ex.png](images/related-record-data-grid-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img540)

[![](images/related-record-data-grid-ex.png)](#_)

### Pass related record fields into a process model

Record actions to create or update record data often include information stored in a one-to-many or one-to-one related record type. When you set the relationship to [allow Appian to write the record and related record data simultaneously](#configuration-options), your interface can use a single rule input to pass the data to a process model.

**Tip:**  You can [generate common record actions](record-actions.html#generate-record-actions) that update record data and related record data together.

For example, let's say you have a Customer record type and an Address record type, and there is a one-to-many relationship between Customer and Address. You want to add a "Create" action to the Customer record type that also captures the customer's address.

To create a form that can pass data from the Customer record type _and_ the Address record type, you can configure your form components with a single rule input (for example, `ri!record`) that references the Customer record type.

Since the Customer record type has a relationship with the Address record type, and that relationship is configured to allow writes to related records, you can use relationship references to store and pass related record fields in your form.

#### In design mode

To build the form in this example in design mode:

1.  In an interface, select an [input component](SAIL_Components.html#inputs).
2.  In the component, go to the **Display Value** field.
3.  From the dropdown, hover over **ri!record** and then the **address** relationship. This will display the available fields on the Address record type.
4.  Select the **city** field from the Address record type. The related record field will appear appended to the relationship name. In this example, the field appears as **address.city**.
5.  For **Save Input To**, repeat the previous two steps to select the same field.

[![images/save-related-record-value.png](images/save-related-record-value.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img541)

[![](images/save-related-record-value.png)](#_)

#### In expression mode

To build the form in this example in expression mode, you can display and save the related record field value using the _value_ and _saveInto_ parameters of an [input component](SAIL_Components.html#inputs).

The full expression for a component would look like this:

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
a!pickerFieldRecords(
  label: "State",
  labelPosition: "ABOVE",
  placeholder: "Select a State",
  maxSelections: 1,
  recordType: recordType!Customer,
!  value: ri!record[recordType!Customer.relationships.address.fields.stateId]
!  saveInto: ri!record[recordType!Customer.relationships.address.fields.stateId]
)
```

When the form is submitted, the `record` rule input is passed to the process model as `pv!record`. When the process completes, `pv!RecordsUpdated` shows the primary key values of the new Customer and Address.

[![List of process variables showing related record data for Cases nested in the Customer record data](images/related-record-pv-values.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img542)

[![](images/related-record-pv-values.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...