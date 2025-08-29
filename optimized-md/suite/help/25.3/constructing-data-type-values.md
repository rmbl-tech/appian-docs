---
source_url: https://docs.appian.com/suite/help/25.3/constructing-data-type-values.html
original_path: constructing-data-type-values.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Create a Type Constructor

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

To construct values for complex system, custom data types, or record types in an expression, create a type constructor. Type constructors accept an argument for each data type field and return a value of the specified data type.

Creating a type constructor is similar to passing arguments to functions except the domain is required for the type constructor to evaluate and data type names are case-sensitive.

For example:

If a Person CDT has the following structure:

```
1
2
3
4
5
6
7
8
Person
 |- firstName (Text)
 |- lastName (Text)

=type!Person(
  firstName: "John",
  lastName: "Smith"
)
```

returns `[firstName=John, lastName=Smith]`

Entering the namespace of the data type is optional. If the name of the data type is unique, the namespace is looked up when the expression is saved and shown when the expression is viewed again.

For example, enter the following rule and save it:

```
1
2
3
4
=type!Person(
  firstName: "John",
  lastName: "Smith"
)
```

When you view it again, it shows up as the following:

```
1
2
3
4
='type!{https://cdt.example.com/suite/types/}Person'(
  firstName: "John",
  lastName: "Smith"
)
```

If the data type name is not unique, the system prompts you to enter the fully qualified name including namespace when saving the expression. Remember to use single quotes around the full name since the namespace contains special characters.

**Tip:**  Appian recommends using keyword parameters with type constructors as shown in the above example to ease CDT change management.

See also: [Passing Arguments](passing-arguments.html)

## Deleted data types

When you save an expression that uses a data type value, and the data type is subsequently deleted, the expression continues to reference the deleted data type.

For example, if the data type Person is deleted, the expression in the examples above will show up as the following:

```
1
2
3
4
='type!{https://cdt.example.com/suite/types/}Person^1'(
  firstName: "John",
  lastName: "Smith"
)
```

However, this not the case for all expressions. Expressions in third-party credentials and the following objects will not change upon type deletion because they always reference the latest version of a type:

-   Expression rules
-   Interfaces
-   Record types
-   Reports
-   Web APIs

See also: [Delete Data Types](Custom_Data_Types.html#delete)

## Optional arguments

All arguments are optional in a type constructor. Fields that are not assigned a value are set to null.

For example:

```
1
2
3
4
=type!PagingInfo(
  startIndex: 1,
  batchSize: 2
)
```

returns `[startIndex=1, batchSize=2, sort=]`

## Complex arguments

For fields that are themselves a complex data type, type constructors can be used to define their values.

For example:

When a Person CDT has the following structure:

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
Person
    |- firstName (Text)
    |- lastName (Text)
    |- address (Address)
        |- street (Text)
        |- city (Text)

=type!Person(
  firstName: "John"
)
```

returns `[firstName=John, lastName=, address=]`

```
1
=isnull(type!Person(firstName: "John").address)
```

returns `true`

```
1
2
3
4
5
6
7
=type!Person(
  firstName: "John",
  address: type!Address(
    street: "123 Abc St",
    city: "Reston"
  )
)
```

returns `[firstName=John, lastName=, address=[street=123 Abc St, city=Reston]]`

**Tip:**  For readability when creating saving it as a rule, enter line breaks after each argument when passing by keyword.

## Extra arguments

If you enter keywords that don't match any fields in the data type, the keywords are ignored.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...