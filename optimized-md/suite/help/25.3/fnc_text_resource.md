---
source_url: https://docs.appian.com/suite/help/25.3/fnc_text_resource.html
original_path: fnc_text_resource.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# resource() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**resource**( _key_ )

Retrieves a string of translated text appropriate for the current user, according to their language preference, by matching a given key with text.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`key`

 |

_Text_

 |

The item paired with each desired translation in your resource bundle.

 |

## Returns

Text

## Usage considerations

If no matching translation is available for the user's locale, the key itself is returned.

## Examples

`resource("city")` returns `ciudad` for es\_MX and `ville` for fr\_CA

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