---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_a_update.html
original_path: fnc_array_a_update.html
version: "25.3"
title: "a!update() Function"
page_id: "fnc_array_a_update"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!update() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!update**( _data, index, value_ )

Inserts new values or replaces existing values at the specified index or field name and returns the resulting updated data.

**See also**:

-   [insert()](fnc_array_insert.html): Use this function if you want to insert new values into a list without replacing existing values.
-   [append()](fnc_array_append.html): Use this function if you want to append values to the end of a list.
-   [Inserting a Value into an Index of an Array](Process_Node_and_Smart_Service_Properties.html#custom-outputs): If you plan to use this function on a node output and simply want to insert one or more values into an array, check out the **Is Stored at Index** operator discussed in this help topic which provides this specific functionality.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`data`

 |

_Any Type_

 |

A list, map, dictionary, CDT, or record containing data to be updated.

 |
|

`index`

 |

_Any Type_

 |

The [index](#updating-a-list-at-an-index) or [field](#updating-a-map-with-a-field-name) at which to update the data.

 |
|

`value`

 |

_Any Type_

 |

The new value to add or replace an existing value.

 |

## Returns

Any Type

## Usage considerations

### Using the data parameter

-   The _data_ parameter must be a collection such as a list, map, dictionary, CDT, or record. Scalars like text, integers, and dates cannot be updated.

-   If the _data_ parameter is passed a typed list, such as List of Text or List of Integer, the _value_ parameter must be of the same type. Otherwise, `a!update()` will attempt to cast the _value_ parameter to the appropriate type for the list. If the cast is not possible, an error will occur. For example, when updating a List of Text with an Integer, the Integer will be cast to Text in the updated list.

### Limitations and alternatives

-   Do not use maps, dictionaries, CDTs, or records which contain fields that differ only in casing.

## Examples

### Lists

#### Updating a list at an index

```
1
2
3
4
5
a!update(
  data: { 1, 2, 3 },
  index: 1,
  value: 5
)
```

Returns `{ 5, 2, 3 }`.

#### Updating a list at an index with a different type

```
1
2
3
4
5
a!update(
data: { "ab", "cd" },
index: 2,
value: 3
)
```

Returns `{ "ab", "3" }`. The Integer 3 was cast to a Text "3" since the data parameter was a List of Text.

#### Updating at a null index

```
1
2
3
4
5
a!update(
  data: { "ab", "cd" },
  index: null,
  value: "ef"
)
```

Returns `{ "ab", "cd" }`. A null index will result in no update to the data.

#### Appending an item to a list

```
1
2
3
4
5
a!update(
  data: { 1, 2, 3 },
  index: 4,
  value: 4
)
```

Returns `{ 1, 2, 3, 4 }`.

#### Appending an item to a list at an index larger than the length of the list

```
1
2
3
4
5
a!update(
  data: { 1, 2, 3} ,
  index: 6,
  value: 11
)
```

Returns `{ 1, 2, 3, null, null, 11 }`. If the index is greater than the length of the list, null values are added in between the end of the original list and the new value.

#### Updating and appending multiple items at the same time in a list

```
1
2
3
4
5
a!update(
  data: { 1, 2, 3 },
  index: { 1, 4 },
  value: { 11, 14 }
)
```

Returns `{ 11, 2, 3, 14 }`.

#### Updating and appending multiple items with the same value in a list

```
1
2
3
4
5
a!update(
  data: { 1, 2, 3 },
  index: { 1, 4 },
  value: 11
)
```

Returns `{ 11, 2, 3, 11 }`.

#### Updating and appending multiple items at the same time to an empty list

```
1
2
3
4
5
a!update(
  data: {},
  index: { 2, 4 },
  value: {11, 13}
)
```

Returns `{ null, 11, null, 13 }`. Since the data parameter was an empty list, updating non-consecutive indices results in null values being added in the remaining indices.

### Maps

#### Updating a map with a field name

```
1
2
3
4
5
a!update(
  data: a!map(a: 1, b: 2),
  index: "a",
  value: 5
)
```

Returns `a!map(a: 5, b: 2)`.

#### Updating multiple values across a list of maps

```
1
2
3
4
5
a!update(
  data: { a!map(x: 10, y: 20), a!map(x: 1, y: 2) },
  index: "x",
  value: { -10, -1 }
)
```

Returns `{ a!map(x: -10, y: 20), a!map(x: -1, y:2) }`.

#### Updating multiple values in a single map

```
1
2
3
4
5
a!update(
  data: a!map(a: 1, b: 2),
  index: {"a", "b"},
  value: { 5, 6 }
)
```

Returns `a!map(a: 5, b: 6)`.

#### Updating the same value multiple times in a single map

```
1
2
3
4
5
a!update(
  data: a!map(a: 1, b: 2),
  index: {"a", "a"},
  value: { 5, 6 }
)
```

Returns `a!map(a: 6, b: 2)`.

#### Inserting a key into a map

```
1
2
3
4
5
a!update(
  data: a!map(a: 1, b: 2),
  index: "c",
  value: 3
)
```

Returns `a!map(a: 1, b: 2, c: 3)`.

#### Inserting a key into an empty map

```
1
2
3
4
5
a!update(
  data: a!map(),
  index: "a",
  value: 1
)
```

Returns `a!map(a: 1)`.

#### Inserting multiple keys into an empty map

```
1
2
3
4
5
a!update(
  data: a!map(),
  index: {"a", "b"},
  value: { 5, 6 }
)
```

Returns `a!map(a: 5, b: 6)`. Since the data parameter was an empty map, the specified fields will be added to the map.

### Dictionaries

In general, the same rules that apply to maps will apply to dictionaries.

#### Updating a dictionary with a field name

```
1
2
3
4
5
a!update(
  data: { a: 1, b: 2 },
  index: "a",
  value: 5
)
```

Returns `{ a: 5, b: 2 }`.

### Records

In order to test record examples, you will need to create a record type with the same field names. Use record field references instead of strings shown in the examples below.

#### Updating a record with a field name

In this example, there is a record type called "Customer" with 3 fields on it: id, name, and age.

```
1
2
3
4
5
a!update(
  data: recordType!Customer(id: 4, name: "Jane", age: 42),
  index: recordType!Customer.fields.age,
  value: 43
)
```

Returns `recordType!Customer(id: 4, name: "Jane", age: 43)`.

#### Updating multiple values across a list of records

In this example, there is a record type called "Customer" with 3 fields on it: id, name, and age.

```
1
2
3
4
5
a!update(
  data: { recordType!Customer(id: 4, name: "Jane", age: 42), recordType!Customer(id: 7, name: "John", age: 35)},
  index: recordType!Customer.fields.age,
  value: {43, 36}
)
```

Returns `{ recordType!Customer(id: 4, name: "Jane", age: 43), recordType!Customer(id: 7, name: "John", age: 36)}`.

#### Updating multiple values in a single record

In this example, there is a record type called "Customer" with 3 fields on it: id, name, and age.

```
1
2
3
4
5
a!update(
  data: recordType!Customer(id: 4, name: "Jane", age: 42),
  index: {recordType!Customer.fields.name, recordType!Customer.fields.age},
  value: {"Jane Doe", 43}
)
```

Returns `recordType!Customer(id: 4, name: "Jane Doe", age: 43)`.

#### Updating a related record with a field name

In this example, the record type "Customer" has a 1:1 relationship with the record type "Address".

```
1
2
3
4
5
6
7
a!update(
  data: recordType!Customer(
    Address: recordType!Address(zip: 12345)
  ),
  index: recordType!Customer.relationships.Address.fields.zip,
  value: 23456
)
```

Returns `recordType!Customer(Address: recordType!Address(zip: 23456))`.

#### Updating a null related record with a field name

In this example, the record type "Customer" has a 1:1 relationship with the record type "Address".

```
1
2
3
4
5
a!update(
  data: recordType!Customer(Address: null),
  index: recordType!Customer.relationships.Address,
  value: recordType!Address(zip: 12345)
)
```

Returns `recordType!Customer(Address: recordType!Address(zip: 12345))`.

### CDTs

In order to test the CDT examples, you will need to create a CDT with the same field names.

#### Updating a CDT with a field name

In this example, there is a CDT called "Customer" with 3 fields on it: id, name, and age.

```
1
2
3
4
5
a!update(
  data: type!Customer(id: 3, name: "John", age: 30),
  index: "age",
  value: 31
)
```

Returns `type!Customer(id: 3, name: "John", age: 31)`.

#### Updating a nested CDT with a field name

In this example, the top level CDT called "mainCDT" has a nested CDT inside of it called "nestedCDT" which has one field called "field1".

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
a!update(
  data: type!mainCDT(
    nestedCDT: type!nestedCDT(field1: "abc")
  ),
  index: "nestedCDT",
  value: a!update(
    data: type!nestedCDT(field1: "abc"),
    index: "field1",
    value: "New Value"
  )
)
```

Returns `type!CDT(nestedCDT: type!nestedCDT(field1: "New Value"))`. Multiple, nested a!update functions are required to update this value since the field to be updated cannot be referenced in the top level index parameter.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
| Real-Time Custom Record Fields | Incompatible |

Custom record fields that evaluate in real time must be configured using one or more Custom Field functions.

 |
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...