---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_a_keys.html
original_path: fnc_informational_a_keys.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!keys Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!keys**( _value_ )

Returns the keys of the provided map, dictionary, CDT, or record.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The map, dictionary, CDT, or record whose keys should be returned.

 |

## Returns

List

## Usage considerations

-   `a!keys` cannot be used on lists or scalar values, such as text, integers, and dates.
-   The `value` parameter must be a collection such as a map, dictionary, CDT, or record.

## Examples

### Retrieving keys of a map or dictionary

```
1
a!keys(value: a!map(a: 1, b: 2))
```

Returns `{"a", "b"}`.

```
1
a!keys(value: a!map() )
```

Returns `{}`.

```
1
a!keys(value: {c: 3, d: 4} )
```

Returns `{"c", "d"}`.

### Retrieving keys of a CDT

In order to test the following CDT examples, you will need to create a CDT (`Customer`) with three fields (`id`, `name`, and `age`).

```
1
a!keys(value: type!Customer(id: 3, name: "John", age: 30))
```

Returns `{"id", "name", "age"}`.

```
1
a!keys(value: type!Customer())
```

Returns `{"id", "name", "age"}`. Since CDTs always have all of the fields in the data type, even when no values are set, all the keys of the CDT are returned.

### Retrieving keys of a record

In order to test the following record examples, you will need to create a record type (`Customer`) with three fields (`id`, `name`, and `age`). For record examples, use record field references instead of strings shown in the examples below.

```
1
a!keys(value: recordType!Customer(id: 4, name: "Jane", age: 42))
```

Returns `{recordType!Customer.fields.id, recordType!Customer.fields.name, recordType!Customer.fields.age}`. When referencing record type, this function return a list of record field references, instead of returning a list of text keys like for maps, CDTs, or dictionaries.

```
1
a!keys(value: recordType!Customer())
```

Returns `{}`. Since the record has no values defined, there are no keys present in the data type.

In the next example, the record type `Customer` has a fourth field (`Address`), which has 1:1 relationship with the record type `Address`.

```
1
a!keys(value: recordType!Customer(id: 4, name: "Jane", age: 42, Address: recordType!Address( zip: 12345 )))
```

Returns `{recordType!Customer.fields.id, recordType!Customer.fields.name, recordType!Customer.fields.age, recordType!Customer.relationships.Address}`. Since this record contains a record relationship, the function returns a list of keys containing both the record field references and the record relationship reference.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Incompatible |  |
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