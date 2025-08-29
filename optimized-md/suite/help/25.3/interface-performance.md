---
source_url: https://docs.appian.com/suite/help/25.3/interface-performance.html
original_path: interface-performance.html
version: "25.3"
title: "Interface Performance Best Practices"
page_id: "interface-performance"
section: "Introduction"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Interface Performance Best Practices

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Tune an Appian Interface for Performance

Learn how to use Performance View to diagnose a slow interface. In this walkthrough you will learn how to structure your interface, using functions like if() and choose() to reduce evaluation times.

## Introduction

Designing performant interfaces isn't rocket science. But it can be difficult if you don't understand how interface performance works, or the best practices for how to design interfaces that are quick to load and respond to user interactions.

**Tip:**  One of the most effective ways to improve interface performance is using [asynchronous loading for slow data](#use-asynchronous-loading-for-slow-data), which allows users to view and interact with the rest of the interface while they wait for the slow data to load. This is especially helpful for integrating with slow external systems that you can't control.

This page compiles some of the best tips and strategies for designing performant interfaces, as well as some of the most important performance principles to get you (and your interfaces) up to speed quickly.

[Build Performant Interfaces](https://academy.appian.com/#/online-courses/b4a50027-8b8d-41ad-bf27-a48a8720f5e)

Learn more about interface performance in Appian with this course on building performant interfaces.

## Interface performance principles

### Key terminology

-   **[Interface evaluation](#interface-evaluations)**: The process of rendering an interface by running the rules, functions, logic, and variables that make up an interface expression.
-   **[Expensive computations](#expensive-computations)**: A part of an expression that takes a long time to evaluate. For example, a query that takes a long time to run.
-   **[Conditional logic](#conditional-logic)**: Functions or parameters that execute different actions based on whether a specific condition is true or false.
-   **[Local variables](Local_Variables.html)**: Variables that are defined using [a!localVariables()](fnc_evaluation_a_localvariables.html) and are generally only used in the expression in which they are defined. By default, a local variable is only reevaluated if another local variable that it references is changed. You can control this reevaluation behavior using the [a!refreshVariable()](fnc_evaluation_a_refreshvariable.html) function.
-   **Rule inputs**: Variables that are created in an interface object or expression rule object and are generally used to pass data into or out of interfaces and expression rules to other parts of the application.

### Interface evaluations

To render an interface, Appian performs an interface evaluation, meaning it runs the rules, functions, and variables that make up an interface expression to determine what to display to the end user.

The following example shows how an interface looks when the expression is initially evaluated. It shows a text field and a button. On the initial evaluation, the value of `local!showTextField` is `true`, which means the text field's _showWhen_ parameter is also `true`.

[![Example interface evaluation](images/interface-evaluation.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img807)

[![](images/interface-evaluation.png)](#_)

Certain triggers, like a user entering text into a field, cause a reevaluation. During this reevaluation, only certain parts of the expression are run again. While interface components are usually evaluated with each trigger, local variables are only reevaluated under certain conditions.

In the following example, when a user clicks the **HIDE TEXT** button, it triggers a _saveInto_ parameter that updates the value of `local!showTextField` to `false`. This causes a reevaluation that updates both components on the page:

-   The text field disappears because the value of _showWhen_ is now `false`.
-   The button label updates to **SHOW TEXT** because the value of `local!showTextField` in the `if()` function is now `false`.

[![Example interface on reevaluation](images/interface-reevaluation.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img808)

[![](images/interface-reevaluation.png)](#_)

The following table specifies what will trigger an interface evaluation, as well as which local variables and interface components are evaluated for each type of trigger. For more information on refresh behavior, see [Configuring refresh behavior](Local_Variables.html#configuring-refresh-behavior).

| Evaluation trigger | Which local variables are evaluated? | Which interface components are evaluated? |
| --- | --- | --- |
| A user first loads an interface. | All; Unless they wouldn't evaluate due to [conditional logic](#conditional-logic). | All; Unless they wouldn't evaluate due to [conditional logic](#conditional-logic). |
| A user interacts with a component that uses a _saveInto_ parameter. |
-   Local variables that are updated by the _saveInto_ parameter.
-   Local variables that reference a local variable that is updated by the _saveInto_ parameter.
-   Local variables that have _refreshAlways_ set to `true`.

 |

-   All; Unless they wouldn't evaluate due to [conditional logic](#conditional-logic).
-   By default, the _data_ parameter of records-powered components like [read-only grids](Paging_Grid_Component.html), [charts](Area_Chart_Component.html), and [dropdowns](Dropdown_Component.html) only refresh when a variable it references is updated. You can use the refresh parameters of a grid or chart to modify this refresh behavior.

 |
| A local variable uses the _refreshInterval_ parameter in [a!refreshVariable()](Local_Variables.html#configuring-refresh-behavior). |

-   Local variables that are refreshed by the _refreshInterval_ parameter.
-   Local variables that reference a local variable that is refreshed by the _refreshInterval_ parameter.
-   Local variables that have _refreshAlways_ set to true.

 |
| A user completes a [record action](record-actions.html) in a dialog. |

-   Local variables that have _refreshAfter_ set to `"RECORD_ACTION"` in [a!refreshVariable()](Local_Variables.html#configuring-refresh-behavior).
-   Local variables that reference a local variable that is refreshed by the _refreshAfter_ parameter.
-   Local variables that have _refreshAlways_ set to true.

 |

Rule inputs behave a little differently than local variables. Generally, they pass a value into or out of the interface and are not updated unless their value is updated in a _saveInto_ parameter.

However, if you use a local variable as the value of your rule input, then the refresh behavior is identical to the local variable.

For example, let's say you have an interface that uses `rule!nestedInterface` to display another interface. If you use a local variable to pass in a value to the nested interface, then the rule input in the nested interface would use the same refresh behavior as other local variables.

```
1
2
3
4
5
6
7
a!localVariables(
  local!ruleInputValue,
  rule!nestedInterface(
    /*ruleInput is a rule input in the nestedInterface interface object*/
    ruleInput: local!ruleInputValue
  )
)
```

### Expensive computations

Expensive computations are a part of an expression that can take a long time to evaluate.

For example:

-   Transforming, organizing, or modifying large amounts of data.
-   Looping over large amounts of data.
-   Querying a lot of data.
-   Performing integration calls.

These types of computations are common and necessary when designing feature-rich applications. You don't need to avoid them. This page outlines some ways you can ensure your interfaces remain performant even when using computations that can take awhile to run.

On the other hand, most functions are super quick to evaluate, such as logical functions like `if()` and computational functions like `sum()`.

If you're not sure if something takes a long time to compute, check out the [performance view](Performance_View.html) for your interface. It tells you how many milliseconds a function, rule, record type query, or local variable takes to compute.

For more information on using the performance view, check out this video from our [Appian Community YouTube](https://www.youtube.com/@AppianCommunity) channel about interface performance tuning.

### Conditional logic

Conditional logic refers to functions and parameters that execute different actions based on whether a condition is true or false. They basically say, "If this condition is met, then do this; otherwise, do something else."

When you use conditional logic in an expression, only the necessary conditions are evaluated. Conditions that are not evaluated do not add to the time that it takes for an interface to evaluate.

See [When using and(), or() and match() functions, put expensive computations last](#when-using-and-or-and-match-functions-put-expensive-computations-last) for information on how you can use this to your advantage in your interface design.

The following is a summary of what is evaluated in conditional functions and parameters.

| Conditional Logic | What is Evaluated | Example |
| --- | --- | --- |
| _showWhen_ parameter in a component | When the value of a _showWhen_ parameter returns `false`, the entire component does not evaluate, including any components nested inside of it. |
In the following expression, only the Integer section and the two integer fields are evaluated. The Text section and the two text fields are ignored since showWhen is false.

```sail
{
  a!sectionLayout(
    label: "Text",
    showWhen: false,
    contents: {
      a!textField(label: "Text 1"),
      a!textField(label: "Text 2")
    }
  ),
  a!sectionLayout(
    label: "Integers",
    showWhen: true,
    contents: {
      a!integerField(label: "Integer 1"),
      a!integerField(label: "Integer 2")
    }
  )
}
```

 |
| [if()](fnc_logical_if.html) function | If the _condition_ parameter returns `true`, the first value is evaluated. If it returns `false`, the second value is evaluated. |

In the following expression, only `"value1"` is evaluated.

```sail
if(
  true, /* condition */
  "value1", /* value if true */
  "value2" /* value if false */
)
```

 |
| [a!match()](fnc_logical_match.html) function | The evaluation stops after a match is found. All values after this are not evaluated. The default value is only evaluated if no match is found. |

In the following expression, the evaluation stops at `then: "Match 2"`.

```sail
a!match(
  value: 2,
  equals: 1,
  then: "Match 1",
  equals: 2,
  then: "Match 2",
  equals: 3,
  then: "Match 3",
  default: "Default"
)
```

 |
| [and()](fnc_logical_and.html) function | The evaluation stops after the first value that returns `false`. All values after this are not evaluated. |

In the following expression, the evaluation stops at `1+3=5` since this is false.

```sail
and(
  1+1=2,
  1+2=3,
  1+3=5,
  1+4=5
)
```

 |
| [or()](fnc_logical_or.html) function | The evaluation stops after the first value that returns `true`. All values after this are not evaluated. |

In the following expression, the evaluation stops at `1+2=3` since this is true.

```sail
or(
  1+1=3,
  1+2=3,
  1+3=4,
  1+4=5
)
```

 |
| [choose()](fnc_logical_choose.html) function | Only the value whose index matches the index in the first parameter. |

In the following expression, only `"choice2"` is evaluated.

```sail
choose(
  2, /* index of the value to return */
  "choice1", /* index 1 */
  "choice2", /* index 2 */
  "choice3" /* index 3 */
)
```

 |

## Local variable best practices

Consider the following best practices when using local variables:

-   [Put expensive computations in local variables, not component parameters](#put-expensive-computations-in-local-variables-not-component-parameters).
-   [For expensive queries that rely on each other, set them up to evaluate in parallel](#for-expensive-queries-that-rely-on-each-other-set-them-up-to-evaluate-in-parallel).

### Put expensive computations in local variables, not component parameters

#### Guideline

Put functions and rules that might take longer to compute, also known as [expensive computations](#expensive-computations), in local variables. Do not put them directly in a parameter of an interface component.

You don't have to worry about this when using the _data_ parameter of records-powered components like [read-only grids](Paging_Grid_Component.html), [charts](Area_Chart_Component.html), and [dropdowns](Dropdown_Component.html). The _data_ parameter of these components has the same default refresh behavior as local variables. On read-only grids and charts, you can modify this default behavior using the refresh parameters the same way you would use [a!refreshVariables()](Local_Variables.html#configuring-refresh-behavior) for local variables.

#### Importance

Any time an evaluation is triggered, such as when a user enters a value or clicks a button, all interface components in the interface are [reevaluated](#interface-evaluations). This means that anything you put in a parameter of a component will reevaluate every time an evaluation is triggered.

When you put a rule or function call in a local variable, by default it is only evaluated when:

-   The interface is first loaded.
-   The local variable is updated in a _saveInto_ parameter.
-   Another local variable that is referenced in the local variable is updated.

See [Local Variables](Local_Variables.html#configuring-refresh-behavior) to learn about controlling how often a local variable is refreshed.

### For expensive queries that rely on each other, set them up to evaluate in parallel

#### Guideline

If you have a query in a local variable that references a query in another local variable, consider if it's possible to rewrite the expression so that the variables don't reference each other. This allows them to evaluate at the same time (in parallel), instead of evaluating one after the other (in serial), reducing the overall time it takes to evaluate.

#### Importance

When a local variable references another local variable, they are evaluated one after another, or "in serial." Appian needs the value of the referenced variable in order to update the parent variable.

However, when local variables are not dependent on each other, the variables are evaluated at the same time, or "in parallel." Because the variables are evaluated at the same time, it takes less overall time to evaluate variables in parallel than it does to evaluate them one after the other.

![Parallel evaluation vs serial evaluation](images/interface-perf-parallel-eval.png)

See [Parallel Evaluations of Expressions](expressions-parallel-evaluation.html) for more information.

## Interface design best practices

Consider the following best practices when building your interfaces:

-   [Use asynchronous loading for slow data](#use-asynchronous-loading-for-slow-data).
-   [Don't add a lot of user interactions to complex interfaces that display a lot of data](#dont-add-a-lot-of-user-interactions-to-complex-interfaces-that-display-a-lot-of-data).
-   [Use record action components to update data from an interface](#use-record-action-components-to-update-data).
-   [When you have multiple record actions on a complex interface, display them in a menu style](#when-you-have-multiple-record-actions-on-a-complex-interface-display-them-in-a-menu-style).
-   [When using and(), or(), and match() functions, put expensive computations last](#when-using-and-or-and-match-functions-put-expensive-computations-last).
-   [Don't wrap text in a!richTextItems() if you don't need to style it](#dont-wrap-text-in-arichtextitem-if-you-dont-need-to-style-it).

### Use asynchronous loading for slow data

#### Guideline

Use asynchronous loading for data is slow to load. You can use the [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) function to create an async local variable, or use the _loadDataAsync_ parameter on [read-only grids](Paging_Grid_Component.html), [charts](Area_Chart_Component.html), and [KPIs](KPI_Component.html) when using record data as the data source.

#### Importance

Asynchronous loading is one of the most effective ways to improve interface performance and user experience. When you have slow-loading data, loading that data asynchronously allows users to view and interact with the rest of the interface while they wait for the slow data to load. Components waiting on async data display placeholder skeletons, so users know content is loading.

For detailed information on how to implement async loading, when to use each method, and performance considerations, see [Asynchronous Loading](async_loading.html).

**Note:**   In [offline mobile and portal interfaces](fnc_evaluation_a_asyncvariable.html#using-in-offline-mobile-and-portal-interfaces), data that is configured to load asynchronously will load with the rest of the interface, instead of loading in the background.

### Don't add a lot of user interactions to complex interfaces that display a lot of data

#### Guideline

Interfaces that display a lot of data, such as reporting dashboards, tend to rely on quite a few queries, which can take longer to evaluate. When you design these interfaces, avoid adding too many user interactions to reduce the number of times the interface is evaluated. Examples of user interactions include changing filter values or entering data into a field.

For more helpful tips about designing these types of interfaces, see the [Worker Home Pages](sail/employee-home-pages.html#record-actions) design guidance in the SAIL Design System.

#### Importance

Every time a user interacts with an interface, the entire interface is [reevaluated](#interface-evaluations). If a complex interface has a lot of user interactions that trigger an evaluation, the user may have to wait for the information to load each time, which isn't a great user experience.

### Use record action components to update data

#### Guideline

To allow users add, update, or delete data in a [complex interface](#dont-add-a-lot-of-user-interactions-to-complex-interfaces-that-display-a-lot-of-data), use a [record action component](Record_Action_Component.html). Do not use components like an editable grid or text input field to allow users to update data directly in complex interfaces.

#### Importance

While you can allow users to update data directly in an interface using different [input components](SAIL_Components.html#inputs), this can slow performance on [complex interfaces that display a lot of data](#dont-add-a-lot-of-user-interactions-to-complex-interfaces-that-display-a-lot-of-data)

Instead, you should use a record action component so users can interact with a separate interface to add or update data. By using a record action component, you avoid introducing too many user interactions in your complex interface, and you're reusing [record actions](record-actions.html) configured on your record types, so it's overall faster to configure.

### When you have multiple record actions on a complex interface, display them in a menu style

#### Guideline

If you have multiple [record actions](Record_Action_Component.html) on a single page, you should set the [record action component](Record_Action_Component.html) style to `"MENU"` or `"MENU_ICON"`. These styles use the _securityOnDemand_ parameter to determine when [record action security](record-action-security.html) is evaluated. By default, this value is set to `true`.

#### Importance

When you display a record action on an interface, Appian will evaluate the record action security to determine who can see the action and when. If you have multiple record actions, each action's security will need to be evaluated before a user can interact with the interface. This can impact how quickly the overall interface loads, especially if you display the actions on each row of a grid.

To performantly display multiple record actions in an interface, you should display the actions in a `"MENU"` or `"MENU_ICON"` style. These styles not only make the page appear less cluttered, they use the _securityOnDemand_ parameter to determine when record action security is evaluated. By default, this value is set to `true`, so security is only evaluated when a user clicks an action. Deferring this check until it's needed means the interface will ultimately load faster.

### When using and(), or(), and match() functions, put expensive computations last

#### Guideline

When using [and()](fnc_logical_and.html), [or()](fnc_logical_or.html), and [a!match()](fnc_logical_match.html) functions, put more expensive computations later in the expression.

#### Importance

These functions evaluate their values in order. The evaluation stops when:

-   `and()`: A value returns `false`.
-   `or()`: A value returns `true`.
-   `a!match()`: A match is found. After it finds a match, the _then_ parameter is evaluated and the rest of the parameters are ignored.

Any parameters that come after the evaluation stops are not evaluated and don't add to the interface evaluation time. If you put more expensive computations first, these will be needlessly evaluated. Putting them later in the expression ensures that they are only evaluated when needed.

See the [Conditional logic](#conditional-logic) interface performance principle for more information.

### Don't wrap text in a!richTextItem() if you don't need to style it

#### Guideline

If you are displaying a text string that doesn't need to be styled, don't put it in a [rich text display component](Rich_Text_Component.html). Even when mixing rich and plain text, it is better to provide the plain text as a string, instead of putting in a rich text display component and not styling it.

#### Importance

Plain text takes almost no time to evaluate. Using plain text wherever possible is a best practice to make sure you aren't adding unnecessary loading time that can be avoided.

## Query best practices

Consider the following best practices when querying data in an interface.

### Specify individual fields instead of using a!selectionFields()

#### Guideline

When querying data, specify the exact fields you want to return in the _fields_ parameter. You should avoid using the [a!selectionFields()](fnc_system_selectionfields.html) function in your queries unless you must have access to all fields in a record type or related record type.

#### Importance

The more data you query, the longer it takes to load and display that data on the interface.

While `a!selectionFields()` can be useful during initial development, it often returns more data than is necessary. Requesting every field, including those from related record types, can significantly increase the time it takes to load and display data in your interface.

As a best practice, you should only ever query the specific fields you need. You should also consider using filters and batching to ensure you only return the necessary amount of data you need.

#### Example

Let's say you want to create an interface that highlights your top five customers. For each customer, you want to create a card that shows the customer's name, their industry, and how long they've been a customer.

**Do** query the specific fields you need and the exact amount of data you need.

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
a!queryRecordType(
  recordType: recordType!Customer,
  /* Only query the 3 fields you need to display in the card */
  fields: {
    recordType!Customer.fields.displayName,
    recordType!Customer.fields.createdOn,
    recordType!Customer.relationship.industry.fields.name
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    /* Only return 5 results, and sort those results by customers with the largest year-to-date sales */
    batchSize: 5,
    sort: a!sortInfo(
      field: recordType!Customer.fields.YTDSales,
    )
  )
).data
```

**Don't** query all the fields in your record type and related record type if you don't need access to all of them.

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
a!queryRecordType(
  recordType: recordType!Customer,
  /* Queries all fields from the customer and industry record types, */
  fields: a!selectionFields(
    allFieldsFromRecordType: {
      recordType!Customer,
      recordType!Customer.relationships.industry
    }
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    /* Returns the maximum amount of rows in the query */
    batchSize: 5000,
  )
).data
```

### Only use real-time custom record fields and Extra Long Text fields when necessary

#### Guideline

Only include [real-time custom record fields](custom-record-fields.html#prodlink-real-time-evaluations) and [Extra Long Text fields](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data) in your queries when the data is essential to the interface.

#### Importance

Real-time custom record fields and Extra Long Text fields require more time and resources to retrieve. Including these fields unnecessarily, especially in grids that return many rows, may impact query performance.

#### Example

Let's say you need to configure a grid to display employee information. The Customer record type has a real-time custom record field called `numberOfOrders` that counts the number of orders associated with each customer, and an Extra Long Field called `bio` that contains each employee's bio.

**Do** include the real-time custom record field in the grid since you may want to sort the grid by customers with the most orders.

**Don't** include the Extra Long Text field in the grid since it's not necessary to display each customer's bio in the grid. Instead, use that field in individual record views so it doesn't need to evaluate for each customer within the grid.

### For grids with conditional columns, conditionally query the fields

#### Guideline

If you configured a [records-powered grid](Paging_Grid_Component.html#using-records-powered-grids) to conditionally show or hide columns, [use the _fields_ parameter in a!recordData()](fnc_system_recorddata.html#using-the-fields-parameter) to specify when to query each field.

#### Importance

When a grid first loads, it queries all the fields in the [a!gridColumn()](Grid_Column_Component.html) function—even if certain columns are hidden by default. You can use the _fields_ parameter in `a!recordData()` to ensure the data is only queried when the column is visible, which can improve the initial load time of the interface.

#### Example

For example, let's say you configured your grid so that certain columns only appear to managers.

**Do** configure the fields parameter to specify when the fields in each column should be queried, so they aren't all queried when the interface initially loads.

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
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
a!localVariables(
local!managers: a!isUserMemberOfGroup(loggedInUser, cons!MANAGER_GROUP),
a!gridField(
  data: a!recordData(
    recordType: recordType!Case,
    /* The grid will only retrieve one of these two sets of fields */
    fields: if(local!managers,
      { /* Fields for Managers */
        recordType!Case.fields.id,
        recordType!Case.fields.name,
        recordType!Case.fields.description,
        recordType!Case.fields.createdOn,
      },
      { /* Fields for Engineers */
        recordType!Case.fields.id,
        recordType!Case.fields.description,
        recordType!Case.fields.status,
        recordType!Case.fields.assignedTo,
        recordType!Case.fields.timeInQueue,
        recordType!Case.relationships.comment.fields.description,
        recordType!Case.fields.createdOn,
      }
  ),
  /* Only fetch the last 3 comments added to a case */
  a!relatedRecordData(
    relationship: recordType!Case.relationships.comment,
    sort: a!sortInfo(
      field: recordType!Case.relationships.comment.fields.createdOn,
      ascending: false
    ),
    limit: 3
  ),
  columns: {
    a!gridColumn(
     label: "Id",
     value: fv!row[recordType!Case.fields.id],
    ),
    a!gridColumn(
     label: "Name",
     value: fv!row[recordType!Case.fields.name],
    ),
    a!gridColumn(
     label: "Description",
     value: fv!row[recordType!Case.fields.description],
    ),
    /* The fields used in the following 4 grid columns
       may or may not be displayed. But by using the
       'fields' parameter we ensure they are not queried if
       they are not needed.
    */
    a!gridColumn(
     label: "Status",
     value: fv!row[recordType!Case.fields.status],
     showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "Assigned To",
     value: fv!row[recordType!Case.fields.assignedTo],
     showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "Time in Queue",
     value: fv!row[recordType!Case.fields.timeInQueue],
     align: "END",
     showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "Time in Queue",
     value: fv!row[recordType!Case.relationships.comment.fields.description],
     showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "createdOn",
     align: "END",
     value: fv!row[recordType!Case.fields.createdOn]
    )
   }
  )
 )
)
```

### Use rv!identifier instead of rv!record for record views with complex interfaces

#### Guideline

If you use a complex interface that displays a lot of data and conditionally visible components as a record view, use `rv!identifier` in your record view configuration instead of `rv!record`.

#### Importance

The `rv!record` and `rv!identifier` domains allow you to [reference record values within a record type](reference-records.html#reference-record-values-in-the-record-type), like when you're configuring a record view or title.

When you use `rv!record` to pass data into a record view, you are passing the entire record data structure. This will query and evaluate all fields, even if parts of your interface are conditionally hidden. For record views with large amounts of data and conditionality, this can result in numerous unnecessary fields being queried.

Instead, you should configure the record view using `rv!identifier`, so you pass the record's identifier to an [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) function. Within the query expression, you can specify the exact fields to query to ensure that only the necessary data is returned based on the current state and conditional logic.

#### Example

Let's say the summary view for your Order record type uses a complex interface. This interface displays large volumes of data from multiple record types and conditionally shows information depending on whether the customer used a discount code or purchased a certain item.

To efficiently pass record data to this interface, the record view is configured to pass record data using `rv!identifier` and the `a!queryRecordByIdentifier()` function.

[![Example record view configuration using queryRecordByIdentifier](images/record-view-with-rvidentifier.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img809)

[![](images/record-view-with-rvidentifier.png)](#_)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...