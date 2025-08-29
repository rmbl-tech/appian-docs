---
source_url: https://docs.appian.com/suite/help/25.3/fnc_array_reverse.html
original_path: fnc_array_reverse.html
version: "25.3"
title: "reverse() Function"
page_id: "fnc_array_reverse"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# reverse() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**reverse**( _array_ )

Returns an array in reverse order.

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

## Returns

Any Type Array

## Examples

### Reverse a list

```
1
reverse({10, 20, 30, 40})
```

Returns `{40, 30, 20, 10}`.

### Use with CDTs

**Note:**  These CDT values are for reference only. If you copy and paste this expression, it will not evaluate.

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
  local!customer: {
    'type!Customer'(customerId: 5),
    'type!Customer'(customerId: 2),
    'type!Customer'(customerId: 3),
  },
  fn!reverse(local!customer)
)
```

Returns `{'type!Customer'(customerId: 3), 'type!Customer'(customerId: 2), 'type!Customer'(customerId: 5)}`.

### Use with maps

```
1
2
3
4
5
6
7
a!localVariables(
  local!maps: {
    a!map(1: "a"),
    a!map(2: "b")
  },
  fn!reverse(local!maps)
)
```

Returns `{a!map('2': "b"), a!map('1': "a")}`.

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