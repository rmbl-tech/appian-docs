---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_internalize.html
original_path: fnc_conversion_internalize.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# internalize() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**internalize**( _externalizedText, default_ )

Converts the given externalized string representation of a value to the original value.

**See also**: [externalize()](fnc_conversion_externalize.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`externalizedText`

 |

_Text_

 |

Externalized representation of a value.

 |
|

`default`

 |

_Any Type_

 |

Value to return if the text cannot be internalized or an error occurs.

 |

## Returns

Text

## Usage considerations

This function cannot be used with record data. If you use [a!toJson()](fnc_system_a_tojson.html) to create a text representation of record data, that JSON can then be cast to a record data type with [a!fromJson()](fnc_system_a_fromjson.html).

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

### Deserialize text

```
1
internalize("000000010000003000000000000000030000000448656C6C6F20576F726C6421000000000000000000000001000000030000000100000002")
```

Returns `Hello World!`.

### Deserialize a map

```
1
internalize("000000010000009000000000000000030000000000000004FFFFFFFC000000026B657931006B657932000000000000000000000600000000000000000000000200000000000000020000000476616C756531000000000000000000010000000300000000000000020000000476616C7565320000000000000000000100000003000000060000000000000001000000FC0000000100000002")
```

Returns `a!map(key1: "value1", key2: "value2")`.

### Deserialize a value of type User

`internalize(externalize(pv!user))` returns `user3` when `pv!user` is User Mike Smith whose username is `user3`.

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