---
source_url: https://docs.appian.com/suite/help/25.3/custom-record-fields.html
original_path: custom-record-fields.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create Custom Record Fields

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use Custom Record Fields to Get Insights

This video from [Academy Online](https://academy.appian.com/#/online-courses/5b2907c2-2c77-4431-a91d-a5b80942b522) walks you through creating a custom record field to extract greater insights from the data you already have.

This page explains how to create custom record fields.

## Overview

Record types makes it easy to leverage your enterprise data seamlessly throughout your applications, but there are times when your data isn’t enough on its own. Instead, you may need to aggregate, extract, or change your existing data to show specific insights to your users.

When you enable [data sync](about-data-sync.html) on your record types, you can transform and manipulate your existing record data into the insights you need using [_custom record fields_](#about-custom-record-fields).

Since custom record fields are created directly on your record type, you can reference them as quickly and easily as any other record field. Use your custom record fields to build charts, to sort and display data in grids, or as filter options in a user filter.

## About custom record fields

Custom record fields allow you to calculate, simplify, or transform your existing data into new fields in the record type. This allows you to fill in gaps within your data, display new insights, or even just clean up your data, so you can build reports and queries with the data you need.

You can create custom record fields on any record type with [data sync](about-data-sync.html) enabled. We have several templates to get you started creating your custom record fields—some are guided, and others provide a prepopulated expression with the functions you need.

You’ll choose which template to configure your custom record field based on your use case and when you want the field to be evaluated.

Custom record fields can be evaluated at two different times:

-   **[At sync time](#prodlink-sync-time-evaluations)**: The custom record field values are calculated whenever a sync occurs in the record type.

-   **[In real time](#prodlink-real-time-evaluations)**: The custom record field values are calculated whenever the field is actively referenced in your applications.

All custom record field templates are preset to be evaluated at either sync time or in real time. In the following sections, templates that evaluate at sync time are denoted with a icon, while templates that evaluate in real time are denoted with a .

If your business needs are more complex or you need more flexibility, you can also [write your own custom record field expression](#write-your-own-expression). When you write your own expression, you can choose when the field values are evaluated.

**Note:**  Record types with [data sync](about-data-sync.html) enabled can only have 100 fields, and no more than 40 of them can be custom record fields. For example, if your record type has 98 fields, you can only create two custom record fields.

### Sync-time evaluations

When a custom record field evaluates at sync time, the field values are only calculated whenever a sync occurs in the record type. For example, when a scheduled sync occurs or when you use the **Sync Records** smart service to sync specific data, the custom record field values will be reevaluated.

Sync-time evaluations are useful when your field values are not time sensitive and you only need to use fields from your base record type. For example, you could create a custom record field that evaluates at sync-time to concatenate two fields on your record type, like `firstName` and `lastName`.

Sync-time evaluations also allow you to leverage [supported functions](#prodlink-supported-functions), like `if()`, `a!match()`, or `a!localVariables()` so you can create conditional logic or more complex expressions. For example, you could create a custom record field that evaluates at sync-time to return the value `High` when a case has an urgency of `1` and a `supportLevel` of 3. Otherwise, return the value `Low`.

See any template that evaluates at sync-time, or any [sync-time evaluation recipes](#sync-time-evaluation-recipes) for more examples.

### Real-time evaluations

When a custom record field evaluates in real time, the field values are calculated whenever the field is actively referenced in your applications. For example, when an end user views a bar chart or grid that contains the custom record field.

Since real-time evaluations occur more frequently, they are useful when you need to reference relative dates, like today’s date and time, or when you need to reference related record fields.

For example, you could create a custom record field that evaluates in real time in order to subtract the `createdOn` date from today’s date. With more frequent evaluations, you can be confident that your calculation is always referencing the most current date.

Real-time evaluations leverage a special set of functions called **custom field** functions. These functions allow you to reference record fields, related record fields, and other custom record fields. Within each custom field function, you can leverage other supported functions like `today()` and `now()` in your calculations.

You must use at least one custom field function when creating a custom record field that evaluates in real time. The available custom field functions include:

-   [a!customFieldConcat()](/suite/help/25.3/fnc_crf_customfieldconcat.html)

-   [a!customFieldCondition()](/suite/help/25.3/fnc_crf_customfieldcondition.html)

-   [a!customFieldDateDiff()](/suite/help/25.3/fnc_crf_customfielddatediff.html)

-   [a!customFieldDefaultValue()](/suite/help/25.3/fnc_crf_customfielddefaultvalue.html)

-   [a!customFieldDivide()](/suite/help/25.3/fnc_crf_customfielddivide.html)

-   [a!customFieldLogicalExpression()](/suite/help/25.3/fnc_crf_customfieldlogicalexpression.html)

-   [a!customFieldMatch()](/suite/help/25.3/fnc_crf_customfieldmatch.html)

-   [a!customFieldMultiply()](/suite/help/25.3/fnc_crf_customfieldmultiply.html)

-   [a!customFieldSubtract()](/suite/help/25.3/fnc_crf_customfieldsubtract.html)

-   [a!customFieldSum()](/suite/help/25.3/fnc_crf_customfieldsum.html)

See any template that evaluates in real time, or the [real-time evaluation recipes](#real-time-evaluation-recipes) below for more examples.

## Aggregate Related Record Fields _(Real-time evaluation)_

The **Aggregate Related Record Fields** template allows you to aggregate and filter a related record field from a [one-to-many relationship](record-type-relationships.html). You can use this template when your record type has a one-to-many relationship.

For example, let's say you have a Customer record type that has a one-to-many relationship with the Case record type, and you want to create a report that shows the number of open cases associated with each customer.

On the Customer record type, you can use this template to create a custom record field that gets the count of `Ids` from the Case record type, and filters on the `status` field so you only count cases with a status of "Open".

Once you create the field, the aggregation will automatically be grouped by the common field shared between the two record types. In this example, that would be the customer `Id`.

### Use this template

To use this template:

1.  In the record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Aggregate Related Record Fields**.
4.  Click **NEXT**.
5.  For **Field**, select the related record field you want to aggregate.
6.  For **Aggregation Function**, choose how you want to aggregate the field.
7.  To filter the aggregation, enable **Filter related record values?**
8.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Field** | The field to filter on. |
    | **Operator** | The operator to apply to the selected field. |
    | **Value** | The value to compare to the given field using the given operator. Use the context menu () to specify how you pass in the value: using a static value, a [date preset](#prodlink-date-presets), or a constant. |

    **Note:**  If there is a one-to-many relationship in the path between where you are aggregating data and where you are filtering, then you will observe [“at least one” filter behavior](fnc_system_a_queryfilter.html#prodlink-at-least-one).

9.  Click **\+ Add Condition** to add additional filter configurations. Choose how multiple filters are evaluated by selecting one of the following operators:

    -   `"OR"`
    -   `"AND"`
    -   `"AND ALL"`

    **Tip:**  Appian recommends using the `"AND ALL"` operator whenever you filter by multiple fields from the same one-to-many relationship. [Learn more about this operator](fnc_system_a_querylogicalexpression.html#prodlink-operators).

10.  Click **TEST** to preview your custom record field values using your record data.
11.  Click **NEXT**.
12.  Configure the following properties:

     | Property | Description |
     | --- | --- |
     | **Record Field Name** | The name of the custom record field. This is how you’ll reference the field in your applications. |
     | **Display Name** | (Optional) The name of the field to show in Process HQ. |
     | **Description** | (Optional) A description of the field to show in Process HQ. |

13.  Click **CREATE**.

## Calculate Duration _(Real-time evaluation)_

The **Calculate Duration** template allows you to use [record events](record-events.html) to calculate how long it takes to complete your business processes. You can use this template in record types where you [configured record events](record-events-configuration.html).

**Tip:**  When you configure record events, Appian will create these fields for you automatically.

For example, let's say you have a Support Case record type with record events configured, and you want to know how long it takes to close each case. You can use this template to generate the following custom record fields in the Support Case record type. These fields use data from the Support Case Event History record type to calculate how long each case is taking.

| Field Name | Description |
| --- | --- |
| `minEventTimestamp` | The timestamp for the first event related to the record. |
| `maxEventTimestamp` | The timestamp for the most recent event related to the record. |
| `duration` | The difference between `minEventTimestamp` and `maxEventTimestamp`, in days. |

### Use this template

To use this template:

1.  In the record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Calculate Duration**.
4.  Click **NEXT**.
5.  For **Field**, the **Timestamp Field** from your record events configuration is selected by default. If you need to select a different field, you will need to [update your record events configuration](record-events-configuration.html#edit-the-record-events-configuration).
6.  Click **TEST** to preview your custom record field values using your record data.
7.  Click **NEXT**.
8.  Configure the following properties for each field:

    | Property | Description |
    | --- | --- |
    | **Record Field Name** | The name of the custom record field. This is how you’ll reference the field in your applications. |
    | **Display Name** | (Optional) The name of the field to show in Process HQ. Enter a specific name that's easy to recognize, like `Suppport Case Duration`. |
    | **Description** | (Optional) A description of the field to show in Process HQ. |

9.  Click **CREATE**.

### Filter by dates

When you filter the aggregation by a date or date and time field, you can select a **Date Preset** as your filter value.

These presets will dynamically filter your data based on the selected time frame. For example, if you select the date preset **Today**, the filter value will update each day to reflect the correct date. When you use a Date Preset, all date and time values are returned in Greenwich Mean Time (GMT).

See [Date Presets for Filters](date-presets.html) to see the underlying expression associated with each preset.

## Extract Partial Dates _(Sync-time evaluation)_

The **Extract Partial Dates** template allows you to return a particular value from a Date or Date and Time record field.

For example, let's say you have a Date and Time field called `dateSubmitted`, but you only need to know the date a ticket was submitted, not the time. You could use this template to create a custom record field called `shortDateSubmitted` to extract the date from the `dateSubmitted` field and set the new field to type Date.

### Use this template

To use this template:

1.  In the record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Extract Partial Dates**.
4.  Click **NEXT**.
5.  For **Field**, select the Date or Date and Time record field you want to extract the date from.
6.  For **Unit of Time**, select which part of the date you want to extract.
7.  Click **NEXT**.
8.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Record Field Name** | The name of the custom record field. This is how you’ll reference the field in your applications. |
    | **Record Field Type** | The data type of the custom record field. |
    | **Unique Values** | Ensures that all field values are different. When enabled, you can use this field as a [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration. |
    | **Error Value** | The value to display if there is an error evaluating a custom record field value. |
    | **Display Name** | (Optional) The name of the field to show in Process HQ. |
    | **Description** | (Optional) A description of the field to show in Process HQ. |

9.  Click **CREATE**.

## Groups Based on a Date Difference _(Sync-time evaluation)_

The **Groups Based on a Date Difference** template allows you to calculate the difference between two dates and organize the difference into groups. This template requires two record fields of type Date or Date and Time.

**Tip:**  Do you only want to calculate the difference between two dates? Then create a real-time custom record field using the [a!customFieldDateDiff()](fnc_crf_customfielddatediff.html) function instead.

For example, let’s say you have the record fields `dateAssigned` and `dateClosed` and you want to know whether a case was closed on time or overdue based on the service-level agreement (SLA).

Using this template, you can create a custom record field that calculates the number of days between the ticket's assigned date and closed date. Then, you can organize the differences into groups:

-   The **On Time** group includes values less than or equal to 5 days.
-   The **Overdue** group includes all remaining values.

But what if the ticket hasn't been closed? This would make the `dateClosed` null. To handle a null date, you can specify a **Default Value** to appear on the custom record field. In this example, we could set the **Default Value** to **In Progress**.

### Use this template

To use this template:

1.  In the record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Groups Based on a Date Difference**.
4.  Click **NEXT**.
5.  For **Step 1: Calculate Difference**, configure the following:

    | Property | Description |
    | --- | --- |
    | **Start Date** | The starting Date or Date and Time record field to subtract. |
    | **End Date** | The ending Date or Date and Time record field to subtract. |
    | **Interval** | The unit of time to calculate the difference. |

6.  For **Step 2: Create Groups**, configure the following:

    | Property | Description |
    | --- | --- |
    | **Number of Groups** | The number of groups you want to categorize. You must have at least two groups. |
    | **Custom Field Value** | The name of the field value to return based on the difference. The final **Custom Field Value** will display for any values that are not included in the other groups. |

7.  For **Step 3: Handle Null Start Date or End Date Values**, enter a **Default Value** to display if the **Start Date** or **End Date** is null. You can only enter a static text value.
8.  Click **NEXT**.
9.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Record Field Name** | The name of the custom record field. This is how you’ll reference the field in your applications. |
    | **Record Field Type** | The data type of the custom record field. |
    | **Unique Values** | Ensures that all field values are different. When enabled, you can use this field as a [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration. |
    | **Error Value** | The value to display if there is an error evaluating a custom record field value. |
    | **Display Name** | (Optional) The name of the field to show in Process HQ. |
    | **Description** | (Optional) A description of the field to show in Process HQ. |

10.  Click **CREATE**.

## Groups Based on a Range _(Sync-time evaluation)_

The **Groups Based on a Range** template uses a range to organize your numerical data into groups. This template only supports record fields of type Number (Integer) or Number (Decimal).

For example, let's say you have a record field called `price`, and you want to create a chart that shows the distribution of prices in your orders.

Using this template, you can create a new custom record field called `priceGroup` so all prices that are less than or equal to $10 display as **Low**, prices greater than $10 and less than or equal to $30 display as **Medium**, and all other prices display as **High**.

### Use this template

To use this template:

1.  In the record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Groups Based on a Range**.
4.  Click **NEXT**.
5.  For **Create Groups From**, select a Number (Integer) or Number (Decimal) record field to base the range off of.
6.  For **Number of Groups**, select the number of groups you want to categorize. You must have at least two groups.
7.  For **Custom Field Value**, enter the name of the field value to return based on the specified range. The final **Custom Field Value** will display for any values that are not included in the other groups.
8.  Click **NEXT**.
9.  Configure the following properties:

    | Property | Description |
    | --- | --- |
    | **Record Field Name** | The name of the custom record field. This is how you’ll reference the field in your applications. |
    | **Record Field Type** | The data type of the custom record field. |
    | **Unique Values** | Ensures that all field values are different. When enabled, you can use this field as a [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration. |
    | **Error Value** | The value to display if there is an error evaluating a custom record field value. |
    | **Display Name** | (Optional) The name of the field to show in Process HQ. |
    | **Description** | (Optional) A description of the field to show in Process HQ. |

10.  Click **CREATE**.

## Groups Based on Text Values _(Sync-time evaluation)_

The **Groups Based on Text Values** template allows you to organize the text values from a record field into groups. This template only supports record fields of type Text.

For example, say you have a record field called `title` that contains all job titles in your organization, and you want to create a pie chart that displays the number of employees per functional area.

Using this template, you could combine all titles that contain the keyword "Software" or "Quality" into a group called **Engineers**. This means any employees with titles like Associate Software Engineer, Quality Engineer II, or Lead Software Engineer will appear as **Engineering** in the custom record field.

You could create a group for each functional area using this same logic, and include any remaining titles in the **Other** group.

### Use this template

To use this template:

1.  In the record type, go to **Data Model**.
2.  Click **NEW CUSTOM RECORD FIELD**.
3.  From **SELECT A TEMPLATE**, choose **Groups Based on Text Values**.
4.  Click **NEXT**.
5.  For **Create Groups From**, choose the Text record field you want to create groups from.
6.  For **Number of Groups**, select the number of groups you want to categorize. You must have at least two groups.
7.  For **Custom Field Value**, enter the name of the field value to return based on the specified Record Field Values. The final **Custom Field Value** will display for any values that are not included in the other groups.
8.  For **Operator**, choose an operator:
    -   Use the **Contains** operator to include any record field values that contain a partial match to the specified keyword or keywords.
    -   Use the **In** operator to specify the exact record field values to include in the group.
9.  For **Record Field Value**, enter a keyword or record field value to determine which values are included in the group.
10.  Click **NEXT**.
11.  Configure the following properties:

| Property | Description |
| --- | --- |
| **Record Field Name** | The name of the custom record field. This is how you’ll reference the field in your applications. |
| **Record Field Type** | The data type of the custom record field. |
| **Unique Values** | Ensures that all field values are different. When enabled, you can use this field as a [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration. |
| **Error Value** | The value to display if there is an error evaluating a custom record field value. |
| **Display Name** | (Optional) The name of the field to show in Process HQ. |
| **Description** | (Optional) A description of the field to show in Process HQ. |

1.  Click **CREATE**.

## Write Your Own Expression

If your business needs are more complex and cannot be satisfied by a template, you can write your own custom record field expression.

When you write your own expression, you’ll choose whether the field evaluates at sync-time or in real-time. Depending on your selection, the functions and fields you can use to create your custom record field will vary.

The table below outlines the key configuration differences between sync-time and real-time field evaluations:

|   | [Sync-time evaluations](#prodlink-sync-time-evaluations) | [Real-time evaluations](#prodlink-real-time-evaluations) |
| --- | --- | --- |
| Supported fields | Record fields and existing custom record fields that evaluate at sync-time | Record fields, [related record fields](record-type-relationships.html), and any existing custom record fields |
| Supported functions | Use one or more [supported functions](#prodlink-supported-functions) | Use one or more **custom field** functions |
| Supported objects | None | [Constants](Constants.html) |
| Reference record fields | Use `rv!record` followed by a record type field reference in brackets

For example, `rv!record[recordType!Case.fields.name]` | Use a record type field reference

For example, `recordType!Case.fields.name` |
| Unique values | Enable **Unique Values** to ensure all field values are different. You can use custom record fields with unique values as the [common field](record-type-relationships.html#common-field-values) on the one-side of a relationship configuration. | Cannot enable unique values. |
| [Field-level security](field-level-security.html) | If you reference a field that a user doesn't have access to in the custom record field configuration, the custom record field values will still display to that user. | If you reference a field that a user doesn't have access to in the custom record field configuration, the custom record field will return null values in your applications and be hidden in [data fabric insights](allow-users-to-build-reports.html). |

See the recipes below for examples configuring custom record fields that evaluate at sync-time or in real-time.

### Sync-time evaluation recipes

The following recipes illustrate how to create a custom record field that evaluates at sync-time. Each of these recipes leverage one or more record fields and supported functions.

**Tip:**  Want to use related record fields in your expression? Check out the [real-time evaluation recipes](#real-time-evaluation-recipes) instead.

#### Concatenate values from the base record type

**Goal**: Create a new custom record field that concatenates record fields and displays them as one value.

In this example, we will use the `concat()` function to concatenate the record fields `street`, `city`, `state`, and `zipCode` from the Employee record type into a new custom record field called `address`:

```
1
2
3
4
concat(rv!record[recordType!Employee.fields.street], ", ",
rv!record[recordType!Employee.fields.city],  ",  ",
rv!record[recordType!Employee.fields.state], " ",
rv!record[recordType!Employee.fields.zip])
```

**Tip:**  If you want to concatenate record fields and related record fields, create a custom record field that evaluates in real time and use the `a!customFieldConcat()` function. [See an example below](#concatenate-values-from-related-record-types).

#### Replace null values with a static value

**Goal**: Create a new custom record field that displays the null values in a record field as "N/A".

In this example, we'll create a new custom record field called `cleanReference` that displays any null values from the `reference` record field as "N/A". If the value is not null, then the record value will display.

```
1
a!defaultValue(rv!record[recordType!Applicant.fields.reference], "N/A")
```

**Tip:**  If you want to use related record fields or relative dates in your expression, create a custom record field that evaluates in real time and use the `a!customFieldDefaultValue()` function. [See an example below](#replace-null-values-with-related-record-field-values).

#### Use conditional logic with two record fields

**Goal**: Create a new custom record field with values based on the conditions of two record fields.

In this example, we'll use the record fields `urgency` and `supportLevel` to determine a ticket's priority level. Based on the value of each field, the new custom record field will display values of "High", "Medium", or "Low".

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
a!match(
  whenTrue:and(
	    rv!record[recordType!Case.fields.urgency] = 1,
	    rv!record[recordType!Case.fields.supportLevel] = 3
	    ),
  then: "High",
  whenTrue: and(
	      rv!record[recordType!Case.fields.urgency] = 2,
	      rv!record[recordType!Case.fields.supportLevel] = 2
	    ),
  then: "Medium",
  default: "Low"
)
```

#### Add, subtract, multiply, and divide record fields

**Goal**: Create a new custom record field using [arithmetic operators](parts-of-an-expression.html#arithmetic-operators) to add, subtract, multiply, or divide record fields and displays the resulting values.

In this example, we'll use the record fields `price`, `cost`, and `unitsSold` to calculate the values for the new custom record field called `profit`.

```
1
2
(rv!record[recordType!Sales.fields.price] - rv!record[recordType!Sales.fields.cost])
* rv!record[recordType!Sales.fields.unitsSold]
```

**Tip:**  If you want to use related record fields in your expression, create a custom record field that evaluates in real time and use any of the math related custom field functions. [See an example below](#replace-null-values-with-related-record-field-values).

#### Create percentages using record fields

**Goal**: Create a new custom record field that performs a calculation on record field values and displays the values as a percentage.

In this example, we'll calculate the return on investment (ROI) using the record fields `revenue` and `totalExpenses`. When you add this field in a report or grid, you can use rich text to add the percent sign. For example, `rv!record[recordType!Sales.fields.roi] & "%"`.

```
1
2
(rv!record[recordType!Sales.fields.revenue] - rv!record[recordType!Sales.fields.totalExpenses])
/ rv!record[recordType!Sales.fields.totalExpenses] * 100
```

#### Create a composite key

**Goal**: Create a new custom record field that combines the values of your record fields into a unique identifier field. Then, use that field as a composite key to create a [relationship](record-type-relationships.html).

In this example, we'll create a new custom record field on the **Product** record type that combines the `type` and `code` field into a single product identifier field.

```
1
concat(rv!record[recordType!Product.fields.type], "-", rv!record[recordType!Product.fields.code])
```

Since we want to use this field as a composite key to create a one-to-many relationship between the **Product** record type and the **Order** record type, we need to mark this field as unique. The one-side of a relationship (products) must use a field with unique values, so we'll enable the **Unique Values** option to ensure that all field values are different.

Then, we'll create this same sync-time custom record field on the **Order** record type, since it also contains the `type` and `code` fields. However, this custom record field does _not_ need to be unique since **Orders** is on the many-side of the relationship.

Now, we can create a relationship between the **Product** and **Order** record type and use the same product identifier as the [common fields](record-type-relationships.html#common-field-values).

### Real-time evaluation recipes

The following recipes illustrate how to create a custom record field that evaluates in real time.

Each of these recipes leverages one or more **custom field** functions. You must use at least one of these functions to create a custom record field that evaluates in real time:

-   [a!customFieldConcat()](/suite/help/25.3/fnc_crf_customfieldconcat.html)

-   [a!customFieldCondition()](/suite/help/25.3/fnc_crf_customfieldcondition.html)

-   [a!customFieldDateDiff()](/suite/help/25.3/fnc_crf_customfielddatediff.html)

-   [a!customFieldDefaultValue()](/suite/help/25.3/fnc_crf_customfielddefaultvalue.html)

-   [a!customFieldDivide()](/suite/help/25.3/fnc_crf_customfielddivide.html)

-   [a!customFieldLogicalExpression()](/suite/help/25.3/fnc_crf_customfieldlogicalexpression.html)

-   [a!customFieldMatch()](/suite/help/25.3/fnc_crf_customfieldmatch.html)

-   [a!customFieldMultiply()](/suite/help/25.3/fnc_crf_customfieldmultiply.html)

-   [a!customFieldSubtract()](/suite/help/25.3/fnc_crf_customfieldsubtract.html)

-   [a!customFieldSum()](/suite/help/25.3/fnc_crf_customfieldsum.html)

These recipes also highlight the ability to use related record fields, constants, and relative dates within the **custom field** expressions.

#### Return the difference between two dates

**Goal**: Create a new custom record field that returns the difference between two dates in days. If a date is null, subtract by today's date.

In this example, we want to create a field that displays the total number of days it took to deliver each order so we can show and sort by this data in a read-only grid.

To do this, we'll create a new custom record field using the [a!customFieldDateDiff()](fnc_crf_customfielddatediff.html) function. Using this function, we'll subtract the `submittedDate` and the `deliveryDate` and return the difference in days. We'll also use the [a!customFieldDefaultValue()](fnc_crf_customfielddefaultvalue.html) function so that any orders that haven't been delivered (so the delivery date is null) are subtracted by today’s date.

```
1
2
3
4
5
6
7
8
a!customFieldDateDiff(
 startDate: recordType!Order.fields.submittedDate,
 endDate: a!customFieldDefaultValue(
    value: recordType!Order.fields.deliveryDate,
    default: today()
 ),
 interval: "DAY"
)
```

**Tip:**  For more examples using the `a!customFieldDateDiff()` function, check out the **AR\_DateDiffDashboard** in the **Appian Retail** application available for free in [Appian Community Edition](https://community.appian.com/p/my-learning-journey/).

#### Concatenate values from related record types

**Goal**: Create a new custom record field that concatenates record fields and related record fields and displays them as one value.

In this example, we want to create a field that displays the sales region and shipping method together so we can create a chart that displays the count of orders by region and shipping method.

Since the sales region and shipping method are stored in related record types, we will create a new custom record field on the Order record type that evaluates in real time. Using the [a!customFieldConcat()](fnc_crf_customfieldconcat.html) function, we can concatenate the related record fields from the Sales Region record type and the Shipping Method record type.

```
1
2
3
4
5
6
7
a!customFieldConcat(
  {
    recordType!Order.relationships.region.fields.label,
    "-",
    recordType!Order.relationships.shippingMethod.fields.label
  }
)
```

#### Replace null values with related record field values

**Goal**: Create a new custom record field that replaces null values in a record field with values from a related record field.

In this example, we have a `createdOn` field on the Customer record type. If a customer has a null value for `createdOn`, then we want to display the `createdOn` field from the related record type Account instead.

To do this, we could create a new custom record field on the Customer record type that evaluates in real time. Using the [a!customFieldDefaultValue()](fnc_crf_customfielddefaultvalue.html) function, we can replace any null values from the `createdOn` field from the Customer record type with the related record field `createdOn` from the Account record type.

```
1
2
3
4
a!customFieldDefaultValue(
    value: recordType!Customer.fields.createdOn,
    default: recordType!Customer.relationships.accounts.fields.createdOn
)
```

#### Use conditional logic with related record fields

**Goal**: Create a new custom record field where the values are dependent on conditional logic.

In this example, the Case record type has a many-to-one relationship with the Status record type, and we want to display all open or in progress cases as "Active", and any cases relying on customer action or support action to display as "Paused". Otherwise, if a case has any other status, display the case as "Closed".

To do this, we could create a new custom record field on the Case record type that evaluates in real time. Using the [a!customFieldMatch()](fnc_crf_customfieldmatch.html) function, we can use simplified if-then logic to determine the values of our custom record field.

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
a!customFieldMatch(
  value: recordType!Case.relationships.status.fields.name,
  equals: "Open",
  equals: "In Progress",
  then: "Active",
  equals: "Customer Action",
  equals: "Support Action",
  then: "Paused",
  default: "Closed"
)
```

If you require more complex conditional logic, you can use the _whenTrue_ parameter and the [a!customFieldCondition()](fnc_crf_customfieldcondition.html) function or the [a!customFieldLogicalExpression()](fnc_crf_customfieldlogicalexpression.html) function to meet your business needs. See the examples in [a!customFieldMatch()](fnc_crf_customfieldmatch.html) for more information.

#### Use the if() function to return different values

**Goal**: Create a new custom record field where the values are dependent on the result of an `if()` function.

This example is similar to [the one above](#use-conditional-logic-with-related-record-fields), but in this example, we'll use the [if()](fnc_logical_if.html) function to determine what value is returned in the custom record field.

To use the `if()` function to determine the value of a real-time custom record field, the result of the function must be a Custom Field function. Additionally, you can only pass a static value in the _condition_ parameter.

In this example, we'll use a constant that references a list of environments (development, staging, and production) in the _condition_ parameter and specify that when the environment is development (`1`), the field should concatenate the `lastComment` field with the case's `createdOn` date. If not, the field should concatenate the `lastComment` field with the case's `lastUpdatedOn` date.

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
if(
  cons!Environment = 1,
  a!customFieldConcat(
    {recordType!Case.relationships.comments.fields.latestComment, "-", recordType!Case.fields.createdOn}
    ),
  a!customFieldConcat(
    {recordType!Case.relationships.comments.fields.latestComment, "-", recordType!Case.fields.lastUpdatedOn}
    )
 )
```

#### Add, subtract, multiply, and divide record fields and related record fields

**Goal**: Create a new custom record field that will add, subtract, multiply, or divide record fields and related record fields and displays the resulting values.

In this example, we want to calculate each employee's potential bonus amount.

The Employee record type has an `annualSalary` field, which contains each employee's salary amount. The Level record type has a `percentBonus` field, which determines the potential bonus amount based on an employee's level in the organization.

To calculate each employee's potential bonus amount, we could create a new custom record field on the Employee record type that evaluates in real time so you can reference the related record field in your calculation.

```
1
2
3
4
5
6
a!customFieldMultiply(
  value: {
    recordType!Employee.fields.annualSalary,
    recordType!Employee.relationships.level.fields.percentBonus
  }
)
```

See all math-related custom field functions:

-   [a!customFieldSum()](fnc_crf_customfieldsum.html)
-   [a!customFieldSubtract()](fnc_crf_customfieldsubtract.html)
-   [a!customFieldMultiply()](fnc_crf_customfieldmultiply.html)
-   [a!customFieldDivide()](fnc_crf_customfielddivide.html)

#### Create a percentage using related record fields

**Goal**: Create a new custom record field that performs a calculation using record field and related record field values and displays the result as a percentage.

In this example, we want to calculate the percent of projected revenue to total revenue. The formula to calculate the percent of projected revenue to total revenue is `Projected Revenue / (Current Revenue + Projected Revenue)`.

The Customer record type has a `currentRevenue` field, which displays the current revenue generated by each customer. The Account record type has a `projectedRevenue` field, which displays the forecasted revenue for each customer account according to the sales department.

To calculate these values, we could create a new custom record field on the Customer record type that evaluates in real time so that we can reference the related record field in our calculation.

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
a!customFieldDivide(
  numerator: recordType!Customer.relationships.account.fields.projectedRevenue,
  denominator:  a!customFieldSum(
    value: {
        recordType!Customer.fields.currentRevenue,
        recordType!Customer.relationships.account.fields.projectedRevenue
    }
  )
)
```

When you add this field in a report or grid, you can use rich text to add the percent sign. For example, `rv!record[recordType!Customer.fields.percentProjectedRevToTotalRev] & "%"`.

#### Calculate values using other custom record fields

**Goal**: Create a new custom record field that performs a calculation using other custom record fields.

In this example, we want to calculate the percent change of sales generated this year versus last year for each country. The formula to calculate the percent change is `(YTD Sales - LYTD Sales) / LYTD Sales`.

On the Country record type, we already have two existing custom record fields that use the [Aggregate Related Record Fields](#aggregate-related-record-fields-\(real-time-evaluation\)) template: one calculates the year-to-date sales for all orders, and another that calculates the previous year-to-date sales for all orders. To calculate the percent change, we'll simply reference those existing custom record fields in our calculation.

```
1
2
3
4
5
6
7
a!customFieldDivide(
  numerator: a!customFieldSubtract(
      value1: recordType!Country.fields.ytdSales,
      value2: recordType!Country.fields.lytdSales
  ),
  denominator: recordType!Country.fields.lytdSales
)
```

**Tip:**  You can reference any existing custom record fields in your real-time calculations, regardless of when it evaluates.

#### Calculate values based on a constant

**Goal**: Create a new custom record field that returns its values based on the values of a [constant](Constants.html).

In this example, we want to display the range of days in which an order is due based on the difference between today’s date and the delivery due date. Based on the difference, we want the custom record field to display "Overdue", "Due in the next 5 days", "Due in the next 6 to 10 days", or "Due after 10 days".

On the Order record type, we could create a custom record field that evaluates in real time and call it `dueDateGroupingLabel`.

We’ll use the `a!customFieldMatch()` function so we can return different values based on different conditions (the different ranges of days). For the _value_ parameter, we’ll use the `a!customFieldDateDiff()` function to return the difference between today’s date and the delivery due date.

Then, we’ll create various _whenTrue_ conditions using the `a!customFieldCondition()` function to determine which value to return based on the date difference. For example, when the difference is less than or equal to 0, then return the value “Overdue”. To make it easier to maintain these return values, we’ll use the constant `cons!AR_CONS_DELIVERY_DUE_DATE_GRPOUPING` to store the different labels.

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
a!customFieldMatch(
  value: a!customFieldDateDiff(
    startDate: today(),
    endDate: recordType!Order.fields.deliveryDueDate,
  ),
  whenTrue: a!customFieldCondition(
    field: fv!value,
    operator: "<=",
    value: 0
  ),
  /* Returns "Overdue" */
  then: cons!AR_CONS_DELIVERY_DUE_DATE_GROUPING[1],
  whenTrue: a!customFieldCondition(
    field: fv!value,
    operator: "<=",
    value: 5
  ),
  /* Returns "Due in the next 5 days" */
  then: cons!AR_CONS_DELIVERY_DUE_DATE_GROUPING[2],
  whenTrue: a!customFieldCondition(
    field: fv!value,
    operator: "<=",
    value: 10
  ),
  /* Returns "Due in the next 6 to 10 days" */
  then: cons!AR_CONS_DELIVERY_DUE_DATE_GROUPING[3],
  /* Returns "Due after 10 days" */
  default: cons!AR_CONS_DELIVERY_DUE_DATE_GROUPING[4],
)
```

## Supported functions

When you [write your own expression](#write-your-own-expression) or edit certain templates, you can use different functions to configure your custom record field in expression mode.

The table below outlines which functions can be used to create a custom record field based on their evaluation time (sync-time or real-time).

**Note:**  If your custom record field evaluates in real time, you must use a **custom field** function to create the field values. Within a custom field function, you can leverage other functions as well, like `today()` or `null()`.

See the supported functions listed on each custom field function page for more information.

| Category | Function | Description | Supported in |
| --- | --- | --- | --- |
| Array | [a!flatten()](/suite/help/25.3/fnc_array_a_flatten.html) |
Converts an array that contains other arrays into an array of single items.

 | Sync-time evaluation |
| Array | [a!update()](/suite/help/25.3/fnc_array_a_update.html) |

Inserts new values or replaces existing values at the specified index or field name and returns the resulting updated data.

 | Sync-time evaluation |
| Array | [append()](/suite/help/25.3/fnc_array_append.html) |

Appends a value or values to the given array, and returns the resulting array.

 | Sync-time evaluation |
| Array | [index()](/suite/help/25.3/fnc_array_index.html) |

Returns the data\[index\] if it is valid or else returns the default value.

 | Sync-time evaluation |
| Array | [insert()](/suite/help/25.3/fnc_array_insert.html) |

Inserts a value into the given array and returns the resulting array.

 | Sync-time evaluation |
| Array | [joinarray()](/suite/help/25.3/fnc_array_joinarray.html) |

Concatenates the elements of an array together into one string and inserts a string separator between each element.

 | Sync-time evaluation |
| Array | [ldrop()](/suite/help/25.3/fnc_array_ldrop.html) |

Drops a given number of values from the left side of an array and returns the resulting array.

 | Sync-time evaluation |
| Array | [length()](/suite/help/25.3/fnc_array_length.html) |

This function returns the number of elements in an array.

 | Sync-time evaluation |
| Array | [rdrop()](/suite/help/25.3/fnc_array_rdrop.html) |

Drops a given number of values from the right side of an array, and returns the resulting array.

 | Sync-time evaluation |
| Array | [remove()](/suite/help/25.3/fnc_array_remove.html) |

Removes the value at a given index from an array, and returns the resulting array.

 | Sync-time evaluation |
| Array | [reverse()](/suite/help/25.3/fnc_array_reverse.html) |

Returns an array in reverse order.

 | Sync-time evaluation |
| Array | [updatearray()](/suite/help/25.3/fnc_array_updatearray.html) |

Inserts new values or modifies existing values at the specified index of a given array, and returns the resulting array.

 | Sync-time evaluation |
| Array | [where()](/suite/help/25.3/fnc_array_where.html) |

Returns the indexes where the values in the input array are true.

 | Sync-time evaluation |
| Array | [wherecontains()](/suite/help/25.3/fnc_array_wherecontains.html) |

Receives one or more values and returns an array of indexes that indicate the position of the values within the array.

 | Sync-time evaluation |
| Base Conversion | [bin2dec()](/suite/help/25.3/fnc_base_conversion_bin2dec.html) |

Converts a Binary number as text to a Decimal number.

 | Sync-time evaluation |
| Base Conversion | [bin2hex()](/suite/help/25.3/fnc_base_conversion_bin2hex.html) |

Converts a Binary number as text to a Hex number as text.

 | Sync-time evaluation |
| Base Conversion | [bin2oct()](/suite/help/25.3/fnc_base_conversion_bin2oct.html) |

Converts a Binary number as text to an Octal number as text.

 | Sync-time evaluation |
| Base Conversion | [dec2bin()](/suite/help/25.3/fnc_base_conversion_dec2bin.html) |

Converts a Decimal number to a Binary number as text.

 | Sync-time evaluation |
| Base Conversion | [dec2hex()](/suite/help/25.3/fnc_base_conversion_dec2hex.html) |

Converts a Decimal number to a Hex number as text.

 | Sync-time evaluation |
| Base Conversion | [dec2oct()](/suite/help/25.3/fnc_base_conversion_dec2oct.html) |

Converts a Decimal number to an Octal number as text.

 | Sync-time evaluation |
| Base Conversion | [hex2bin()](/suite/help/25.3/fnc_base_conversion_hex2bin.html) |

Converts a Hex number as text to a Binary number as text.

 | Sync-time evaluation |
| Base Conversion | [hex2dec()](/suite/help/25.3/fnc_base_conversion_hex2dec.html) |

Converts a Hex number as text to a Decimal number.

 | Sync-time evaluation |
| Base Conversion | [hex2oct()](/suite/help/25.3/fnc_base_conversion_hex2oct.html) |

Converts a Hex number as text to an Octal number as text.

 | Sync-time evaluation |
| Base Conversion | [oct2bin()](/suite/help/25.3/fnc_base_conversion_oct2bin.html) |

Converts an Octal number as text to a Binary number as text.

 | Sync-time evaluation |
| Base Conversion | [oct2dec()](/suite/help/25.3/fnc_base_conversion_oct2dec.html) |

Converts an Octal number as text to a Decimal number.

 | Sync-time evaluation |
| Base Conversion | [oct2hex()](/suite/help/25.3/fnc_base_conversion_oct2hex.html) |

Converts an Octal number as text to a Hex number as text.

 | Sync-time evaluation |
| Conversion | [displayvalue()](/suite/help/25.3/fnc_conversion_displayvalue.html) |

Tries to match a value in a given array with a value at the same index in a replacement array and returns either the value at the same index or a default value if the value is not found.

 | Sync-time evaluation |
| Conversion | [externalize()](/suite/help/25.3/fnc_conversion_externalize.html) |

Converts the given value to a string representation so that it can be saved externally.

 | Sync-time evaluation |
| Conversion | [toboolean()](/suite/help/25.3/fnc_conversion_toboolean.html) |

Converts a value to Boolean.

 | Sync-time evaluation |
| Conversion | [todate()](/suite/help/25.3/fnc_conversion_todate.html) |

Converts a value to Date with Timezone.

 | Sync-time evaluation |
| Conversion | [todatetime()](/suite/help/25.3/fnc_conversion_todatetime.html) |

Converts a value to Date and Time with Timezone.

 | Sync-time evaluation |
| Conversion | [todecimal()](/suite/help/25.3/fnc_conversion_todecimal.html) |

Converts a value to Decimal (double-precision floating-point number).

 | Sync-time evaluation |
| Conversion | [toemailaddress()](/suite/help/25.3/fnc_conversion_toemailaddress.html) |

Converts a value to email address.

 | Sync-time evaluation |
| Conversion | [tointeger()](/suite/help/25.3/fnc_conversion_tointeger.html) |

Converts a value to Integer.

 | Sync-time evaluation |
| Conversion | [tointervalds()](/suite/help/25.3/fnc_conversion_tointervalds.html) |

Converts a value to Interval (Day to Second).

 | Sync-time evaluation |
| Conversion | [tostring()](/suite/help/25.3/fnc_conversion_tostring.html) |

Converts a value to Text.

 | Sync-time evaluation |
| Conversion | [totime()](/suite/help/25.3/fnc_conversion_totime.html) |

Converts a value to Time.

 | Sync-time evaluation |
| Conversion | [touniformstring()](/suite/help/25.3/fnc_conversion_touniformstring.html) |

Converts a value or list to text, preserving the original scalar or array structure.

 | Sync-time evaluation |
| Custom Fields | [a!customFieldConcat()](/suite/help/25.3/fnc_crf_customfieldconcat.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function concatenates the specified values into a single value.

 | Real-time evaluation |
| Custom Fields | [a!customFieldCondition()](/suite/help/25.3/fnc_crf_customfieldcondition.html) |

Used in the _whenTrue_ parameter of [a!customFieldMatch()](fnc_crf_customfieldmatch.html), this function allows you to create a condition.

 | Real-time evaluation |
| Custom Fields | [a!customFieldDateDiff()](/suite/help/25.3/fnc_crf_customfielddatediff.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the difference between two dates as a Number (Integer). The difference can be returned in days, hours, minutes, or seconds. Returns null when the `startDate` or `endDate` is null or empty.

 | Real-time evaluation |
| Custom Fields | [a!customFieldDefaultValue()](/suite/help/25.3/fnc_crf_customfielddefaultvalue.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns a _default_ value when the specified _value_ is null or empty. All parameters must be of the same data type. When there are multiple default parameters, each parameter is evaluated in order and the first non-null or non-empty default will be returned.

 | Real-time evaluation |
| Custom Fields | [a!customFieldDivide()](/suite/help/25.3/fnc_crf_customfielddivide.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the results of dividing two numbers. You can use record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal) in your calculation.

 | Real-time evaluation |
| Custom Fields | [a!customFieldLogicalExpression()](/suite/help/25.3/fnc_crf_customfieldlogicalexpression.html) |

Used in the _whenTrue_ parameter of [a!customFieldMatch()](fnc_crf_customfieldmatch.html), this function allows you to group multiple logical conditions using the `"AND"` and `"OR"` operators.

 | Real-time evaluation |
| Custom Fields | [a!customFieldMatch()](/suite/help/25.3/fnc_crf_customfieldmatch.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function evaluates the _value_ parameter against multiple conditions and returns a value based on a match. If no match is found, the _default_ parameter is returned.

 | Real-time evaluation |
| Custom Fields | [a!customFieldMultiply()](/suite/help/25.3/fnc_crf_customfieldmultiply.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the result of multiplying a series of values. You can multiply record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal).

 | Real-time evaluation |
| Custom Fields | [a!customFieldSubtract()](/suite/help/25.3/fnc_crf_customfieldsubtract.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns the difference between two numbers. You can subtract record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal).

 | Real-time evaluation |
| Custom Fields | [a!customFieldSum()](/suite/help/25.3/fnc_crf_customfieldsum.html) |

Used to create a [real-time custom record field](custom-record-fields.html#prodlink-real-time-evaluations), this function returns a sum of values. You can calculate the sum of record fields, related record fields, or literal values of type Number (Integer) or Number (Decimal).

 | Real-time evaluation |
| Date and Time | [a!addDateTime()](/suite/help/25.3/fnc_date_and_time_adddatetime.html) |

Adds the specified increments of time to the _startDateTime_ and returns a date and time value. You can select a [process calendar](Process_Calendar_Settings.html) to ensure the return value falls within the specified working days and time.

 | Sync-time evaluation |
| Date and Time | [calisworkday()](/suite/help/25.3/fnc_date_and_time_calisworkday.html) |

This returns whether or not the given Date and Time is a work day, according to the calendar defined for the system.

 | Sync-time evaluation |
| Date and Time | [calisworktime()](/suite/help/25.3/fnc_date_and_time_calisworktime.html) |

This returns whether or not the given Date and Time is within working hours, according to the calendars defined for the system.

 | Sync-time evaluation |
| Date and Time | [calworkdays()](/suite/help/25.3/fnc_date_and_time_calworkdays.html) |

This returns the actual number of work days between two Date and Times (both inclusive), according to the calendar defined for the system.

 | Sync-time evaluation |
| Date and Time | [calworkhours()](/suite/help/25.3/fnc_date_and_time_calworkhours.html) |

This returns the actual number of work hours between two given Date and Times (both inclusive), according to the calendar defined for the system.

 | Sync-time evaluation |
| Date and Time | [date()](/suite/help/25.3/fnc_date_and_time_date.html) |

Converts text into data accepted by the date data type and functions that require date parameters.

 | Sync-time evaluation |
| Date and Time | [datetime()](/suite/help/25.3/fnc_date_and_time_datetime.html) |

Converts the given Date and Time into a serial number that holds the Date and Time data type.

 | Sync-time evaluation |
| Date and Time | [datevalue()](/suite/help/25.3/fnc_date_and_time_datevalue.html) |

Converts a value to a date.

 | Sync-time evaluation |
| Date and Time | [day()](/suite/help/25.3/fnc_date_and_time_day.html) |

Returns the day of the month from the date specified.

 | Sync-time evaluation |
| Date and Time | [dayofyear()](/suite/help/25.3/fnc_date_and_time_dayofyear.html) |

Returns the day number within the year.

 | Sync-time evaluation |
| Date and Time | [days360()](/suite/help/25.3/fnc_date_and_time_days360.html) |

Returns the number of days between two dates, based on a 360-day calendar.

 | Sync-time evaluation |
| Date and Time | [daysinmonth()](/suite/help/25.3/fnc_date_and_time_daysinmonth.html) |

Returns the number of days in the given month in the given year.

 | Sync-time evaluation |
| Date and Time | [edate()](/suite/help/25.3/fnc_date_and_time_edate.html) |

Returns the date that is the number of months before or after the given starting date.

 | Sync-time evaluation |
| Date and Time | [eomonth()](/suite/help/25.3/fnc_date_and_time_eomonth.html) |

Returns the date for the last day of the month that is the number of months before or after the given starting date.

 | Sync-time evaluation |
| Date and Time | [gmt()](/suite/help/25.3/fnc_date_and_time_gmt.html) |

Subtracts a time zone offset from a given Date and Time.

 | Sync-time evaluation |
| Date and Time | [hour()](/suite/help/25.3/fnc_date_and_time_hour.html) |

Returns the hour from the time specified.

 | Sync-time evaluation |
| Date and Time | [intervalds()](/suite/help/25.3/fnc_date_and_time_intervalds.html) |

Converts the given time components into an equivalent time duration, an interval expressing days to seconds. This value is treated as a duration (Joe ran the marathon in 3 hours and 23 minutes), not a point in time.

 | Sync-time evaluation |
| Date and Time | [isleapyear()](/suite/help/25.3/fnc_date_and_time_isleapyear.html) |

Returns a Boolean value for whether the given year is a leap year.

 | Sync-time evaluation |
| Date and Time | [lastndays()](/suite/help/25.3/fnc_date_and_time_lastndays.html) |

Returns a Boolean value for whether the given date is within the last given number of days.

 | Sync-time evaluation |
| Date and Time | [local()](/suite/help/25.3/fnc_date_and_time_local.html) |

This is a Date and Time _addition_ function, adding time zone offset to given Date and Time.

 | Sync-time evaluation |
| Date and Time | [milli()](/suite/help/25.3/fnc_date_and_time_milli.html) |

This function returns the millisecond portion of a timestamp or the decimal number that represents 1 millisecond in days.

 | Sync-time evaluation |
| Date and Time | [minute()](/suite/help/25.3/fnc_date_and_time_minute.html) |

Returns the minute from the time specified.

 | Sync-time evaluation |
| Date and Time | [month()](/suite/help/25.3/fnc_date_and_time_month.html) |

Returns the month from the specified date.

 | Sync-time evaluation |
| Date and Time | [networkdays()](/suite/help/25.3/fnc_date_and_time_networkdays.html) |

Returns the number of working days between two specified dates.

 | Sync-time evaluation |
| Date and Time | [second()](/suite/help/25.3/fnc_date_and_time_second.html) |

Returns the seconds from the specified time.

 | Sync-time evaluation |
| Date and Time | [a!subtractDateTime()](/suite/help/25.3/fnc_date_and_time_subtractdatetime.html) |

Subtracts the specified increments of time from the _startDateTime_ and returns a date and time value. You can select a [process calendar](Process_Calendar_Settings.html) to ensure the return value falls within the specified working days and time.

 | Sync-time evaluation |
| Date and Time | [time()](/suite/help/25.3/fnc_date_and_time_time.html) |

Converts the given time into an equivalent time value.

 | Sync-time evaluation |
| Date and Time | [timevalue()](/suite/help/25.3/fnc_date_and_time_timevalue.html) |

Converts the given time into an equivalent interval.

 | Sync-time evaluation |
| Date and Time | [timezone()](/suite/help/25.3/fnc_date_and_time_timezone.html) |

Returns the default offset in minutes from GMT, which is generally the process initiator's time zone.

 | Sync-time evaluation |
| Date and Time | [timezoneid()](/suite/help/25.3/fnc_date_and_time_timezoneid.html) |

Returns the time zone ID for the current context.

 | Sync-time evaluation |
| Date and Time | [weekday()](/suite/help/25.3/fnc_date_and_time_weekday.html) |

Returns the day of the week of the specified date.

 | Sync-time evaluation |
| Date and Time | [weeknum()](/suite/help/25.3/fnc_date_and_time_weeknum.html) |

Returns the week number within the year for the given date using a given methodology.

 | Sync-time evaluation |
| Date and Time | [workday()](/suite/help/25.3/fnc_date_and_time_workday.html) |

Returns the date the given number of workdays before or after the given date.

 | Sync-time evaluation |
| Date and Time | [year()](/suite/help/25.3/fnc_date_and_time_year.html) |

Returns the year for the date specified.

 | Sync-time evaluation |
| Date and Time | [yearfrac()](/suite/help/25.3/fnc_date_and_time_yearfrac.html) |

Determine the fraction of the year.

 | Sync-time evaluation |
| Evaluation | [a!localVariables()](/suite/help/25.3/fnc_evaluation_a_localvariables.html) |

Lets you define one or more local variables for use within an expression. When used within an interface, the value of each variable can be refreshed under a variety of conditions, configured using a!refreshVariable(). When used outside of an interface, all refresh properties configured using a!refreshVariable() are ignored.

 | Sync-time evaluation |
| Evaluation | [load()](/suite/help/25.3/fnc_evaluation_load.html) |

Lets you define local variables within an expression for an interface and evaluate the expression with the new variables, then re-evaluate the function with the local variables' values from the previous evaluation.

 | Sync-time evaluation |
| Evaluation | [with()](/suite/help/25.3/fnc_evaluation_with.html) |

Lets you define local variables within a function and evaluate the expression with the new variables.

 | Sync-time evaluation |
| Informational | [a!defaultValue()](/suite/help/25.3/fnc_informational_a_defaultvalue.html) |

Returns a default value when the specified value is null or empty. When there are multiple _default_ parameters, each parameter is evaluated in order and the first non-null and non-empty _default_ will be returned. `Null`, `""`, and `{}` are all considered null or empty values.

 | Sync-time evaluation |
| Conversion | [cast()](/suite/help/25.3/fnc_informational_cast.html) |

Converts a value from its existing type to the specified type.

 | Sync-time evaluation |
| Informational | [error()](/suite/help/25.3/fnc_informational_error.html) |

Raises an error with the given message, used for invalidating execution.This function never returns a value.

 | Sync-time evaluation |
| Informational | [infinity()](/suite/help/25.3/fnc_informational_infinity.html) |

Represents a constant number that stands for positive infinity or a negative infinity if you negate the value.

 | Sync-time evaluation |
| Informational | [isinfinite()](/suite/help/25.3/fnc_informational_isinfinite.html) |

Tests given numbers against positive and negative infinity, returning `true` if the number is infinite, `false` if the number is not infinite.

 | Sync-time evaluation |
| Informational | [isnegativeinfinity()](/suite/help/25.3/fnc_informational_isnegativeinfinity.html) |

Tests given numbers against negative infinity, returning true if number is negative infinity, false if number is not negative infinity.

 | Sync-time evaluation |
| Informational | [a!isNotNullOrEmpty()](/suite/help/25.3/fnc_informational_isnotnullorempty.html) |

Returns `false` if the value is null, an empty string, or an empty list. Otherwise returns `true`.

 | Sync-time evaluation |
| Informational | [isnull()](/suite/help/25.3/fnc_informational_isnull.html) |

Returns true if value is null, false otherwise.

 | Sync-time evaluation |
| Informational | [a!isNullOrEmpty()](/suite/help/25.3/fnc_informational_isnullorempty.html) |

Returns `true` if the value is null, an empty string, or an empty list. Otherwise returns `false`.

 | Sync-time evaluation |
| Informational | [ispositiveinfinity()](/suite/help/25.3/fnc_informational_ispositiveinfinity.html) |

Tests given numbers against positive infinity, returning `true` if the numbers are positive infinity, false if the numbers are not positive infinity.

 | Sync-time evaluation |
| Informational | [nan()](/suite/help/25.3/fnc_informational_nan.html) |

Constant number representing Not A Number, generally used for comparison to the result of mathematical operations with invalid inputs. This is equivalent to a decimal (floating point) null, but nan() is provided for more explicit usage in mathematical expressions.

 | Sync-time evaluation |
| Informational | [null()](/suite/help/25.3/fnc_informational_null.html) |

Returns a null value.

 | Sync-time evaluation |
| Informational | [runtimetypeof()](/suite/help/25.3/fnc_informational_runtimetypeof.html) |

Returns the numerical representation of an Appian system data type when used during process execution.

 | Sync-time evaluation |
| Informational | [typename()](/suite/help/25.3/fnc_informational_typename.html) |

Returns the type name of a given type number.

 | Sync-time evaluation |
| Informational | [typeof()](/suite/help/25.3/fnc_informational_typeof.html) |

Returns the type number of a given value.

 | Sync-time evaluation |
| Logical | [and()](/suite/help/25.3/fnc_logical_and.html) |

Returns `true` if all inputs are `true`; returns `false` if at least one input is false.

 | Sync-time evaluation |
| Logical | [choose()](/suite/help/25.3/fnc_logical_choose.html) |

Evaluates the `choice` argument at the given `index` and returns the result.

 | Sync-time evaluation |
| Logical | [false()](/suite/help/25.3/fnc_logical_false.html) |

Returns the Boolean value `false`.

 | Sync-time evaluation |
| Logical | [if()](/suite/help/25.3/fnc_logical_if.html) |

Returns `valueIfTrue` if `condition` returns `true`; returns `valueIfFalse` otherwise.

 | Sync-time evaluation |
| Logical | [a!match()](/suite/help/25.3/fnc_logical_match.html) |

Evaluates the _value_ against multiple conditions and returns a value based on a match. If no match is found, the _default_ is returned. For example, if "a" then "b" else "c".

 | Sync-time evaluation |
| Logical | [not()](/suite/help/25.3/fnc_logical_not.html) |

Converts `true` into `false`, and `false` into `true`.

 | Sync-time evaluation |
| Logical | [or()](/suite/help/25.3/fnc_logical_or.html) |

Returns `true` if any inputs are `true`; returns `false` if all inputs are `false`.

 | Sync-time evaluation |
| Logical | [true()](/suite/help/25.3/fnc_logical_true.html) |

Returns the Boolean value `true`.

 | Sync-time evaluation |
| Looping | [a!forEach()](/suite/help/25.3/fnc_looping_a_foreach.html) |

Evaluates an expression for each item in a list and returns a new array of the results.

 | Sync-time evaluation |
| Looping | [all()](/suite/help/25.3/fnc_looping_all.html) |

Calls a rule or function that returns either true or false for each item in list, asks the question, "Do all items in this list yield true for this rule/function?", and returns true if all items in list evaluates to true.

 | Sync-time evaluation |
| Looping | [any()](/suite/help/25.3/fnc_looping_any.html) |

Calls a rule or function that returns either true or false for each item in list by asking the question, "Do any items in this list yield true for this rule/function?" with the intent to discover if any item(s) yield true.

 | Sync-time evaluation |
| Looping | [apply()](/suite/help/25.3/fnc_looping_apply.html) |

Calls a rule or function for each item in a list, and provides any contexts specified.

 | Sync-time evaluation |
| Looping | [filter()](/suite/help/25.3/fnc_looping_filter.html) |

Calls a predicate for each item in a list and returns any items for which the returned value is true.

 | Sync-time evaluation |
| Looping | [merge()](/suite/help/25.3/fnc_looping_merge.html) |

Takes a variable number of lists and merges them into a single list (or a list of lists) that is the size of the largest list provided.

 | Sync-time evaluation |
| Looping | [none()](/suite/help/25.3/fnc_looping_none.html) |

Calls a rule or function that returns either true or false for each item in list by asking the question, "Do all items in this list yield false for this rule/function?" with the intent to discover if no items will yield true.

 | Sync-time evaluation |
| Looping | [reduce()](/suite/help/25.3/fnc_looping_reduce.html) |

Calls a rule or function for each item in a list, passing the result of each call to the next one, and returns the value of the last computation.

 | Sync-time evaluation |
| Looping | [reject()](/suite/help/25.3/fnc_looping_reject.html) |

Calls a predicate for each item in a list, rejects any items for which the returned value is true, and returns all remaining items.

 | Sync-time evaluation |
| Mathematical | [abs()](/suite/help/25.3/fnc_mathematical_abs.html) |

Returns the absolute value(s) of the specified number(s).

 | Sync-time evaluation |
| Mathematical | [ceiling()](/suite/help/25.3/fnc_mathematical_ceiling.html) |

Rounds the number up to the nearest multiple of the specified significance.

 | Sync-time evaluation |
| Mathematical | [combin()](/suite/help/25.3/fnc_mathematical_combin.html) |

Calculates the number of unique ways to choose m elements from a pool of n elements.

 | Sync-time evaluation |
| Mathematical | [a!distanceBetween()](/suite/help/25.3/fnc_mathematical_distanceBetween.html) |

Returns the distance between the two locations (in meters) specified by the start and end coordinates. The distance is calculated by tracing a line between the two locations that follows the curvature of the Earth, and measuring the length of the resulting arc.

 | Sync-time evaluation |
| Mathematical | [e()](/suite/help/25.3/fnc_mathematical_e.html) |

Returns the value of e.

 | Sync-time evaluation |
| Mathematical | [enumerate()](/suite/help/25.3/fnc_mathematical_enumerate.html) |

Returns a list of integer numbers from 0 through n-1.

 | Sync-time evaluation |
| Mathematical | [even()](/suite/help/25.3/fnc_mathematical_even.html) |

Rounds positive numbers up to nearest even integer and negative numbers down to the nearest even integer.

 | Sync-time evaluation |
| Mathematical | [exp()](/suite/help/25.3/fnc_mathematical_exp.html) |

Returns e raised to the specified power.

 | Sync-time evaluation |
| Mathematical | [fact()](/suite/help/25.3/fnc_mathematical_fact.html) |

The factorial of specified number.

 | Sync-time evaluation |
| Mathematical | [factdouble()](/suite/help/25.3/fnc_mathematical_factdouble.html) |

The double factorial of specified number (mathematically n!!).

 | Sync-time evaluation |
| Mathematical | [floor()](/suite/help/25.3/fnc_mathematical_floor.html) |

Rounds the number down to the nearest multiple of the specified significance.

 | Sync-time evaluation |
| Mathematical | [int()](/suite/help/25.3/fnc_mathematical_int.html) |

Rounds the specified number down to the nearest integer.

 | Sync-time evaluation |
| Mathematical | [ln()](/suite/help/25.3/fnc_mathematical_ln.html) |

Returns the natural logarithm of the specified number, which is the power that e must be raised to in order to equal the specified number.

 | Sync-time evaluation |
| Mathematical | [log()](/suite/help/25.3/fnc_mathematical_log.html) |

Returns the logarithm of the number using the specified base, which is the power that base must be raised to, to equal the number.

 | Sync-time evaluation |
| Mathematical | [mod()](/suite/help/25.3/fnc_mathematical_mod.html) |

Returns the remainder of dividend when divided by the divisor.

 | Sync-time evaluation |
| Mathematical | [mround()](/suite/help/25.3/fnc_mathematical_mround.html) |

Rounds the number to the specified multiple.

 | Sync-time evaluation |
| Mathematical | [multinomial()](/suite/help/25.3/fnc_mathematical_multinomial.html) |

Adds the specified integers and divides the factorial of the sum by the factorial of the individual numbers.

 | Sync-time evaluation |
| Mathematical | [odd()](/suite/help/25.3/fnc_mathematical_odd.html) |

Rounds positive numbers up to nearest odd integer and negative numbers down to the nearest odd integer.

 | Sync-time evaluation |
| Mathematical | [pi()](/suite/help/25.3/fnc_mathematical_pi.html) |

Returns the value of pi.

 | Sync-time evaluation |
| Mathematical | [power()](/suite/help/25.3/fnc_mathematical_power.html) |

Returns the base number raised to the specified exponent.

 | Sync-time evaluation |
| Mathematical | [product()](/suite/help/25.3/fnc_mathematical_product.html) |

Returns the product of the specified numbers.

 | Sync-time evaluation |
| Mathematical | [quotient()](/suite/help/25.3/fnc_mathematical_quotient.html) |

Returns the quotient when numerator is divided by the denominator, and drops the remainder.

 | Sync-time evaluation |
| Mathematical | [round()](/suite/help/25.3/fnc_mathematical_round.html) |

Rounds off the number to the specified number of digits.

 | Sync-time evaluation |
| Mathematical | [rounddown()](/suite/help/25.3/fnc_mathematical_rounddown.html) |

Rounds the number down to the specified digit.

 | Sync-time evaluation |
| Mathematical | [roundup()](/suite/help/25.3/fnc_mathematical_roundup.html) |

Rounds the number up to the specified digit.

 | Sync-time evaluation |
| Mathematical | [sign()](/suite/help/25.3/fnc_mathematical_sign.html) |

Returns the number divided by its absolute value, which is 1 if the number is positive and -1 if the number is negative.

 | Sync-time evaluation |
| Mathematical | [sqrt()](/suite/help/25.3/fnc_mathematical_sqrt.html) |

Returns the square root(s) of the specified number(s).

 | Sync-time evaluation |
| Mathematical | [sqrtpi()](/suite/help/25.3/fnc_mathematical_sqrtpi.html) |

Multiplies the number by pi, then returns the square root of the product.

 | Sync-time evaluation |
| Mathematical | [sum()](/suite/help/25.3/fnc_mathematical_sum.html) |

Returns the sum of the specified numbers.

 | Sync-time evaluation |
| Mathematical | [sumsq()](/suite/help/25.3/fnc_mathematical_sumsq.html) |

Squares each number and then returns the sum of the squares.

 | Sync-time evaluation |
| Mathematical | [trunc()](/suite/help/25.3/fnc_mathematical_trunc.html) |

Truncates a decimal number to the specified number of places after the decimal point.

 | Sync-time evaluation |
| Scripting | [offsetFromGMT()](/suite/help/25.3/fnc_scripting_offsetfromgmt.html) |

Returns the offset (in minutes) from GMT of the given date and timezone.

 | Sync-time evaluation |
| Scripting | [property()](/suite/help/25.3/fnc_scripting_property.html) |

This function extracts a bean's property under a given key name (the `nameOfProperty` parameter).

 | Sync-time evaluation |
| Array | [contains()](/suite/help/25.3/fnc_set_contains.html) |

Checks whether an array contains the value.

 | Sync-time evaluation |
| Array | [difference()](/suite/help/25.3/fnc_set_difference.html) |

Returns the values in array1 and not in array2.

 | Sync-time evaluation |
| Array | [intersection()](/suite/help/25.3/fnc_set_intersection.html) |

Returns only those elements that appear in all of the given arrays.

 | Sync-time evaluation |
| Array | [symmetricdifference()](/suite/help/25.3/fnc_set_symmetricdifference.html) |

Returns the values from two integer arrays that are not in both arrays.

 | Sync-time evaluation |
| Array | [union()](/suite/help/25.3/fnc_set_union.html) |

Returns all unique elements from the given arrays.

 | Sync-time evaluation |
| Statistical | [avedev()](/suite/help/25.3/fnc_statistical_avedev.html) |

Returns the average deviation of the specified number(s).

 | Sync-time evaluation |
| Statistical | [average()](/suite/help/25.3/fnc_statistical_average.html) |

Returns the average of the specified number(s).

 | Sync-time evaluation |
| Statistical | [count()](/suite/help/25.3/fnc_statistical_count.html) |

Returns the number items in all arrays passed to the function.

 | Sync-time evaluation |
| Statistical | [frequency()](/suite/help/25.3/fnc_statistical_frequency.html) |

Uses the bin array to create groups bounded by the elements of the array.

 | Sync-time evaluation |
| Statistical | [gcd()](/suite/help/25.3/fnc_statistical_gcd.html) |

Returns the greatest common denominator of the specified non-negative number(s), which is the largest number that divides all the given numbers without a remainder.

 | Sync-time evaluation |
| Statistical | [geomean()](/suite/help/25.3/fnc_statistical_geomean.html) |

Returns the geometric mean of the specified number(s).

 | Sync-time evaluation |
| Statistical | [harmean()](/suite/help/25.3/fnc_statistical_harmean.html) |

Returns the harmonic mean of the specified number(s), which is the number of terms divided by the sum of the terms' reciprocals.

 | Sync-time evaluation |
| Statistical | [lcm()](/suite/help/25.3/fnc_statistical_lcm.html) |

Returns the least common multiple of the specified non-negative number(s), which is the smallest number that is a multiple of all the given numbers.

 | Sync-time evaluation |
| Statistical | [lookup()](/suite/help/25.3/fnc_statistical_lookup.html) |

Returns location of data within multiple values, or valueIfNotPresent.

 | Sync-time evaluation |
| Statistical | [max()](/suite/help/25.3/fnc_statistical_max.html) |

Returns the maximum of the specified number(s).

 | Sync-time evaluation |
| Statistical | [median()](/suite/help/25.3/fnc_statistical_median.html) |

Returns the median of the specified number(s).

 | Sync-time evaluation |
| Statistical | [min()](/suite/help/25.3/fnc_statistical_min.html) |

Returns the minimum of the specified number(s).

 | Sync-time evaluation |
| Statistical | [mode()](/suite/help/25.3/fnc_statistical_mode.html) |

Returns the mode of the specified number(s), which is the most commonly repeated element.

 | Sync-time evaluation |
| Statistical | [rank()](/suite/help/25.3/fnc_statistical_rank.html) |

Returns an integer representing the rank of the number in the specified array.

 | Sync-time evaluation |
| Statistical | [stdev()](/suite/help/25.3/fnc_statistical_stdev.html) |

Returns the standard deviation of the specified number(s).

 | Sync-time evaluation |
| Statistical | [stdevp()](/suite/help/25.3/fnc_statistical_stdevp.html) |

Returns the standard deviation of the specified number(s), assuming that the numbers form the entire data set and not just a sample.

 | Sync-time evaluation |
| Statistical | [var()](/suite/help/25.3/fnc_statistical_var.html) |

Returns the variance of the specified number(s).

 | Sync-time evaluation |
| Statistical | [varp()](/suite/help/25.3/fnc_statistical_varp.html) |

Returns the variance of the specified number(s), assuming that the numbers form the entire data set and not just a sample.

 | Sync-time evaluation |
| System | [a!doesUserHaveAccess()](/suite/help/25.3/fnc_system_doesUserHaveAccess.html) |

Determines whether the logged in user has access to view a field based on the [field-level security](field-level-security.html) configured on the record type.

 | Sync-time evaluation |
| System | [a!map()](/suite/help/25.3/fnc_system_map.html) |

Creates a map of values (Any Type) with each value stored at the corresponding string key. Values stored in maps are not wrapped in variants.

 | Sync-time evaluation |
| System | [a!pageResponse()](/suite/help/25.3/fnc_system_pageResponse.html) |

Identifies the data in the current integration response, and the path of the next set of data to request. This function should be used to return data in a [record data source expression](configure-record-data-source.html#create-a-record-data-source) when the integration uses a non-integer pagination value.

 | Sync-time evaluation |
| System | [a!selectionFields()](/suite/help/25.3/fnc_system_selectionfields.html) |

Returns all fields from a record type and any of its related record types within a query. You can also query specific fields from other record types at the same time.

 | Sync-time evaluation |
| Text | [char()](/suite/help/25.3/fnc_text_char.html) |

Converts a number into its Unicode character equivalent.

 | Sync-time evaluation |
| Text | [charat()](/suite/help/25.3/fnc_text_charat.html) |

Returns the character at given index within specified string.

 | Sync-time evaluation |
| Text | [clean()](/suite/help/25.3/fnc_text_clean.html) |

Returns the specified text, minus any characters not considered printable. Printable characters are the 95 printable ASCII characters plus three special characters: BACKSPACE (0x08), TAB (0x09), and NEWLINE (0x0a).

 | Sync-time evaluation |
| Text | [cleanwith()](/suite/help/25.3/fnc_text_cleanwith.html) |

Returns the specified text, minus any characters not in the list of valid characters.

 | Sync-time evaluation |
| Text | [code()](/suite/help/25.3/fnc_text_code.html) |

Converts the text into Unicode integers.

 | Sync-time evaluation |
| Text | [concat()](/suite/help/25.3/fnc_text_concat.html) |

Concatenates the specified strings into one string, without a separator.

 | Sync-time evaluation |
| Text | [exact()](/suite/help/25.3/fnc_text_exact.html) |

Compares two given text strings in a case-sensitive manner, returning true only if they are exactly the same.

 | Sync-time evaluation |
| Text | [extract()](/suite/help/25.3/fnc_text_extract.html) |

Returns the value (or values, if the text contains multiple delimited values) between the delimiters from the given text.

 | Sync-time evaluation |
| Text | [extractanswers()](/suite/help/25.3/fnc_text_extractanswers.html) |

Returns an array of strings that respond to the questions provided.

 | Sync-time evaluation |
| Text | [find()](/suite/help/25.3/fnc_text_find.html) |

Searches the text for a particular substring, returning the positional index of the first character of the first match.

 | Sync-time evaluation |
| Text | [fixed()](/suite/help/25.3/fnc_text_fixed.html) |

Rounds the specified number off to a certain number of decimals and returns it as text, with optional commas.

 | Sync-time evaluation |
| Text | [a!formatPhoneNumber()](/suite/help/25.3/fnc_text_formatphonenumber.html) |

Returns a formatted phone number based on the _outputFormat_ parameter. The _countryCode_ parameter, or any country code provided in the phone number, will verify that the phone number is valid. If the phone number does not match any provided country code, the phone number will be returned as invalid and unformatted.

 | Sync-time evaluation |
| Text | [initials()](/suite/help/25.3/fnc_text_initials.html) |

Returns only the uppercase characters from within the given text.

 | Sync-time evaluation |
| Text | [insertkey()](/suite/help/25.3/fnc_text_insertkey.html) |

Returns the provided text, wrapped with the specified delimiters.

 | Sync-time evaluation |
| Text | [insertkeyval()](/suite/help/25.3/fnc_text_insertkeyval.html) |

Returns the provided key-value pairs, wrapped with the specified delimiters.

 | Sync-time evaluation |
| Text | [insertquestions()](/suite/help/25.3/fnc_text_insertquestions.html) |

Returns an array of questions with a ==EOQ== at the end, returning a single string that can be parsed with `extractanswers()` function after it has been filled in by a user.

 | Sync-time evaluation |
| Text | [a!isPhoneNumber()](/suite/help/25.3/fnc_text_isphonenumber.html) |

Returns _true_ if the _phoneNumber_ parameter contains a valid phone number, otherwise returns _false_. A phone number is considered valid if its area code is valid, the length is appropriate based upon the value of the _countryCode_ parameter, and the number after the area code is not all zeroes. This function supports countries and area codes for international numbers.

 | Sync-time evaluation |
| Text | [keyval()](/suite/help/25.3/fnc_text_keyval.html) |

Returns the value(s) associated with the given key(s).

 | Sync-time evaluation |
| Text | [left()](/suite/help/25.3/fnc_text_left.html) |

Returns a specified number of characters from the text, starting from the first character.

 | Sync-time evaluation |
| Text | [leftb()](/suite/help/25.3/fnc_text_leftb.html) |

Returns a specified number of bytes from the text, starting from the first byte.

 | Sync-time evaluation |
| Text | [len()](/suite/help/25.3/fnc_text_len.html) |

Returns the length in characters of the text.

 | Sync-time evaluation |
| Text | [lenb()](/suite/help/25.3/fnc_text_lenb.html) |

Returns the length in bytes of the text.

 | Sync-time evaluation |
| Text | [like()](/suite/help/25.3/fnc_text_like.html) |

Tests whether a string of text is like a given pattern.

 | Sync-time evaluation |
| Text | [lower()](/suite/help/25.3/fnc_text_lower.html) |

Converts all characters in the text into lowercase (Unicode case folding).

 | Sync-time evaluation |
| Text | [mid()](/suite/help/25.3/fnc_text_mid.html) |

Returns a substring from the middle of the specified text.

 | Sync-time evaluation |
| Text | [midb()](/suite/help/25.3/fnc_text_midb.html) |

Returns a substring from the middle of the specified text.

 | Sync-time evaluation |
| Text | [padleft()](/suite/help/25.3/fnc_text_padleft.html) |

Pads text with spaces on the left so that it is a certain length.

 | Sync-time evaluation |
| Text | [padright()](/suite/help/25.3/fnc_text_padright.html) |

Pads text with spaces on the right so that it is a certain length.

 | Sync-time evaluation |
| Text | [proper()](/suite/help/25.3/fnc_text_proper.html) |

Converts each character in the text into proper case, meaning it will capitalize the first first letter of every word and convert the rest into lowercase.

 | Sync-time evaluation |
| Text | [replace()](/suite/help/25.3/fnc_text_replace.html) |

Replaces a piece of the specified text with new text.

 | Sync-time evaluation |
| Text | [replaceb()](/suite/help/25.3/fnc_text_replaceb.html) |

Replaces a piece of the specified text with new text.

 | Sync-time evaluation |
| Text | [rept()](/suite/help/25.3/fnc_text_rept.html) |

Concatenates the text to itself a specified number of times and returns the result.

 | Sync-time evaluation |
| Text | [resource()](/suite/help/25.3/fnc_text_resource.html) |

Retrieves a string of translated text appropriate for the current user, according to their language preference, by matching a given key with text.

 | Sync-time evaluation |
| Text | [right()](/suite/help/25.3/fnc_text_right.html) |

Returns a specified number of characters from the text, starting from the last character.

 | Sync-time evaluation |
| Text | [search()](/suite/help/25.3/fnc_text_search.html) |

Searches the text for the given, case insensitive substring. Returns the one-based positional index of the first character of the first match. Returns zero if the substring is not found.

 | Sync-time evaluation |
| Text | [searchb()](/suite/help/25.3/fnc_text_searchb.html) |

Searches the text for a particular substring, returning the positional index of the first byte of the first match.

 | Sync-time evaluation |
| Text | [soundex()](/suite/help/25.3/fnc_text_soundex.html) |

Returns the soundex code, used to render similar sounding names via phonetic similarities into identical four (4) character codes.

 | Sync-time evaluation |
| Text | [split()](/suite/help/25.3/fnc_text_split.html) |

Splits text into a list of text elements, delimited by the text specified in the separator.

 | Sync-time evaluation |
| Text | [strip()](/suite/help/25.3/fnc_text_strip.html) |

Returns the provided text, minus any characters considered printable. Printable characters are the 95 printable ASCII characters plus three special characters: BACKSPACE (0x08), TAB (0x09), and NEWLINE (0x0a).

 | Sync-time evaluation |
| Text | [stripHtml()](/suite/help/25.3/fnc_text_striphtml.html) |

Changes the provided HTML string into a plain text string by converting `<br>`, `<p>`, and `<div>` to line breaks, stripping all other tags, and converting escaped characters into their display values.

 | Sync-time evaluation |
| Text | [stripwith()](/suite/help/25.3/fnc_text_stripwith.html) |

The function returns the provided text, minus any characters on the list of invalid characters.

 | Sync-time evaluation |
| Text | [substitute()](/suite/help/25.3/fnc_text_substitute.html) |

Substitutes a specific part of a string with another string.

 | Sync-time evaluation |
| Text | [toHtml()](/suite/help/25.3/fnc_text_tohtml.html) |

Converts a string in plain text to the HTML equivalent that displays appropriately in an HTML page, by replacing reserved characters with their escaped counterparts.

 | Sync-time evaluation |
| Text | [trim()](/suite/help/25.3/fnc_text_trim.html) |

Removes all unnecessary spaces from the text.

 | Sync-time evaluation |
| Text | [upper()](/suite/help/25.3/fnc_text_upper.html) |

Converts all letters in the text into uppercase.

 | Sync-time evaluation |
| Text | [value()](/suite/help/25.3/fnc_text_value.html) |

Converts text representing a number into an actual number or datetime.

 | Sync-time evaluation |
| Trigonometry | [acos()](/suite/help/25.3/fnc_trigonometry_acos.html) |

Returns the arccosine(s) of the specified number(s) in radians.

 | Sync-time evaluation |
| Trigonometry | [acosh()](/suite/help/25.3/fnc_trigonometry_acosh.html) |

Returns the hyperbolic arccosine(s) of the specified number(s) in radians.

 | Sync-time evaluation |
| Trigonometry | [asin()](/suite/help/25.3/fnc_trigonometry_asin.html) |

Returns the arcsine(s) of the specified number(s) in radians.

 | Sync-time evaluation |
| Trigonometry | [asinh()](/suite/help/25.3/fnc_trigonometry_asinh.html) |

Returns the hyperbolic arcsine(s) of the specified number(s) in radians.

 | Sync-time evaluation |
| Trigonometry | [atan()](/suite/help/25.3/fnc_trigonometry_atan.html) |

Returns the arctangent(s) of the specified number(s) in radians.

 | Sync-time evaluation |
| Trigonometry | [atanh()](/suite/help/25.3/fnc_trigonometry_atanh.html) |

Returns the hyperbolic arctangent(s) of the specified number(s) in radians.

 | Sync-time evaluation |
| Trigonometry | [cos()](/suite/help/25.3/fnc_trigonometry_cos.html) |

Returns the cosine(s) of the specified number(s).

 | Sync-time evaluation |
| Trigonometry | [cosh()](/suite/help/25.3/fnc_trigonometry_cosh.html) |

Returns the hyperbolic cosine(s) of the specified number(s).

 | Sync-time evaluation |
| Trigonometry | [degrees()](/suite/help/25.3/fnc_trigonometry_degrees.html) |

Converts the measure(s) of the specified angle(s) from radians to degrees.

 | Sync-time evaluation |
| Trigonometry | [radians()](/suite/help/25.3/fnc_trigonometry_radians.html) |

Converts the measure of the specified angle from degrees to radians.

 | Sync-time evaluation |
| Trigonometry | [sin()](/suite/help/25.3/fnc_trigonometry_sin.html) |

Returns the sine(s) of the specified number(s).

 | Sync-time evaluation |
| Trigonometry | [sinh()](/suite/help/25.3/fnc_trigonometry_sinh.html) |

Returns the hyperbolic sine(s) of the specified number(s).

 | Sync-time evaluation |
| Trigonometry | [tan()](/suite/help/25.3/fnc_trigonometry_tan.html) |

Returns the tangent(s) of the specified number(s).

 | Sync-time evaluation |
| Trigonometry | [tanh()](/suite/help/25.3/fnc_trigonometry_tanh.html) |

Returns the hyperbolic tangent(s) of the specified number(s).

 | Sync-time evaluation |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...