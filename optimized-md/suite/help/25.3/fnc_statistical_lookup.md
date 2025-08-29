---
source_url: https://docs.appian.com/suite/help/25.3/fnc_statistical_lookup.html
original_path: fnc_statistical_lookup.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# lookup() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**lookup**( _multipleValues, dataToLookup, valueIfNotPresent_ )

Returns location of data within multiple values, or valueIfNotPresent.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`multipleValues`

 |

_Any Type_

 |

Values to lookup within.

 |
|

`dataToLookup`

 |

_Any Type_

 |

Value to lookup within multipleValues.

 |
|

`valueIfNotPresent`

 |

_Any Type_

 |

Value to return if dataToLookup is not present.

 |

## Returns

Integer

## Examples

`lookup({"a", "b", "c", "d"}, "c", -1)` returns `3`

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