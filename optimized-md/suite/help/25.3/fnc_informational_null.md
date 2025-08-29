---
source_url: https://docs.appian.com/suite/help/25.3/fnc_informational_null.html
original_path: fnc_informational_null.html
version: "25.3"
title: "null() Function"
page_id: "fnc_informational_null"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# null() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**null**( _value_ )

Returns a null value.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

The value to be inquired for type. For example, typename(runtimetypeof(topeople(123))) might return "Group".

 |

## Returns

Null

## Examples

```
1
null()
```

Returns `null`.

### Type Parameter Examples

Passing a type argument to null causes the return type to match the passed in type.

```
1
typename(typeof(null()))
```

Returns `Null`.

```
1
typename(typeof(null(type!Integer)))
```

Returns `Number (Integer)`.

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