---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_recordfilterchoices.html
original_path: fnc_system_a_recordfilterchoices.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!recordFilterChoices() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!recordFilterChoices**( _choiceLabels, choiceValues_ )

Creates choices of a user filter for a [service-backed record type](configure-record-data-source.html#prodlink-web-service).

**See also:** [Record Type Object](Record_Type_Object.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`choiceLabels`

 |

_List of Text String_

 |

The list of text to be displayed to the user as the filter choices.

 |
|

`choiceValues`

 |

_List of Variant_

 |

The list of values associated with the available choices.

 |

## Usage considerations

To use this function in your record type, see [User filters for unsynced record types that connect to a web service](filter-the-record-list.html#user-filters-for-unsynced-service-backed-record-types).

Since users can [save default selections for user filters](filter-the-record-list.html#user-saved-filters), try to use expressions that rarely change the choices available. If users save a choice that is not available the next time they load the record, their saved filter selections will be cleared and a warning message will display.

## Example

```
1
2
3
4
=a!recordFilterChoices(
  choiceLabels: {"Active", "Inactive"},
  choiceValues: {1, 0}
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