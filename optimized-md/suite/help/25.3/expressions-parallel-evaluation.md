---
source_url: https://docs.appian.com/suite/help/25.3/expressions-parallel-evaluation.html
original_path: expressions-parallel-evaluation.html
version: "25.3"
title: "Parallel Evaluation of Expressions"
page_id: "expressions-parallel-evaluation"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Parallel Evaluation of Expressions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

In order to evaluate expressions faster, Appian automatically evaluates queries in parallel. This means that instead of waiting for each query to evaluate one after another, independent queries will be evaluated at the same time if there are additional resources available, reducing the overall time it takes to evaluate the expression. This includes database queries, web service calls, custom plug-ins, and even Appian functions that query data stored within Appian.

Queries are evaluated in parallel in any place where there's no way for one part of the expression to affect another part, such as:

-   Items in a list.
-   Parameters of a function or rule.
-   Definitions of local variables.
-   Fields within a type constructor or dictionary.
-   Iterations of a looping function.
-   Rows of a [read-only grid](Grid_Column_Component.html#using-the-value-parameter).

Of course, any parts of the expression that depend on a query will only be evaluated after that query is complete, thus ensuring that the result will be the same regardless of whether the expression is evaluated serially or in parallel. You may see this reflected in the [**Performance** tab](Performance_View.html) results for a particular interface.

## Example

Let's look an example to illustrate how it would be evaluated in parallel.

Say you want to get the list of all account managers who don't currently have an active customer account. You may use an expression like the following:

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
a!localVariables(
  local!customers: {
    rule!getAllDomesticCustomers(),
    rule!getAllInternationalCustomers()
  },
  local!accountManagers: rule!getAccountManagersByRegionAndVertical(
    regions: rule!getAllRegions(),
    verticals: rule!getAllVerticals()
  ),
  local!AMsWithoutAccounts: difference(local!accountManagers, local!customers.manager),
  a!forEach(
    items: local!AMsWithoutAccounts,
    expression: rule!displayUserName(fv!item)
  )
)
```

where `rule!displayUserName` calls the `user` function, which is considered a query because it retrieves user information from Appian. When every part of this expression is evaluated serially, it looks something like this:

[![images/serial_evaluation_example_diagram.png](images/serial_evaluation_example_diagram.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img306)

[![](images/serial_evaluation_example_diagram.png)](#_)

However, when there are resources available to evaluate queries in parallel, the evaluation would look like this:

![Diagram of how the example expression evaluates in parallel](images/parallel_evaluation_example_diagram_with_performance_times_212.png)

Where:

1.  `local!customers` and `local!allAccountManagers` evaluate in parallel because independent local variables are evaluated in parallel when they contain a query.
2.  `rule!getAllDomesticCustomers` and `rule!getAllInternationalCustomers` evaluate in parallel because they are separate items in a list and both are queries.
3.  `local!AMsWithoutAccounts` is not evaluated in parallel because it depends on both `local!customers` and `local!allAccountManagers`.
4.  `a!forEach` iterations evaluate in parallel after evaluating `local!AMsWithoutAccounts` because `rule!displayUserName` calls the `user` function, which is considered a query.

All of this happens without making any changes to the overall expression; Appian can automatically detect which parts of the expression are independent and evaluate them in parallel to decrease the overall evaluation time.

If you look at the [**Performance** tab](Performance_View.html) for this expression, you may identify `rule!getAllInternationalCustomers` and `rule!getAllDomesticCustomers` as bottlenecks and target them for performance improvements.

If you were able to improve the performance of `rule!getAllDomesticCustomers` to 100 ms, you would notice that the overall evaluation time would not decrease because that query is being evaluated in parallel with other queries which are still taking longer.

However, if you instead were to improve the performance of `rule!getAllInternationalCustomers` to 100 ms, the overall evaluation time would decrease by 100 ms instead of 400 ms because it is still evaluating in parallel with `local!accountManagers`, which now becomes the new bottleneck.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...