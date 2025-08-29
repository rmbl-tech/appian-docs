---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryentity_18r3.html
original_path: fnc_system_a_queryentity_18r3.html
version: "25.3"
title: "a!queryEntity\_18r3() Function"
page_id: "fnc_system_a_queryentity_18r3"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryEntity\_18r3() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!queryEntity() Function](/suite/help/25.3/fnc_system_a_queryentity.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_system_a_queryentity.html#Old_Version)

## Function

**a!queryEntity\_18r3**( _entity, query_ )

Executes a query on a given data store entity and returns the result.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`entity`

 |

_Data Store Entity_

 |

The Data Store Entity to query.

 |
|

`query`

 |

_Query_

 |

The query definition of the report including grouping, aggregation, filtering, paging, and sorting configurations, created with `a!query()`.

 |

## Returns

DataSubset

## Usage considerations

The DataSubset returned by this function is used to generate report grids or graphs based on record data.

The _entity_ value should be given as a constant of type Data Store Entity. The _query_ value must be entered using the `a!query()` system function.

The _logicalExpression|filter|search_ field of the _query_ object can only be set to a _LogicalExpression_ or a _QueryFilter_ type. _Search_ types are not supported.

The expression will fail to evaluate and an error will occur if the _entity_ reference is not provided, invalid, or null, the user does not have permission to view the entity, the _query_ value is not provided, invalid, incomplete, or an inconsistent query object.

This function allows a `Query` object with an array of `SortInfo` data type.

If called multiple times in the same expression with the same parameters, only one query is made to the data store when the expression is evaluated and the result is reused for each identical call. This caching only applies within a single expression evaluation. Return values are not cached in separate expressions, or in separate evaluations of the same expression.

## See Also

[Data Store Entity](Data_Stores.html): data store entities are named, typed storage units within a data store.

[query](Appian_Data_Types.html#query): the query data type defines the grouping, aggregation, filtering, paging, and sorting configuration to be applied when querying data.

[a!query()](fnc_system_a_query.html): A System Function that returns a Query object.

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Compatible |  |
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