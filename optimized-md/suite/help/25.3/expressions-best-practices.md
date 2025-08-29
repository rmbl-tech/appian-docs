---
source_url: https://docs.appian.com/suite/help/25.3/expressions-best-practices.html
original_path: expressions-best-practices.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Expressions Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

This section describes helpful tips for expressions that follow Appian best practices.

## Save expression as expression rules

When you write an expression that can be applied in multiple places around your system, such as one that retrieves information on the most recent meeting event, it is a best practice to create a rule out of it.

An expression rule is a stored expression with a user-defined name, description, definition, and a central location that can be reused within any expression field. They are accessible through the Expression Editor or can be typed into an expression.

See also: [Expression Rules](Expression_Rules.html), [Create Constant](expression-editor.html#create-constant), [Save Selected Expression As…](expression-editor.html#save-selected-expression-as)

## Save literal values as constants

Similar to expression rules, instead of defining the same literal value multiple times in your system, such as the number of days until a deadline, define the literal value as a constant.

See also: [Constants](Constants.html)

## Permissions used during evaluation

In order for an expression to execute and logic to evaluate when the system attempts to derive information at runtime, the initiator must have sufficient user rights.

For example, if an expression is initiated by a user who does not have sufficient rights to access a resource requested by the expression, it will encounter an exception that halts the evaluation.

When creating an expression for a process model, the developer or task owner may require the rights instead.

See also: [User Contexts for Expressions in Process](User_Contexts_for_Expressions.html)

## Designing memory-efficient expressions

When an expression uses too much memory, it is typically doing one of the following:

-   storing too much data in local variables
-   looping over too many items
-   returning too many components or too much data

This section provides guidance on how to avoid these design patterns.

### Page and filter query results

Large queries are one of the easiest ways to store too much data in local variables. When you query a lot of data and store it in a variable, that data is stored in memory for as long as that variable can be used. For local variables configured to `refreshAlways`, these values are stored for the entire evaluation of the `a!localVariables()` function. For local variables with [any of the other refresh configurations](Local_Variables.html#configuring-refresh-behavior), the values are stored across all evaluations on that interface. See the [Interface Evaluation Lifecycle](SAIL_Performance.html#local-variables) page for more information on how local variables are evaluated.

To avoid memory issues with storing too much data in local variables, always do at least one of the following:

1.  Page your query results using a reasonable batch size. Unbounded queries (those that use a batch size of -1) can return an unpredictable amount of data, especially since your production environment will have a lot more data than your development environment where you initially build the query.
    -   `a!queryEntity`, `a!queryProcessAnalytics`, `a!queryRecordType`, and query rules all support paging using [a!pagingInfo](fnc_system_a_paginginfo.html)
    -   If you're using an integration, check whether the API supports paging. If it does not support paging, you will need to filter the results instead.
2.  If you can't use paging, always apply filters to the data to limit the number of results. Be sure you understand how many results would be returned by a particular combination of filters, particularly if it varies based on the user's selection or group membership.
    -   `a!queryEntity`, `a!queryProcessAnalytics`, and `a!queryRecordType` support filtering using [a!queryFilter](fnc_system_a_queryfilter.html) and [a!queryLogicalExpression](fnc_system_a_querylogicalexpression.html)
    -   Many integrations also support filtering by configuring HTTP query parameters. Check what parameters are supported by the API.

### Limit looping iterations

Looping over a large array of data can use a large amount of memory. While a looping function is being evaluated, the results of each iteration are accumulated so they can be returned at the end of the function evaluation. Even if each iteration is only returning a very small value, the overall result can use a lot of memory if the number of iterations is very large.

This problem can be compounded if you have nested looping functions. Memory will be allocated for each looping function iteration across all nested loops and won't be reclaimed until the parent loop is completed.

To avoid memory issues with looping over too many items:

-   Check that you actually need to use a looping function. Some functions can also work on an array of data, such as [text()](fnc_text_text.html) or [if()](fnc_logical_if.html). If you can easily achieve the same behavior without using a looping function, you shouldn't use one.
-   Limit the number of items in your array by filtering or paging the data. In general, avoid looping over more than 500 items.
-   Don't use deeply nested looping functions. In general, avoid nesting beyond 2 levels.

### Avoid large interfaces

In reality, the result of your expression is just a piece of data, and interfaces are no exception. Interfaces that contain a large number of components or components that contain a large amount of data can cause memory issues when being processed by the system. This is usually more of a problem when the interface contains a dynamic number of components based on a large data set, such as a grid with a dynamic number of rows.

To avoid memory issues with too many components on an interface:

-   Avoid dynamically generating components (including grid rows or chart series) based on an unbounded or large data set. Always limit the amount of data by [paging or filtering](#page-and-filter-query-results) before displaying on an interface.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...