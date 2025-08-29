---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_tocommunity.html
original_path: fnc_conversion_tocommunity.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# tocommunity() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**tocommunity**( _value_ )

Converts a value to Community.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Type_

 |

Value to convert.

 |

## Returns

Community

## Usage considerations

### Using the value parameter

The _value_ parameter accepts Text, Integer, Decimal, and Array types.

### Using tocommunity() with arrays

When operating on arrays, it is not necessary to use `apply` with `tocommunity`. If multiple parameters are passed, or one parameter is an Array, `tocommunity` will return a Community Array.

## Examples

`tocommunity(37)` returns `[Community:37]`

`tocommunity(37,38)` and `tocommunity({37,38})` both return `{[Community:37],[Community:38]}`

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