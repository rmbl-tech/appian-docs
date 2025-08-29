---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_toknowledgecenter.html
original_path: fnc_conversion_toknowledgecenter.html
version: "25.3"
title: "toknowledgecenter() Function"
page_id: "fnc_conversion_toknowledgecenter"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# toknowledgecenter() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**toknowledgecenter**( _value_ )

Converts a value to Knowledge Center.

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

Knowledge Center

## Usage considerations

### Using the value parameter

The _value_ parameter accepts Integer, Decimal, and Array data types.

### Using toknowledgecenter() with arrays

When operating on arrays, it is not necessary to use `apply` with `toknowledgecenter`. If multiple parameters are passed, or one parameter is an Array, `toknowledgecenter` will return a Knowledge Center Array.

## Examples

`toknowledgecenter("2")` returns `[Knowledge Center:2]`

`toknowledgecenter("2","3")` and `toknowledgecenter({"2","3"})` both return `{[Knowledge Center:2],[Knowledge Center:3]}`

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