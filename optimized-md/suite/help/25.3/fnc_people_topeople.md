---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_topeople.html
original_path: fnc_people_topeople.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# topeople() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**topeople**( _value_ )

Converts a value to People.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Text_

 |

Value to convert.

 |

## Returns

People

## Usage considerations

The _value_ parameter accepts Text, User, Group and People types.

When operating on arrays, it is not necessary to use `apply` with `topeople`. If multiple parameters are passed, or one parameter is an Array, `topeople` will return a People Array.

## Examples

```
1
topeople(1, "john.doe")
```

Returns `{[Group:1], john.doe}`.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Partially compatible |

Can be used with offline mobile if it is [loaded at the top of the form](offline-mobile-design-best-practices.html#working-with-partially-compatible-functions).

 |
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