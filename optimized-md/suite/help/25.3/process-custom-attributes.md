---
source_url: https://docs.appian.com/suite/help/25.3/process-custom-attributes.html
original_path: process-custom-attributes.html
version: "25.3"
title: "Custom Attributes"
page_id: "process-custom-attributes"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Attributes

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page applies to [data stewards](processhq.html#-data-stewards). It describes the different custom attributes that can be created in a process.

## Overview

In [process insights](process-insights.html), you use processes to discover actionable insights about your organization's workflows. However, you may find that your process data doesn't have all the information you need.

When [adding or editing a process](add-process.html), you can enhance your existing case and event data using _custom attributes_. If you map a custom attribute as a categorical attribute type, it will be analyzed along with the other [attributes](key-pi-terms.html#attributes) in your process.

Custom attributes are created on processes in process insights, so you can quickly adapt your process data without waiting for a developer to [create custom record fields](custom-record-fields.html) or make other changes to the record types used in your processes.

When creating custom attributes, you can use fields from record types and related record types as long as you have [data steward access](configure-security.html#assign-data-stewards-to-record-types) to those record types.

You can create custom attributes using any of the templates described below.

## Groups Based on Aggregations

The **Groups Based on Aggregations** template allows you to aggregate and filter a record field from a [one-to-many relationship](record-type-relationships.html) and organize the aggregations into groups.

This template is useful when you want to categorize data from one-to-many relationships. For example, you may want an attribute that counts the number of documents in an insurance claim, then categorizes that claim as low, medium, or high complexity based on the number of documents.

See an [example](common-preparations.html#use-data-from-a-one-to-many-relationship) using this template to leverage data from a one-to-many relationship in a process.

### Filtering aggregated data

When you apply a filter in this template, there will be a one-to-many relationship in the path between where you are aggregating data and where you are filtering. Because of this relationship, you will observe “at least one” filter behavior.

When you filter by a related record field from a one-to-many relationship (i.e., the "many" side of the relationship), the filter will return all records from the base record type (the "one" side of the relationship) that have _at least one_ related record that meets the filter condition.

For example, let's say you have the Order record type and the Order Item record type, and you want to know the number of orders that have at least one order item purchased with a promo code.

Since there is a one-to-many relationship between Order and Order Item (one order can have many items purchased with or without a promo code), when you apply a filter for items purchased with a promo code, the filter will include an order as long as at least one item in the order was purchased with a promo code.

### Choosing an operator

When you add more than one filter condition, you can choose how process insights should evaluate your list of filters.

You can choose any of the following operators:

| Operator | Description |
| --- | --- |
| OR | Return records that meet one or the other filter condition. |
| AND | Return records that meet at least one of the filter condition. |
| AND ALL | Return records that meet all of the filter conditions. |

#### Using the AND ALL operator

When you want to filter by multiple related record fields from the same one-to-many relationship, and you want to include only records that meet all of the filter conditions, use the AND ALL operator.

For example, let's say your case record type is Customer, and Customer has a one-to-many relationship to the Support Case record type. You want to filter for all customers that have at least one active support case that was created within the last week.

When you use the AND ALL operator for these filter conditions, it will only include customers with at least one related case that meets both filter conditions.

If you use the AND operator instead, the filter would still include customers that have at least one case that is both active and created in the last week. However, it would also return any customers that have at least one active case and at least one other case that was created in the last week.

#### Using the AND operator

When you want to filter by multiple related record fields from the same one-to-many relationship, and a record can only meet one of the filter conditions, use the AND operator.

For example, let's say your case record type is Customer, and Customer has a one-to-many relationship to the Support Case record type. You want to filter for all customers who have at least one open support case and in progress support case.

When you use the AND operator for these filter conditions, it will include customers with support cases that are open and customers with support cases that are in progress. It will not include customers with no support cases or customers with support cases in other statuses.

If you use the AND ALL operator instead, the filter would not include any customers. Because a support case cannot be both open and in progress, there will not be any records that meet all of the filter conditions.

## Groups Based on a Range

The **Groups Based on a Range** template uses a range to organize your numerical data into groups. This template only supports record fields of type Number (Integer) or Number (Decimal).

This template is useful when you want to categorize data based on a range of values. This can also be used to hide specifics of sensitive data. For example, you can create a custom attribute that categorizes employee salary ranges rather than displaying salaries as exact values.

**Tip:**  Make sure to use **Handle Null Values** to specify a default value in case one of the values is null. For example, for order items where the price hasn't been set, your default value could be "Price Not Set". Null values in related record fields are not replaced by the **Handle Null Values** option, and are included last group in the list instead.

See an [example](common-preparations.html#hide-sensitive-data) using this template to hide sensitive data from a process.

## Groups Based on a Date Difference

The **Groups Based on a Date Difference** template allows you to calculate the difference between two dates and organize the difference into groups. This template requires at least one field of type Date or Date and Time.

This template is useful when you want to categorize how long it took to complete something in your business process. For example, you can create a custom attribute that categorizes deliveries by whether they're on time or overdue.

You can also categorize events relative to a specific date. For example, you can create a custom attribute that calculates the difference between a payment date and a due date, then categorizes the payment as early, on time, or past due.

**Tip:**  Make sure to use **Handle Null Values** to specify a default value in case one of the date values is null. For example, for support cases that aren't closed yet, your default value could be "In Progress".

See an [example](common-preparations.html#group-the-difference-between-two-dates) using this template to clean up process data.

## Find and Replace

The **Find and Replace template** allows you to find values in a field, then save the new values in a new attribute. You can find and replace values in fields of type Text, Integer, or Boolean.

This template is useful when you want to clarify, correct, or standardize values in a particular field. For example, you can create a custom attribute that standardizes case attribtues.

Let's say you have an Engineering Ticket record type that stores data about tickets, including the sprint the ticket is assigned to. In this example, you could rename values in the `sprint` field from "Team ABC Sprint 1" and "Team XYZ Sprint 1" to "Sprint 1" to simplify the case attributes.

You can enter a list of values in a single **Find** field and replace them all with the single value in the **Replace With** field.

If you have more than one find and replace row in your template configuration, the template evaluates the rows in the order they appear on the page. You can drag and drop the rows to rearrange them.

**Tip:**  Make sure to use **Replace Null Values** to specify a default value in case one of the field values is null. For example, for engineering tickets not assigned to a sprint, your default value could be "None". Use **Replace Other Non-null Values** to replace any other values that aren't null and aren't specified in the **Find** and **Replace With** fields.

See an [example](common-preparations.html#standardize-activities-\(event-types\)) using this template to standardize event types in a process.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...