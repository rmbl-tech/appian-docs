---
source_url: https://docs.appian.com/suite/help/25.3/reference-records.html
original_path: reference-records.html
version: "25.3"
title: "Reference a Record Type in your Applications"
page_id: "reference-records"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Reference a Record Type in your Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How Record Data Moves Through an Appian App

Once you create your record type, you can seamlessly access that data throughout your applications. Watch this from the [Appian Community YouTube channel](https://www.youtube.com/@AppianCommunity) to see how the data flows throughout your app.

## Overview

You can directly reference the record type object in your expression or interface using the `recordType!` domain. This [domain prefix](domain_prefixes.html#object-prefixes) is a direct object reference that removes the need to create a constant to reference your record type (except in [specific use cases](#when-to-use-a-constant)).

Using a record type reference, you can reference fields, relationships, user filters, and record actions configured in the record type for use in an [expression, interface, or process model](Using_the_Records_Tab.html).

This page describes how to reference a record type and its related properties throughout your applications.

## Reference a record type

You can use the `recordType!` domain to reference a record type in functions, like [a!queryRecordType()](fnc_system_queryrecordtype.html) and [a!urlForRecord()](fnc_scripting_urlforrecord.html), and components, like the [Record Link](Record_Link_Component.html) component or the [Record Picker](Record_Picker_Component.html) component.

For example, `recordType!` is used to reference the Case record type in the `a!queryRecordType()` function to return data from select record fields and related record fields.

[![images/record_type_queryrecordtype_function_example.png](images/record_type_queryrecordtype_function_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img569)

[![](images/record_type_queryrecordtype_function_example.png)](#_)

It's easy to construct your record type references since the `recordType!` leverages typeahead to suggest a selection of existing record types. If you already know the name of your record type, you can even skip entering the domain and simply type the name of the record type for the domain and record type object reference to appear.

[![images/typeahead-records.gif](images/typeahead-records.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img570)

[![](images/typeahead-records.gif)](#_)

**Note:**  If you are unable to reference a specific record type, make sure that you have [**Viewer** permission](record-security.html#prodlink-security) to the record type.

The record type object reference combined with `.` dot notation allows you to directly access different properties of the record type like [fields](#reference-record-fields), [actions](#reference-a-record-action), [filters](#reference-a-user-filter), [relationships](#reference-a-relationship), and [properties](#reference-record-type-properties) in your functions or expressions.

[![images/record_type_employee_fields_lozenge_autosuggest.png](images/record_type_employee_fields_lozenge_autosuggest.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img571)

[![](images/record_type_employee_fields_lozenge_autosuggest.png)](#_)

You can reference any of the record type properties in an interface or expression. We'll discuss how to reference each record property in the subsequent sections.

### Reference record fields

The `fields` property allows you to reference any record field configured in the record type. If your record type has [data sync](records-data-sync.html) enabled, this includes [custom record fields](custom-record-fields.html).

You may use record field references in a query to return specific field values, or in an interface component to display record field values in a report.

To reference a record field:

1.  Enter the `recordType!` domain and select your record type.
2.  Enter `.` after `recordType!<Record Type Name>` to autosuggest the record type properties.
3.  Select `fields` to access the hierarchical menu of record fields configured in the record type.
4.  Select a record field from the dropdown to append to the `fields` property.

    For example, the reference below refers to the **closedon** field on the Case record type.

    [![images/record_type_employee_fields_lozenge_firstname.png](images/record_type_employee_fields_lozenge_firstname.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img572)

    [![](images/record_type_employee_fields_lozenge_firstname.png)](#_)

When referencing a record field in a process variable, activity class parameter, rule input, or record variable, you can use dot notation to index into your selected field. Appian will then automatically format the field reference as needed.

For example, if you have a rule input of type [record data type](Appian_Data_Types.html#record-data-types), you can reference individual record fields by using dot notation (`.`) to index into the rule input and select a record field or related record field. The field reference will be automatically wrapped in brackets.

[![images/autocomplete.gif](images/autocomplete.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img573)

[![](images/autocomplete.gif)](#_)

When you highlight a record field from the dropdown, Appian automatically provides additional information about the record field key, including:

-   Full record type field reference.
-   Field name.
-   Field data type.

When using a record type field reference, Appian will automatically shorten the reference to improve the readability of your expressions. To display the full reference, simply hover over it.

#### Reference record field properties

Through the `fields` property, you can also reference [record fields properties](configure-record-data-source.html#add-field-display-names-and-descriptions)

| Property | Example Reference |
| --- | --- |
| Record field description | `recordType!<Record Type Name>.field.<record field name>.properties.displayName` |
| Record field display name | `recordType!<Record Type Name>.field.<record field name>.properties.description` |

To reference record field properties:

1.  Enter the `recordType!` domain and select your record type.
2.  Enter `.` after `recordType!<Record Type Name>` to autosuggest the record type options.
3.  Select `fields` to access the hierarchical menu of record fields configured in the record type.
4.  Select a record field from the dropdown to append to `fields`
5.  Enter `.` after you've selected a field to autosuggest the record field metadata.
6.  Select `properties` to reference either the record field display name or description.
    -   Select `description` to display the record field's description.
    -   Select `displayName` to display the record field's display name. ![screenshot showing the reference for record field metadata and UIs](images/rfm-reference-properties.png)

**Note:**  Record field properties like display name and description are only available for database-backed records with data sync enabled.

To learn more about best practices for configuring reusable validations for your record fields, see [Build Best Data Fabric](build-best-data-fabric.html#reusable-record-field-validations).

#### Reference record field interfaces

Through the `fields` property, you can also reference [reusable user interfaces](configure-record-data-source.html#add-reusable-validations-and-interfaces-to-record-fields) associated with the record field.

| UI | Example Reference |
| --- | --- |
| Record field UIs to use in read-only interfaces | `recordType!<Record Type Name>.field.<record field name>.ui.input` |
| Record field UIs to use in input interfaces | `recordType!<Record Type Name>.field.<record field name>.ui.readOnly` |

Unlike other record type field references, the references for reusable record field UIs require a rule input of the record type you are referencing. The rule input should directly follow the record type field reference. For example: `recordType!<Record Type Name>.field.<record field name>.ui.readOnly(ri!record)`.

To reference reusable record field UIs:

1.  Add the record type you want to reference as a rule input to the interface.
2.  Enter the `recordType!` domain and select your record type.
3.  Enter `.` after `recordType!<Record Type Name>` to autosuggest the record type options.
4.  Select `fields` to access the hierarchical menu of record fields configured in the record type.
5.  Select a record field from the dropdown to append to `fields`.
6.  Enter `.` after you've selected a field to autosuggest the record field metadata.
7.  Select `ui` to reference either the record field user interface for read-only interfaces or for input interfaces.
    -   Select `input` to call the input user interface for the record field.
    -   Select `readOnly` to call the read-only user interface for the record field. ![screenshot showing the reference for record field metadata and UIs](images/rfm-reference-ui.png)
8.  Call the record type rule input in parentheses directly after the UI reference.
    -   For example: `recordType!Employee.fields.email.ui.input(ri!record)`. ![screenshot showing the rule input with the field reference](images/rfm-reference-rule-input.png)

Here's an example of what a form calling the reusable interfaces for multiple record fields might look like:

[![Screenshot of the expression and preview for a form that uses the reusable record fields UIs](images/record-field-uis-form-ex.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img574)

[![](images/record-field-uis-form-ex.png)](#_)

To learn more about best practices for configuring reusable interfaces for your record fields, see [Build Best Data Fabric](build-best-data-fabric.html#reusable-record-field-interfaces).

**Note:**  Record field reusable UIs are only available for database-backed records with data sync enabled.

### Reference a relationship

The `relationships` property allows you to reference related record fields from any [relationships](record-type-relationships.html) defined on your record type. You can also use this property to index into relationships defined on your related record types so you can select fields from record types that are not directly related to the base record type.

You may reference a record type relationship in a query to return related record data, or in an interface component to display related record data among your record fields (like in a grid or chart).

To reference related record fields from a record type relationship:

1.  Enter the `recordType!` domain and select your record type.
2.  Enter `.` after `recordType!<Record Type Name>` to autosuggest the record type properties.
3.  Select `relationships` to access the hierarchical menu of record type relationships configured in the record type.
4.  Select a relationship from the dropdown to append to the `relationships` property.

    [![images/record_type_order_lozenge_customer_relationship_details.png](images/record_type_order_lozenge_customer_relationship_details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img575)

    [![](images/record_type_order_lozenge_customer_relationship_details.png)](#_)

5.  Enter `.` after the `recordType!<Record Type Name>.relationships.<Relationship Name>` to autosuggest the `fields` and `relationships` property on the related record type:
    -   Select `fields` to select a related record field.
    -   Select `relationships` to index into the relationships available on the related record type.

        For example, the reference below refers to the **accountmanager** field on the related record type Customer.

        [![images/record_type_order_lozenge_customer_relationship_field_details.png](images/record_type_order_lozenge_customer_relationship_field_details.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img576)

        [![](images/record_type_order_lozenge_customer_relationship_field_details.png)](#_)

When you highlight a relationship from the dropdown, the following information is presented:

-   Shortened record type relationship reference.
-   Relationship name.
-   Related record type name.
-   Relationship type.
-   Full record type relationship reference.
-   Properties on the related record type that can be indexed into.

When you highlight a related record field from the dropdown, the following information is presented:

-   Shortened related record field reference.
-   Related record field name.
-   Related record field data type.
-   Full record type relationship reference.

### Reference a record action

The `actions` property allows you to reference any [record list actions](record-actions.html#record-list-actions) or [related actions](record-actions.html#related-actions) defined on your record type. You may use this property to configure a [Record Action](Record_Action_Component.html) component.

To reference a record action:

1.  Enter the `recordType!` domain and select your record type.
2.  Enter `.` after `recordType!<Record Type Name>` to autosuggest the record type properties.
3.  Select `actions` to access the hierarchical menu of actions configured in the record type.
4.  Select a record action from the dropdown to append to the `actions` property.

    For example, the reference below refers to the **Update Case** related record action on the Case record type.

    [![images/record_type_employee_actions_lozenge_update.png](images/record_type_employee_actions_lozenge_update.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img577)

    [![](images/record_type_employee_actions_lozenge_update.png)](#_)

When you highlight a record action from the dropdown, Appian automatically provides additional information about it, including:

-   Full record type action reference.
-   Action description.
-   Record type name.
-   Action name.
-   Process model that supports the record action.
-   Action context.
-   Visibility setting.

When using a record type action reference, Appian will automatically shorten the reference to improve the readability of your expressions. To display the full reference, simply hover over it.

### Reference a user filter

The `filters` property allows you to reference any [user filters](filter-the-record-list.html#user-filters) configured in the record type. You may use this property when adding a user filter on a [read-only grid](Paging_Grid_Component.html).

To reference a user filter:

1.  Enter the `recordType!` domain and select your record type.
2.  Enter `.` after `recordType!<Record Type Name>` to autosuggest the record type properties.
3.  Select `filters` to access the hierarchical menu of user filters configured in the record type.
4.  Select a user filter from the dropdown to append to the `filters` property.

    For example, the reference below refers to the **Status** user filter configured on the Case record type.

    ![record type employee lozenge department filter](images/record_type_employee_lozenge_department_filters_details.png)

When using a record type user filter reference, Appian will automatically shorten the reference to improve the readability of your expressions. To display the full reference, simply hover over it.

### Reference record type properties

The `properties` property allows to you to reference the record title configured for every record in the record type. The record title can be set in the **Views** section of the record type object. You can use this property to show the record title in a field label or just generally in an interface.

To reference the record title for a record type:

1.  Enter the `recordType!` domain and select your record type.
2.  Enter `.` after `recordType!<Record Type Name>` to autosuggest the record type properties.
3.  Select `properties`.
4.  Select `recordTitle`to access the record title.
5.  Pass in the context for the recordTitle using `fv!data`.

## Reference record values in the record type

In some cases, you may need to reference record values within the record type itself. To do so, use the `rv!` domain followed by either `record` or `identifier`.

The `rv!` domain allows you to reference the whole record (using `rv!record`), index into individual fields of a record (such as `rv!record[recordType!Case.fields.description]`), or the record's identifier (with `rv!identifier`).

For example, if you want the record title to display the customer's name, you'd need to reference the `recordType!Customer.fields.name` field so the correct name is listed on each record header.

You can only use this domain within the record type object, and you can use it to configure:

-   A [record view](record-view.html) definition expression.
-   An expression for the [record title](record-view.html#record-title) on a record view.
-   A [feed-style list](record-list.html#feed-style-record-list) expression.
-   A [related record action's context](record-actions.html#configure-record-action-manually).

### Use rv!record

`rv!record` allows you to reference a record or the data within a specific record field.

You can use this for a few different scenarios:

-   To pass a record's values into a record view.
-   To pass a record's values into a related action.
-   To populate a record title with a field value.

For record views, you can use `rv!record` to pass in all of the record data and up to 100 related records for each one-to-many relationship.

For related actions, you can also use `rv!record` to pass record data and related record data. Appian will inspect the process models's [start form](process-model-object.html#process-start-form-tab) and [name field](process-model-object.html#general-tab), and then only query the record fields and related record fields needed to populate them.

In the following example, `rv!record` is used to define the **Record Title** so the appropriate customer name appears on each record header.

[![images/rv-record-example.png](images/rv-record-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img578)

[![](images/rv-record-example.png)](#_)

**Tip:**  For record types that use a process model as the source, you can use `rv!record` with a record type field reference wrapped in bracket notation to point to a process or a specific process model property. [Learn more](Process_and_Report_Data.html#process-model-properties).

### Use rv!identifier

`rv!identifier` lets you pass just a record's ID into a related action. This is a handy variable to use with start forms that contain grids or other components that reference a record type directly and need to be filtered to show a specific record's data.

Let's say you have an interface showing data from an Employee record type in a read-only grid. On this form, the employee's manager can enter performance review information for the employee shown in the grid.

[![images/rv-identifier-interface.png](images/rv-identifier-interface.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img579)

[![](images/rv-identifier-interface.png)](#_)

Your interface doesn't need a separate query or local variable to populate the grid; Appian will run the needed query automatically because the grid is configured to use record data. Since the interface is used as the start form for a related action, you can use `rv!identifier` to pass the ID to the form's `record` rule input and filter using `ri!record` to show only that employee's data.

[![images/rv-identifiers-example.png](images/rv-identifiers-example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img580)

[![](images/rv-identifiers-example.png)](#_)

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
a!gridField(
   data: a!recordData(
      recordType: recordType!AT Employee,
      filters: {
         a!queryFilter(
         field: recordType!AT Employee.fields.id,
         operator: "=",
         value: ri!record[recordType!AT Employee.fields.id]
         )
      }
   )
)
```

## Reference record data in an interface

All record type objects have their own unique data type, which is specific to each record type and automatically generated when the record type is created. The [record data type](Appian_Data_Types.html#record-data-types) allows you to easily access the data associated with a specific record type and use field references to call the record data into your expressions and interfaces.

For interfaces connected to a record type, such as [record views](record-view.html), you can pull in record data by using the record data type as a rule input in your interface.

[![images/records-rule-input.png](images/records-rule-input.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img581)

[![](images/records-rule-input.png)](#_)

Once you configure the rule input, you can reference your record fields in the interface by calling the rule input followed by a record field reference wrapped in brackets.

For example, the expression below uses `ri!record` to call the rule input containing the record data type for the Case record type. Then, the rule input is followed by a record field reference to Case record type to display the case status in a text field.

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
a!textField(
  label: "Customer",
  labelPosition: "JUSTIFIED",
  value: a!defaultValue(
      ri!record[recordType!Case.fields.status],
      "–"
      ),
   readOnly: true
),
```

After you configure the interface, you can add it as a record view and seamlessly pull the record data into the rule input using `rv!record`.

[![images/record-view-call-interface.png](images/record-view-call-interface.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img582)

[![](images/record-view-call-interface.png)](#_)

For examples of how to use record data types as rule inputs in interfaces and views, see [Create a Record View](Create_a_Record_View.html).

## Reference record data in a process model

Record types can be used as variables in a process model. This allows you to use record data in your process model as a [process variable](Process_and_Report_Data.html#process-variables) or an [activity class parameter](Process_and_Report_Data.html#activity-class-parameters).

You can use record types as process variables to manage the full lifecycle of your business data and power a variety of workflows. For example, record data can be used to:

-   Update and sync changes using the [Write Records](Write_Records_Smart_Service.html) and [Delete Records](Delete_Records_Smart_Service.html) smart services.
-   Pass in data from a [start form](process-model-object.html#process-start-form-tab) that uses a record type as a rule input.
-   Sync external data changes using the [Sync Records](Sync_Records_Smart_Service.html) smart service.
-   Examine record data to make decisions in a [gateway node](Gateways.html).
-   Determine who needs to be informed of the process and send them an [email](Send_Email_Smart_Service.html) or [push notification](Send_Push_Notification_Smart_Service.html).

See [Create a new record using a process model](Write_Records_Smart_Service.html#create-a-new-record-using-a-process-model) for an example.

## Use a record type constructor

You can use a record type constructor to create a single record in your expression. The record type constructor allows you to map each value to a particular field reference or relationship reference in the record type.

To create a record type constructor:

1.  In an expression rule, enter a record type reference followed by parentheses.

    For example: `recordType!Case()`

2.  In between the parentheses, enter the record field references followed by a `:` colon and its corresponding data value on the right.

    For example:

    ```
    1
    2
    3
    4
    5
    recordType!Case(
       recordType!Case.fields.id: 1,
       recordType!Case.fields.status: "Open",
       recordType!issueType: "Shipping"
    )
    ```

3.  If you have [record type relationships](record-type-relationships.html), you can create related record data by referencing the record type relationship followed by a `:` colon and the related record type reference on the right. You'll create a nested constructor to define the related record data.

    For example:

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
    recordType!Case(
       recordType!Case.fields.id: 1,
       recordType!Case.fields.status: "Open",
       recordType!Case.fields.issueType: "Shipping",
       recordType!Case.relationships.customer: recordType!Customer(
          recordType!Customer.fields.firstName: "Amy",
          recordType!Customer.fields.lastName: "Smith",
          recordType!Customer.fields.title: "Manager"
       )
    )
    ```

4.  Click **TEST RULE** to view the data output.

    For example:

    ![/record-type-constructor-example-2-output](images/record-type-constructor-example-2-output.png)

## When to use a constant

There are specific use cases that still require you to use a constant to indirectly reference a record type.

For example, you must use a constant or expression rule to reference a record type in an existing process model. See [Working with Data in Process](Working_with_Data_in_Process.html) for more information.

**Note:**  You cannot reference record fields or record actions using a constant.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...