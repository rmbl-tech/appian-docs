---
source_url: https://docs.appian.com/suite/help/25.3/expression-advanced-evaluation.html
original_path: expression-advanced-evaluation.html
version: "25.3"
title: "Advanced Expression Evaluation"
page_id: "expression-advanced-evaluation"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Advanced Expression Evaluation

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

The advanced evaluation options below apply mainly to creating dynamic behavior in user [interfaces](interface_overview.html). These options work anywhere in the system except in analytics reports and process event nodes (like Start Events or Timer Events).

## Partial evaluation of rules and type constructors

With partial evaluation, you can evaluate arguments in a [rule](Expression_Rules.html) or [type constructor](constructing-data-type-values.html) and defer complete evaluation of the function until the remaining arguments are available. In computer science publications, this is commonly called _partial application_ or _partial function application_.

For example, when creating a Tempo report using expressions, you may want to create multiple filters the user can interact with in order to narrow down results in a grid, such as filtering items to those updated between two dates.

In this case, you would set up the expression with two date components (such as startDate and endDate ) each passing its value to a rule or data type that requires multiple arguments. The startDate and endDate inputs would save their values into a query that expects both a start date and an end date to filter by.

Normally, if all required arguments are not passed, the expression would not evaluate and the interface would not render.

In order to have your interface render and later accept arguments to the remaining parameters, you need to set up your function for partial evaluation.

To construct a partial function, create the expression as usual and leave an underscore character for arguments to be evaluated later. See the sections below for examples.

### Passing arguments by position

Deferring one argument: `index(_, {1, 1, 3}, 0)`

Deferring two arguments: `index(_, _, 0)`

### Passing arguments by keyword

Deferring one argument: `a!pagingInfo(startIndex:_, batchSize:10)`

Deferring two arguments: `a!pagingInfo(startIndex:_, batchSize:_)`

Add the arguments to be evaluated later on to the end of the function and enclose them in parentheses as shown in the examples below:

### Filling blank arguments by position

Arguments are applied to the underscores in the order they are listed from left to right.

Partial function that takes one argument:

-   `index(_, {1, 1, 3}, 0)({10, 20, 30})`

-   `a!pagingInfo(startIndex: _, batchSize: 10)(1)`

Partial function that takes two arguments:

-   `index(_, _, 0)({10, 20, 30}, {1, 1, 3})`

-   `a!pagingInfo(startIndex: _, batchSize: _)(1, 10)`

### Filling blank arguments by keyword

Arguments are applied by matching up their keywords. They can only be passed by keyword to partial functions that are defined by keyword.

For example, `a!pagingInfo(1, _)(batchSize: 10)` is not allowed.

Partial function that takes one argument: `a!pagingInfo(startIndex: _, batchSize: 10)(startIndex: 1)`

Partial function that takes two arguments: `a!pagingInfo(startIndex: _, batchSize: _)(startIndex: 1, batchSize: 10)`

When the blank arguments are filled for the examples above, the functions will evaluate as follows:

Passing Arguments by Position: `index({10, 20, 30}, {1, 1, 3}, 0)`

Passing Arguments by Keyword: `a!pagingInfo(startIndex: 1, batchSize: 10)`

Arguments that make up a partial function are evaluated immediately. For example, in `concat(now(), _)`, `now()` returns the time at which the expression is evaluated to return a partial function.

### Functions with unlimited parameters

Functions that take an unlimited number of inputs, such as `sum()`, `product()`, and `difference()`, can also be partially evaluated by using the underscore syntax.

Inputs are applied for each underscore in order, and leftovers are added at the end as shown in the examples below:

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
sum(1, _)(2, 3, 4) returns sum(1, 2, 3, 4)

sum(1, _)(pv!array) returns sum(1, 2, 3, 4) where pv!array is {2, 3, 4}

sum(_, 2)(1, 3, 4) returns sum(1, 2, 3, 4)

sum(_, 2, _)(1, 3, 4) => sum(1, 2, 3, 4)

myrule(_)(1, 2) returns myrule(1, 2)
```

Appian recommends including the exact number of underscores when the number of arguments is known even though multiple arguments can be passed to a partial function when it is marked with only one underscore. This helps with the readability and maintainability of the expression.

For example:

-   `myrule(_, 2, _, _, _)(1, 3, 4, 5)` which equates to `myrule(1, 2, 3, 4, 5)`

Rules created for the Web Content Channel, operators, and the following functions do not support partial evaluation:

-   `a!localVariables()` function, such as `a!localVariables(local!a:20, _)`
-   Operators, such as `"Hello"=_`

For a function recipe that showcases a looping function that uses partial evaluation, see also: [Boolean Results](Function_Recipes.html#boolean-results)

## Indirectly evaluating arguments

Rules can execute a function, rule, data type, or partial function passed as an argument indirectly by way of a rule input. For example, a rule that formats data for a Grid component can indirectly evaluate a rule input function based on the PagingInfo value passed to the rule each time a user interacts with the grid.

See also: [Grid Tutorial](Grid_Tutorial.html)

To do this, create a rule with an input of type Any Type and define the rule as `=ri!inputName()` where `inputName` is the name of your input based on what it will represent. For example `gridDataFn`.

You can then pass 0, 1, or more parameters to this rule depending on the number of parameters that the function, rule, or data type entered as the `inputName` expects.

For example, if you have a rule called `myrule` with the inputs `ri!inputName` (Any Type) and `ri!input` (Any Type), and it is defined by `=ri!inputName(ri!input)` the following expressions evaluate as shown:

`myrule( fn!sum, {1, 2, 3})` returns `6`

`myrule( fn!average, {1, 2, 3})` returns `2`

`myrule( fn!sum( _, 4), {1, 2, 3})` returns `10`

```
1
2
3
4
5
myrule(
  a!pagingInfo(
    startIndex: _, batchSize: 10),
  1
)
```

returns `[startIndex=1, batchSize=10, sort=]`

This functionality is especially useful when defining reusable rules that encapsulate the logic for a interface.

For example, an expression rule is set up to configure a grid component in a UI, and the rows in the grid represent vehicle data. The rule defines the grid columns, label, instructions, etc., and takes as its input a reference to the source of the data. This data will sometimes come from process variables or from an external database through queries. The rule that returns the grid component with vehicle data will then be called as follows:

If the data comes from process variables:

```
1
=showVehicleGrid( todatasubset( pv!vehicles, _))
```

If the data comes from a query:

```
1
=showVehicleGrid( getVehiclesForClient( pv!clientId, _))
```

If the data comes from a rule that calls a query:

```
1
=showVehicleGrid( determineVehiclesToShow( _, pv!someInput1, pv!someInput2))
```

In the above examples, the rule `showVehicleGrid` takes a partial function that expects one parameter. showVehicleGrid then applies a PagingInfo value to the partial function to return one page of data in a data subset.

**Note:**  Rules created for the Web Content Channel do not support indirect evaluation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...