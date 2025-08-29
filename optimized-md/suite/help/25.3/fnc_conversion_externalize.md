---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_externalize.html
original_path: fnc_conversion_externalize.html
version: "25.3"
title: "externalize() Function"
page_id: "fnc_conversion_externalize"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# externalize() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**externalize**( _value_ )

Converts the given value to a string representation so that it can be saved externally. The externalized string must only be used in conjunction with `internalize()` and must be internalized on the same server. Moreover, the type id of the value is embedded in the externalized string.

**See also**: [internalize()](fnc_conversion_internalize.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to externalize.

 |

## Returns

Text

## Usage considerations

### Convert back to original value

The returned value can later be converted back to the original value using [internalize()](fnc_conversion_internalize.html). For example, the text returned by `externalize(pv!myUserPv)` could be stored in an external database and later assigned back to a user process variable by passing the externalized representation of the value to `internalize()`.

### Externalize record data

This function cannot be used with record data. Instead, you can use [a!toJson()](fnc_system_a_tojson.html) to create a text representation of record data to be stored outside Appian. The JSON can then be cast to a record data type with [a!fromJson()](fnc_system_a_fromjson.html).

This example shows how to cast a JSON string to the Address record type. When casting JSON data to a record type, Appian automatically matches the keys to the record type's fields. Any non-matching key names are ignored.

```
1
2
3
4
5
6
7
cast(
  recordType!Address,
  a!fromJson(
      "{""addressId"":301,""addressLine"":""7950 Jones Branch Dr"",
      ""city"":""McLean"",""stateProvinceId"":75,""postalCode"":""22102""}"
  )
)
```

## Examples

### Serialize text

```
1
externalize("Hello World!")
```

Returns `000000010000003000000000000000030000000448656C6C6F20576F726C6421000000000000000000000001000000030000000100000002`. In some cases, primitive types can be used across different environments.

### Serialize a map

```
1
externalize(a!map(key1: "value1", key2: "value2"))
```

Returns `000000010000009000000000000000030000000000000004FFFFFFFC000000026B657931006B657932000000000000000000000600000000000000000000000200000000000000020000000476616C756531000000000000000000010000000300000000000000020000000476616C7565320000000000000000000100000003000000060000000000000001000000FC0000000100000002`.

### Serialize a process variable of type User

```
1
externalize(pv!user)
```

Returns `000000010000002800000000000000030000000475736572330000000000000000000001000000040000000100000002` when `pv!user` is User Mike Smith whose username is `user3`.

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
| Process Reports | Compatible |  |
| Process Events | Compatible |

Can be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...