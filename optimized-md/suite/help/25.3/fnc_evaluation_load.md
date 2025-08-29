---
source_url: https://docs.appian.com/suite/help/25.3/fnc_evaluation_load.html
original_path: fnc_evaluation_load.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# load() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Check out the new evaluation function, [a!localVariables()](fnc_evaluation_a_localvariables.html). It does everything **load()** does but with additional refresh options that may drastically simplify your design.

## Function

**load**( _localVar1, localVarN, expression_ )

Lets you define local variables within an expression for an interface and evaluate the expression with the new variables, then re-evaluate the function with the local variables' values from the previous evaluation.

**See also**: [Grid Tutorial](Grid_Tutorial.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`localVar1`

 |

_Any Type_

 |

The local variable to use when evaluating the given expression and defined using `load(local!a,..., expression)` or `load(local!a:10, ..., expression)`.

 |
|

`localVarN`

 |

_Any Type_

 |

Any additional local variables, as needed.

 |
|

`expression`

 |

_Any Type_

 |

The expression to evaluate using the local variables' values.

 |

## Returns

Any Type

## Usage considerations

This function is used in expressions for interfaces to allow for user interaction on the interface, such as sorting or paging through a grid.

A local variable's value is only calculated the first time the expression is evaluated and is then loaded back into the expression each time the expression is evaluated again within the same context. For interfaces, the context ends once the user navigates away from the interface.

### Defining values and domains

A local variable may be defined with or without a value, and the value may be simple or complex. When a value is not defined, it's assigned a `null` value.

When you don't specify the `local!` domain, the system first matches your variables with rules or constants with the same name, then looks for local variables with the name. Appian recommends that you always use the `local!` domain when referring to local variables.

### Understanding types

Local variables are not assigned a type. At runtime, the type of the variable will be based on the assigned value. For example, in `load(local!myvar:2, ...)`, `myvar` is of type `Integer`.

The type returned by the `load()` function will be that of the given expression.

### Evaluating local variables

A local variable may reference a previously defined local variable. They are evaluated in the given order.

The local variables are only available in the evaluation of the _expression_.

The _expression_ can include other variables available in its context, such as process variables and rule inputs. For example, `load(local!myvar: 1, local!myvar + ri!myruleinput)`.

### Formatting

When a local variable uses the dot notation or brackets, a runtime error message will display. If the field name must contain special characters, enclose the name in single quotes.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...