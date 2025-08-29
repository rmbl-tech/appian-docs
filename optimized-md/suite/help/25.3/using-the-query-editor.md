---
source_url: https://docs.appian.com/suite/help/25.3/using-the-query-editor.html
original_path: using-the-query-editor.html
version: "25.3"
title: "Using the Query Editor"
page_id: "using-the-query-editor"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Using the Query Editor

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Generate a Query to a Record Type

Watch this video to learn how to use the query editor to generate queries to a record type. If you're new building queries in Appian, check out [this Academy Online course](https://academy.appian.com/#/online-courses/07f5ae7e-439b-44b0-b5f3-7034f156dfa5) before getting started.

## Overview

The [query editor](query-editor.html) is an intuitive interface that makes creating queries a lot simpler. This page explains how to use the query editor to create an [a!queryRecordType()](fnc_system_queryrecordtype.html) or [a!queryEntity()](fnc_system_a_queryentity.html) expression.

For examples of queries, see:

-   [Recipes for Querying Records](Query_Recipes.html)
-   [Recipes for Querying Entities](Query_Recipes_entity.html)

## Open the query editor

You can open the query editor using any of the following options:

| To query data from a... | Go to... | Open by... |
| --- | --- | --- |
| Record type | Expression editor of any empty rule or interface | Clicking the query editor icon. |
| Record type | Expression editor of a rule or interface that contains a valid `a!queryRecordType()` function | Placing your cursor in the function and then clicking the query editor icon. |
| Data store entity | Expression editor of an empty rule or interface | Clicking the query editor icon. |
| Data store entity | Expression editor of a rule or interface that contains a valid `a!queryEntity()` function | Placing your cursor in the function and then clicking the query editor icon. |
| Data store entity | Design mode of an interface with a read-only grid | Clicking **CREATE QUERY** or **EDIT QUERY** in the component configuration for the grid. |
| Data store entity | Design mode of an interface with local variables | Hovering over the variable and clicking the query editor icon in the component configuration for local variables. |

## Using the query editor with record types

To create an `a!queryRecordType()` expression using the query editor:

1.  [Select the record type](#select-a-record-type) that you want to query.
2.  [Select the fields](#select-fields) to include in the query, or apply groupings and measures to [aggregate](#prodlink-aggregate-records) your record data.
3.  [Create or update rule inputs](#rule-inputs-records) to pass information into the query.
4.  [Create filters](#prodlink-filter-records) to constrain the results to the conditions you specify.
5.  [Set up sorting and data limits](#prodlink-sort-records) to limit the number of records returned and order the results.
6.  [Test the query](#preview-the-query) to make sure it is returning the required information and [configure the fields](#organize-fields) if necessary.
7.  Click **Generate Query** to create the `a!queryRecordType()` expression.

### Select a record type

To select a record type:

1.  For **Select Data Source**, leave the default selection of **Record Type**.
2.  For **Record Type**, search for the name of your record type and select the one you want to query.

    **Note:**  You cannot select a record type that uses a process model as the source, or an unsynced service-backed record type.

3.  By default, the **Data Preview** displays a preview of the data available in the record type.

    [![images/rqe_previewrecords.png](images/rqe_previewrecords.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img311)

    [![](images/rqe_previewrecords.png)](#_)

4.  Click **Record Type Relationships** to see the relationships available in the record type.

    [![images/rqe_previewrelationships.png](images/rqe_previewrelationships.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img312)

    [![](images/rqe_previewrelationships.png)](#_)

5.  Click **CONTINUE**.

### Select fields

The fields section allows you to select which fields will be returned from your query. By default, the query editor has all fields from the base record type selected, however, you should only select the data you need to ensure you have optimal query performance.

You can [remove certain fields](#remove-fields) or add related record fields from your [record type relationships](record-type-relationships.html). The order of the columns will change as you select and remove fields from the list. If you clear a column and re-add it, it will be added as the last column.

To add fields to the query:

1.  Select the checkbox next to the field name.
2.  Expand any relationships to select related record fields.

    **Note:**  You can select the checkbox next to the record type name or relationship name to add or remove all fields; however, Appian does not recommend adding all fields from each of your record types. You should only select the specific fields you'll need.

[![images/rqe_fields.gif](images/rqe_fields.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img313)

[![](images/rqe_fields.gif)](#_)

### Remove fields

You should only include the fields you need in your query. Including fields that you don't plan to use can cause unnecessary resource use and potentially impact performance.

To remove a field from the query:

1.  Clear the checkbox next to the field name.

### Aggregate data

The **Aggregate** section allows you to apply groupings and measures in your query.

[Groupings](Grouping_Component.html) allow you to group fields by a common value, while [measures](Measure_Component.html) allow you to calculate the values in certain fields.

For example, you may want to show the number of orders that are in a given status like "Open" or "Shipped" using a grouping. If you want to know the total amount of sales for each status, you can add a measure to the aggregation. You can also add a measure filter to limit the results of that calculation.

To aggregate record data:

1.  In the query editor, go to the **AGGREGATE** tab.
2.  From the **Performing Aggregations** pane, click **AGGREGATE RECORDS**.

    [![images/rqe-aggregate-button.png](images/rqe-aggregate-button.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img314)

    [![](images/rqe-aggregate-button.png)](#_)

3.  On the **Aggregate Data?** dialog, click **AGGREGATE**.
4.  To add a grouping, click **Add Grouping**.
    -   For **Field**, select a record field or a related record field to group by.
    -   If grouping a Date, Time, or Date and Time field, select an interval from the dropdown.
    -   For **Alias**, use the auto-generated value, or enter another short name of your choice. This alias is used to reference the results of the grouping when filtering and sorting.
5.  To add measures, click **Add Measure**.
    -   For **Fields**, select a record field or a related record field to aggregate by.
    -   For **Function**, choose the type of calculation to perform on the selected field.
    -   For **Alias**, use the auto-generated value, or enter another short name of your choice. This alias is used to reference the results of the measure when filtering and sorting.
    -   To add a filter, click **Add filter conditions**. See [Create filters](#prodlink-filter-records) for steps to set up a filter for the measure.

For example, the image below uses two groupings and a measure to return the count of employees with a certain title in each department.

[![images/rqe_aggregation_example.png](images/rqe_aggregation_example.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img315)

[![](images/rqe_aggregation_example.png)](#_)

### Create rule inputs

You can reference rule inputs and local variables when you configure a [filter](#prodlink-filter-records) or a [data limit](#prodlink-sort-records) in your query. You can create rule inputs directly from the query editor, but if you need to use local variables, you'll need to configure those before opening the query editor.

To create a rule input from the query editor:

1.  Click **RULE INPUTS**.
2.  Click **Add New Rule Input**.
3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name that is used when referencing the input within the rule definition, such as ri!input, or when passing arguments by keyword. Input names are case insensitive and must be unique within a given rule. |
    | **Type** | The data type of your rule input. |
    | **Array** | Whether the rule input should be a single value or an array of values. |
    | **Expression** | Define the value of your rule input by providing an expression. |
    | **Value** | Enter a static value to define your rule input. If you provided an expression, then this will populate with the results of the expression. |

4.  Click **SAVE**.

Once you configure a rule input, it will appear in a dropdown when you configure a filter or data limit using the **Input/Variable** option.

![Rule input as field value](images/Screen_Shot_2022-04-06_at_2.38.47_PM.png)

### Create filters

The **Filters** section allows you to specify which results to return from your query based on conditions you specify.

The query editor allows you to easily set up filters using four criteria: **Field**, **Condition**, **Value**, and **Apply Filter**. Filters are evaluated in order starting with the first filter in the list. By default, the `AND` operator is used to combine the filters, but you can change this to `OR` in **Expression** mode.

If you want to skip filters that have an empty value, select the **Ignore Filters with Empty Values** checkbox. See [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) page for more information on ignoring filters with empty values.

To create a filter:

1.  In the query editor, go to the **FILTER** tab.
2.  From the **Filtering Records** pane, click **Add filter**.

    [![images/rqe-add-filters.png](images/rqe-add-filters.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img316)

    [![](images/rqe-add-filters.png)](#_)

3.  From **Field**, select the record field or related record field that you want to use to filter the data.
4.  From **Condition**, select the [operator](query-editor.html#condition) to apply to the filter.
5.  Use the context menu next to the **Value** field to select how you want to pass the value into the filter. The options in this menu change based on the data type of the selected field:
    -   Select **Text** to enter a static value.
    -   Select **Input/Variable** to choose a rule input or local variable.
    -   Select **Expression** to write an expression.
    -   Select **Date Preset** to choose from a list date ranges. (Only available for Date and Date and Time data types)
6.  In the **Apply Filter** column, click the condition link (shown as **Always** or **When**) to apply a filter only for specific conditions. By default, the filter is always applied.

    **Tip:**  Use **Apply Filters** in situations where you want to apply the filter only if a particular condition is met. For example, if the user belongs to a specific group.

7.  Use the and arrows to change the order in which the filters are applied.

    **Tip:**  Generally, it's better to order your filters so that those removing the most options come first.

8.  Click **X** to remove a filter.

For example, the image below filters a query so that it only returns cases that have a priority level of "Critical" and were closed in the last month.

[![images/rqe_filters.png](images/rqe_filters.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img317)

[![](images/rqe_filters.png)](#_)

If you need more advanced filters or want to change the evaluation operator, select **Expression** to specify your filters as an expression. For additional information on specifying filters as an expression, see [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) and [a!queryFilter()](fnc_system_a_queryfilter.html).

### Configure sorting and limits

The **Sort and Limit** section allows you to determine the order of the results with sorting and set a limit on the number of records you retrieve from the query.

By default, sorting and limiting is configured using a **Guided** experience. If you need more advanced sorting or data limits, click **Expression** to configure an expression. For additional information on specifying the sorting and data limit as an expression, see [a!pagingInfo()](fnc_system_a_paginginfo.html).

#### Sort data

To configure how the data is sorted:

1.  In the query editor, go to the **SORT AND LIMIT** tab.
2.  From **Sort By**, select a record field or related record field to sort by.
3.  Choose **Ascending Order** or **Descending Order**.
4.  To add another field to sort by, click **Add sorting field below**.

    [![images/rqe_sorting_and_limits.png](images/rqe_sorting_and_limits.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img318)

    [![](images/rqe_sorting_and_limits.png)](#_)

#### Limit data

To configure a data limit:

1.  In the query editor, go to the **SORT AND LIMIT** tab.
2.  In the **Sorting and Limiting Data** section, add a **Data Limit** by entering a number or using the context menu to choose a rule input, variable, or constant.

    **Tip:**  The default limit of the query is 100 records, but you can specify a limit from 1 to 5000. The default _startIndex_ is `1`, and this parameter can be changed in expression mode.

    [![images/rqe-limit-records.png](images/rqe-limit-records.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img319)

    [![](images/rqe-limit-records.png)](#_)

### Select properties

The **Query Results Preview** contains three options to select which [properties](query-editor.html#query-properties) will be returned by the generated query.

Select one of the following properties:

-   [**Data**](query-editor.html#data): The default selection, this returns only the record data specified in the query.
-   [**Total Count**](query-editor.html#total-count): This returns only the total count of records.
-   [**All Properties**](query-editor.html#all-properties): This returns the record data, total count, and additional properties like sort, batch size, identifiers, and error codes.

### Organize fields

After selecting your fields, you can arrange the order of the fields or remove any not needed for the result.

To organize the fields:

1.  From the **Query Results Preview**, click the context menu next to the field name.
2.  Click **Move Right** or **Move Left** to change the field's position.
3.  Click **Remove** to remove the field from the query.

    ![Moving and deleting record query fields](images/organize-record-query-fields.gif)

### Preview the query

You can preview the results of your query by clicking **TEST QUERY**.

[![images/rqe_test_query.png](images/rqe_test_query.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img320)

[![](images/rqe_test_query.png)](#_)

**Tip:**  The preview only shows 10 records at a time. This may differ from the number of records per page in the **Data Limit** section as it is only intended to be a preview.

If the query filters out all data, **Query returned no data** appears in the preview grid.

If the result of the test query is correct, click **GENERATE QUERY** to generate the `a!queryRecordType()` expression.

[![images/rqe_generated_query.png](images/rqe_generated_query.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img321)

[![](images/rqe_generated_query.png)](#_)

## Using the query editor with data store entities

There are six basic steps to creating an `a!queryEntity()` using the query editor:

1.  [Select the data store entity](#select-a-data-store-entity) that you want to query.
2.  [Create or update rule inputs](#create-rule-inputs) and [test values](#modify-variable-test-values) to pass information into the query.
3.  [Set up the paging and sorting](#configure-paging-and-sorting) to limit the amount of rows returned and order them.
4.  [Create filters](#create-filters) to limit the results to the conditions you specify.
5.  [Select the fields](#select-fields) to include in the query or [group the data](#group-the-data).
6.  [Test the query](#preview-the-query) to make sure it is returning the desired information and [configure the fields](#organize-fields) if necessary.

### Select a data store entity

To query a [data store entity](Data_Stores.html), you must first create a [constant](Constants.html) of type **Data Store Entity** that points to it.

Once you create the constant, you can select it in the query editor:

1.  For **Select Data Source**, select **Data Store Entity**.
2.  For **Data Store Entity**, search for the name of the constant referencing your data store entity and select the one you want to query.
3.  By default, the **Data Preview** displays a preview of the data available in the data store entity.

    ![Generated a!queryRecordType function](images/vqe-selected-dse.png)

4.  Click **CONTINUE**.

### Create rule inputs

If you want to use rule inputs for any of the settings in the query editor, you can create new rule inputs or edit existing ones directly from the query editor. You can use the query editor to change the test values of your rule inputs to test and troubleshoot your query.

To create a rule input from the query editor:

1.  Click **RULE INPUTS**.
2.  Click **Add New Rule Input**.
3.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Name** | The name that is used when referencing the input within the rule definition, such as ri!input, or when passing arguments by keyword. Input names are case insensitive and must be unique within a given rule. |
    | **Type** | The data type of your rule input. |
    | **Array** | Whether the rule input should be a single value or an array of values. |
    | **Expression** | Define the value of your rule input by providing an expression. |
    | **Value** | Enter a static value to define your rule input. If you provided an expression, then this will populate with the results of the expression. |

4.  Click **SAVE**.

### Modify variable test values

Interfaces typically have many local variables whose state can change as you interact with them. With the query editor you can configure test values for these local variables and function variables. This gives you the flexibility to test your queries at any point in time.

These test values will only apply the values while in the query editor; after you click **GENERATE QUERY**, any changes you make will be reset.

To update a test value for a variable:

1.  At the top of the query editor, click **VARIABLES**.

    **Note:**  This button only appears when you have existing local variables configured in your expression rule or interface.

2.  Edit the **Test Value** for the local or function variable.

    ![Rule Inputs and Test Values](images/query_editor_variable_test_values.png)

3.  Click **USE DEFAULT TEST VALUES** to reset the variables to their original values.
4.  Click **OK**.

### Configure paging and sorting

The query editor allows you to select the paging and sorting parameters in **Basic** mode using configurable fields. You can set limits on the amount of rows you retrieve and determine the order of the rows with paging and sorting.

To configure the page size, do one of the following:

-   To change the number of rows to retrieve, enter a different number in **Rows Per Page**.
-   To retrieve all data, select **All Rows**.

To configure how the data is sorted:

1.  For **Sort By**, select a field from the picker.
2.  Select either **In Ascending Order** or **In Descending Order**.
3.  To add another field to sort by, click **Add Sort**.

    ![Paging & Sorting Section](images/vqe_paging_and_sorting.png)

If you need more advanced paging and sorting settings, select **Expression** to configure additional settings. For additional information on specifying paging and sorting as an expression, see [a!pagingInfo()](fnc_system_a_paginginfo.html).

**Tip:**  The default page size of the query is 50 rows per page and the default _startIndex_ parameter is 1. You can change the _startIndex_ parameter in expression mode.

### Create filters

Filters allow you to select which results to return from your query based on conditions you specify. The query editor allows you to easily set up filters using four criteria: Field, Condition, Value, and Apply Filter.

By default, the query skips filters that have an empty value. If you don't want to skip these, clear the **Ignore Filters with Empty Values** check box. See [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html) for more information on ignoring filters with empty values.

To create a filter:

1.  Click **Add Filter** to add a new filter row.
2.  From the **Field** picker, select the field that you want to use to filter the data.
3.  From the **Condition** list, select the operator to apply to the filter.
4.  Use the context menu next to the **Value** field to select how you want to pass the value into the filter.
    -   The options in this menu change based on the data type of the field selected. In most cases, you can enter a value directly, choose a rule input or variable, or enter the value using an expression. For date and date and time data types, you can choose from a list of date presets.
5.  To apply conditional filters, click the condition link (shown as either **Always** or **When**) in the **Apply Filter** column. Enter an expression that evaluates to true or false and click **OK**.

    **Note:**  Use Apply Filters in situations where you want to apply the filter only if a particular condition is met. For example, if the user belongs to a specific group.

6.  If you have more than one filter, you can use the up and down arrows to change the order in which the filters are applied. You can also delete a filter by clicking **X**.

See the following image for the location of each step in the user interface.

![Filters Section](images/vqe_filters.png)

If you need more advanced filter options, select **Expression** to create your filters manually. For additional information on specifying filters as an expression, see [a!queryFilter()](fnc_system_a_queryfilter.html).

### Select fields

The **Fields** section allows you to select which fields will be returned from your query.

By default, the query editor fetches all fields so designers can see a query preview with all available fields. For performance reasons, you should configure the query to only return the fields that you need. If you query all of the fields, it may take longer for your query to run.

To change the fields in your query, do one or more of the following:

-   To add a field to the query, click the name of the field in the **Fields** section.
-   To remove a field from the query, click the column's context menu ![Context Menu Icon](images/query_editor_context_menu_icon.png) and select **Remove**.
-   You can also click **ADD ALL** or **REMOVE ALL** to add or remove all fields.

![Adding and Removing Fields Animated](images/query_editor_add_remove_fields_animated.gif)

### Organize fields

The query results preview lets you arrange the order of the fields, define aliases for fields, and configure visibility.

When grouping data, aliases are automatically created for calculated columns. **Edit Alias** allows you to change these generated names, and you can also change the alias for any field using this feature.

**Visibility** defines whether or not to show a column based on if a particular condition is met (for example, if the user viewing the query result belongs to a specific group).

To organize and configure a field, click the column's context menu ![Context Menu Icon](images/query_editor_context_menu_icon.png) and then do one or more of the following:

-   To change the order of the fields, select **Move Right** or **Move Left**.
-   To add or change the field's alias, select **Edit Alias** and update the Alias field.
-   To configure whether or not a field appears, select **Set Visibility** and enter an expression that evaluates to true or false.

    **Note:**  If `false`, the data for the field will not be retrieved from the database. An ![No Visibility Icon](images/query_editor_eye_slash.png) icon will display next to the column header and the data for the column will not display.

![Column Not Visible](images/query_editor_column_not_visible.png)

### Group the data

The query editor allows you to group your data or perform calculations on it to maximize the usefulness of results. You can calculate the sum, average, minimum, maximum, or count, and you can group your data by month, year, or date.

Clicking **GROUP DATA** removes the currently selected fields from the query but keeps the values for the **Paging & Sorting** and **Filters** sections.

To group your data:

1.  Click **GROUP DATA**.
2.  Select the field that you want to group by.
3.  In the **Fields** section, select another field to perform a calculation with. Usually this is a field that contains numbers or dates.
4.  Click the context menu ![Context Menu Icon](images/query_editor_context_menu_icon.png) to select a calculation to apply to the columns.
    -   If you select a column with a Number (Integer) or Number (Decimal) data type, you can choose to calculate sum, average, min, max, or count.

        ![Number Calculation Menu](images/query_editor_number_calculation_menu.png)

    -   If you select a column with a Date or Date and Time data type, you can choose to show the count or group by month or year.

        ![Date Grouping Menu](images/query_editor_group_by_date.png)

    -   If you select a column with a Text data type, you can choose to show the count of each unique value.

        ![Count Menu](images/query_editor_count.png)

When your data is grouped, you can select a field more than once. For example, you can add a field with a Date data type twice to group by year then month.

![Multiple Date Fields](images/query_editor_date_fields.png)

The fields display an icon that indicates which fields are used for grouping, as well as which calculations are used in numeric fields.

After the data is grouped, **REMOVE GROUPING** appears next to **TEST QUERY**. Clicking this button will remove any grouped or calculated fields. All filters will remain.

### Preview the query

You can preview the results of your query by clicking **TEST QUERY**. If **Fetch total row count** is selected, a parameter will be applied to the query that retrieves the total number of rows that are returned by the query.

**Tip:**  If selected, **Fetch total row count** is applied to the generated query, not just the preview. If you have a lot of data, it is recommended to turn off **Fetch total row count** to improve performance.

The query preview only shows 10 rows at a time. This may differ from the number of rows per page in the Paging & Sorting section as it is only intended to be a preview.

If the query filters out all data, **Query returned no data** appears in the preview grid.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...