---
source_url: https://docs.appian.com/suite/help/25.3/null-handling.html
original_path: null-handling.html
version: "25.3"
title: "How to Handle Null Values in Appian"
page_id: "null-handling"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# How to Handle Null Values in Appian

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Handle Null and Empty Values in Your Apps

Learn how to prevent your app from throwing an error when it encounters null or empty values.

## Overview

Computers operate on logic: if **this**, then **that**. So it follows that Appian applications operate on logic as well, albeit much more sophisticated than simple conditional statements. If your application encounters a condition that it's not sure how to handle and that you haven't accounted for, such as a null value, then that part of your application may not operate as you intend it to and lead to a poor experience for users.

This topic discusses null values, why they can be tricky, and what you can do to prevent these problems before they occur.

**Tip:**  Looking to jump right in? We've outlined [some common scenarios](#common-scenarios) for you to quickly learn how to handle nulls in your application.

## What are null values?

In the Appian database, null values are essentially unknown. They are not populated with any information. For example, if you have a table that captures customer email addresses and some are missing, they would be `null` in the database. If the database field contained the word `unknown` or `empty`, then it would technically have a value—the word itself!

### Null vs. empty

To most people, "null" might seem synonymous with values like `N/A`, `-`, or a blank field. These words mean the absence of something, right? Not quite.

In databases, there is a big difference between null and these values. To begin with, `null` isn't a value at all. For example, a number field can have any number, but if there's no number there for a specific record, then we say that the number is `null`.

On the other hand, `N/A`, `-`, or a blank field are how many user-facing interfaces display null values. If `N/A` or `-` is saved in the database field directly, then that field is no longer considered null. The information may not be valuable, but it's technically a value.

## Why are nulls an issue?

Data is foundational to every part of your application, but when that data contains null values, it can sometimes cause issues in your applications. When Appian isn't able to properly query or display data, it may not be able to proceed with common functionality. For example, you can't transform a null string, you can't loop over a null list, and you can't show a link if the link address is null.

It's important to avoid errors due to null values so that you can provide a consistent and pleasant experience for your users. Otherwise, they may consider your application broken or unstable if data causes errors in their workflows. Even worse, users may be stopped from being able to complete their work!

Null value handling also offers these benefits:

-   Avoid a broken or unstable application
-   Make your application more tolerant of missing or changing data
-   Provide a consistent user experience
-   Reduce time tracking down edge cases
-   Reduce time troubleshooting bugs

## Patterns to prevent errors from null values

To ensure your application behaves as you intend to in all scenarios, consider how and where to handle null values as you create design objects. You can use these functions to help detect and handle null values in Appian:

-   [a!defaultValue() function](fnc_informational_a_defaultvalue.html)
-   [a!isNullOrEmpty() function](fnc_informational_isnullorempty.html)
-   [a!isNotNullOrEmpty() function](fnc_informational_isnotnullorempty.html)

### Common scenarios

This section contains a few example use cases where missing values in production data can cause problems, and how you can prevent them.

#### Null values in expressions and functions

When [querying data](Query_Recipes.html) within an interface or expression, you'll use one of several functions containing a filter parameter. Within this parameter, [a!queryFilter()](fnc_system_queryrecordtype.html) allows use of two filter operations: `is null` and `not null`. Use these to filter out values that are not populated in your data source.

If you are using this expression and wish to filter out the null values, you can use the `applyWhen` parameter to configure the filter to be more predictable. For example, `applyWhen: a!isNotNullOrEmpty(ri!id)` would prevent the filter from being applied when the `id` rule input is empty.

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
a!queryRecordType(
 recordType: recordType!Employee,
  fields: {
     recordType!Employee.fields.fullName,
     recordType!Employee.fields.username,
     recordType!Employee.fields.officeNumber
  },
  filters: a!queryFilter(
   field: recordType!Employee.fields.isRemote,
    operator: "=",
    value: false,
!    applyWhen: a!isNotNullOrEmpty(recordType!Employee.fields.isRemote)
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1, batchSize: 400
  )
).data

```

You can also use functions to filter null values out of arrays, using [`reject`](fnc_looping_reject.html):

```
1
2
3
4
reject(
  a!isNullOrEmpty,
  {1, 2, null, 3, null, 4}
)
```

Returns `{1, 2, 3, 4}`.

#### Casting

When you cast data from one data type to another, it's a good idea to thoroughly test that the results are what you expect, especially if that data contains null values.

For example, suppose you want to cast a map to a record type. However, one of the values in the map is null. You'll want to confirm that your expression it casting the data as you expect: you want the field to be null, rather than containing the string `"null"`.

#### Null values in dropdowns and other interface components

Certain interface components, like [dropdowns](Dropdown_Component.html), will show an error when a null value is passed into them. This is most likely to occur when you use a query to populate the choiceValues and choiceLabels parameters within the function.

For example, suppose you're building a record list interface for all cases, and it contains a column for who created the case. You're creating a user filter that lists all of the creator names, which are in a related record type. But when an employee leaves your company, they're removed from the related record type. When loading the list of cases, Appian tries to find the creator's name, but if they've left the company, their information no longer exists. You'd see an error when trying to load the interface.

You can use [a!defaultValue](fnc_informational_a_defaultvalue.html) so Appian knows what to include when a value is empty. For example, `choiceLabels: a!defaultValue(ri!record[recordType!Cases.Employees.employeeName], "Employee #" & ri!record[recordType!Cases.Employees.id])` would prevent errors when any item in the list `ri!record[recordType!Cases.Employees.employeeName]` is null.

When rendered, the component looks like:

![Unavailable as an option in the dropdown](images/null-handling-dropdown.png)

#### Null values in integration responses

Querying data external to your system may present additional challenges. If you're not in control of that data, you may have to create conditions to handle unexpected formatting or values, including null values. Specifically, you'll want to add null checking and handling logic, such as the functions [listed above](#null-values-in-expressions-and-functions).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...