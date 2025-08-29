---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_repeat.html
original_path: fnc_scripting_repeat.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# repeat() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**repeat**( _times, input_ )

This function takes an input of Any Type and returns a list with the input repeated a specified number of times.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`times`

 |

_Integer_

 |

The number of times to repeat the input. By default, this is limited to 50,000 repeats.

 |
|

`input`

 |

_Any Type_

 |

The scalar value to repeat. Lists are not allowed.

 |

## Returns

Any Type

## Usage considerations

The _input_ parameter does not support lists.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

`repeat(2, "hello")` returns `"hello", "hello"`

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
| Process Reports | Incompatible |

Cannot be used to configure a [process report](Process_Reports.html).

 |
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...