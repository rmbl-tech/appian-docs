---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_query.html
original_path: fnc_system_a_query.html
version: "25.3"
title: "a!query() Function"
page_id: "fnc_system_a_query"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!query() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!query**( _selection, aggregation, logicalExpression, filter, pagingInfo_ )

Creates a `Query` object for use in the `a!queryEntity()` function.

**See also:** [Aggregation](Appian_Data_Types.html#aggregation), [Selection](Appian_Data_Types.html#selection), [logicalexpression](Appian_Data_Types.html#query), [paginginfo](Appian_Data_Types.html#paginginfo), [query](Appian_Data_Types.html#query), [queryfilter](Appian_Data_Types.html#query)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`selection`

 |

_Selection_

 |

A list of fields that you wish to retrieve, created with [a!querySelection()](fnc_system_a_queryselection.html).

 |
|

`aggregation`

 |

_Aggregation_

 |

A list of fields and the operations you wish to perform on them when retrieving the data, created with [a!queryAggregation()](fnc_system_a_queryaggregation.html).

 |
|

`logicalExpression`

 |

_LogicalExpression_

 |

A set of conditions to apply to the queried data before any grouping or aggregation, created with [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html).

 |
|

`filter`

 |

_QueryFilter_

 |

A single condition to apply to the queried data before any grouping or aggregation, created with [a!queryFilter()](fnc_system_a_queryfilter.html).

 |
|

`pagingInfo`

 |

_PagingInfo_

 |

The paging and sorting configurations to apply when retrieving the data, created with [a!pagingInfo()](fnc_system_a_paginginfo.html).

 |

## Returns

Query

## Usage considerations

### Required parameter

-   The _pagingInfo_ parameter is required.

### Optional parameters

-   You may specify either the _selection_ parameter or the _aggregation_ parameter but not both. If you do not specify either parameter, all fields are returned.

-   You may specify either the _logicalExpression_ parameter or the _filter_ parameter but not both. If you wish to specify only one condition, use _filter_. If you wish to specify more than one condition, use _logicalExpression_.

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