---
source_url: https://docs.appian.com/suite/help/25.3/functions-side-effects.html
original_path: functions-side-effects.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Functions and Side Effects

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Evaluation considerations

When building expressions, keep in mind the following aspects of expression evaluation:

-   The order in which the component parts of an expression are evaluated is not guaranteed.
-   The number of times the components parts of an expression are evaluated is not guaranteed.
-   The number of times the expression as a whole is evaluated is not guaranteed.

## About function side effects

Consider the following simple expression:

```
1
=user(pp!initiator, "firstName") & " " & user(pp!initiator, "lastName")
```

You might expect that evaluation will proceed from left to right, and thus the `user()` function returning the first name will be evaluated first, returning the first name, followed by the literal single space and concluding with the second `user()` function returning the last name. However, the expression's value is the same if evaluation proceeds from right to left. It's even the same if the middle happens first and then the two `user()` functions are evaluated.

This is only true if expression functions only return values and do not have side effects. A side effect is any other change in the system besides the value a function returns. None of the functions shipped with Appian have side effects. Plug-in developers must ensure their functions conform to this restriction to avoid non-deterministic behavior due to expression evaluation optimizations and compensations.

Here are a few examples of cases where functions might not run when you expect:

-   When a transient error is encountered running an expression, the platform may immediately evaluate the expression a second time.
-   When users interact with interfaces, parts of the interface expression may be evaluated multiple times.
-   When called multiple times with the same parameters in the same expression, plug-in functions and functions that call external services are only called once and the value is reused.
-   When the `if()` function is used in an expression, the parameter that is not selected is not evaluated.
-   When an expression contains multiple queries, parts of the expression may be evaluated in parallel.

## Smart services

Although configured using functions, smart services work differently. In interfaces and in [certain web APIs](Designing_Web_APIs.html#executing-a-smart-service), smart services are guaranteed to be executed exactly once. In any other expression, they are not executed. This is because executing a smart service's associated function does not by itself execute the smart service. The function merely returns the desired smart service configuration, and that in turn is executed by the framework if and only if it is in the right place ([writer functions](Custom_Function_Plug-ins.html#writer-functions) work the same way).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...