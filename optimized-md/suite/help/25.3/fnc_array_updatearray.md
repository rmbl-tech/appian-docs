---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_updatearray.html
original_path: fnc_array_updatearray.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# updatearray() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Check out the new array function, [a!update()](fnc_array_a_update.html). It does everything **updatearray()** does but with support for more data types like maps, CDTs, records, and dictionaries.

## Function

**updatearray**( _array, index, value_ )

Inserts new values or modifies existing values at the specified index of a given array, and returns the resulting array.

**See also**:

-   [Inserting a Value into an Index of an Array](Process_Node_and_Smart_Service_Properties.html#custom-outputs): If you plan to use this function on a node output and simply want to insert one or more values into an array, check out the **Is Stored at Index** operator discussed in this help topic which provides this specific functionality.
-   [insert()](fnc_array_insert.html): Use this function if you want to insert new values into a list without replacing existing values.
-   [append()](fnc_array_append.html): Use this function if you want to append values to the end of a list.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`array`

 |

_Any Type Array_

 |

The array to modify.

 |
|

`index`

 |

_Integer or Integer Array_

 |

The one-based index or array of indices at which to update the array.

 |
|

`value`

 |

_Any Type or Any Type Array_

 |

The new value or values to add or replace existing values.

 |

## Returns

Any Type Array

## Usage considerations

### Using simple and complex data

This function works with complex data types structures in the same way as simple structures. For example, assume you have a Case data type with a `notes` field that represents a list of Notes. When an array of `cases` is passed in as the input array, an array of cases returns. When an array of `cases.notes` is passed in, an array of notes returns.

### Using the index parameter

The _index_ value must be greater than or equal to 1.

If the index is null, or an empty list, the input array is returned with no changes.

### Understanding error messages

Common error messages and reasons are listed below:

| Runtime error message | Reason |
| --- | --- |
| `The list of indices and list of new values must be of equal length. The list of indices has <value> items. The list of new values has <value> items.` | Unless the new value is null, the list of indices must match the list of new values. |
| `Cannot cast from type <newValueType> to type <inputType>` | The type of the new value cannot be cast to the input array type. |
| `The indices are not of the expected type. Type of indices: <type passed in>. Type expected: <type expected>.` | The index is not a number (e.g., a list of nulls, or a string). |
| `An array is expected as the first parameter.` | The input array is a single value (not an array). For example: `updatearray(1, 1, 200)` returns an **error**. |
| `An invalid index is present (<index>). Indices must be greater or equal to one.` | The index is less than or equal to zero. For example: `updatearray({1, 2, 3}, 0, 200)` returns an **error**. |

## Examples

### Update one item in the array

`updatearray({1, 2, 3}, 2, 200)` returns `1, 200, 3`

### Update multiple items in the array

`updatearray({1, 2, 3}, {2, 3}, {200, 300})` returns `1, 200, 300`

### Update multiple items in the array with the same value

`updatearray({1, 2, 3}, {2, 3}, 300)` returns `1, 300, 300`

### Update one or more items with values of a different type

`updatearray({1, 2, 3}, 2, "20")` returns `1, 20, 3`

### Append one or more items to an array

`updatearray({1, 2, 3}, 5, 500)` returns `1, 2, 3, null, 500`

`updatearray({1, 2, 3}, {1, 5}, {100, 500})` returns `100, 2, 3, null, 500`

### Null out one or more items in an array

`updatearray({1, 2, 3}, 2, pv!Multiple[2])` returns `1, null, 3` where `pv!Multiple[2]` has a null value

`updatearray({1, 2, 3}, {2, 3}, pv!Multiple[2])` returns `1, null, null` where `pv!Multiple[2]` has a null value

`updatearray({1, 2, 3}, {4, 5}, pv!Multiple[2])` returns `1, 2, 3, null, null` where `pv!Multiple[2]` has a null value

### Update a null array

`updatearray({tointeger(null)}, 2, 200)` returns `null, 200`

### Update an empty array

`updatearray({}, {2, 3}, 3)` returns `null, 3, 3`

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