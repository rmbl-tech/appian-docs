---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_isInText.html
original_path: fnc_system_a_isInText.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!isInText Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!isInText**( _text, subext_ )

Checks if a text value contains a specified text value. For example: `isInText("apple","p")` returns `TRUE`. This function is frequently used in validations.

**See also:** [applyValidations()](fnc_system_a_applyValidations.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`text`

 |

_Text_

 |

The text value that is checked to determine if it contains the value of the _subtext_ parameter.

 |
|

`subext`

 |

_Text_

 |

The specified text value that is checked for in the value of the text parameter.

 |

## Returns

Boolean

## Example

_Copy and paste an example into an **Expression Editor** to experiment with it._

```
1
2
3
4
a!isInText(
  text: "I love low-code",
  subtext: "low-code",
)
```

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