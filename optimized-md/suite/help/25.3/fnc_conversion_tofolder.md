---
source_url: https://docs.appian.com/suite/help/25.3/fnc_conversion_tofolder.html
original_path: fnc_conversion_tofolder.html
version: "25.3"
title: "tofolder() Function"
page_id: "fnc_conversion_tofolder"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# tofolder() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**tofolder**( _value_ )

Converts a value to Folder.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`value`

 |

_Any Types_

 |

Value to convert.

 |

## Returns

Folder

## Usage considerations

### Using the value parameter

The _value_ parameter accepts Text, Integer, Decimal, and Array types.

### Using tofolder() with arrays

When operating on arrays, it is not necessary to use `apply` with `tofolder`. If multiple parameters are passed, or one parameter is an Array, `tofolder` will return a Folder Array.

## Examples

`tofolder({"4586","4587"})` returns `[Folder:4586], [Folder:4587]`

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