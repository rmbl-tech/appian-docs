---
source_url: https://docs.appian.com/suite/help/25.3/parts-of-an-expression.html
original_path: parts-of-an-expression.html
version: "25.3"
title: "Parts of an Expression"
page_id: "parts-of-an-expression"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Parts of an Expression

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

An expression is made of one or more literal values, operators, functions, and variables. Below is an example expression with its various parts labeled.

![Exp_callouts](images/Exp_callouts.png)

1.  **Literal Values**: The values `New Ticket` and `by` are text literals and return in the expression output as written.
2.  **Operator**: The `&` operator represents text concatenation and combines text with data.
3.  **Variables**: The `pv!ticketId` variable returns the Ticket ID value, and the `pp!initiator` variable returns the user who started the process.
4.  **Functions and Rules**: The `userDisplayName` rule takes a user as a parameter and returns the user's first and last name.

The above expression could result in the following output: `New Ticket AN-9867 by John Smith`

You can use Appian functions, custom function plug-ins, and rules in expressions to perform operations using arguments you pass to them. The expression then returns a result based on your arguments.

You can use data types in expressions to construct a complex data type value by creating a type constructor.

Arguments or fields within a type constructor that contain data queries may be [evaluated in parallel](expressions-parallel-evaluation.html) to reduce the overall evaluation time.

See also: [Appian Functions](Appian_Functions.html), [Expression Rules](Expression_Rules.html), [Data Types](Appian_Data_Types.html)

## Literal values

A literal is a static value stated in the expression, such as 2, 3.14, or "hello".

The following types of literals are supported:

### Text string

Expresses a series of text characters. It is stated as text entered between double quotation marks.

-   Example: `"Hello World"`

### Integer number

An [integer number](Appian_Data_Types.html#number-integer) is any whole number.

-   Example: `82` or `-82`

### Decimal number

A [decimal number](Appian_Data_Types.html#number-decimal) possesses a decimal point and can express fractional numbers.

-   Example: `1.234`

### Special literals

Certain built-in expression values exist in order to concisely express concepts or conditions. Supported special literals include:

-   `true` for the Boolean value true.

-   `false` for the Boolean value false.

-   `null` for an empty (null) value that has no specific data type.

Special literals can be used within any variable as a default value and can be cast to any data type.

## Arrays

An array is an ordered list of data items that can be selected by indices computed at run-time. Arrays can be empty or constructed with literal values, variables, or functions.

-   Only one-dimensional arrays can be specified.
-   Nested arrays are flattened to a one-dimensional array.
    -   Example: `{{1, 2}, {3, 4}} = {1, 2, 3, 4}`
-   For multi-dimensional arrays, create a complex data type.

When entering an array as part of an expression, you must use braces ({}) to enclose it and separate items using commas (,) unless you are referencing a variable.

-   Example: `{2, 3, 9, 1}`

To add text in an array, enclose each item in quotation marks ("").

-   Example: `{"a", "b", "c", "d"}`

Items in a list that contain data queries may be [evaluated in parallel](expressions-parallel-evaluation.html) to reduce the overall evaluation time.

### Accessing array items at an index

In order to select one or more values from an array, use the **index operator \[\]** or **index()**.

For example, with an index operator and an array of `pv!multiple = {10, 20, 30}`:

-   `pv!Multiple[2]` yields `20`
-   `pv!Multiple[{2, 3, 2}]` yields `{20, 30, 20}`

-   Example with index() and array of `{10, 20, 30}`:

-   `index({10, 20, 30}, 2, 1)` yields `20`

#### Usage considerations

-   All arrays are indexed starting at one (1).
-   An integer expression can be used in place of a single integer or array of integers.
-   Variables and constants with a number (integer) data type or text data type are also accepted by the index operator.

See also: [Array Functions](Array_Functions.html)

## Maps

A map is an ad-hoc data structure created inline in an expression using the [a!map()](fnc_system_map.html) function. In contrast, a custom data type is a reusable data structure with a specific name and predefined fields.

For example, to create a map with two fields called `label` and `value`, enter the following:

```
1
a!map(label: "Item", value: "Entry")
```

To create an array of maps, enter the following:

```
1
{a!map(label: "Item one", value: "Entry one"), a!map(label: "Item two", value: "Entry two")}
```

Fields within a map that contain data queries may be [evaluated in parallel](expressions-parallel-evaluation.html) to reduce the overall evaluation time.

## Dictionaries

A dictionary is very similar to a map; it is an ad-hoc data structure mapping fields to values. However, values indexed out of a dictionary often need to be cast to their respective type before use. For this reason, maps should generally be used instead of dictionaries.

To create a dictionary with two fields called `label` and `value`, enter the following:

```
1
{label: "Item", value: "Entry"}
```

## Date and time

Data types Date, Time, and Date and Time are stored as numbers.

-   **Date** is an integer (days since the epoch date).
-   **Time** is an integer (milliseconds since midnight).
-   **Date and Time** is a decimal (fractional days since the epoch date).

For date and time values, the local value (based on the designer time zone) is not stored. Instead, it is stored in Greenwich Mean Time (GMT) and then converted to the user's time zone when displayed on the screen.

To advance either **Date** or **Date and Time** by a day, add 1 to the value.

To advance **Time** by a minute, add `60*1000` to the value. Adding 1 to Time only advances it by a millisecond.

| Example Input | Yields |
| --- | --- |
| `date(2012, 4, 30) - date(2012, 4, 25)` | `5 days` |
| `datetime(2012, 4, 25, 12) - datetime(2012, 4, 25, 10)` | `0.0833 days -or- 2.0 hours` |
| `date(2012, 4, 25) + 5` | `4/30/2012` |

## Operators

There are many operators that can be used in expressions to perform data manipulation. The operators provided are divided into two different categories.

### Arithmetic operators

| To Perform... | Use | Example |
| --- | --- | --- |
| Addition | + | `10+8` yields `18` |
| Subtraction/Negation | \- | `10-8` yields `2` - OR - if value is `97`, then -value is `-97` |
| Multiplication | \* | `2*5` yields `10` |
| Division | / | `10/5` yields `2` |
| Exponentiation | ^ | `2^8` yields `256` |
| Percentage (divide by 100) | % | `97%` yields `0.97` |

#### Using arithmetic operators with arrays and tointeger()\*\*

| Example Input | Yields |
| --- | --- |
| `{1, 2, 3} * 10` | `{10, 20, 30}` |
| `{1, 2, 3} + {1, 2, 3} + {1, 2, 3}` | `{3, 6, 9}` |
| `{1, 1, 1, 1, 1} + {1, 2}` | `{2, 3, 2, 3, 2}` |
| `tointeger({}) + 1` | `1` |

**Tip:**  Apply arithmetic to lists directly, rather than through multi-node instances, to make your process model look cleaner and work faster.

**Note:**  If operating on two arrays that are not the same length, the shorter list will be repeatedly extended until it is the same length as the longer list. This applies to Date and Date/Time values as well: `pv!list_of_dates+1` returns the next day for the entire list.

### Comparison operators

| To Perform... | Use | Example |
| --- | --- | --- |
| Less than | < | `10<2` yields `false` |
| Greater Than | \> | `10>2` yields `true` |
| Less Than or Equal | <= | `10<=2` yields `false` |
| Greater Than or Equal | \>= | `10>=2` yields `true` |
| Not Equal to | <> | `10<>2` yields `true` |
| Equal to | \= | `10=2` yields `false` |

#### Using comparison operators with arrays, functions, and text inputs

-   Array elements are compared item by item.
-   When comparison operators are used on an array, multiple true or false results are returned.
-   If two arrays are being compared and have different lengths, the shorter array is repeated to match the length of the longer array. See below for examples.
-   If you want a single comparison of one list versus another, use the exact function.
-   If you need a text comparison that DOES NOT require case-insensitiviy, consider using the `exact()` function rather than the `=` operator to improve performance.
-   To test any element in the compared list, enclose the comparison using the or() function.

| Example Input | Yields |
| --- | --- |
| `1={1, 2, 3}` | `{true, false, false}` |
| `{1, 2, 3}<>{4, 2, 6}` | `{true,false,true}` |
| `exact({1, 2, 3},{1, 2, 3})` | `true` |
| `1=tointeger({})` | `false` |
| `0=tointeger({})` | `true` |
| `"Hello"="HELLO"` | `true (case-insensitive)` |
| `exact("Hello","HELLO")` | `false (case-sensitive)` |
| `{1,2} = {1,2,1,2}` | `{true, true, true, true}` |
| `{"a","b"} = {"a","a","b","b"}` | `{true, false, false, true}` |

**Note:**  In the case of comparing an _array_ of text values to a _scalar_ text value, the array elements will not be compared item by item with the _scalar_ text value. In order to compare item by item, you must wrap the scalar value in a list. For example, use `{"a", "b", "c"} = {"c"}` instead of `{"a", "b", "c"} = "c"` to compare each element of the array to the value `"c"`. This only applies to the text data type.

### Operator precedence

The precedence of operators evaluated in an expression follows the standard Order of Operations:

1.  Operator expressions inside parentheses
2.  Exponentiation
3.  Multiplication and Division
4.  Addition and Subtraction

So, if an expression includes two or more operators, the operator higher on the list is applied first, then the second highest, and so on. In order to ensure an operation occurs before another, enclose it within parentheses.

## Variables

A variable identifies the data to use when evaluating an expression. It uses syntax similar to Microsoft Excel sheet and cell syntax, where the Appian data [domain](domain_prefixes.html) is the sheet and a named variable is the cell syntax. Appian variables are always of a specific data type.

The variables you can use in an expression depend on the context in which the expression is designed and evaluated. They are listed in the **Data** tab of the Expression Editor and include Appian variables and user-defined process variables.

For a full listing or variables delivered with Appian, see [Process and Report Data](Process_and_Report_Data.html).

In the following example, the expression returns the value of a process variable:

![Pv_callouts](images/Pv_callouts.png)

1.  **domain**: Optional if the desired domain is the default domain for the execution context. When a domain isn't specified, it is inferred based on the context in which the expression is evaluated.
2.  **name**: Name you assign (or assigned by Appian) to your variable when you create it. It is not case sensitive. If the variable name contains characters other than letters/numbers/underscores or begins with an underscore, the domain and variable name must be enclosed in single quotes. For example, `'pv!variable.a-name'`.

Variables of complex and custom data types use the dot operator to access field values. You can also use the `index()` function.

Let's say you have a custom data type "Person" with the following structure:

```
1
2
3
4
5
Person
 |- firstName (Text)
 |- lastName (Text)
 |- homeAddress (Address)
   |- city (Text)
```

You create a variable (process variable, node input, or local variable) called "personA" of type Person. To access the "firstName" value of the variable, enter any of the following:

-   `index(pv!personA, "firstName", "")`
-   `pv!personA["firstName"]`
-   `pv!personA.firstName`

**Note:**  Appian recommends using `index()` to access the index value of a CDT in cases where the variable may have a null value, or the field name is not available. The `index()` function allows you to assign a default value through its default value parameter. See also: [index() function](fnc_array_index.html).

The dot notation is useful when accessing nested fields of custom data type, provided that the nested field is not null.

To access the "city" value of the "personA" variable, enter either of the following:

-   `index(pv!personA, "homeAddress", "city", "")`
-   `pv!personA.homeAddress.city`

### Local variables

Local variables differ in that they are defined and set within the expression and are only available inside the function that defines them.

The [a!localVariables()](Local_Variables.html) function defines a local variable and immediately assigns it a value. For example, in the following expression, `local!username` is set to the current user's username and then used several times in the rest of the expression:

```
1
2
3
4
5
6
7
8
a!localVariables(
  local!username: loggedInUser(),
  if(
    len(local!username) > 10,
    local!username & " is a long username!",
    local!username & " seems like a fairly short username!"
  )
)
```

Using local variables can avoid duplicating logic, make expressions easier to read, and avoid needlessly evaluating a part of the expression multiple times. They can also be used to store a user's input as they interact with the interface.

Local variable definitions that contain data queries may be [evaluated in parallel](expressions-parallel-evaluation.html) to reduce the overall evaluation time.

### Function variables

Some functions allow variables to be used in one or more of their inputs. These variables are in the `fv!` domain and are only available when configuring that function's input. They are auto-suggested in the Expression Editor and listed in the documentation for relevant functions.

For example, the [a!foreach() looping function](fnc_looping_a_foreach.html) has several variables available in its _expression_ parameter, such as `fv!item`:

```
1
=a!forEach(items: { 1, 2, 3 }, expression: fv!item + 1)
```

Because it is a function variable provided by the `a!foreach()` function, `fv!item` cannot be used outside of `a!foreach()`. In this case, it is only provided for the _expression_ parameter, so it cannot be used in the _items_ parameter either. As `a!forEach()` iterates through the _items_ parameter, it evaluates the _expression_ multiple times, each time providing the current item value to `fv!item`.

## Text concatenation

When writing an expression that includes text and data, use an ampersand (`&`) to string (or concatenate) the information together.

For example, use the following expression to display a salutation when using process variables for the title and name data:

```
1
="Dear " & pv!title & " " & pv!name & ","
```

To return the following value:

```
1
Dear Mr. John Smith,
```

## Comments

Comments are a way for designers to leave notes in the expression to explain what the expression does.

You start a comment with `/*` and end it with `*/`. Any content between these two symbols is ignored when the expression evaluates.

For example:

```
1
"Dear "& pv!title /* pv!title should contain either "Mr" or "Mrs" */ & pv!name &","
```

Includes a comment but still evaluates to the following:

```
1
"Dear "& pv!title & pv!name &","
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...