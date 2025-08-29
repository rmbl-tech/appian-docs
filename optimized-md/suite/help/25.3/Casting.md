---
source_url: https://docs.appian.com/suite/help/25.3/Casting.html
original_path: Casting.html
version: "25.3"
title: "Casting"
page_id: "Casting"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Casting

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Cast Data Types in Appian

Watch this video to learn about the different data types used with expressions and how to configure conversion functions like `cast()`.

## Overview

All variables in Appian are strongly typed. In some cases, when using the Expression Editor, a variable's value must be cast from one data type to another. For instance, the value 123.45 has a decimal floating point number data type. This value can be cast to an integer number as the number 123. Similarly, 123 can be cast to a decimal type as 123.0.

See also: [Data Types](Appian_Data_Types.html)

**Note:**  Some casts lose information (such as 123.45 to 123), while others preserve all information (123 to 123.0). In general, the casts that are supported are intended to provide ease of use while acting in an expected manner. Casts that never make sense for a type are disallowed and will issue an error message during evaluation of the expression.

Casting is done consistently throughout the application (except for nested arrays that only flatten when saved to a process variable).

For example, if a process variable is defined as an integer, and a decimal result of an expression is stored in the process variable, then the result will be the same as if running the data through the `tointeger()` function.

Also, if you pass a value of type decimal to a rule, function, or type constructor that expects a value of type integer, the value that passes would be the same as if running it through the `tointeger()` function first.

## Operator casting

### Comparison operators

Before performing a comparison with a comparison operator, the left and right sides of an expression are normalized to the same type automatically (where possible) according to the following rules:

| Left | Right | Cast to before operation |
| --- | --- | --- |
| Integer | Decimal | Decimal |
| Integer | Boolean | Integer |
| Decimal | Integer | Decimal |
| Boolean | Integer | Integer |
| Text | Any | Text |
| Date and time | Date | Date and time |
| Date | Date and time | Date and time |
| Date and time | Time | Date and time |
| Time | Date and time | Date and time |
| Date | Time | Date and time |
| Time | Date | Date and time |
| User or group | User | User or group |
| User | User or group | User or group |
| User or group | Group | User or group |
| Group | User or group | User or group |
| Document | Document or folder | Document or folder |
| Document or folder | Document | Document or folder |
| Document or folder | Folder | Document or folder |
| Folder | Document or folder | Document or folder |
| Duration | Decimal | Duration |
| Decimal | Duration | Duration |
| Email address | Email recipient | Email recipient |
| Email recipient | Email Address | Email recipient |
| Text | Email recipient | Email recipient |
| Email recipient | Text | Email recipient |
| User | Email recipient | Email recipient |
| Email recipient | User | Email recipient |
| Group | Email recipient | Email recipient |
| Email recipient | Group | Email recipient |

### Arithmetic

Before performing arithmetic operations, the left and right sides are normalized to the same type where possible. Arithmetic operations on combinations not listed here are disallowed. For the sake of consistency, expressions that have the same data type on each side are also listed.

| Left | Right | Result of operation |
| --- | --- | --- |
| Boolean | Boolean | Integer |
| Boolean | Integer | Integer |
| Boolean | Decimal | Decimal |
| Boolean | Text | Decimal |
| Boolean | Duration | Duration |
| Integer | Boolean | Integer |
| Integer | Integer | Integer |
| Integer | Decimal | Decimal |
| Integer | Text | Decimal |
| Integer | Duration | Duration |
| Decimal | Boolean | Decimal |
| Decimal | Integer | Decimal |
| Decimal | Decimal | Decimal |
| Decimal | Text | Decimal |
| Decimal | Duration | Duration |
| Text | Boolean | Decimal |
| Text | Integer | Decimal |
| Text | Decimal | Decimal |
| Text | Text | Decimal |
| Text | Duration | Duration |
| Duration | Boolean | Duration |
| Duration | Integer | Duration |
| Duration | Decimal | Duration |
| Duration | Text | Duration |

Addition, subtraction, and division operations also support the following combinations (combinations specific to just subtraction or division appear in more tables below):

| Left | Right | Result of operation |
| --- | --- | --- |
| Integer | Date | Date |
| Integer | Date and time | Date and time |
| Integer | Time | Time |
| Decimal | Date | Date |
| Decimal | Date and time | Date and time |
| Decimal | Time | Time |
| Text | Date | Date |
| Text | Date and time | Date and time |
| Text | Time | Time |
| Date | Integer | Date |
| Date | Decimal | Date |
| Date | Duration | Date |
| Date and time | Integer | Date and time |
| Date and time | Decimal | Date and time |
| Date and time | Text | Date and time |
| Date and time | Duration | Date and time |
| Time | Integer | Time |
| Time | Decimal | Time |
| Time | Text | Time |
| Time | Duration | Time |
| Duration | Duration | Duration |
| Duration | Date | Date |
| Duration | Date and time | Date and time |

Subtraction and division operations also support the following combinations (combinations specific to just division appear in table after this):

| Left | Right | Result of operation |
| --- | --- | --- |
| Date and time | Date and time | Duration |
| Date and time | Date | Duration |
| Date | Date | Duration |
| Date | Date and time | Duration |

Only division operations support the following combinations in addition to the other arithmetic combinations mentioned above:

| Left | Right | Result of operation |
| --- | --- | --- |
| Boolean | Boolean | Decimal |
| Boolean | Integer | Decimal |
| Integer | Boolean | Decimal |
| Integer | Integer | Decimal |

## General casting

**Note:**  The casting rules for each data type are listed in the following format:

| To | From | Comment |
| --- | --- | --- |
| New Type |   |   |
|   | Existing Type1 | Comment |
|   | Existing Type2 | Comment |

A null is a special value, an absence of value, or term indicating that a value is not applicable. Any null of any type may be cast to any other type. All nulls are considered the same null. Null is excluded from consideration below. Learn more about [null handling in Appian](null-handling.html).

Types are often based on other types or categorized as entirely within a given type. For instance, Knowledge Center and Document data types are both Integer Keys. They are listed only as Integer Keys below. (All Appian object types other than users are treated as Integer Keys for this page.)

If a casting rule is not listed, it is not supported and will issue an error. If no comment is given, then the casting rule is that the entire value is retained. For instance, a text string of `abc` cast to a password is still `abc`.

Types are always castable to themselves without change. This is known as the "identity" cast and is not listed below.

| To | From | Comment |
| --- | --- | --- |
| Password |   |   |
|   | Binary |   |
|   | Text |   |
| Text |   |   |
|   | Binary |   |
|   | Integer | The decimal base format of the number, for example: 123 as "123" |
|   | Decimal | The decimal base format of the number, with a decimal (.) point (for example, 123.45 as "123.45") |
|   | Duration | Days::Time |
|   | Integer Key | \[typename:integer value\]

All Appian object types other than users are handled as Integer Keys. These include Knowledge Centers and Documents. |
|   | Email Address |   |
|   | Password | **\*** appears in place of each password character, without necessarily matching the number of characters in the password. |
|   | Boolean | Yes or No |
|   | Date | Local date format |
|   | Time | Local time format |
|   | Date and time | Local Date and time format |
|   | User | "username" |
|   | List | value,value |
|   | User or group | As user or group Integer Key |
|   | Document or folder | As Document or Folder Integer Key |
|   | Custom Data Type | Each record can be stored as text |
|   | Safe URI | The underlying text string does not change. |
| Integer |   |   |
|   | Decimal | Rounding |
|   | Text | If the minus character "-" is included in the text string, it is negative. Any data after the decimal point is dropped. The remaining digits (0-9) are used in forming the number. |
|   | Duration | Truncated |
|   | Boolean | 0 for False, 1 for True |
|   | Date | Serial date value (number of days since January 1st, 2035) |
|   | Date and time | Serial date value (number of days since January 1st, 2035) |
|   | Integer Key | The Integer ID number |
|   | List | The head of the list is cast to an Integer |
| Decimal |   |   |
|   | Integer | Number as Decimal |
|   | Text | Similar to casting a text string to an integer, except it retains data that appears after the decimal point. |
|   | Duration | Number of days, time in fractional days. |
|   | Boolean | 0.0 for False, 1.0 for True |
|   | Time | Fraction of day, 12:00 pm yields 0.5. |
|   | Integer Key | The Integer ID number as a Decimal number |
|   | List | The head of the list is cast to a Decimal number |
| Duration |   |   |
|   | Integer | Number as Decimal, number of days |
|   | Decimal | Number as Decimal, number of days, any fractional component is converted to a fraction of a day |
|   | Text | Similar to casting a text string to a Decimal number |
|   | Boolean | 0.0 days for False, 1.0 days for True |
|   | Time | Fraction of a day as Duration |
|   | List | The head of the list is cast to a Duration |
| Integer Key |   |   |
|   | Integer | Integer ID of the correct form |
|   | Decimal | Rounded to Integer ID |
|   | List | The head of the list is cast to an Integer Key
**NOTE**: One form of Integer Key is not allowed to be cast to another form of Integer Key (for example, you cannot convert a Page to a Group). To do this, first cast to Integer and then back to the desired form of Integer Key (such as casting a Page to an Integer to a Group). However, this is very rarely useful. |
| User |   |   |
|   | Text | The User with a given Username |
|   | User or group | The User if it represents a user; otherwise null |
|   | List | The head of the list is cast to user |
| Boolean |   |   |
|   | Integer | False if 0, otherwise True |
|   | Decimal | False if 0.0, otherwise True |
|   | Text | True if the first character is 1, t, T, y, or Y; otherwise False |
|   | List | The head of the list is cast to Boolean |
| Date |   |   |
|   | Text | Date in local format (discouraged, only for user input) |
|   | Integer | Serial date value (number of days since January 1st, 2035) |
|   | Decimal | Truncated serial date value (number of days since January 1st, 2035) |
|   | Date and time | Truncated serials date value (number of days since January 1st, 2035) |
|   | List | The head of the list is cast to Date
(Time is explicitly disallowed. For example, "is 2pm on a Tuesday" doesn't provide useful data) |
| Time |   |   |
|   | Text | Time in local format (discouraged, only for user input) |
|   | Date and time | Time component of Date and time |
|   | Decimal | The fractional component of Date and time |
|   | Duration | The fractional component is fraction of day |
|   | Date | Midnight |
|   | Integer | From miliseconds after midnight, up to one day |
|   | List | The head of the list is cast to time |
| Date and time |   |   |
|   | Text | Date and time in local format (discouraged, only for user input) |
|   | Date | Midnight on the given date |
|   | Integer | Serial date value (number of days since January 1st, 2035) |
|   | Decimal | Truncated serial date value (number of days since January 1st, 2035) |
|   | List | The head of the list is cast to Date and time |
|   | User or Group |   |
|   | User |   |
|   | Group |   |
|   | Document or Folder |   |
|   | Document |   |
|   | Folder |   |
|   | List of type x |   |
|   | List of type y | Each element is cast; if successfully cast, it is included in the final list. If not, it is ignored. This implies that a miscast list can yield an empty list. |
| Safe URI |   |   |
|   | Text | The underlying text string does not change. If the URI is not considered safe, the system produces an error. |

## Casting custom data

One custom data type (CDT) can be cast to another CDT, when the field names match.

For example, given the following CDTs:

```
1
2
3
4
5
HRName
	|
	|-lastname (text)
	|
	|-firstname (text)
```

— AND —

```
1
2
3
4
5
PayrollName
	|
	|-lastname (text)
	|
	|-firstname (text)
```

Casting `HRName` to `PayrollName` maps `firstname` to `firstname` and `lastname` to `lastname` as records with the `PayrollName` data type.

-   General casting rules apply to types used by fields in the CDT. (Casting may fail if the fields are of different, uncastable types.)
-   Fields in a CDT do not have to have a common origin to allow casting, only a common structure (field names).

See above: [General Casting Rules](#general-casting)

## Casting record data

A record data type can be cast to a dictionary, map, CDT, or string. You can cast the record fields and use the [relationships](record-type-relationships.html) defined in the record type to cast related record fields. You cannot cast fields that have been excluded by a query, or were not mapped from the record type's data source.

**Note:**  A CDT may have more fields than the corresponding record type it supports.

Let's look at some examples of how to cast record data. See [Casting related record data](#casting-related-record-data) for examples of how to use your relationships to case related record fields.

### Casting a record to a CDT

In the first example, we will cast the _Employee_ record, which has four record fields: _firstName_, _lastName_, _age_, and _phoneNumber_ to the _Person_ CDT.

When casting a record to a CDT, general casting rules apply to data types used by fields in the record.

**Note:**  Casting may fail if casting is not available on a field type or the fields in the record type do not match the fields on the CDT.

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
cast(
  type!Person,
  recordType!Employee(
    recordType!Employee.fields.firstName: "Jane",
    recordType!Employee.fields.lastName: "Doe",
    recordType!Employee.fields.age: "31",
    recordType!Employee.fields.phoneNumber: "540-234-8975"
  )
)
```

The expression output will result in the record field values cast to the _Person_ CDT:

![/casting record data to cdt result](images/casting_a_record_type_to_cdt_result.png)

Since the _age_ field does not exist on the _Person_ CDT, this field was dropped.

### Casting a record to a map

In this example, we'll cast the _Employee_ record to a map.

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
cast(
  typeof(a!map()),
   recordType!Employee(
    recordType!Employee.fields.firstName: "Jane",
    recordType!Employee.fields.lastName: "Doe",
    recordType!Employee.fields.age: "31",
    recordType!Employee.fields.phoneNumber: "540-234-8975"
  )
)
```

The expression output will result in the record field values cast to a map:

![/casting a record type to map result](images/casting_a_record_type_to_map_result.png)

Casting a record type to a dictionary works the same way as casting a record type to a map. A map retains the type of each value while a dictionary wraps a variant `AnyType` around each value in the dictionary.

### Casting a map to a record

Now let's use the `cast()` function to cast in the opposite direction. We'll cast a map of four field values to the _Employee_ record. In this expression, we'll use the `recordType!` domain to specify the _Employee_ record.

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
cast(
  recordType!Employee,
  a!map(
    firstName: "Jane",
    lastName: "Doe",
    age: "31",
    phoneNumber: "540-234-8975"
  )
)
```

The expression output will result in the following map cast to the _Employee_ record:

![/casting a map to record type result](images/casting_a_map_to_record_type_result.png)

### Casting a record to text

In the last example, we will cast the _Employee_ record to text.

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
cast(
  3 /* Type number (Text) */,
  recordType!Employee(
    recordType!Employee.fields.firstName: "Jane",
    recordType!Employee.fields.lastName: "Doe",
    recordType!Employee.fields.age: "31",
    recordType!Employee.fields.phoneNumber: "540-234-8975"
  )
)
```

The expression output will result in the following record field values cast to a text string:

![/casting record data to text result](images/casting_a_record_type_to_text_result.png)

## Casting related record data

You can use the [relationships](record-type-relationships.html) defined in the record type to cast related record fields to a nested CDT, a map, or a dictionary.

**Note:**  A CDT may have more fields than the corresponding record type or related record type it supports.

Let's take a look at a few examples.

### Casting a related record to a nested CDT

In this example, we'll cast a record from the _Case_ record type to the _Case_ CDT. The _Case_ record type has two fields: _Id_ and _title_, and has a many-to-one relationship with the _Customer_ record type. Similarly, the _Case_ CDT has the fields _Id_, _title_, and _customer_, where _customer_ uses a nested CDT as the data type.

When casting a related record to a nested CDT, the relationship name must match the nested CDT field name. General casting rules also apply to data types used by fields in the related record type.

**Note:**  Casting may fail if casting is not available on a field type, the relationship name does not match the nested CDT field name, or the fields on the related record type do not match the fields on the CDT.

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
cast(
  type!CSA_Case,
  recordType!Case(
    recordType!Case.fields.id: 1,
    recordType!Case.fields.title: "Case 1",
    recordType!Case.relationships.customer: recordType!Customer(
      recordType!Customer.fields.id: 1,
      recordType!Customer.fields.name: "John Doe"
    )
   )
  )
```

The expression output will result in the record field values cast to the _Case_ CDT.

![/casting-related-record-to-cdt](images/casting-related-record-to-cdt.png)

### Casting a related record to a map

In this example, we'll cast a record from the _Case_ record type to a map.

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
cast(
  typeof(a!map()),
  recordType!Case(
    recordType!Case.fields.id: 1,
    recordType!Case.fields.title: "Case 1",
    recordType!Case.relationships.customer: recordType!Customer(
      recordType!Customer.fields.id: 1,
      recordType!Customer.fields.name: "John Doe"
    )
   )
  )
```

The expression output will result in the record field values cast to a map:

![/casting-related-record-to-map](images/casting-related-record-to-map.png)

Casting a related record type to a dictionary works the same way as casting a related record type to a map. A map retains the type of each value while a dictionary wraps a variant `AnyType` around each value in the dictionary.

### Casting a map to a related record

Now we'll cast in the opposite direction. We'll cast a map of two record field values and two related record field values to the _Case_ record type. In this expression, we'll use the `recordType!` domain to specify the _Case_ record type.

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
cast(
  typeof(recordType!Case()),
  a!map(
    id: 1,
    title: "Case 1",
    customer: a!map(
      id: 1,
      name: "John Doe"
    )
  )
)
```

The expression output will result in the following map cast to the _Case_ record type:

![/casting-map-to-related-record](images/casting-map-to-related-record.png)

### Casting a nested CDT to a related record

In the last example, we will cast values from the _Case_ CDT and the nested _Customer_ CDT to the _Case_ record type.

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
cast(
  typeof(recordType!Case()),
  type!Case(
    id: 1,
    title: "Case 1",
    customer: type!Customer(
      id: 1,
      name: "John Doe"
    )
  )
)
```

The expression output will result in the following map cast to the _Case_ record type:

![/casting-nested-cdt-to-record](images/casting-nested-cdt-to-record.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...