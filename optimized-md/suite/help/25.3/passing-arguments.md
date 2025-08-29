---
source_url: https://docs.appian.com/suite/help/25.3/passing-arguments.html
original_path: passing-arguments.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Passing Arguments

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

Functions and rules are defined by their logic and parameters. These parameters accept arguments that determine how the function will evaluate.

For example, the `user()` function retrieves the first name of a user using a process variable and a literal text as arguments through the following syntax:

![Function_callouts](images/Function_callouts.png)

1.  **domain**: Defines where the operation definition is stored. When not specified in the expression, the name is searched for in rules, then Appian Functions, then custom functions.
2.  **name**: Given name of the Appian function, custom function, rule, or data type to use.
3.  **arguments**: Values supplied to the function parameters. Supported arguments are literal values, arrays, variables, functions, rules, data types, and expressions. The Expression Editor lists the expected argument types within the function description.

Appian functions, custom functions, rules, and data types are supported as arguments.

The syntax for passing them is similar to passing variables by inserting the object's domain and pointing to its name similar to the following:

-   `fn!sum`
-   `rule!myrule`
-   `type!Person`

You can pass arguments by position or by keyword.

## By position

Passing arguments by position is required for Appian functions and custom function plug-ins and is best for rules that take three or fewer arguments.

To pass arguments by position, enter the values in order.

For example, the syntax for the `joinarray()` function is the following:

**joinarray**( _array_, _\[separator\]_ )

To pass values using positional arguments, enter the following:

```
1
=joinarray({1,2,3,4},"|")
```

This evaluates with array as `{1,2,3,4}` and separator as `|`, returning `1|2|3|4`.

**Required Arguments**

You must enter values for every required argument in a function or rule or the expression results in an error. For rules, all inputs are required when passing by position.

**Optional Arguments**

To pass a value for an optional argument, enter values for all arguments defined before the parameter you're entering a value for, even if they are also optional. If not, the expression may apply the argument to the wrong parameter and result in an error or undesired results.

Optional arguments are surrounded by brackets `[]` in the function documentation.

For example, the `toxml()` function has four parameters, three of which are optional.

**toxml**( _value_, _\[format\]_, _\[name\]_, _\[namespace\]_ )

To use the default for _\[format\]_ and _\[namespace\]_, but specify a value for _\[name\]_, you must also configure the _\[format\]_ parameter.

For example:

`=toxml(pv!somePersonNameCDT, false(), "person")` evaluates with the following:

-   _value_ = `pv!somePersonNameCDT`
-   _\[format\]_ = `false()`
-   _\[name\]_ = `"person"`
-   _\[namespace\]_ = default value

Whereas, `=toxml(pv!somePersonNameCDT, "person")` would evaluate with the following:

-   _value_ = `pv!somePersonNameCDT`
-   _\[format\]_ = `"person"`
-   _\[name\]_ = default value
-   _\[namespace\]_ = default value

**Unlimited Arguments**

Some functions take an unlimited number of arguments, such as sum(). This is denoted by an ellipsis in their function description with the Expression Editor.

For example:

**sum**( _addend_, … )

## By keyword

Passing arguments by keyword is only supported in system functions and rules. It is a best practice to pass arguments by keyword when a function or rule takes more than one argument.

See also: [System Functions](System_Functions.html)

To pass arguments by keyword, specify the name of the parameter, followed by a colon, then the argument value.

Appian recommends entering a line break after each keyword argument.

For example:

A rule called `feedMessageForNewCase` returns the feed message for a case management application using the following definition:

```
1
="Priority " & ri!priority & ": " & ri!caseSummary & " [#" & ri!caseId & "]"
```

It includes the inputs `priority`, `caseSummary`, and `caseId`.

To pass arguments by keyword, you could enter the following:

```
1
2
3
4
5
=rule!feedMessageForNewCase(
  priority: pv!priority,
  caseSummary: pv!summary,
  caseId: pv!id
)
```

To evaluate into the following:

**Priority 1: Basic users cannot connect to server \[#100005\]**

Keywords do not need to be in the order the arguments are defined.

For example, the following still results in the text above:

```
1
2
3
4
5
=rule!feedMessageForNewCase(
  caseId: pv!id,
  caseSummary: pv!summary,
  priority: pv!priority
)
```

**Optional Arguments**

All arguments are optional when passing by keyword. If you do not pass an argument for a parameter, the parameter receives a null value of the parameter type.

For example:

```
1
2
3
4
=rule!feedMessageForNewCase(
  caseId: pv!id,
  caseSummary: pv!summary
)
```

Evaluates with the following:

-   _\[caseId\]_ = `pv!id`
-   _\[caseSummary\]_ = `pv!summary`
-   _\[priority\]_ = `null`

**Keyword Requirements**

The keyword (or rule input name) for a parameter is defined by the designer. They are searched first by the case-sensitive name, then case-insensitive, such that both rules below will evaluate:

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
=rule!feedMessageForNewCase(
  caseId: pv!id,
  caseSummary: pv!summary
)

=rule!feedMessageForNewCase(
  CASEId: pv!id,
  CASESummary: pv!summary
)
```

If a keyword is not matched with a parameter name, the argument is ignored and the parameter receives a null value.

When specifying the keyword, use single quotes around it if it contains characters other than letters/numbers/underscores or begins with an underscore (similar to namespaces).

For example:

```
1
2
3
=rule!person(
  '_firstName': "John"
)
```

**Note:**  Passing arguments by keyword is not supported when creating rules for the Web Content Channel, process reports, or events. If used, it will cause the process or task to pause by exception.

## Using functions

Most functions can be passed as arguments using the syntax above. For example, passing the `sum()` function to the `reduce()` function:

```
1
=reduce(fn!sum, 0, {1, 2, 3}) yields 6
```

**Note:**  The following Appian functions cannot be passed as an argument:

-   `a!localVariables()` function, such as `apply(a!localVariables . . . )`
-   `load()` function, such as `apply(fn!load . . . )`
-   `with()` function, such as `apply(fn!with . . . )`
-   `a!save()` function, such as `apply(a!save . . . )`

## Using rules

All rules can be passed as arguments using the syntax above. For example, passing a rule `rule!isnumbereven` to the `any()` function:

```
1
=any(rule!isnumbereven,{-1,0,1,2}) yields true
```

If you pass a rule, interface, or decision to an expression and it is later deleted, the expression will still evaluate. If you inspect an import package, however, and it contains expressions that require the deleted rules, the rules will not be listed as missing precedents.

See also: [Deleting Expression Rules](Expression_Rules.html#delete)

## Using data types

Passing a data type for a type comparison:

```
1
=if(typeof(ri!input) = type!User, user(ri!input, "email"), group(ri!input, "groupName"))
```

When using a data type in an expression, data type names are case-sensitive. Specifying the namespace of the data type improves readability but is optional when the name of the data type is unique.

If the data type name is not unique, the system returns a validation error indicating the namespace must be specified. When specifying the namespace, use single quotes around the domain and data type name if the namespace contains characters other than letters/numbers/underscores or begins with an underscore.

For example:

```
1
 'type!{http://www.appian.com/ae/types/2009}User'
```

If you pass a data type to an expression and it is later deleted, the expression will still evaluate. If you inspect an import package, however, and it contains expressions that require the deleted data types, the data types will not be listed as missing precedents.

See also: [Deleting Data Types](Custom_Data_Types.html#delete)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...