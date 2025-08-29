---
source_url: https://docs.appian.com/suite/help/25.3/default-filters.html
original_path: default-filters.html
version: "25.3"
title: "Configure Default Filters"
page_id: "default-filters"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Default Filters

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page describes how to configure default filters on unsynced record types.

**Note:**  Default filters are not applicable to record types that use a web service as the source. Instead, you can use the [record data source](configure-record-data-source.html#create-a-record-data-source) expression to conditionally filter out data.

## Overview

After [choosing the source](configure-record-data-source.html) of your record type, you may decide that you don't need all the data from your source, or that you want to exclude certain data to prevent end users from viewing it. From the record type, you can add filters that exclude source data that does not meet the specified criteria.

If your record type does not have [data sync](about-data-sync.html) enabled, you can apply _default filters_ to only allow certain records to appear in the record list and views based on the conditions you specify.

If your record type has data sync enabled, configure [sync filters](records-filter-source-data.html) instead.

## About default filters

When your record type does not have data sync enabled, you can use default filters to specify which records appear in the record list and views based on the conditions you specify.

When a record is filtered out by a default filter:

-   The record does not show up in the record list.
-   The record is not returned in queries on that record type.
-   Users may not access the views on the record.

Each default filter defines a condition that must be _true_ for a record to display in the list. If you have multiple conditions, the record must meet all conditions in order to display.

For example, in a Case record type, you may want case managers to view all customer support cases, but you only want support engineers to see the cases that are assigned to them. Using a default filter, you could create a filter condition that states if a logged in user is a member of the Support Engineers group, only return cases assigned to the logged in user; Otherwise, return all customer support cases.

**Tip:**  If your record type has data sync enabled, you can use [record-level security](record-level-security.html) to achieve this same use case.

[Learn how to add default filters](#add-default-filters).

## Add default filters

To create a default filter, use one of the following options:

-   [By Field](#by-field): Allows you to apply multiple default filters joined by an AND union.
-   [Expression](#expression): Allows you to apply more complex filters by entering an expression containing a list of `a!queryFilter()` or `a!queryLogicalExpression()`.

### By field

Creating filters by field allows you to easily set up filters using three criteria: **Field**, **Operator**, and **Value**. Multiple filters are combined using the `AND` operator.

To create a default filter by field:

1.  In your record type, go to **Source & Default Filters**.
2.  Keep the default selection of **By Field**.
3.  Click on **New Default Filter**.
4.  Click the **Field** dropdown and select the record field that you want to set as the default filter.
5.  Select the appropriate comparison from the **Operator** dropdown.
6.  Enter the value for the comparison in the **Value** field. This is an expression field, so encase text values in quotes.
7.  Click **OK**.
8.  Click **SAVE CHANGES**.

### Expression

Creating filters using an expression allows you to create more complex filters. When configuring sync filters in expression mode, you must use an expression containing a list of [a!queryFilter()](fnc_system_a_queryfilter.html) or [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html).

To create a default filter using an expression:

1.  In your record type, go to **Source & Default Filters**.
2.  Select **Expression**.
3.  In the expression editor, enter an expression that returns a list of `queryFilter` or `queryLogicalExpression`.
4.  Click **OK**.
5.  Click **SAVE CHANGES**.

For example, the following default filter expression returns cases that are either assigned to the logged in user, or cases that are not assigned to the "Global Users" group but are either _Urgent_ or _High priority_:

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
   /*
   (Assigned to User OR (NOT Assigned to "Global Users" AND (priority="Urgent" OR priority="High")))
   */
  if(a!isUserMemberOfGroup(loggedInUser(),cons!CASE_GROUP_GLOBAL_VIEWERS),
    {},
    a!queryLogicalExpression(
      operator: "OR",
       logicalExpressions: {
         a!queryLogicalExpression(
           operator: "AND",
           filters: a!queryFilter(
            field: "userName",
            operator: "=",
            value: loggedInUser())
        ),
         a!queryLogicalExpression(
          operator: "AND",
           logicalExpressions: {
             a!queryLogicalExpression(
              operator: "AND",
              filters: a!queryFilter(
                field: "userName",
                 operator: "<>",
                value: cons!CASE_ADMIN_DB_KEY_1)
            ),
            a!queryLogicalExpression(
               operator: "OR",
               filters: {
                 a!queryFilter(field: "priority", operator: "=", value: "Urgent"),
                a!queryFilter(field: "priority", operator: "=", value: "High")
              }
             )
           }
        )
      }
    )
  )
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...