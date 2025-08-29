---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_remove.html
original_path: fnc_array_remove.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# remove() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How to Change Values in an Array Using Functions in Appian

This video from [Academy Online](https://academy.appian.com/) explains how to change values in an array using the insert and remove functions.

## Function

**remove**( _array, index_ )

Removes the value at a given index from an array, and returns the resulting array.

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

The one-based index or array of indices whose values should be removed.

 |

## Returns

Any Type Array

## Usage considerations

### Using the index parameter

The _index_ value must be greater than or equal to 1.

### Understanding results

Passing an empty array to the _array_ parameter returns an empty array.

Passing an empty array to the _index_ parameter returns the original _array_ value.

## Examples

### Remove one value from an array

```
1
remove({10, 20, 30, 40}, 4)
```

Returns `{10, 20, 30}`.

### Remove multiple values from an array

```
1
remove({10, 20, 30, 40}, {2, 4})
```

Returns `{10, 30}`.

### Remove the second to last item in an array

```
1
2
3
4
a!localVariables(
  local!list: { 1, 2, 3, null, 4 },
  remove(local!list, count(local!list) - 1)
)
```

Returns `{1, 2, 3, 4}`.

### Remove CDTs from an array where a field matches a certain value

**Note:**  These CDT values are for reference only. If you copy and paste this expression, it will not evaluate. Use this as a reference only.

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
a!localVariables(
  local!customers: {
    'type!{urn:com:appian:types:AS:FS}AS_FS_Customer'(customerId: 1),
    'type!{urn:com:appian:types:AS:FS}AS_FS_Customer'(),
    'type!{urn:com:appian:types:AS:FS}AS_FS_Customer'(customerId: 2),
    'type!{urn:com:appian:types:AS:FS}AS_FS_Customer'()
  },
  local!newCustomers: wherecontains(tointeger(null), local!customers.customerId),
  remove(local!customers, local!newCustomers)
)
```

Returns `{'type!Customer'('customerId': 1), 'type!Customer'('customerId': 2)}`.'

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