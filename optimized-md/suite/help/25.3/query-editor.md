---
source_url: https://docs.appian.com/suite/help/25.3/query-editor.html
original_path: query-editor.html
version: "25.3"
title: "About the Query Editor"
page_id: "query-editor"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# About the Query Editor

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The query editor is an intuitive interface that makes creating queries fast and easy. You can use the query editor to create queries to a record type or a data store entity.

This page describes the features of the query editor for querying records or data store entities, and outlines its [supported functionality and limitations](#prodlink-supported).

For instructions on how to use the query editor, see [Using the Query Editor](using-the-query-editor.html).

## Query records

You can use the query editor to query data from any of your record types, except:

-   Unsynced service-backed record types.
-   Process-backed record types.
-   [Legacy record types](update-a-record-type.html).

### Elements of the query editor

After selecting a record type, the query editor configuration screen appears. Each section of the query editor corresponds to a different part of the generated query.

Depending on the [type of query](about-queries.html#types-of-queries) you're making, the elements on the screen will differ. By default, the query editor allows you to create a selection query.

#### Selection query elements

For selection queries, the query configuration screen is made up of the following sections:

[![images/rqe_expression_vs_editor.png](images/rqe_expression_vs_editor.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img308)

[![](images/rqe_expression_vs_editor.png)](#_)

| Callout Letter | Section Name | Description | Function | Function Parameter |
| --- | --- | --- | --- | --- |
| A | [Fields](#record-type-fields) | Defines the record fields and related record fields to return. | [a!queryRecordType()](fnc_system_queryrecordtype.html) | _fields_ |
| B | Filter | Defines which rows of data to return based on conditions you specify. | [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) | _filters_ |
| C | Sort and Limit | Defines how many rows to return, as well as how to sort those rows. | [a!pagingInfo()](fnc_system_a_paginginfo.html) | _pagingInfo_ |
| D | Properties | Defines the `a!queryRecordType()` [properties](fnc_system_queryrecordtype.html#returns) returned by the query. | – | – |
| E | Preview grid | Previews the results of the query and contains field configuration options in the context menu . | – | – |
| F | [Rule Inputs](#rule-inputs-and-variables) | Defines context-specific values that can be used as inputs in your query. | – | – |

#### Aggregation query elements

Aggregation queries are made up of the same sections as selection queries, however, the fields are configured on the **Aggregate** tab:

[![images/aggregation_rqe_expression.png](images/aggregation_rqe_expression.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img309)

[![](images/aggregation_rqe_expression.png)](#_)

| Call Out Letter | Section Name | Description | Function | Function Parameter |
| --- | --- | --- | --- | --- |
| A | [Aggregate](#aggregate-record-data) | Defines the record fields and related record fields to return. | [a!aggregationFields()](fnc_scripting_a_aggregationfields.html) | _fields_ |
| B | Groupings | Defines the fields to group by when aggregating record data. | [a!grouping()](Grouping_Component.html) | _groupings_ |
| C | Measures | Determines the numerical or calculated values to return with the query. | [a!measure()](Measure_Component.html) | _measures_ |

### Supported fields

In your query, you can select fields from the base record type and any of your related record types. Related record types will be identified based on their relationship name and an icon indicating the type of data relationship:

-   ![One-to-One Icon](images/icon_one_to_one.png) is a one-to-one relationship.
-   ![One-to-Many Icon](images/icon_one_to_many.png) is a one-to-many relationship.
-   ![Many-to-One Icon](images/icon_many_to_one.png) is a many-to-one relationship.

This example shows how to choose both record fields and related record fields for your query.

![Record type query field selection](images/rqe_fields.png)

### Aggregate data

By default, the query editor allows you to configure a selection query. You can use this section to create [groupings](Grouping_Component.html) that collect fields by common values and [measures](Measure_Component.html) that produce a calculated result.

An alias is required for each grouping and measure. The alias is the short name by which the result of the grouping or the measure can be referenced in other parts of the `a!queryRecordType()` expression.

### Rule inputs and variables

Rule inputs and [local variables](Local_Variables.html) let you define context-specific values in your expression rule or interface.

The query editor parses these rule inputs and local variables so you can use them as part of your query. For example, you might use a rule input or local variable to store the value of a filter. When you open the query editor, the local variables and rule inputs are evaluated immediately.

### Filter options

The **Filter** section allows you to determine which records to return based on conditions you specify. Filters can be applied to the entire query or to a measure when building an aggregation.

You can configure filters using a guided mode or expression mode.

#### Guided mode

Selecting **Guided** allows you to easily set up filters using four criteria: **Field**, **Condition**, **Value**, and **Apply Filter**. Multiple filters are combined using the `AND` operator.

![Filtering records using guided mode](images/rqe_filter_guided.png)

**Ignore filters with empty values** is selected by default. This means a filter will not be applied if its _value_ parameter returns an empty value. This is useful when you have multiple filters that are all optional (for example, a grid that can be filtered by multiple selections).

If you don't select **Ignore filters with empty values** and the value for a filter is not supplied, the query will return an error.

##### Field

The **Field** picker contains all the fields in the record type, as well as related record fields.

The **Condition** and **Value** options will change depending on the data type of the selected **Field**. Only the conditions and values that are compatible with the data type of the selected field will display.

##### Condition

The **Condition** list displays all of the operators that can be applied to the selected field. Only operators that are compatible with the data type of the chosen field display.

The following tables explains the behavior of each available operator:

| Operator | Description |
| --- | --- |
| `=` | Equal to |
| `<>` | Not equal to |
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less than or equal |
| `>=` | Greater than or equal |
| `in` | Matches a value in a list of values |
| `not in` | Does not match a value in a list of values |
| `starts with` | Begins with |
| `not starts with` | Does not begin with |
| `ends with` | Ends with |
| `not ends with` | Does not end with |
| `includes` | Includes the specified character(s) |
| `not includes` | Does not include the specified character(s) |
| `is null` | Is null |
| `not null` | Is not null |
| `between` | Is greater than or equal to a minimum value and less than or equal to a maximum value. This operatore requires two values. |
| `search` | Finds records by matching text across [searchable fields](records-smart-search.html). Works with [a!queryRecordType()](fnc_system_queryrecordtype.html). |

**Tip:**  Some databases can store _empty_ text values as either _null_ or as a _zero-length string_ (usually described as ""). When querying against the Cloud Database using the `is null` operator on a text field, the result set will only return results that are explicitly set to _null_. In contrast, other databases may treat these _zero-length strings_ as equivalent to _null_ and thus return results for both _null_ and _empty_ values.

Appian expressions do not distinguish between _null_ and _empty_ regardless of the underlying database. This means that when data is synced from a text field, values that were _null_ or _empty_ are both stored as _null_ in the synced record type. So when you're querying data from a synced record type, the `is null` operator will return values that were both _null_ and _empty_ in the database.

The following table shows which operators can be applied to each data type.

| Data Type | Valid Operators |
| --- | --- |
| Text | `=`, `<>`, `in`, `not in`, `starts with`, `not starts with`, `ends with`, `not ends with`, `includes`, `not includes`, `is null`, `not null`, `search` |
| Integer, Float, Time | `=`, `<>`, `>`, `>=`, `<`, `<=`, `between`, `in`, `not in`, `is null`, `not null` |
| Date, Date and Time | `=`, `<>`, `>`, `>=`, `<`, `<=`, `between`, `in`, `not in`, `is null`, `not null` |
| Boolean | `=`, `<>`, `in`, `not in`, `is null`, `not null` |

**Note:**  For Date and Date and Time data types, `between` is substituted with **Date Range** in the query editor dropdown list. This is just to indicate that you can select from a list of date presets for the filter's value. The parameter in the expression will still display `between`.

##### Value

**Note:**  If the **Condition** column is set to `is null` or `not null`, the **Value** column is disabled.

You can select how you want to pass in the filter value using the **Value** context menu.

![Values Selection](images/query_editor_values.png)

The options in the context menu change based on the data type of the selected field. In most cases filter values can be passed in using the following:

-   Static value, such as text or integer.
-   Rule input or local variable.
-   Expression.
-   Date presets (for Date and Date and Time data types).

Only rule inputs and local variables that are compatible with the data type of the selected field will display. This includes:

-   Rule inputs and local variables that have the same data type as the selected field.
-   Rule inputs and local variables that have Appian data types that can be cast to the same data type as the selected field.

    For example, if you select a field that has a data type of **Text**, you can select rule inputs or variables of the same type or those that can be cast to the **Text** data type.

See the table below for some examples of Appian data types that [can be cast to primitive data types](Casting.html):

| Original Type | Can Cast To |
| --- | --- |
| User | Text |
| List of User | List of Text |
| Document | Integer |
| Folder | Integer |
| Document or Folder | Integer |
| Group | Integer |
| List of Document | List of Integer |
| List of Folder | List of Integer |
| List of Document or Folder | List of Integer |
| List of Group | List of Integer |

##### Apply filter

The **Apply Filter** decides when the filter in that row is applied to the query. Use this option only when you want to apply the filter when a particular condition is met, such as if the user belongs to a specific group.

On the left side of each filter row, there is an icon that indicates whether or not the filter is applied based on the **Apply Filter** column. Each icon represents a different status determined by whether the filter is applied or not applied.

| Visual Icon | Filter Status |
| --- | --- |
| ![Filter Applied](images/icon/eye.png) | Applied |
| ![Filter Not Applied](images/icon/eye-slash.png) | Not Applied |

##### Ordering filters

On the right side of each filter row, you can change the filter order using the up or down arrows.

Because filters are evaluated with the `AND` operator, the filter order can affect the speed of the query. Generally, it's better to order your filters so that those removing the most options come first.

![Filters Section](images/vqe_multiple_filters.png)

#### Expression mode

If you need to create more complex filters, you can start in **Guided** mode, then switch to **Expression** mode to configure them manually.

For example, if you want to use `OR` to combine filters instead of `AND`, create all of your filters in Guided mode, then switch to Expression mode and change `AND` to `OR` for the `a!queryLogicalExpression()` _operator_ parameter.

![Switch from guided mode to expression mode](images/rqe_filter_guided_to_expression.gif)

**Note:**  If you make changes in **Expression** mode that cannot be made in **Guided** mode, you must continue in **Expression** mode since **Guided** mode will be disabled. See [Supported Logic and Parameters](#prodlink-supported) for more information on what is supported in **Guided** mode.

### Sort and limit

The **Sort and Limit** section allows you to determine the order of the records displayed for your query, and constrain the number of records returned.

You can configure filters using a guided mode or expression mode.

#### Guided mode

In **Guided** mode, you can **Sort by** one or more fields in either ascending or descending order.

You can also set a **Data Limit** to restrict the number of records returned by the query.

![Sort and limit a record type query](images/rqe_sort_and_limit.png)

#### Expression mode

If you need more advanced sorting or limiting conditions, you can configure them manually without closing the query editor. This can be useful in certain situations, like when you want to use a rule input for your sorting and limiting.

### Query properties

Queries are often one part of an expression, interface, or process model, and each of these may need different data or metadata from the query's result.

The query editor lets you choose what is returned by the generated query:

-   The queried [data](#data).
-   The [total count](#total-count) of records.
-   [All properties](#all-properties) of `a!queryRecordType()`.

![Records query editor - property selection](images/rqe_choose_properties.png)

#### Data

In many parts of your app, the query data is all you need, so the **Data** option is selected by default. This option appends `.data` to the generated query, so only the specified record data is returned.

Keep this option selected for situations like populating an interface or working with the data in a process model.

For example, in a support application, support engineers will need to update information as a case progresses. To see up-to-date case information in an "Update Case" form, you would need to query the latest record data. For optimal performance, the query can be limited to the data. Other properties, like the total count of case records, are not needed when updating a single case.

#### Total count

The **Total Count** option displays the number of records matching your query regardless of the data limit. If your selected record type has [data sync](about-data-sync.html) enabled, the total count is calculated automatically; there is no additional performance cost to get the total count for a synced record type.

If you are querying a record type that does not have data sync enabled, Appian only calculates the total count if you choose to retrieve it. If you do not need the total count for the query, it is recommended that you do not set this parameter in order to maximize performance.

#### All properties

When you select the **All Properties** option, the data, total count, and additional properties are returned. The additional properties are metadata used when configuring some interface components or to build error handling into a part of your application.

Say you have an interface that displays data from a few different record types. If the query for one of these fails, you may want to hide a section of the interface showing that record data. You could use the `success` or `errorCode` property to check for an issue and then define alternative behavior in the case of a failed query.

For a full list of properties, see [a!queryRecordType()](fnc_system_queryrecordtype.html#returns).

### Query results preview

The **Query Results Preview** section allows you to test and troubleshoot your query directly from the query editor.

The query preview displays 10 records per page, and you can click through the pages to view all records returned by the query.

![Query editor preview grid](images/rqe_test_query.png)

## Query entities

You can use the query editor to query data from a data store entity (DSE), so long as:

-   You create a [constant](Constants.html) referencing the DSE.
-   You have **Viewer** permission to the constant and the DSE.
-   The field names do not contain special characters and are not type encrypted text.

### Elements of the query editor

After selecting the constant referencing your data store entity, the query editor configuration screen appears. Each section of the query editor corresponds to a different part of the generated query.

The query editor is made up of the following sections:

[![images/vqe_expression_vs_editor.png](images/vqe_expression_vs_editor.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img310)

[![](images/vqe_expression_vs_editor.png)](#_)

| Call Out Letter | Section Name | Function Parameter | Function | Description |
| --- | --- | --- | --- | --- |
| A | Paging & Sorting | _pagingInfo_ | [a!pagingInfo()](fnc_system_a_paginginfo.html) | Determines how many rows to return, as well as how to sort those rows. |
| B | Filters | _logicalExpression_ | [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) | Determines which rows of data to return based on conditions you specify. |
| C | Fields | _selection_ | [a!querySelection()](fnc_system_a_queryselection.html) | Determines which fields of the data to return. |
| D | Query Results Preview | _fetchTotalCount_ | [a!queryEntity()](fnc_system_a_queryentity.html) | Previews the results of the query and contains field configuration options in the context menu ![Context Menu Icon](images/query_editor_context_menu_icon.png). **Fetch total row count** in this section determines whether or not to retrieve the total number of rows. |

### Rule inputs and variables

The query editor parses rule inputs and local variables that are present in your expression rule or interface so you can use them as part of your query. For example, you might use a rule input or local variable to store the value of a filter. When you open the query editor, the local variables and rule inputs are evaluated immediately so make sure that you initialize them correctly.

In the expression example shown, the `ri!user` rule input is empty. This will cause a runtime error when the query editor opens.

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
 a!localVariables(
   local!user: user(ri!user),
   a!queryEntity(
     entity: cons!SUPPORT_CASE_DSE,
     query: a!query(
       pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 50)
     ),
     fetchTotalCount: false
   )
 )
```

To resolve this issue, make sure you create and save a test value for `ri!user` before saving and closing the expression.

The following sections describe how to create and save test values for rule inputs and local variables.

#### Creating test values for rule inputs

The **RULE INPUTS** button at the top of the query editor allows you to create rule inputs and change their test values without having to close the query editor. In order to save the rule input test values for future use, you must save the rule or interface. The query editor can change the test values, however it cannot save the test values for use after closing the rule or interface.

#### Evaluating test values for local variables

If your expression contains a local or function variable, a **VARIABLES** button will display next to **RULE INPUTS**. **VARIABLES** allows you to edit the test values of local variables and function variables. These test values are not saved to the rule or interface; they are there as a convenience so you can test your queries with different values.

See [Using the Query Editor](using-the-query-editor.html#create-rule-inputs) for more information on configuring rule inputs and variables.

### Paging and sorting

Paging and sorting sets limits on the amount of rows returned by your query and determines the order of the rows.

#### Basic mode

In **Basic** mode, you can either retrieve all rows, or you can limit the amount of rows returned per page to a certain number. You can also sort on multiple fields in either ascending or descending order.

#### Expression mode

If you need more advanced paging and sorting settings, you can configure them manually without closing the query editor. Simply select **Expression** and an expression editor box prepopulated with the `a!pagingInfo()` function displays. This can be useful in certain situations, such as if you want to use a rule input for your paging and sorting.

**Note:**  If you make changes in **Expression** mode that cannot be translated to **Basic** mode, you will not be able to use **Basic** mode to make further changes. When you open an existing query in the query editor that has information that cannot be translated in **Basic** mode, **Expression** mode will open by default. See [Supported Logic and Parameters](#prodlink-supported) for more information on what is supported in **Basic** mode.

### Filters

Filters allow you to determine which rows of data to return based on conditions you specify.

#### Basic mode

Selecting **Basic** allows you to easily set up filters using four criteria: **Field**, **Condition**, **Value**, and **Apply Filter**. Multiple filters are combined using the `AND` operator.

**Ignore filters with empty values** is selected by default. When selected, a filter will not be applied if its _value_ parameter returns an empty value. This is useful when you have multiple filters that are all optional (for example, a grid that can be filtered by multiple selections). If you don't select **Ignore filters with empty values** and the value for a filter is not supplied, the query will return an error.

##### Field

The **Field** picker contains all the fields in the data store entity, including nested data types. The **Condition** and **Value** options will change depending on the data type of the selected **Field**. Only the conditions and values that are compatible with the data type of the selected field will display.

Field names that include special characters in your data store entity cannot be configured using the query editor and will not display. Likewise, if your data contains nested data types, only fields with one-to-one or many-to-one [relationships](CDT_Relationships.html#relationships) will display. Fields with one-to-many relationships are not displayed in order to avoid run time errors.

##### Condition

The **Condition** list displays all of the operators that can be applied to the selected field. Only operators that are compatible with the data type of the chosen field display.

The following tables explains the behavior of each available operator:

| Operator | Description |
| --- | --- |
| `=` | Equal to |
| `<>` | Not equal to |
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less than or equal |
| `>=` | Greater than or equal |
| `in` | Matches a value in a list of values |
| `not in` | Does not match a value in a list of values |
| `starts with` | Begins with |
| `not starts with` | Does not begin with |
| `ends with` | Ends with |
| `not ends with` | Does not end with |
| `includes` | Includes the specified character(s) |
| `not includes` | Does not include the specified character(s) |
| `is null` | Is null |
| `not null` | Is not null |
| `between` | Is greater than or equal to a minimum value and less than or equal to a maximum value. This operatore requires two values. |
| `search` | Finds records by matching text across [searchable fields](records-smart-search.html). Works with [a!queryRecordType()](fnc_system_queryrecordtype.html). |

**Tip:**  Some databases can store _empty_ text values as either _null_ or as a _zero-length string_ (usually described as ""). When querying against the Cloud Database using the `is null` operator on a text field, the result set will only return results that are explicitly set to _null_. In contrast, other databases may treat these _zero-length strings_ as equivalent to _null_ and thus return results for both _null_ and _empty_ values.

Appian expressions do not distinguish between _null_ and _empty_ regardless of the underlying database. This means that when data is synced from a text field, values that were _null_ or _empty_ are both stored as _null_ in the synced record type. So when you're querying data from a synced record type, the `is null` operator will return values that were both _null_ and _empty_ in the database.

The following table shows which operators can be applied to each data type.

| Data Type | Valid Operators |
| --- | --- |
| Text | `=`, `<>`, `in`, `not in`, `starts with`, `not starts with`, `ends with`, `not ends with`, `includes`, `not includes`, `is null`, `not null`, `search` |
| Integer, Float, Time | `=`, `<>`, `>`, `>=`, `<`, `<=`, `between`, `in`, `not in`, `is null`, `not null` |
| Date, Date and Time | `=`, `<>`, `>`, `>=`, `<`, `<=`, `between`, `in`, `not in`, `is null`, `not null` |
| Boolean | `=`, `<>`, `in`, `not in`, `is null`, `not null` |

Note that for Date and Date and Time data types, `between` is substituted with **Date Range** in the query editor dropdown list. This is just to indicate that you can select from a list of date presets for the filter's value. The parameter in the expression will still display `between`.

##### Value

**Note:**  If the **Condition** column is set to **is null** or **not null**, the value column is disabled.

You can select how you want to pass in the filter value using the **Value** context menu. The options in the context menu change based on the data type of the selected field.

![Values Selection](images/query_editor_values.png)

In most cases filter values can be passed in using the following:

-   Static value, such as text or integer.
-   Rule input or local variable.
-   Expression.
-   Date presets (for Date and Date and Time data types).

If you select **Input/Variable**, existing rule inputs and local variables appear in the **Value** list.

Only rule inputs and local variables that are compatible with the data type of the selected field will display. This includes:

-   Rule inputs and local variables that have the same data type as the selected field.
-   Rule inputs and local variables that have Appian data types that can be cast to the same data type as the selected field.

For example, if you select a field that has a data type of **Text**, you can select rule inputs or variables of the same type or those that can be cast to the **Text** data type. See the table below for some examples of Appian data types that [can be cast to primitive data types](Casting.html).

-   User can be cast to Text
-   List of User can be cast to List of Text
-   Document can be cast to Integer
-   Folder can be cast to Integer
-   Document or Folder can be cast to Integer
-   Group can be cast to Integer
-   List of Document can be cast to List of Integer
-   List of Folder can be cast to List of Integer
-   List of Document or Folder can be cast to List of Integer
-   List of Group can be cast to List of Integer

##### Apply filter

The **Apply Filter** decides when the filter in that row is applied to the query. Use this option only when you want to apply the filter when a particular condition is met, such as if the user belongs to a specific group.

The **Apply Filter** can be configured in an expression editor by clicking on the link in the **Apply Filter** column, shown as either **Always** or **When**. **Always** means the filter is always applied, and **When** means a condition expression exists. Enter an expression that returns a boolean value.

On the left side of each filter row, there is an icon that indicates whether or not the filter is applied based on the **Apply Filter** column. Each icon represents a different status determined by whether the filter is applied or not applied.

| Visual Icon | Filter Status |
| --- | --- |
| ![Filter Applied](images/icon/eye.png) | Applied |
| ![Filter Not Applied](images/icon/eye-slash.png) | Not Applied |

##### Ordering filters

On the right side of each filter row, you can change the filter order using the up or down arrows, or delete the filter using the **x** icon.

![Filters Section](images/vqe_multiple_filters.png)

Because filters are evaluated with the `AND` operator, the filter order can affect the speed of the query. Generally, it is better to order them so that filters that remove the most options come first.

#### Expression mode: filters

If you need to create more complex filters, you can start in **Basic** mode, then switch to **Expression** mode to configure them manually. Simply select **Expression** and an expression editor box will display where you can modify the `a!queryLogicalExpression` function.

For example, if you want to use `OR` to combine filters instead of `AND`, create all of your filters in **Basic** mode, then switch to **Expression** mode and change `AND` to `OR` for the `a!queryLogicalExpression()` _operator_ parameter.

### Fields

The **Fields** section contains a field picker that shows all of the fields in the data store entity. If there is a nested data type, you can expand it by clicking **\>**.

Note that some fields cannot be configured in the query editor. The following fields will not display:

-   For nested data types, fields with one-to-many relationships.
-   Fields with names that include special characters in the data store entity.

You can add or remove the fields that you want your query to return. See [Using the Query Editor](using-the-query-editor.html#select-fields) for more information on how to add or remove fields from your query. The order of the columns in the preview pane changes as you select and remove fields from the list. If you clear a column and re-add it, it will be added as the last column.

**Tip:**  By default, the query editor fetches all fields so you can see a query preview with all available fields. However, for performance reasons, the best practice is to only query the fields that you need.

### Query results preview

The **Query Results Preview** section allows you to test and troubleshoot your query directly from the query editor. The **TEST QUERY** button populates the **Query Results Preview** section with the results of your query.

**Tip:**  The query preview only displays 10 rows at a time. This may differ from the number of rows per page in the Paging & Sorting section as it is only intended to be a preview.

#### Fetch total row count

If **Fetch total row count** is selected, a parameter will be applied to the query that will retrieve the total number of rows that are returned. Note that **Fetch total row count** is applied to the query, not just the preview.

If you have a lot of data, it is recommended to turn off **Fetch total row count** to improve performance. In some cases, the total row count will be retrieved even if it is not selected. For more information on this, see [a!queryEntity()](fnc_system_a_queryentity.html).

Normally, **Fetch total row count** is deselected by default. However, when launching the query editor from a read-only grid in design mode, it is automatically selected and cannot be changed.

When this setting is turned off, the total number of rows at the bottom of the **Query Results Preview** grid displays **1,000,000** to indicate the total is unknown.

#### Organize fields

You can use the context menu ![Context Menu Icon](images/query_editor_context_menu_icon.png) to move filters left or right, edit aliases, and set the visibility for fields. See [Using the Query Editor](using-the-query-editor.html#organize-fields) for more information on how to configure fields.

#### Group data

You can group your data and perform calculations with it by clicking **GROUP DATA**. When your data is grouped, the context menu provides additional options for calculating and grouping it. See [Using the Query Editor](using-the-query-editor.html#group-the-data) for more information on data grouping.

## Supported logic and parameters

The query editor can be opened from any `a!queryRecordType()` or `a!queryEntity()` function that is a part of a rule or interface that does not have any syntax errors. It can also be opened from an empty expression rule or interface.

### Query editor cannot open scenarios

The following scenarios will prevent the query editor from opening:

| Error Category | Specific Condition |
| --- | --- |
| **Function-Specific Errors** | There is an error within the `a!queryRecordType()` function. For example, an invalid parameter is present or a parameter is missing a required keyword. |
|   | There is an error within the `a!queryEntity()` function. For example, the _query_ parameter is missing or there is no `cons!` prefix for the data store entity constant. |
|   | The `a!query()`, `a!querySelection()`, or `a!queryColumn()` function is nested inside another function, such as `if()` or `a!forEach()`. |
| **Unsupported Parameter Values** | The value of the `a!queryRecordType()` function's _fields_ parameter is an expression. |
|   | The _field_ parameter for `a!queryColumn()` is not a text literal. For example, it is a rule input or local variable. |
|   | An expression used for a parameter in `a!queryColumn()` or `a!queryAggregationColumn()` does not evaluate correctly. |
| **Unsupported Configurations** | The _query_, _selection_, or _columns_ parameter is defined by an external rule, such as `rule!myExampleQuery()`. |
|   | All of the field names contain a special character. |
|   | The entity contains one or more encrypted text fields, which are not supported by the query editor. |
| **Insufficient Permission** | You are trying to open the query editor using the keyboard shortcut or toolbar icon, but the cursor is not within an `a!queryEntity()` or `a!queryRecordType()` function. |
|   | You don't have permission to view the record type. |

**Note:**  These scenarios may not cover every situation in which the query editor will not open.

### pagingInfo parameter

If your expression contains a _pagingInfo_ parameter that cannot be translated to **Basic** mode, the **Expression** mode will open by default.

To open in **Basic** mode, the _pagingInfo_ parameter must meet the following requirements:

-   It cannot contain any rule inputs.
-   It cannot contain any additional non-query functions such as `if()`, `where()`, etc.

### logicalExpression parameter

If your expression contains a _logicalExpression_ parameter that cannot be translated to **Basic** mode, the **Expression** mode will open by default.

To open in **Basic** mode, the _logicalExpression_ parameter must meet the following requirements:

-   The filters cannot be combined using the `OR` operator.
-   It cannot contain nested logical expressions.
-   It cannot contain any additional non-query functions such as `if()`, `where()`, etc.

If the `a!queryEntity()` function uses the _filter_ parameter instead of the _logicalExpression_ parameter, the **Filter** section will automatically open in Expression mode.

If you switch to **Basic** mode, the query editor will wrap your `a!queryFilter()` in an `a!queryLogicalExpression()`.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...