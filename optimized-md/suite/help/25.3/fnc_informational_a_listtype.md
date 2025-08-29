---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_a_listtype.html
original_path: fnc_informational_a_listtype.html
version: "25.3"
title: "a!listType() Function"
page_id: "fnc_informational_a_listtype"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!listType() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!listType**( _typeNumber_ )

Returns the list type number for a given type number.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`typeNumber`

 |

_Number (Integer)_

 |

The type for whose corresponding list type should be returned. This may be retrieved by using typeof(x), where x is a value of the intended type, referencing a type with 'type!{namespace}type-name' (within single quotes), or for records, using the record type reference (e.g. recordType!Customer).

 |

## Returns

Number (Integer)

## Examples

### Getting list type

```
1
a!listType(type!Integer)
```

Returns `101`, which corresponds to the type `List of Number (Integer)`.

```
1
a!listType(recordType!Customer)
```

Returns `2893`, which corresponds to the type `List of Customer`. Your record types and their type numbers will be different from this example.

### Getting types from a list of types

```
1
a!listType({type!Integer, type!Decimal})
```

Returns `{101, 102}`, which corresponds to the types `List of Number (Integer)` and `List of Number (Decimal)`, respectively.

### Getting list type from a dictionary

```
1
2
3
a!listType(
  tointeger({ dictionaryKey: type!Integer }.dictionaryKey)
)
```

Returns `101`, which corresponds to the type `List of Number (Integer)`. Dictionary values must be cast to `Integer` before getting their list type using `a!listType`.

### Comparing text from a map or CDT

```
1
a!listType(a!map(mapKey: type!Integer).mapKey)
```

Returns `101`, which corresponds to the type `List of Number (Integer)`.

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