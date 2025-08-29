---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_queryrecordtype_24r4.html
original_path: fnc_system_queryrecordtype_24r4.html
version: "25.3"
title: "a!queryRecordType\_24r4() Function"
page_id: "fnc_system_queryrecordtype_24r4"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryRecordType\_24r4() Function

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

**a!queryRecordType\_24r4**( _recordType, fields, filters, pagingInfo, fetchTotalCount, relatedRecordData_ )

Executes a query on a given record type and returns the result. This is an older version of the `a!queryRecordType()` function, which has new functionality.

**See also:**

-   [Record Type](Appian_Data_Types.html#record-type)
-   [Reference a Record Type in your Applications](reference-records.html)
-   [DataSubset](Appian_Data_Types.html#datasubset)
-   [Constructing Data Type Values](constructing-data-type-values.html)
-   [Aggregation Fields Function](fnc_scripting_a_aggregationfields.html)
-   [a!relatedRecordData() function](fnc_system_relatedrecorddata.html)

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

`fields`

 |

_Any Type_

 |

Fields to be retrieved for the query. This parameter accepts different values depending on the type of query to run. When performing a selection, use a list of record field or related record field references defined with the `recordType!` domain. When performing an aggregation, use `a!aggregationFields()` to define the configuration for the aggregated fields.

 |
|

`filters`

 |

_Any Type_

 |

A single logical expression or a list of query filters can be provided to apply additional filters to the record set. Queries also inherit the default filters defined on the referenced record type. Reference record fields or related record fields from the specified record type using the `recordType!` domain. Record types sourced from a web service or other expression only support this parameter if the data is synced.

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

This parameter is only used when querying unsynced record types that use a database as the source. Synced record types automatically return the totalCount property. If set to `true`, a separate query returns the total number of records in the _totalCount_ property of the query result. In cases where you don't need the _totalCount_, omitting this parameter can improve performance.

 |
|

`relatedRecordData`

 |

_List of RelatedRecordData_

 |

When selecting [one-to-many related record data](record-type-relationships.html), use `a!relatedRecordData()` to filter, sort, and limit the related record sets. This parameter is not supported when performing an aggregation.

 |

## Types of queries

There are two methods of returning data using `a!queryRecordType_24r4()`:

-   A **selection** returns each record as a separate item in the response. Any field of the record type or [related record type](record-type-relationships.html) can be returned by providing the field within a list in the _fields_ parameter. To filter, sort, or limit data returned from a one-to-many relationship, use [a!relatedRecordData](fnc_system_relatedrecorddata.html) in the _relatedRecordData_ parameter.
-   An **aggregation** groups fields by common values and also allows using a function to produce a calculated result. An aggregation requires using supporting functions [a!aggregationFields](fnc_scripting_a_aggregationfields.html), [a!grouping](Grouping_Component.html), and [a!measure](Measure_Component.html) to define the query.

**Tip:**  Use [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) to query a single record and its related data. This function's simpler syntax makes it quick to build summary views, related action forms, and other interfaces where a single record is the focus.

## Returns

The return type of `a!queryRecordType_24r4()` will be a _Map_ data type with the following parameters:

-   `success` (_Boolean_)
-   `data` (_List of Records or List of Maps_)
-   `startIndex` (_Integer_)
-   `batchSize` (_Integer_)
-   `sort` (_List of SortInfo_)
-   `totalCount` (_Integer_)
-   `identifiers` (_List of Integer or List of Text_)
-   `errorCode` (_Text_)

This map will have the same named fields as a DataSubset (so that it can seamlessly be cast to that type when being passed around your application) with the addition of "success" and "errorCode" fields, like results from an Integration object, so app developers can build error-handling into their applications.

The type for the _data_ parameter varies depending on the type of query:

-   When **selecting** data, the return type is a list of records that matches the specified record type.
-   When **aggregating** data, the return type is a list of map where the keys of the map match the aliases of each grouping or measure.

You can refine the function's output by using dot notation (.) to access specific fields. To have the expression return just the queried data, add `.data` to the end of the `a!queryRecordType()` function. Then, to access the data contained in a particular field, add the field name with a record field reference: `data[recordType!<record type name>.fields.<field name>]`

![Query test output - record field only](images/query_recipes_test_output_record_field.png)

### Error codes

`a!queryRecordType_24r4()` returns a query result even if a runtime error happened. In these cases the "success" field of the result would have a value of false and the "errorCode" field will return an Appian Error Code indicating what has happened. You can use these codes to decide what to do next in your application.

| Error Code | Description | Usage |
| --- | --- | --- |
| APNX-1-4205-038 | The user does not have access to this record type, a related record type, or the underlying data source. This also applies if the user does not have access to a referenced related record type in a filter, sort, or aggregation. | This error code could be used to hide elements of an interface. |
| APNX-1-4205-039 | The record type or a related record type has not been synced, or the existing synced data has been invalidated. | This error code could be used as a condition on which to query the data source instead of waiting for the sync issue to be resolved. |
| APNX-1-4205-040 | The record type's data source or the related record type's data source could not be reached, or the query limit for that source has been reached. | While uncommon, for finicky data sources, this error code could be used to prevent an interface from breaking. |

## Usage considerations

### Unsupported record types

You must [update the target record type](update-a-record-type.html) after upgrading to 20.3 in order to use this query.

Service-backed and Salesforce-backed record types without [data sync](about-data-sync.html) enabled are not supported.

### Querying record fields

To reference a record field, use the `recordType!` domain to reference a record field. For example, `recordType!Customer.fields.firstName` returns the `firstName` field from the Customer record type.

If you don't specify a selection of fields, all record fields are returned.

**Note:**  This will not return related record fields, only record fields from the record type specified in the _recordType_ parameter.

### Querying related record fields

You can reference [related record fields](record-type-relationships.html) in the _fields_ parameter and when sorting or filtering.

To reference a related record field, use the `recordType!` domain to reference a relationship and select a related record field. For example, `recordType!Customer.relationships.cases.fields.status` is using the relationship on the Customer record type to select the `status` field from the Case record type.

You can also reference the record type relationship in the _fields_ parameter to return all related record fields from the specified relationship. For example, using the relationship reference `recordType!Customer.relationships.cases` in the _fields_ parameter would return all fields from the Case record type.

If you _only_ specify a relationship reference or a related record field reference in the _fields_ parameter, the query will return all fields from the base record type and the selected related record fields. For example, the following query would return all fields from the Customer record type and the `status` fields from the Case record type:

```
1
2
3
4
5
a!queryRecordType_24r4(
  recordType: recordType!Customer,
  fields: {recordType!Customer.relationships.cases.fields.status},
  pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 500)
).data
```

If you are querying one-to-many related record fields, the maximum number of related record data returned for each base record is 10. For example, when querying customers and their related support cases, the query will return a max of 10 related support cases for each customer.

To limit, filter, and sort your related one-to-many data, you can use the _relatedRecordData_ parameter. [Learn more about using this parameter](#using-the-relatedrecorddata-parameter).

### Aggregating data

When performing an aggregation, you can apply filters within [a!measure()](Measure_Component.html).

You can filter by record fields or related record fields, but the field reference must start from the aggregated record type. For example, if the measure is on `recordType!Customer.relationships.cases.fields.id`, the field to filter by could be `recordType!Case.fields.status`.

### Using the relatedRecordData parameter

The _relatedRecordData_ parameter allows you to filter, sort, and limit related record data from a [one-to-many relationship](record-type-relationships.html) using the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function.

For example, let's say you're querying the Customer record type and you only want to return the latest case associated with each customer. Since a customer can have many cases, by default, the query will return up to 10 cases related to each customer. In the _relatedRecordData_ parameter, you could use the `a!relatedRecordData()` function to limit and sort the cases returned from the related record type Case.

When applying a filter or sort to `a!relatedRecordData()`, your record field or related record field reference must start from the related record type specified in the _relationship_ parameter. See [additional usage considerations](fnc_system_relatedrecorddata.html#usage-considerations) for using the `a!relatedRecordData()` function.

**Note:**  You cannot use this parameter when performing an aggregation.

### Using the pagingInfo parameter

The _batchSize_ in your _pagingInfo_ for `a!queryRecordType_24r4()` can be between `0` and `5000.` It cannot be `-1`. If the record type isn't sorted by the identifier, a final identifier sort is added to ensure deterministic sorting when using a selection. See [a!pagingInfo()](fnc_system_a_paginginfo.html) for more information.

**Note:**  Multiple `sortInfos` are not available for process-backed record types.

### Using the fetchTotalCount parameter

For record types with data sync enabled, `fetchTotalCount` is applied because Appian already knows the total number of records and therefore doesn't need to query the source to provide this information.

For record types without data sync enabled, there is a performance cost to getting the total number of records with a query. If you decide you want to retrieve the total count, set `fetchTotalCount` to `true`. The following table describes two scenarios and how to set the parameters required to achieve that result.

| Scenario | Batch Size | Fetch Total Count | Value of totalCount |
| --- | --- | --- | --- |
| You want a subset of records, but also want to know the total number of records after filters are applied. Appian must run an extra query to get the total count. | Any positive number | `true` | Total number of records after filters are applied |
| You want a subset of rows and don't need to know the total number of rows after filters are applied. | Any positive number | `false` | \-1 |

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
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