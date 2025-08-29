---
source_url: https://docs.appian.com/suite/help/25.3/Appian_Data_Types.html
original_path: Appian_Data_Types.html
version: "25.3"
title: "Appian Data Types"
page_id: "Appian_Data_Types"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Appian Data Types

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The data (process variables, node inputs, node outputs, rule inputs, data store entities, or constants) used by Appian must conform to certain data types.

Appian data types can be one of the system types or a custom data type built from an XML Schema Definition (XSD), Java object, or imported from a WSDL by the Call Web Service smart service.

See Also: [Conversion Functions](Conversion_Functions.html)

## Any Type

The Any Type is a generic data type only available for use as an expression input for rules and certain expression functions, such as the **if()** function. It accepts data of any data type.

Data is stored in variables of this type by mapping an existing variable, rule, constant, or expression to its value.

## Map Type

The map data type is for associative arrays that store data in key value pairs (e.g. `a!map(key1: "value1", key2: "value2")`.

A map can be returned by a number of functions and objects or created using the function [a!map()](fnc_system_map.html). The map type can also be selected as a variable type in process models.

Inside of a map, each key has an associated value and that value's type is preserved (i.e. the value is not variant-wrapped).

## Primitive system data types

A system data type is a required format for data stored in Appian and includes primitive types and complex types. Each system data type can be used to store either a single value or a list of values.

The following primitive system data types are available.

### Boolean

Values include **True / False**.

-   **1** is accepted as a literal value meaning Yes.
-   **0** is accepted as a literal value meaning No.

The **default** value is null, which appears as `[Empty Value]` in a process variable. The output of an empty boolean value in an expression depends on the function used.

You can populate the value using results from the `true()` or `false()` functions.

The **toboolean()** function can be used to convert `true`/`false` and `0`/`1` values into a Boolean data type value.

See also: [Casting](Casting.html)

### Date

Data in a date format can be created using the [date(year, month, date) function](fnc_date_and_time_date.html). Variables that have a **date** data type do not accept text string input.

The **default** value for a date is \[Empty Value\]. The **minimum** value is 1/1/1000, and **maximum** value is 12/31/9999. Dates values are _not_ adjusted to a different time zone when saved or displayed.

Numerical and text values can be converted to a date value using the **todate()** function.

### Date and Time

Variables that hold a Date and Time data type refer to a point in time that is the same for all users. Date and time variables do not accept text strings as input.

A Date and Time value is saved in Greenwich Mean Time (GMT) then converted to the end-user's time zone (accounting for daylight saving time) when displayed.

GMT is the default time zone used when evaluating expressions that include Date and Time values. You can specify a different time zone in your process model properties. The time zone used for display can be the user's preferred time zone, a globally specified time zone, or the time zone context.

If a function expects a Date and Time value, and you pass it a date, the date is automatically converted to a Date and Time value, using 12:00 am for the time component.

The Date and Time value is only converted to the end user's time zone when it is displayed in the following manner. (Use separate date values and time values if you do not want this conversion to take place.)

-   As a user input
-   When used in a calendar function
-   When cast to a string

See also [Time Zone Context](Time_Zone_Context.html)

Date and Time format data can be created using the **datetime(year, month, date, hour, minute, second)** function.

Numerical and text values can be converted to a Date and Time value using the **todatetime()** function.

See also: [Appian Functions](Appian_Functions.html), [Internationalization Settings](Internationalization_Settings.html)

### Encrypted Text

This type is used to store an Encrypted Text value. An Encrypted Text value can be created in one of the following ways:

-   Entered by a user in a EncryptedTextField component
-   Generated in a plug-in using the `EncryptionService` public Java API

An Encrypted Text value is only decrypted when displayed as the value in an EncryptedTextField or within a plug-in using the `EncryptionService` public API.

A value of type Encrypted Text cannot be cast to any other type and no other type can be cast to it.

An encrypted value is larger than the corresponding plaintext value. Specifically, the value stored in memory or on disk will be the lowest multiple of 16 bytes that is greater than the size of the corresponding plaintext value in bytes.

An Encrypted Text value remains encrypted when stored on disk. The encryption key is unique to each installation.

The data type does not provide any additional access controls. Encrypted text entered by one user may be decrypted and displayed to another user if that other user has permission to view the interface in which the value is displayed.

See also: [Encrypted Text Component](Encrypted_Text_Component.html)

### Number (Decimal)

Holds numeric data stored as double precision floating-point decimal numbers. The default value is **0.0**.

Decimal numbers can be created from text strings using the [todecimal()](fnc_conversion_todecimal.html) function. When converted with this function, numbers less than -10,000,000 and greater than 10,000,000 are represented in scientific notation.

For forms, use one of the following Text Functions to display a decimal number as a default value to avoid rounding.

-   [fixed()](fnc_text_fixed.html)
-   [text()](fnc_text_text.html)

Also for forms, use the [a!currency()](fnc_text_currency.html) function to localize a currency value based on a given ISO currency code.

See also: [Text Functions](Text_Functions.html)

For PVs, if you enter a number that exceeds the maximum number of digits supported by double precision floating-points, the number is truncated down to the maximum number of digits when you save the process model. It does not provide you with a warning message if this occurs.

### Number (Integer)

Integer numbers can range from `-2,147,483,647` to `2,147,483,647` (or from `-231+1` to `231-1` in scientific notation).

The default value is `0` and the null value is `-2\^31`.

Integer numbers can be created from text strings using the **tointeger()** function.

When an arithmetic operation (such as an expression) creates a Number (Integer) value that exceeds the type's limits, the value wraps.

-   `2147483647 + 10` = `-2,147,483,639`
-   `2147483647 + 1` = `-2147483648` - interpreted as null. When looking in the user interface at a process variable changed to this value, an \[Empty Value\] result is displayed.

When values that exceed the Number(Integer) range are passed through a user interface, the excessive value is changed.

-   In most cases, this is changed to a null value.

When a value that exceeds the Number(Integer) range is converted to Number(Integer) from a string in an engine server (such as when you convert text to an integer using the **tointeger()** function), the excessive value is changed to the maximum value.

On task forms, the Number Form Component prevents entry of values outside of the valid range.

-   If an expression is entered for a value and the Number Form Component is not mapped to a node input, any values that exceed 7 digits display in standard formatting with 7 digits of precision. For example, `2147483647` displays as `2147483000`.

For PVs, if you enter a value that exceeds the Number(Integer) range, the integer will be replaced with a null value when you save the model. The Modeler does not provide you with a warning message if this occurs.

### Text

This type is used to store any UTF-8 text string. Numerical values can be entered into the text data type; however, data manipulation cannot be performed on the text data type (except for report aggregations). The default value is \[Empty Value\].

To display text, enclose it within double quotation marks ("").

**Note:**  In a [synced record type](Record_Type_Object.html#synced-and-unsynced-record-types), you may use an [Extra Long Text](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data) data type to store large volumes of text. This data type only exists in the record type, and is not considered a primitive data type.

### Time

Time data can be created using the **time(hour,minute,second)** function. Variables that have a time data type do not accept text string input.

Time values are _not_ adjusted to a different time zone when saved or displayed.

## Complex System Data Types

The following complex system types are made available in the system to support smart services.

These types cannot be edited or deleted. Their XML structure is not guaranteed to remain the same from release to release.

### ApplicationTestResult

The ApplicationTestResult data type is designed to hold test result information for all expression rules in an application. This type also includes execution statistics for an individual application.

See also: [ApplicationTestResult](Parsing_Batch_Test_Results_for_Expression_Rules.html#applicationtestresult) and [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html)

### DataSubset

The DataSubset data type is designed to hold the data returned by a query configured with a paging parameter.

It contains the following fields:

-   **startIndex** - This field holds a single Number(Integer) record.
-   **batchSize** - This field holds a single Number(Integer) record.
-   **sort** - This field holds multiple SortInfo records.
-   **totalCount** - This field holds a single Number(Integer) record.
-   **data** - This field holds multiple Any Type records.
-   **identifiers** - This field holds multiple Any Type records.

### EntityData

The EntityData data type lets you define a target data store entity and the values to store in the target entity as an input value for the **Write to Multiple Data Store Entities Smart Service**.

It contains the following fields:

-   **entity** - This field holds a single Data Store Entity value in which the data to be updated is stored.
-   **data** - This field holds multiple Any Type values to store in the entity.

For example, a value of type EntityData where the entity and data values are stored as process variables could resemble the following:

```
1
a!entityData(entity: pv!ENTITY_OPPORTUNITIES, data: {pv!RadiationOpp, pv!NewBusinessOpp})
```

See also: [Data Store Entity Data Type](#data-store-entity) and [Write to Multiple Data Store Entities Smart Service](Write_to_Multiple_Data_Store_Entities_Smart_Service.html)

### EntityDataIdentifiers

The EntityDataIdentifiers data type lets you define a target data store entity and the values to delete from the target entity as an input value for the **Delete from Data Store Entities Smart Service**.

It contains the following fields:

-   **entity** - This field holds a single Data Store Entity value in which the data to be deleted is stored.
-   **identifiers** - This field holds multiple Any Type values for the primary key values of the data to be deleted.

For example, a value of type EntityDataIdentifiers where the entity and data values are stored as process variables could resemble the following:

```
1
a!entityDataIdentifiers(entity: pv!ENTITY_OPPORTUNITIES, identifiers: {pv!RadiationOpp.id, pv!NewBusinessOpp.id})
```

**Note:**  Make sure to use the primary key value IDs for the data rather than CDT values (for example, `pv!opportunities.id` rather than `pv!opportunities`). Using a CDT value will result in a casting error.

See also: [Data Store Entity Data Type](#data-store-entity) and [Delete from Data Store Entities Smart Service](Delete_from_Data_Store_Entities_Smart_Service.html)

### HealthCheckOutput

The HealthCheckOutput data type is designed to hold the details of the latest [Health Check](health-check.html) run.

It contains the following fields:

-   **startDateTime** - This field of type Date and Time indicates when the latest Health Check run was started.
-   **runStatus** - This field of type Text indicates the status of the latest Health Check run. Possible values include: RUNNING, COMPLETED, FAILED, CANCELED, CANCELING.
-   **zip** - This field of type Document holds the zip file for the latest Health Check run.
-   **report** - This field of type Document holds the report for the latest Health Check run.

See also: [a!latestHealthCheck()](fnc_system_a_latesthealthcheck.html)

### IntegrationError

The IntegrationError data type contains details on errors that occur when calling a web service or other integration via an [Integration Rule](Create_an_Integration.html).

It contains the following fields:

-   **title** - A short summary of the error or the error type.
-   **message** - A description of the error.
-   **detail** - Technical details about the error, including error codes or underlying error messages.

This data type is returned in any integration result if the integration returns an error. The response of the IntegrationError is dependent on information from the web service. For instance, suppose an API request returns a _400 - Bad Request_ error. The integration error may return a result like this:

```
1
2
3
title: 400 - Bad Request
message: The server cannot process the request due to an invalid request syntax
details: The request is missing a query parameter for dateRange to identify the start and end date to use in this query
```

In addition to the default response for an integration, the IntegrationError type can also be returned using the function [a!integrationError()](fnc_system_a_integrationerror.html).

### LabelValue

The LabelValue data type is designed to hold event labels and a nested hierarchy of subevent labels for use by the **Post Event to Feed Smart Service** and the **Post System Event to Feed Smart Service**.

It contains the following fields:

-   **label** - This field holds a single Text record.
-   **value** - This field holds multiple Any Type records.

### LabelValueTable

The LabelValueTable data type references the LabelValue type.

It contains the following field:

-   **LabelValue** - This field holds multiple LabelValue records.

### ListViewItem

Data type used to define the record list view for record types.

It contains the following fields:

-   **image** - This field of type Document or User defines the image to appear in the list view next to each item.Value must be entered as an expression. If left null or empty, the first two letters of the record title display. For image file types, a thumbnail of the document displays. For user values, the user's avatar displays.
-   **title** - This field of type Text defines the name or short text description of the item.
-   **details** - This field of type Text defines a longer text description of the item.
-   **timestamp** - This field of type Date and Time indicate the creation modification timestamp of the item. Valid values include variables for timestamp fields of the record such as creation timestamp, a last modified timestamp, or other timestamp.

See also: [a!listViewItem()](fnc_system_a_listviewitem.html)

### Facet

Data type produced when defining record user filters using expressions. See [FacetOption](#facetoption) for list options and configuration details.

See also: [a!recordFilterList()](fnc_system_a_recordfilterlist.html) and [a!recordFilterDateRange()](fnc_system_a_recordfilterdaterange.html)

### FacetOption

Defines a list of options that a user can select from in a record user filter.

See also: [a!recordFilterListOption()](fnc_system_a_recordfilterlistoption.html)

### ObjectTestResult

The ObjectTestResult data type is designed to hold data for each of the expression rules with test cases.

See also: [ObjectTestResult](Parsing_Batch_Test_Results_for_Expression_Rules.html#objecttestresult) and [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html)

### PagingInfo

The PagingInfo data type is designed to hold the paging configuration passed as a parameter to queries and the Read-Only Grid component.

It's used primarily as an argument for the `todatasubset()` and `a!gridField()` functions.

To create a value of type PagingInfo, use the `a!pagingInfo()` function.

See also: [todatasubset()](fnc_scripting_todatasubset.html) and [a!pagingInfo()](fnc_system_a_paginginfo.html)

### ProcessInfo

The ProcessInfo data type is designed to hold information about a running process. It contains three fields.

-   **pp** - A dictionary containing the properties of the process:
    -   id (null when autoscale is enabled)
    -   instanceUuid (null when autoscale is not enabled)
    -   name
    -   priority
    -   initiator
    -   designer
    -   startTime
    -   endTime
    -   deadline
    -   timeZone
    -   execId (null when autoscale is enabled)
    -   errorCount
-   **pm** - A dictionary containing the properties of the process model at the time the process was started:
    -   id
    -   name
    -   description
    -   version
    -   creator
    -   timeZone
    -   uuid
-   **pv** - A dictionary containing the process variables of the process.

See also: [Process Model Properties](process-model-object.html#process-model-properties), [Process Variables](process-model-object.html#variables-tab), [Start Process smart service](Start_Process_Smart_Service.html#astartprocess).

### Query

The Query data type defines the grouping, aggregation, filtering, paging, and sorting configuration to be applied when querying using `a!queryEntity()`. It also contains several supporting data types for each of these configurations.

**Note:**  Process variables cannot be created as a Query data type.

It contains the following fields:

-   **selection|aggregation** (Selection or Aggregation) - This optional field determines the selections or grouping and aggregations for the query. Only one Selection or Aggregation value can be used. If neither are provided, all fields of the record type are returned.
    -   See also: [a!querySelection()](fnc_system_a_queryselection.html), [a!queryAggregation()](fnc_system_a_queryaggregation.html), [Selection](#selection) and [Aggregation](#aggregation)
-   **logicalExpression|filter|search** (LogicalExpression, QueryFilter, or Search) - This optional field determines the filtration to apply to the query. Similar to the selection|aggregation field, only one value can be used. To include more than one filter, use the LogicalExpression data type with the AND operator. If none of them are provided, no filters will be applied.
    -   See also: [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html), [a!queryFilter()](fnc_system_a_queryfilter.html), [LogicalExpression](#logicalexpression), [QueryFilter](#queryfilter), and [Search](#search)
-   **pagingInfo** - This required field holds a PagingInfo data type value and determines the paging configuration to use.
    -   See also: [a!pagingInfo()](fnc_system_a_paginginfo.html), [PagingInfo](#paginginfo)

See also: [a!query()](fnc_system_a_query.html)

#### Selection

Data type accepted in the **selection|aggregation** field of the Query data type. It can contain one or more Column data types and should be used instead of an Aggregation data type when you just want to select the columns, rather than group them together or apply an aggregation function.

See also: [a!querySelection()](fnc_system_a_queryselection.html)

#### Column

The Column data type is only used in conjunction with the Selection data type.

It contains the following fields:

-   **field** - The field of the data type you want to retrieve. The fields available depend on the source of the data and the data type of that source. Fields that are children of a multiple cannot be selected. If the alias is not provided and the field name collides with another existing alias, the field name will be suffixed with an incremented digit appended to the end when returned in the result.
-   **alias** - (Optional) The short name by which the result of the Column value can be referenced in other areas of the query value. Values are case-sensitive. If no alias is given, the alias for the column will be inferred as the _field_ value.
-   **visible** (Boolean) - (Optional) Determines whether the column should be visible to end users. If false, the data for the column will not be retrieved, but it can be used for sorting. Default value `true`.

See also: [a!queryColumn()](fnc_system_a_querycolumn.html)

#### Aggregation

Data type accepted in the **selection|aggregation** field of the Query data type. It can contain one or more AggregationColumn data types and should be used instead of a Selection data type when you want to perform a function on the selected columns. The following aggregation functions are supported: `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`.

See also: [a!queryAggregation()](fnc_system_a_queryaggregation.html)

#### AggregationColumn

The AggregationColumn data type is only used in conjunction with the Aggregation data type.

It contains the following fields:

-   **field** - The dot-notation to the field of the data, such as a record type, you want to group together and/or aggregate. The fields cannot be complex or multiple values.
-   **alias** - The short name by which the result of the AggregationColumn value can be referenced in other places of the Query value. Values are case-sensitive.
-   **visible** (Boolean) - (Optional) Determines whether the grouping or aggregation column should be visible to end users. If false, the data for the column will not be retrieved, but it can be used for sorting. Default value is `true`.
-   **isGrouping** (Boolean) - (Optional) Determines whether the field should be grouped. Default value is `false`.
-   **aggregationFunction** - The function to use when aggregating the field. Valid values include COUNT, SUM, AVG, MIN, and MAX. This value is required when _isGrouping_ is set to `false`.

See also: [a!queryAggregationColumn()](fnc_system_a_queryaggregationcolumn.html)

#### LogicalExpression

Data type that determines the filtration to apply.

It contains the following fields:

-   **operator** - Determines the operation to apply to the set filters in the _logicalExpression|filter|search_ value. Currently the only valid values are `AND` and `OR`.
-   **logicalExpression|filter|search** (LogicalExpression, QueryFilter, or Search) - Nested LogicalExpression or QueryFilter values that will be operated on based on the _operator_ value.

See also: [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html)

#### QueryFilter

This data type is required to configure the filter options for `a!pickerFieldRecords`, `a!query`, `a!queryRecordType`, `a!recordData`, and `a!recordFilterListOption`.

It contains the following fields:

-   **field** - The dot notation to the field that you want to apply the filter to.
-   **operator** - The operator to apply to the filter. Valid values include `=`, `<>`, `>`, `>=`, `<`, `<=`, `between`, `in`, `not in`, `is null`, `not null`, `starts with`, `not starts with`, `ends with`, `not ends with`, `includes`, `not includes`.
-   **value** - The value to compare to the given field using the given operator. Optional if the _operator_ value is `is null` or `not null`. If the _operator_ value is `between`, the value must be a list of only two elements with the lower bound as the first element and the upper bound as the second.

See also: [a!queryFilter()](fnc_system_a_queryfilter.html), [a!queryRecordType()](fnc_system_queryrecordtype.html), [a!recordData()](fnc_system_recorddata.html)

#### Search

Data type that indicates a user's search term. Used in the **logicalExpression|filter|search** field of a Query or LogicalExpression data type.

It contains a single field:

-   **searchQuery** - The text value to look for.

### Save

The Save data type is designed to be used in conjunction with the `a!save()` function to create [reusable custom components](using_interfaces_in_appian.html#creating-reusable-custom-components).

See also: [a!save()](fnc_evaluation_save.html)

### SortInfo

The SortInfo data type is referenced by the PagingInfo and DataSubset types and determines how data is sorted in a subset.

To create a value of type SortInfo, use the `a!sortInfo()` function.

See also: [a!sortInfo()](fnc_system_a_sortinfo.html), [PagingInfo](#paginginfo), and [DataSubset](#datasubset)

### TestCaseResult

The TestCaseResult data type is designed to hold data for each of the test cases in an object.

See also: [TestCaseResult](Parsing_Batch_Test_Results_for_Expression_Rules.html#testcaseresult) and [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html)

### TestRunResult

The TestRunResult data type is designed to hold test statistics for a test run across all applications being tested.

See also: [TestRunResult](Parsing_Batch_Test_Results_for_Expression_Rules.html#testrunresult) and [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html)

### Writer

The Writer data type is a special data type returned by expression functions that intend to modify data. The modification of data must not happen during expression evaluation, so these functions return a Writer, which is then handled in a special way during the phase of an interface evaluation where saving into variables takes place. The Writer data type has no impact during expression evaluation - no data is written by the function that returns a writer until a variable created with the bind function is saved into an interface.

It contains the following fields:

-   _name_ - The name of the function that returned the writer
-   _parameters_ - The parameters that will be used when the writer executes the data update

See also: [bind()](fnc_evaluation_bind.html) and [Writer Functions](Custom_Function_Plug-ins.html#writer-functions)

## Appian Object Data Types

An Appian Object data type is a required format for objects specific to the Appian system. Similar to primitive and complex system types, each can be used to store either a single value or a list of values.

Appian Object data types are only recognizable within the Appian system.

### Application

Holds an integer ID number that represents an Appian application. It can be used as a rule input to expression rules or interfaces; it can also be used as a constant and referenced from interfaces, web APIs, and process models; and finally used as a process variable from the Process Modeler, or as inputs to the [Start Rule Tests (Applications) - Smart Service](Start_Rule_Tests_Applications_Smart_Service.html). Custom data types cannot use this data type.

### Classification Result

Stores data for each prediction made by the [Classify Documents](Classify_Documents_Smart_Service.html) and [Classify Emails](Classify_Emails_Smart_Service.html) smart services.

Each prediction result is stored in the `Above Threshold`, `Below Threshold`, or `Failed` outputs in these smart services, based on what the user enters as the confidence threshold in the smart service input. `Above Threshold` and `Below Threshold` outputs contain the document ID, class, and confidence score for each prediction. The `Failed` output contains the document ID and error message for each failed prediction.

See also: [AI skill object](ai-skill-object.html)

### Connected System

Holds an integer ID number that represents a connected system. A connected system represents an external system that is integrated with Appian.

See also: [Connected System Objects](Connected_System_Object.html)

### Data Store Entity

Holds an integer ID number that represents a data store entity. Data store entities are named, typed storage units within a data store. They can map to one or more tables in an external database.

It can only be applied to process variables and cannot be used to save form data from a mobile form. Data store entity IDs are not reused if the entity is deleted.

See also: [Data Stores](Data_Stores.html)

### Document

Holds an integer ID number that represents a [document](about-doc-management.html). It can be used to save form data selected from a dropdown, radio button, or checkbox field input on a mobile form.

If the ID number of a document is known, you can convert it to this data type using the **todocument()** function. Document IDs are not reused if the document is deleted.

See also:

-   [Manage documents with record type](manage-docs-with-records.html)
-   [Manage documents with folders](folder-and-document-management.html)

### Document Management Community

Holds an integer number that represents a Document Management Community ID.

If the ID of a Community is known, you can convert it to this data type using the **tocommunity()** function. Community IDs are not reused if the community is deleted.

It cannot be used to save form data from a mobile form.

### Document or Folder

Holds an integer ID number that represents a document or a folder that exists within Document Management. Document or folder IDs are not reused if the object is deleted.

It cannot be used to save form data from a mobile form.

### Email Address

Holds data formatted as an email address. Variables that hold it do not accept text strings as direct input.

Email address data can be created from text strings using the **toemailaddress()** function.

Use the email recipient data type if you are sending email from a process.

It cannot be used to save form data from a mobile form.

### Email Recipient

Email address data must be converted to email recipient data for use by the Send E-Mail smart service.

This is done with the **toemailrecipient()** function, which accepts email address data, user data, or group data.

It cannot be used to save form data from a mobile form.

### Folder

Holds an integer ID number that represents a folder that exists within Document Management. It can be used to save form data selected from a dropdown, radio button, or checkbox field input on a mobile form.

If the ID number of a folder is known, you can convert it to this data type using the **tofolder()** function. Folder IDs are not reused if the folder is deleted.

### Group

Holds an integer ID number that represents a group within the system.

It can be used as a record field type for record types with [data sync](about-data-sync.html) enabled. It can also be used to save form data selected from a dropdown, radio button, or checkbox field input on a mobile form.

**Tip:**  As a best practice, you should select `Group` as the record field type for fields with integer values that represent a group. This will not impact how you reference the record field, and it will allow you to use the fields in your [record-level security](record-level-security.html) configuration.

If the ID of a group is known, you can convert it to this data type using the **togroup()** function. A group ID may be reused if the group is deleted.

See also: [Creating Groups](Creating_Groups.html)

### Knowledge Center

Holds an integer ID number that represents a Knowledge Center in Document Management.

If the ID number of a Knowledge Center is known, you can convert it to this data type using the **toknowledgecenter()** function. Knowledge Center IDs are not reused if it is deleted.

It cannot be used to save form data from a mobile form.

### Portal

Holds the definition of a portal.

You can use the portal object reference domain, `portal!`, to call a portal as a parameter value for functions related to portals, such as [a!urlForPortal()](fnc_scripting_urlforportal.html).

You can't use a constant to reference a portal, instead use the `portal!` domain.

### Portal Page

Holds the definition of a portal page. Portal pages are referenced using `portal!portalName.pages.portalPageName`. See [Referencing portal pages](fnc_scripting_urlforportal.html#referencing-portal-pages) for more information.

### Process

Holds the integer ID number of an instance of a process model.

### Process Model

Holds the integer ID number of a process model. Each time a process model is launched, it runs as a separate process.

A process model ID may be reused if the process model is deleted.

### Record Action

This data type points to an action configured on a record type, which makes it possible to reference the action's properties like the display name, key, description, icon, process model, and visibility configuration. References to this data type are used as the value of the _action_ parameter in the [a!recordActionItem()](Record_Action_Item_Component.html) to display actions as interface components. Record actions are referenced using `recordType!recordTypeName.actions.actionName`.

### Record Data

The data type returned for the `a!recordData()` function. This reference is used to define the record type and filters for a grid or chart.

See [a!recordData()](fnc_system_recorddata.html) for more information.

### Record Field

Holds the definition of a record field. Record field references, like those defined in the _fields_ parameter of [a!queryRecordType()](fnc_system_queryrecordtype.html), use this type to define the data that is returned in a query or displayed in a grid or chart. Record fields are referenced using `recordType!recordTypeName.fields.fieldName`.

### Record Identifier

Holds a record definition used to configure a link to the record in an interface such as a news post.

You can only create constants of this data type. Process variables cannot be created of this type, and custom data types cannot be saved as this type.

To create a value of type Record Identifier, use the `a!toRecordIdentifier` function. To create a value of type Record Identifier for a User record, use the `a!userRecordIdentifier` function.

See also: [a!toRecordIdentifier()](fnc_system_a_torecordidentifier.html) and [a!userRecordIdentifier()](fnc_system_a_userrecordidentifier.html)

Values of type Record Identifier are used as inputs for the Post Event to Feed Smart Service and Post System Event to Feed Smart Service to specify the record tags for an event.

See also: [Post Event to Feed Smart Service](Post_Event_to_Feed_Smart_Service.html) and [Post System Event to Feed Smart Service](Post_System_Event_to_Feed_Smart_Service.html)

### Record Relationship

Holds the definition of a record type relationship. These definitions are used to reference related record types in functions like [a!relatedRecordData](fnc_system_relatedrecorddata.html) to sort, limit, or filter a query based on the value of a record's related data. Record relationships are referenced using `recordType!recordTypeName.relationships.relationshipName`.

### Record Type

Holds the definition of a record type.

You can use the record type object reference domain, `recordType!`, to call a record type as a parameter value for functions related to records, such as `a!queryRecordType()`, `queryRecordByIdentifier()`, and `a!urlForRecord()`.

Although you can still use a constant to reference your record type, the `recordType!` domain eliminates the need to create this additional object.

See [a!urlForRecord()](fnc_scripting_urlforrecord.html), [Constants](Constants.html), [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html), and [a!queryRecordType()](fnc_system_queryrecordtype.html) for more information.

### Report

Holds an integer ID number that represents a report within the system.

Constants of type Report are commonly used as parameter values for [report links](Report_Link_Component.html).

### SafeURI

Holds a URI value and enforces security rules during casting.

When casting from Text, the string will fail verification if it contains any of the following:

-   Any scheme other than `http`, `https`, `ftp`, `tel`, and `mailto`.
-   Invalid URI characters if not already escaped.
-   Empty text string.
-   A `mailto` value that contains an apostrophe.

The string does not change when cast to or from a Text data type.

This data type cannot be used in expressions for events or process reports.

See also: [Safe Link](Web_Link_Component.html): Link type that accepts SafeURI values to create an external link.

### Site

Holds the definition of a site.

You can use the site object reference domain, `site!`, to call a site as a parameter value for functions, such as [a!urlForSite()](fnc_scripting_urlforsite.html).

You can't use a constant to reference a site, instead use the `site!` domain.

### Site Page

Holds the definition of a site page. Site pages are referenced using `site!siteName.pages.sitePageName`. See [Reference a Site Page](reference-sites.html) for more information.

### Task

Holds the integer ID number of a process task.

It can be used to add a link to the Read-Only Grid component that opens a process task in Tempo.

See also: [Read-Only Grid](Paging_Grid_Component.html)

### Task Report

Holds an integer ID number that represents a task report within the system.

Constants of type Task Report are commonly used as parameter values for [report links](Report_Link_Component.html).

### User

Holds an Appian user account ID number.

It can be used as a record field type for record types with [data sync](about-data-sync.html) enabled. It can also be used to save form data selected from a dropdown, radio button, or checkbox field input on a mobile form.

**Tip:**  As a best practice, you should select `User` as the record field type for fields with text values that represent users. This will not impact how you reference the record field, and it will allow you to use the field in your [record-level security](record-level-security.html) configuration.

See also: [User Management](User_Management.html)

### User or Group

Holds an Appian user account or group. It is sometimes referred to as a **People** data type.

It can be used to save form data selected from a dropdown, radio button, or checkbox field input on a mobile form.

### User Filter

Holds the definition of an end-user filter configured for a record type. A user filter can be applied by users viewing the record list or a records-powered grid as a convenient way to limit the list of records. User filters are referenced using `recordType!recordTypeName.filters.filterName`. Learn how to [create user filters](filter-the-record-list.html#user-filters).

## Record Data Types

This data type holds the data definition for all of the fields in a record type (or a subset of fields defined by your record type configuration), as well as the data values for the record.

When you make changes to the record type object, the record data type is also updated and stays current with any configuration changes you make. For example, if you change the name of a record field on a record type, the change is also captured on the record data type.

**Note:**  Renaming record fields is available for record types with [data sync](about-data-sync.html) enabled.

The record data type allows you to easily pass record data to your interfaces, records-powered components, and expression rules.

Learn more about using records in your apps:

-   [Build Reports from Records](report-with-records.html)
-   [Configure Charts Using Records](Chart_Configuration_Using_Records.html)
-   [Configure the Read-Only Grid](read-only-grid-configuration.html)
-   [Referencing record data in an expression](reference-records.html#reference-a-record-type)

## Custom Data Types (CDTs)

Designers can create or import their own custom data types (CDTs). These organize data into a structure that represents a logical grouping of related data, such as Employee and Contract.

For more information about creating and editing data types, see [Custom Data Types (CDTs)](Custom_Data_Types.html)

## Mapping Data

Careful attention must be paid to data types when passing the values from one variable to another (also called mapping data).

The variables used at the node level are called node inputs and node outputs. A node is often referred to as an activity. A node input or output can also be called an Activity Class. These variables can be mapped into process variables, enabling Process Modelers to access the variables in other nodes within the process model and pass the data to other processes and subprocesses. The following properties must be taken into consideration when mapping node inputs/outputs to process variables.

-   Appian does not support a direct mapping of data from one type into another, regardless of whether the data values are compatible. You can use an expression to cast a variable from one type into another and then save the result into a new variable.

-   Appian allows you to map variables that only store single values into variables that can store multiple values using a custom output on the output tab, but not when using results listed on the output tab. Results must match according to data type and whether the data type holds multiple values (its cardinality).

-   Mapping scalars (single values) to vectors (multiple values) is only applicable when mapping process variables. Therefore, vector values cannot be set as default values in a scalar variable. For example, a variable cannot be given the default value {1,6,9,8} if the variable does not support multiple values.

Data types also apply to rule inputs and constants, but data from a node input or a process variable cannot be mapped to a rule input or a constant.

See also: [Casting](Casting.html)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...