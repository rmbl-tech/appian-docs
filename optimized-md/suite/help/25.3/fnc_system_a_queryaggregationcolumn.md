---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryaggregationcolumn.html
original_path: fnc_system_a_queryaggregationcolumn.html
version: "25.3"
title: "a!queryAggregationColumn() Function"
page_id: "fnc_system_a_queryaggregationcolumn"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryAggregationColumn() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryAggregationColumn**( _field, alias, visible, isGrouping, aggregationFunction, groupingFunction_ )

Creates an `AggregationColumn` object for use inside an `Aggregation` object.

**See also:** [Aggregation](Appian_Data_Types.html#aggregation), [AggregationColumn](Appian_Data_Types.html#aggregationcolumn), [Query](Appian_Data_Types.html#query)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`field`

 |

_Text_

 |

The dot-notation to the field of the data, such as a record type, you want to group together and/or aggregate. The fields cannot be complex or multiple values.

 |
|

`alias`

 |

_Text_

 |

The short name by which the result of the AggregationColumn value can be referenced in other places of the Query value. Values are case-sensitive.

 |
|

`visible`

 |

_Boolean_

 |

Determines whether the grouping or aggregation column should be visible to end users. If false, the data for the column will not be retrieved, but it can be used for sorting. Default value is `true`.

 |
|

`isGrouping`

 |

_Boolean_

 |

Determines whether the field should be grouped. Default value is `false`.

 |
|

`aggregationFunction`

 |

_Text_

 |

The function to use when aggregating the field. Valid values include `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`. Requires _isGrouping_ to be `false`.

 |
|

`groupingFunction`

 |

_Text_

 |

A function that can be applied on the selected field. Valid values are `YEAR` and `MONTH`. This parameter can only be used with `Date` and `Date and Time` data types. Requires _isGrouping_ to be `true`.

 |

## Returns

AggregationColumn

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