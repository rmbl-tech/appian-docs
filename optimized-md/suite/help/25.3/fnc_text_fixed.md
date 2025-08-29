---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_fixed.html
original_path: fnc_text_fixed.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# fixed() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**fixed**( _number, decimals, no\_commas_ )

Rounds the specified number off to a certain number of decimals and returns it as text, with optional commas.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`number`

 |

_Decimal_

 |

The number that the fixed function will prepare for display.

 |
|

`decimals`

 |

_Number_

 |

The number of digits after the decimal that will be maintained. 2 by default.

 |
|

`no_commas`

 |

_Boolean_

 |

Enter **false** to display commas, **true** to hide them. False by default.

 |

## Returns

Text

## Examples

`fixed(7.36819)` returns `7.37`

`fixed(7.36819, 3)` returns `7.368`

`fixed(7.36819, 4)` returns `7.3682`

`fixed(7000.36819, 4)` returns `7,000.3682`

`fixed(7000.36819, 4, true)` returns `7000.3682`

`fixed(7000.36819, 4, 0)` returns `7,000.3682`

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