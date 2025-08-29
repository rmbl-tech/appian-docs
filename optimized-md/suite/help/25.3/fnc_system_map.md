---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_map.html
original_path: fnc_system_map.html
version: "25.3"
title: "a!map() Function"
page_id: "fnc_system_map"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!map() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!map**( _key1, keyN_ )

Creates a map of values (Any Type) with each value stored at the corresponding string key. Values stored in maps are not wrapped in variants.

**See also:** [Appian Data Types](Appian_Data_Types.html#map-type)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`key1`

 |

_Any Type_

 |

A key value pair to store in the map. The value is not wrapped in a variant.

 |
|

`keyN`

 |

_Any Type_

 |

Any additional key value pairs, as needed.

 |

## Returns

Map

## Usage consideration

### Function requirements

-   Keywords must be unique.
-   Keywords are not case sensitive.

### Maps vs. dictionaries

While similar to a dictionary, which uses curly braces `{}`, the values stored in a map are not wrapped in variants. This makes it much easier to get values back out of maps by indexing, without having to worry about type casting. There are no advantages to using dictionaries; prefer using maps over dictionaries where possible.

### Casting a map

-   A map can be cast to a dictionary, CDT, record, or text.
-   A dictionary, CDT, or record can be cast to a map.

## Examples

### Create a single map

```
1
a!map(id: 1, name: "Jane Doe")
```

### Create a list of maps

```
1
2
3
4
{
   a!map(id: 1, name: "Jane Doe"),
   a!map(id: 2, name: "John Doe")
}
```

### Remove items from maps

The `remove()` function can return a map without the data specified in the `index` parameter. Use the key name to specify the data to remove.

```
1
2
3
4
5
a!localVariables(
  local!map: a!map(val1: "A", val2: "B"),
  local!updated: remove(local!map, "val2"),
  local!updated
)
```

Returns `a!map(val1: "A")`.

The `index` can also be a list of key names, letting you remove multiple items in one operation.

```
1
2
3
4
5
a!localVariables(
  local!map: a!map(val1: "A", val2: "B", val3: "C"),
  local!updated: remove(local!map, {"val2", "val1"}),
  local!updated
)
```

Returns `a!map(val3: "C")`.

To remove items from a list of maps, iterate over the list with `a!forEach()`.

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
a!localVariables(
  local!maps: {
    a!map(id: 1, name: "Jane Doe"),
    a!map(id: 2, name: "John Doe")
  },
  local!updated: a!forEach(
    items: local!map,
    expression: remove(fv!item, "id")
  ),
  local!updated
)
```

Returns `{a!map(name: "Jane Doe"), a!map(name: "John Doe")}`.

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