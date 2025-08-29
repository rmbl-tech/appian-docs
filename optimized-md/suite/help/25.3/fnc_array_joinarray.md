---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_joinarray.html
original_path: fnc_array_joinarray.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# joinarray() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**joinarray**( _array, separator_ )

Concatenates the elements of an array together into one string and inserts a string separator between each element.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array`

 |

_Any Type Array_

 |

An array of elements to be concatenated.

 |
|

`separator`

 |

_Text_

 |

A string that will be inserted between each element of the given array.

 |

## Returns

Text

## Usage considerations

### Acceptable array types

This function works with any array type, performing a string conversion on each element if necessary.

### Null elements

Null elements cannot be concatenated. For example, `joinarray({"", "", "", ""}, "|")` returns null.

### Understanding results

If no _separator_ value is defined, then the values are concatenated without extra text. For example:

```
1
2
3
joinarray(
  {"Alice", "Donna", "Charles"}
)
```

Returns `"AliceDonnaCharles"`.

If an array with only one element is entered as the _array_ argument, the function will return only the element and no _separator_.

## Examples

### Join values with a single separator character

```
1
joinarray({1, 2, 3, 4}, "|")
```

Returns `"1|2|3|4"`.

### Join values with multiple separators

```
1
joinarray({1,2,3,4}, " < ")
```

Returns `"1 < 2 < 3 < 4"`. Extra space is automatically trimmed from the start and end of the returned string.

### Create a list of joined value strings with different separators

You can provide a list of _separator_ values and Appian returns a List of Text String.

```
1
2
3
4
joinarray(
  {"Alice", "Donna", "Charles"},
  {"+", "-"}
)
```

Returns `{"Alice+Donna+Charles", "Alice-Donna-Charles"}`.

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