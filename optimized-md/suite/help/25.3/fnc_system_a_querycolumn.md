---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_querycolumn.html
original_path: fnc_system_a_querycolumn.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryColumn() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryColumn**( _field, alias, visible_ )

Creates a `Column` object for use inside a `Selection` object.

**See also:** [Column](Appian_Data_Types.html#column), [Selection](Appian_Data_Types.html#selection), [Query](Appian_Data_Types.html#query)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`field`

 |

_Text_

 |

The field of the data type you want to retrieve. The fields available depend on the source of the data and the data type of that source.

 |
|

`alias`

 |

_Text_

 |

The short name by which the result of the Column value can be referenced in other areas of the Query value. Values are case-sensitive.

 |
|

`visible`

 |

_Boolean_

 |

Determines whether the column should be visible to end users. If `false`, the data for the column will not be retrieved, but it can be used for sorting. Default value is `true`.

 |

## Returns

Selection

## Usage considerations

### Using the fields parameter

-   The _field_ parameter is required.
-   Fields that are children of a multiple cannot be selected.

### Using the alias parameter

-   If no alias is given, the alias for the column will be inferred as the _field_ value.
-   If the alias is not provided and the field name collides with another existing alias, the field name will be suffixed with an incremented digit appended to the end when returned in the result.

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