---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryentity.html
original_path: fnc_system_a_queryentity.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryEntity() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  You can use the [Query Editor](query-editor.html) to quickly create and modify queries created with the a!queryEntity function.

## Function

**a!queryEntity**( _entity, query, fetchTotalCount_ )

Executes a query on a given data store entity and returns the result.

**See also:** [Data Store Entity](Data_Stores.html), [Query Data Type](Appian_Data_Types.html#query), [a!query()](fnc_system_a_query.html)

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
|

`fetchTotalCount`

 |

_Boolean_

 |

If set to false, avoids running the query that retrieves the total number of rows in the `totalCount` parameter of the resulting datasubset. In cases where you don't need the total count, skipping this query can improve the performance of `a!queryEntity()`. Default: `false`.

 |

## Returns

DataSubset

## Usage considerations

### Using a!queryEntity

-   The DataSubset returned by this function is used to generate report grids or graphs based on the data in a data store entity. If you have a record type that reference a database, consider using [a!queryRecordType()](fnc_system_queryrecordtype.html) instead to easily reference the record type, or using a [records-powered chart](Chart_Configuration_Using_Records.html) or a [records-powered grid](read-only-grid-configuration.html).

-   If called multiple times in the same expression with the same parameters, only one query is made to the data store when the expression is evaluated and the result is reused for each identical call. This caching only applies within a single expression evaluation. Return values are not cached in separate expressions, or in separate evaluations of the same expression.

-   This function allows a `Query` object with an array of `SortInfo` data type.

### Using the entity and query parameters

-   The _entity_ value should be given as a constant of type Data Store Entity. The _query_ value must be entered using the `a!query()` system function.

-   The _logicalExpression|filter|search_ field of the _query_ object can only be set to a _LogicalExpression_ or a _QueryFilter_ type. _Search_ types are not supported.

-   The expression will fail to evaluate and an error will occur if the _entity_ reference is not provided, invalid, or null, the user does not have permission to view the entity, the _query_ value is not provided, invalid, incomplete, or an inconsistent query object.

### Using the fetchTotalCount parameter

If _fetchTotalCount_ is set to `false` and the _batchSize_ parameter in `a!pagingInfo` is set to -1, the _totalCount_ parameter is populated with the number of rows after the filters are applied. This is because all of the data is already being retrieved, so the value of _totalCount_ is already known without an additional query.

See the following table for more information:

| Batch Size | Fetch Total Count | Scenario Description | Value of totalCount |
| --- | --- | --- | --- |
| \-1 | Any value | The user wants to get all the rows. We know the total size and return it to the user. | Total number of rows after filters are applied |
| 0 or positive | `true` | The user only wants a subset of rows, but also wants to know the total number of rows after filters are applied. We run an extra query to get the total size. | Total number of rows after filters are applied |
| 0 or positive | `false` | The user only wants a subset of rows, and didn't ask for the total number of rows after filters are applied. We don't know the total size. | \-1 |

### Using async loading for slow queries

For slower queries, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the data to load. See [Asynchronous Loading](async_loading.html) for more information.

## Examples

See [Recipes for Querying Entities](Query_Recipes_entity.html) for examples of queries.

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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!queryEntity\_18r3](/suite/help/25.3/fnc_system_a_queryentity_18r3.html) |
Added the _fetchTotalCount_ parameter, which, by default, avoids running the query that retrieves the total number of rows in the `totalCount` parameter of the resulting datasubset.

 |
| [a!queryEntity\_22r2](/suite/help/25.3/fnc_system_a_queryentity_22r2.html) |

Fixed an incorrect sorting behavior so that a sort is now automatically applied on the primary key field when there is no other sort applied. In previous versions of this function, a sort was applied on the last field in the query when there was no sort or selection specified, or when there was no sort and at least one `a!queryColumn()` specified as a selection.

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...