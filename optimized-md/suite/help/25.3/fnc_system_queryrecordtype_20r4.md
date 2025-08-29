---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_queryrecordtype_20r4.html
original_path: fnc_system_queryrecordtype_20r4.html
version: "25.3"
title: "a!queryRecordType\_20r4() Function"
page_id: "fnc_system_queryrecordtype_20r4"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryRecordType\_20r4() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!queryRecordType() Function](/suite/help/25.3/fnc_system_queryrecordtype.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/fnc_system_queryrecordtype.html#Old_Version)

## Function

**a!queryRecordType\_20r4**( _recordType, selection, filters, pagingInfo, fetchTotalCount_ )

Executes a query on a given record type and returns the result. This is an older version of the `a!queryRecordType()` function, which has new functionality.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_RecordType_

 |

A reference to a record type. You must reference the record type directly from the `recordType!` domain. For example, `recordType!Case`.

 |
|

`selection`

 |

_Any Type_

 |

List of record fields to be retrieved from the query. Record fields must be directly referenced from the `recordType!` domain. For example: `recordType!Case.fields.caseName`. When no record fields are specified, all record fields are returned in the order they are configured in the record type's data model.

 |
|

`filters`

 |

_Any Type_

 |

A single logical expression or a list of query filters can be provided to filter the results. Without a logical expression, a list of query filters will only return those records where all filters evaluate to true (`AND` comparisons). Queries also apply the default filters defined on the referenced record type.

 |
|

`pagingInfo`

 |

_PagingInfo_

 |

The paging and sorting configurations to apply when retrieving the record data.

 |
|

`fetchTotalCount`

 |

_Boolean_

 |

If set to `true`, runs a separate query that retrieves the total number of records in the _totalCount_ parameter of the query result. In cases where you don't need the _totalCount_, skipping this additional query can improve performance. Can only be used with record types that source from a data store entity.

 |

## Returns

The return type of `a!queryRecordType` will be a _Map_ data type with the following parameters:

-   `success` (_Boolean_)
-   `data` (_List of Record Maps_)
-   `startIndex` (_Integer_)
-   `batchSize` (_Integer_)
-   `sort` (_List of SortInfo_)
-   `totalCount` (_Integer_)
-   `identifiers` (_List of Integer or List of Text_)
-   `errorCode` (_Text_)

This map will have the same named fields as a DataSubset (so that it can seamlessly be cast to that type when being passed around your application) with the addition of "success" and "errorCode" fields, like results from an Integration object, so app developers can build error-handling into their applications.

### Error Codes

`a!queryRecordType` returns a query result even if a runtime error happened. In these cases the "success" field of the result would have a value of false and the "errorCode" field will return an Appian Error Code indicating what has happened. You can use these codes to decide what to do next in your application.

| Error Code | Description | Usage |
| --- | --- | --- |
| APNX-1-4205-038 | The user does not have access to this record type or the underlying data source. | This error code could be used to hide elements of an interface. |
| APNX-1-4205-039 | This is a record type with sync enabled, and is currently unavailable due to a sync issue. | This error code could be used as a condition on which to query the data source instead of waiting for the sync issue to be resolved. |
| APNX-1-4205-040 | The record type's data source could not be reached, or the query limit for that source has been reached. | While uncommon, for finicky data sources, this error code could be used to prevent an interface from breaking. |

## Usage considerations

-   Expression-backed record types are not supported.
-   The batchSize in your pagingInfo for `a!queryRecordType` cannot be larger than `5000`, and cannot be `-1`.
-   If you don't specify a selection of fields, all fields are returned.
-   Multiple `sortInfos` is not yet available for process-backed record types.
-   If the record type isn't sorted by the identifier, a final identifier sort is added to ensure deterministic sorting.
-   The data in the query returned is a _list of records_, not _dictionary_.
-   This query does not yet support aggregation.
-   You must [update the target record type](update-a-record-type.html) after upgrading to 20.3 in order to use this query.

## Example

**Note:**  This uses the record type "Customer" for the purpose of illustration only. If you copy and paste the expression below into the Expression Rule Interface, it will not evaluate in your Test Rules interface. Use it as a reference only.

```
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
a!queryRecordType(
  recordType: recordType!Customer,
  selection: {
    recordType!Customer.fields.Name,
    recordType!Customer.fields.LogoID,
    recordType!Customer.fields.Industry
  },
  filters: {
    a!queryFilter(
      field: recordType!Customer.fields.InactiveFlag,
      operator: "=",
      value: false
    )
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 5000,
    sort: {
      a!sortInfo(
        field: recordType!Customer.fields.UpdatedOn,
        ascending: false
      ),
      a!sortInfo(
        field: recordType!Customer.fields.Name,
        ascending: true
      )
    }
  ),
  fetchTotalCount: true
)
```

## See Also

-   [a!queryRecordType() Function](fnc_system_queryrecordtype.html): A new version of `a!queryRecordType_20r4` that returns a selection or aggregation of record data when querying a record type.
-   [Record Type](Appian_Data_Types.html#record-type): Additional information on the data type accepted for the _recordType_ value.
-   [Query](Appian_Data_Types.html#query): Additional information on the data type accepted for the _query_ value and how to create a type constructor for it including which fields are required/optional.
-   [Query Recipes](Query_Recipes.html): A list of examples of how to query record types to meet common use cases.
-   [DataSubset](Appian_Data_Types.html#datasubset): Additional information on the structure of this data type.
-   [Constructing Data Type Values](constructing-data-type-values.html): Additional information on creating the _query_ value via a type constructor.
-   [a!queryAggregationColumn() Function](fnc_system_a_queryaggregationcolumn.html): Additional information on grouping _Date_ and _Date and Time_ fields by year and month.

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