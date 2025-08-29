---
source_url: https://docs.appian.com/suite/help/25.3/testing-expressions.html
original_path: testing-expressions.html
version: "25.3"
title: "Testing Expressions"
page_id: "testing-expressions"
section: "Validating expression logic"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Testing Expressions

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Test Expression Rules in Appian - Tips for Troubleshooting

Make sure that your expression is using the correct data types for proper functioning. Learn how you can test and troubleshoot your expression rules with Appian.

## Validating expression logic

You can use the validate button in the Expression Editor to check for for the following errors:

-   Invalid Function, Rule, and Referenced Literal Objects
-   Failed Casts
-   Duplicate Keywords
-   Invalid Parameters
-   Incorrect Number of Required Arguments

Learn more about these errors in [Passing Arguments](passing-arguments.html).

To test the logic of your expressions, create it as an expression rule and use the native testing capability in that object.

See also: [Testing an Expression Rule](Expression_Rules.html#test-the-rule) and [Automated Testing for Expression Rules](Automated_Testing_for_Expression_Rules.html)

## Diagnosing memory issues

When Appian aborts an expression that is using too much memory, the error message will typically include information about the last function that was evaluating when the error occurred and its line number. This gives you a good starting point for diagnosing the issue.

However, because memory is accumulated throughout the course of the evaluation, it's possible that the function mentioned was just the tipping point, not the actual root cause. Here are some tips for diagnosing the issue:

1.  When a user reports an error, use the evaluation ID in the error message to find the corresponding log entry in the Design Errors Log.
2.  Use the object information provided in the Design Errors log to find the object that encountered the error. Open that object in your development environment.
    -   If runtime information (such as record-related information or process instance information) is also provided, use that to look up the current state of that object in the environment that encountered the error. The current state of the data may be useful in debugging the issue.
3.  If the error message contains references a particular function and line number:
    -   Check the function that errored to see if it is using one of the problematic design patterns mentioned on this page (such as looping over too many items or storing too much data in a local variable)
    -   If that function seems unlikely to have caused the issue on its own, check any local variables or looping functions that called the function that errored out. Because they're still evaluating, they're still accumulating memory.
    -   If the parent functions also seem unlikely culprits, it's possible that the expression was evaluating in parallel and the issue was caused by a different function in the expression. Check other instances of local variables or looping functions throughout the expression for one of the problematic design patterns listed above.
4.  If the error message does not reference a particular function or line number, check the overall result of your expression to see if it returns a large amount of data, a large number of components, or components with a large amount of data within them

Remember that local variables with a refresh configuration other than `refreshAlways` are persisted across evaluations of interfaces. Even if the initial value as configured in the expression is small, it could cause issues if a large value is saved into it on a subsequent reevaluation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...