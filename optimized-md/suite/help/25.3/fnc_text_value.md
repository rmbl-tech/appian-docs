---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_value.html
original_path: fnc_text_value.html
version: "25.3"
title: "value() Function"
page_id: "fnc_text_value"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# value() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**value**( _text, separator_ )

Converts text representing a number into an actual number or datetime.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The string of characters to be converted into a number or date.

 |
|

`separator`

 |

_Text_

 |

A string separating different values in the text. For instance, `value("1,2,3",",")` would return `{1,2,3}`.

 |

## Returns

Any Type

## Usage considerations

The _text_ value checks for decimal points, slashes, hyphens, and colons to determine whether you are trying to have the function return a date or a number.

## Examples

`value("12/13/2005","mm/dd/yyyy")` returns `12/13/05 12:00 AM GMT`

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
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