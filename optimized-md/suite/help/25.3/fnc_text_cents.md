---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_cents.html
original_path: fnc_text_cents.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# cents() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**cents**( _number, decimals_ )

Converts a number into its value in cents by effectively appending a cent sign to a fixed representation and one comma for every three digits preceding the decimal.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number of cents to be returned as text.

 |
|

`decimals`

 |

_Number_

 |

The number of digits after the decimal to display.

 |

## Returns

Text

## Examples

`cents(123412)` returns `123,412.00¢`

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