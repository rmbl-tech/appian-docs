---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_index.html
original_path: fnc_array_index.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# index() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**index**( _data, index, default_ )

Returns the data\[index\] if it is valid or else returns the default value.

**See also**: [property()](fnc_scripting_property.html): This function acts as an alias to the index() function especially when applied over custom data types.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`data`

 |

_Any Type_

 |

A homogeneous array, whose indexed value is expected. Can also be a dictionary, map, CDT, or Record.

 |
|

`index`

 |

_Any Type_

 |

The index or array of indices of the data. Index can be an integer, text, or a record type field reference.

 |
|

`default`

 |

_Any Type_

 |

The default value to be returned if the data or the index is invalid, e.g. if the data itself is empty or the index is not found in the data. The type of the default value must be the same as that of the elements of the data. This parameter is optional.

 |

## Returns

Any Type

## Usage considerations

### Default return values

The type of the _default_ value must be same as that of the elements in the array. If it is not, a null value is returned if the _index_ is not found.

When the _data_ is a dictionary and the _index_ is not found in the dictionary, then the _default_ will be ignored and a null value will be returned. Consider using a [map](fnc_system_map.html) instead of a dictionary.

### Limitations on saving to an array index

You cannot use `index()` to specify the index for a `saveInto` parameter. Instead, you will need to use square brackets to index into a _saveInto_ parameter. See [Interface Variables and Inputs](enabling_user_interaction.html#arrays-and-custom-data-types) to learn more.

## Examples

### Retrieve a value at a single index

```
1
index({10, 20, 30}, 2, 1)
```

Returns `20`.

### Retrieve values at multiple indexes

```
1
index({10, 20, 30}, {1, 3}, 0)
```

Returns `{10, 30}`.

### Retrieve values at repeated indexes

```
1
index({10, 20, 30}, {1, 1, 3}, 0)
```

Returns `{10, 10, 30}`.

### Retrieve the value of a CDT field using the field name as the _index_ argument

```
1
index(topaginginfo(1, 10), "startIndex", 0)
```

Returns `1`.

### Retrieve a value from a dictionary using the key as the _index_ argument

The keys of dictionaries can be all numbers or all strings, so values in the _index_ parameter must be specified as the same type.

In this example, the keys are numbers:

```
1
2
3
4
5
6
7
a!localVariables(
  local!dictionary: {1: "abc", 2: 20},
  {
    index(local!dictionary, 1, null),
    index(local!dictionary, "1", null)
  }
)
```

Returns `{"abc", null}`. The second instance's _index_ is a string, so the default value is returned.

In this example, the keys are strings:

```
1
2
3
4
5
6
7
a!localVariables(
  local!dictionary: { "1": "abc", "2": 20 },
  {
    index(local!dictionary, 1, null),
    index(local!dictionary, "1", null)
  }
)
```

Returns `{null, "abc"}`. The first instance's _index_ is a number, so the default value is returned.

If your dictionary keys are a mix of both numbers and strings, you must use a string as the _index_ parameter:

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
  local!dictionary: { 1: "abc", "2": 20 },
  {
    index(local!dictionary, 1, null),
    index(local!dictionary, "1", null),
    index(local!dictionary, "2", null)
  }
)
```

Returns `{null, "abc", 20}`. The first instance's _index_ is a number, so the default value is returned.

### Retrieve the value of a map field using the field name as the _index_ argument

The field names of maps are strings, so they must be specified as string values in the _index_ parameter.

```
1
2
3
4
5
6
7
a!localVariables(
  local!map: a!map(1: "abc", 2: 20),
    {
      index(local!map, 1, null),
      index(local!map, "1", null)
    }
)
```

Returns `{"", "abc"}`. The first instance's _index_ is a Number (Integer), so the default value is returned.

### Retrieve the value of a record field using the record field reference as the _index_ argument

**Note:**  Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only.

```
1
2
3
4
5
6
7
index(
  recordType!Department(
    recordType!Department.fields.name: "Engineering"
    ),
  recordType!Department.fields.name,
  ""
)
```

Returns `"Engineering"`.

### Return the value of a local variable field by name

To test this example, replace `type!Person` with the person data type in your environment.

```
1
2
3
4
5
6
7
a!localVariables(
  local!person: a!map(
    firstName: "Jane",
    lastName: "Doe"
  ),
  index(local!person, "firstName", "")
)
```

Returns `"Jane"`.

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