---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_currency_22r4.html
original_path: fnc_text_currency_22r4.html
version: "25.3"
title: "currency\_22r4() Function"
page_id: "fnc_text_currency_22r4"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# currency\_22r4() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!currency() Function](/suite/help/25.3/fnc_text_currency.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_text_currency.html#Old_Version)

## Function

**currency\_22r4**( _number, decimals_ )

Converts a decimal number into a generic currency value by effectively adding a generic currency symbol (¤), a decimal point, and one comma for every three digits preceding the decimal.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number of currency units to be returned as text.

 |
|

`decimals`

 |

_Decimal_

 |

The number of digits after the decimal to display. 2 by default.

 |

## Returns

Text

## Usage considerations

If no arguments are passed, the generic currency symbol itself (¤) is returned as text.

## Examples

`currency(3213.43)` returns `¤3,213.43`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
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