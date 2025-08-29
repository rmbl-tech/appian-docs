---
source_url: https://docs.appian.com/suite/help/25.3/fnc_evaluation_a_localvariables.html
original_path: fnc_evaluation_a_localvariables.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!localVariables() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Use Local Variables

This video provides an overview of when and how to use local variables in your Appian interfaces and expressions.

## Function

**a!localVariables**( _localVar1, localVarN, expression_ )

Lets you define one or more local variables for use within an expression. When used within an interface, the value of each variable can be refreshed under a variety of conditions, configured using a!refreshVariable(). When used outside of an interface, all refresh properties configured using a!refreshVariable() are ignored.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`localVar1`

 |

_Any Type_

 |  |
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

The expression to evaluate using the local variables values.

 |

## Returns

Any Type

## Usage considerations

For more information about how to use `a!localVariables` and `a!refreshVariable`, including detailed examples, see the [Local Variables](Local_Variables.html) page.

This function replaces both the `load` and `with` functions. For information on how to update existing expressions that use `load` and `with` to use `a!localVariables` instead, see the [Updating Expressions to Use a!localVariables](Updating_Expressions_to_Use_a_localVariables.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...