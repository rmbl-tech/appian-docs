---
source_url: https://docs.appian.com/suite/help/25.3/Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html
original_path: Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html
version: "25.3"
title: "How to Adapt a Pattern for Your Application"
page_id: "Adapt_a_SAIL_Recipe_to_Work_with_My_Applications"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Adapt a Pattern for Your Application

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Introduction

When creating interfaces in Appian, there are many components and layouts to choose from. With all of these configuration options, it can be hard to know what will be the right fit for your use case. To help you get inspired, there is a wide range of example patterns in the interface palette and [documentation](SAIL_Recipes.html) that represent the best designs for functionality and user experience.

Many patterns rely on interacting with a set of data. For these patterns to work, we include sample data. This page explains how to make patterns work with your data rather than the sample data.

There are two types of sample data found in patterns:

-   **Hard-coded**: Typically seen on patterns with editable form fields. These hard-coded values are stored as local variables.
-   **Queried**: Typically seen on patterns that display charts or read-only grids. These values are brought in with `a!queryRecordType()` or `a!queryEntity()` and stored in local variables.

We will go through how to swap out both hard-coded and queried data using two patterns. We'll convert the hard-coded data pattern to work with a purchase request use case. For the queried data pattern, we will work with the built-in employee use case to aggregate data from different fields than those used in the original pattern.

In these examples, our use cases have a flat custom data type. After we have gone through swapping out example data, we will discuss modifying a pattern to fit a nested custom data type. See [Custom Data Type Design Guidance](cdt_design_guidance.html) for more information on flat and nested CDTs.

## Swap out hard-coded data

In this first example, we will be using the [add, edit, and delete data in an inline editable grid](recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) pattern to swap out hard-coded example data. This data is being used to provide pre-populated fields in an editable grid. Editable grids are frequently used in forms, so we will walk through taking out the hard-coded employee data and converting it to be used in a purchase request interface. This interface can later be used in a process model to save the purchase requests to a data store entity.

![screenshot of the editable grid created by the example pattern](images/SAIL_Recipe_Inline_Editable_Grid.png)

The example employee data is represented in this pattern as a hard-coded array of dictionary data stored in a local variable:

```
1
2
3
4
5
local!employees: {
    { id: 1, firstName: "John" , lastName: "Smith" , department: "Engineering" , title: "Director" , phoneNumber: "555-123-4567" , startDate: today()-360 },
    { id: 2, firstName: "Michael" , lastName: "Johnson" , department: "Finance" , title: "Analyst" , phoneNumber: "555-987-6543" , startDate: today()-360 },
    { id: 3, firstName: "Mary", lastName: "Reed" , department: "Engineering" , title: "Software Engineer" , phoneNumber: "555-456-0123" , startDate: today()-240 },
  },
```

This hard-coded data is similar to what would be found in a [custom data type](Custom_Data_Types.html) (CDT). For our purchase request use case, we'll set up a CDT named `purchaseRequestItems` with the following fields and data types:

-   **id (number (integer))** - The ID of each purchase request.
    -   Make sure to set this as the primary key and check the **Auto-generate the next unique identifier when new records are written to a data store entity** box.
-   **summary (text)** - Describes the purchase request, such as the item name.
-   **quantity (number (integer))** - How many of the requested item.
-   **unitPrice (number (decimal))** - How much each item costs.
-   **department (text)** - Which department needs the requested item.
-   **dueDate (date)** - When this item needs to be received by.

Once we have a CDT, we can start configuring the pattern:

1.  Add a rule input with a CDT array as the data type. We are using a rule input instead of a local variable because the editable grid will be passing data into a process model. ![screenshot of the Edit Interface Input dialog](images/Adapting_SAIL_Recipe_Grid_Rule_Input.png)
2.  Delete`local!employees` and make sure to remove all of the hard-coded data in that local variable . You will get an error message: ![screenshot of an error, which reads, "Could not display interface. Please check interface definition and inputs. Interface definition: Expression evaluation error: Invalid variable(s) found: local!employees".](images/Adapting_SAIL_Recipe_Expression_Error.png)
3.  Replace all references to `local!employees` in the expression with the newly created rule input. Ctrl+H/Cmd+H is an extremely useful [keyboard shortcut](interface-object-keyboard-shortcuts.html) that will do this in one step. ![screenshot of the find and replace behavior in expression mode](images/Adapting_SAIL_Recipe_CTRL_H.png)

After we replace all the references to `local!employee`, we'll see our form again. It's still configured to collect employee information so we'll need to update the individual interface components.

### Making sure the interface components work with your data

Unlike going from a hard-coded local variable to a rule input, the steps required to modify the interface components are going to be unique for each pattern and each use case. Instead of explaining what needs to be done step-by-step, we'll address three high level things that should be changed.

**1\. Modifying the grid columns**

Change the column labels and _sortFields_ to correspond to the fields in your rule input.

![screenshot of an empty editable grid with columns for "first name", "last name", "department", "title", "phone number", and "start date".](images/addEmployeePatternGrid.png)

![screenshot of an empty editable grid with columns for "summary", "quantity", "unit price", "department", and "due date"](images/purchaseRequestGridColumns.png)

**2\. Change the interface components**

The interface components used to populate the employee grid need to change to match the labels and types we used for each field when we set up our CDT.

For example, the _first name_ column in Employee:

```
1
2
3
4
5
6
a!textField(
  label: "first name " & fv!index,
  value: fv!item.firstName,
  saveInto: fv!item.firstName,
  required: true
)
```

changed to the _summary_ column in our updated editable grid:

```
1
2
3
4
5
6
a!textField(
  label: "Summary " & fv!index,
  value: fv!item.summary,
  saveInto: fv!item.summary,
  required: true
)
```

You will need to change the interface components for the **quantity** and **unitPrice** fields to **number(integer)** and **number(decimal)** components.

**3\. Clean up the remaining expression**

For the last part of our update, we will clean up formatting and a few areas of the expression, including:

-   Changing the form layout's label to `Add Items to Purchase Request`.
-   Changing the editable grid's _addRowlink_ parameter label to `Add Item`.
-   Updating the form and submit button's label to `SEND TO REVIEW`.
-   Removing the `a!localVariables()` function since there are no remaining local variables.

These steps will be unique for every pattern configuration. But the high-level steps will be similar for any pattern you are trying to modify.

Try adding a few rows of items and data to test out the grid. Your interface should looks like this:

![screenshot of the final editable grid for the purchase request interface](images/purchaseRequestGridFinal.png)

Now that we have configured the pattern to work with our use case, it can be used in a process model, either through a [start form](Ways_to_Start_a_Process_From_a_Process.html#starting-a-process-from-an-interface) or as a task in a workflow.

## Swap out queried data

When you are developing your own applications, at some point you will probably need to query a record type or a data store entity to retrieve your data. Queries allow you to use and display your data in interfaces with components such as charts and grids or in layouts, like reports and dashboards.

Patterns with queries provide examples of different ways that you can display your data using [a!queryRecordType()](fnc_system_queryrecordtype.html) or [a!queryEntity()](fnc_system_a_queryentity.html). When you are adapting these patterns to use your own record type or data store entity, you will need to replace the pattern's example query with one of your own.

### Changing queries to record types

It's easy to adapt patterns that use the `queryRecordType()` function since you only need to update the [record type references](reference-records.html) to point to a record type in your own environment. To do this, simply replace references to `recordType!Employee`, as well as any field references (like `recordType!Employee.fields.department`), with your own record type references.

Let's use the [Aggregate Data and Conditionally Display in a Chart or Grid](recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) pattern as an example. We can adapt this pattern to calculate the total number of employees that have a certain title and display it in a pie chart and a read-only grid. Though we will change the query aggregation, we will still use the Employee record type that this pattern comes with. If you have not already created the Employee record type, follow the steps in the [Database-Backed Record Type Tutorial](Records_Tutorial.html).

In this pattern, `local!datasubset` calculates the total number of employees per department. To change the query aggregation to calculate the total number of employees with each title:

1.  Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) and copy and and paste the pattern into the **Interface Definition**.
2.  In `a!queryRecordType`, update the `recordType` parameter with the Employee record type in your environment.
3.  In `a!grouping()`, replace `recordType!Employee.fields.department` with `recordType!Employee.fields.title`.
4.  Change the `alias` to `"title"`.
5.  In `a!measure()`, update the `field` parameter to point to the `id` field in the Employee record type in your environment.

The `local!datasubset` will look something like this:

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
local!datasubset: a!queryRecordType(
    recordType: recordType!Employee,
    fields: a!aggregationFields(
      groupings: a!grouping(
        field: recordType!Employee.fields.title,
        alias: "title"
      ),
      measures: a!measure(
        field: recordType!Employee.fields.id,
        function: "COUNT",
        alias: "id_count"
      )
    ),
    pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5000)
  ),
```

**Clean up the remaining expression**

Now that we have set up the query aggregation to group the data by title, it's time update a few areas of the expression.

1.  In `a!pieChartField`, replace `fv!item.department` with `fv!item.title`.
2.  In `a!gridField`, update the `a!gridColumn` that contains the "Department" title with the following values:
    -   `label: "Title"`
    -   `sortField: "title"`
    -   `value: fv!row.title`

That's it! You're done configuring the chart to work with the new query aggregations that we set up. Your chart should look like this:

![screenshot of a pie chart that displays the total number of employees with each title](images/queryRecordType-chart-replace.png) ![screenshot of a read-only grid that displays the total number of employees with each title](images/queryRecordType-grid-replace.png)

### Changing queries to data store entities

To adapt patterns that use a data store entity, you can use the [query editor](query-editor.html) to modify your configuration.

In this example, we'll use the [Update an Entity-Backed Record from its Summary View](recipe-update-an-entity-backed-record-from-its-summary-view.html) pattern to only query certain fields. If you have not already created the **EMPLOYEE\_ENTITY**, follow the steps on [Use the Write to Data Store Entity Smart Service Function on an Interface](recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) to set up your entity and add data.

To get started with your pattern and the query editor:

1.  Click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) and copy and and paste the pattern into the **Interface Definition**.
2.  Place your cursor inside the `a!queryEntity()` expression on line 9.
3.  Click the **LAUNCH QUERY EDITOR** icon.

To change the query:

1.  Under **Query Results Preview**, click next to the `id` field and select **Remove**.
2.  Repeat this step for the fields `phoneNumber` and `startDate`.
3.  Click **TEST QUERY**. Now you can only see the four columns of `firstName`, `lastName`, `department`, and `title`.
4.  Click **GENERATE QUERY**.

**Tip:**  To change the data store entity for your query while in the query editor, click **CHANGE DATA STORE ENTITY** in the bottom left corner of the query editor. Then select your data store entity and click **CONTINUE**.

## Dealing with nested values

In our previous examples, we've gone from one [flat data type](CDT_Relationships.html#flat-relationship) to another. We will now go through what you should do if you if you want to adapt an interface pattern that references a nested CDT value.

For example, let's say that the department and title fields in our employee CDT live in nested CDTs. When we go to query the data our expression would look something like this:

```
1
2
3
4
5
6
7
a!querySelection(columns: {
   a!queryColumn(field: "firstName"),
   a!queryColumn(field: "lastName"),
   a!queryColumn(field: "position.department"),
   a!queryColumn(field: "position.title")
  }
)
```

**Tip:**  It is a best practice to use the _alias_ parameter in `a!queryColumn()` to make referring to nested or aggregated values easier in an interface expression.

When adapting patterns to work with CDTs with nested values, it is important to understand the data model of the CDTs that you are dealing with. For example, a customer CDT might have fields for billing and shipping addresses that are nested CDTs. The nested CDT for addresses would have a many-to-one relationship with the parent customer CDT. This means that one address could be used for a company's billing address, shipping address, or both. That same address could also be used for the billing and shipping addresses of many other companies.

If we wanted to display all the customers' billing and shipping addresses in a read-only grid, we would reference the address fields with a query using `fv!row.ShippingAddress.Address` or `fv!row.BillingAddress.Address`. An example of two grid columns is shown below:

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
     a!gridColumn(
        label: "Shipping Address",
        sortField: "ShippingAddress.Address",
        value: fv!row.ShippingAddress.Address
      ),
      a!gridColumn(
        label: "Billing Address",
        sortField: "BillingAddress.Address",
        value: fv!row.BillingAddress.Address
      )
```

Now you are ready to start adapting patterns to your own unique data. Whether you need to switch out hard coded data, create query aggregations, or configure examples to use nested CDTs, you're prepared to make Appian's many patterns work for you.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...