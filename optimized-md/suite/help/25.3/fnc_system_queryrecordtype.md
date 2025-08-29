---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_queryrecordtype.html
original_path: fnc_system_queryrecordtype.html
version: "25.3"
title: "a!queryRecordType() Function"
page_id: "fnc_system_queryrecordtype"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryRecordType() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryRecordType**( _recordType, fields, filters, pagingInfo, fetchTotalCount, relatedRecordData_ )

Executes a query on a given record type and returns the result.

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

Fields to be retrieved for the query. This parameter accepts different values depending on the type of query to run. When performing a selection, reference a list of fields using the `recordType!` domain, or use [a!selectionFields()](fnc_system_selectionfields.html) to return all fields from the record type and any related record types. When performing an aggregation, use [a!aggregationFields()](fnc_scripting_a_aggregationfields.html) to define the configuration for the aggregated fields. When this parameter is null, only the primary key field of the specified record type is returned.

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

If set to `true`, runs the query that retrieves the total number of rows in the _totalCount_ parameter of the resulting datasubset. In cases where you do not need the total count, skipping this additional query can improve performance. Default: `false`. This parameter is not applicable for process-backed or unsynced service-backed record types.

 |
|

`relatedRecordData`

 |

_List of RelatedRecordData_

 |

When selecting [one-to-many related record data](record-type-relationships.html), use `a!relatedRecordData()` to filter, sort, and limit the related record sets. This parameter is not supported when performing an aggregation.

 |

## Returns

The return type of `a!queryRecordType()` will be a _Map_ data type with the following parameters:

-   `success` (_Boolean_)
-   `data` (_List of Records or List of Maps_)
-   `startIndex` (_Integer_)
-   `batchSize` (_Integer_)
-   `sort` (_List of SortInfo_)
-   `totalCount` (_Integer_)
-   `identifiers` (_List of Integer or List of Text_)
-   `errorCode` (_Text_)

This map will have the same named fields as a DataSubset (so that it can seamlessly be cast to that type when being passed around your application) with the addition of "success" and "errorCode" fields, like results from an Integration object, so app developers can build error-handling into their applications.

The type for the _data_ parameter varies depending on the [type of query](about-queries.html#types-of-queries):

-   When **selecting** data, the return type is a list of records that matches the specified record type.
-   When **aggregating** data, the return type is a list of map where the keys of the map match the aliases of each grouping or measure.

You can refine the function's output by using dot notation (.) to access specific fields. To have the expression return just the queried data, add `.data` to the end of the `a!queryRecordType()` function. Then, to access the data contained in a particular field, add the field name with a record field reference: `data[recordType!<record type name>.fields.<field name>]`

![Query test output - record field only](images/query_recipes_test_output_record_field.png)

### Error codes

`a!queryRecordType()` returns a query result even if a runtime error happened. In these cases the "success" field of the result would have a value of false and the "errorCode" field will return an Appian Error Code indicating what has happened. You can use these codes to decide what to do next in your application.

| Error Code | Description | Usage |
| --- | --- | --- |
| APNX-1-4205-038 | The user does not have access to this record type, a related record type, or the underlying data source. This also applies if the user does not have access to a referenced related record type in a filter, sort, or aggregation. | This error code could be used to hide elements of an interface. |
| APNX-1-4205-039 | The record type or a related record type has not been synced, or the existing synced data has been invalidated. | This error code could be used as a condition on which to query the data source instead of waiting for the sync issue to be resolved. |
| APNX-1-4205-040 | The record type's data source or the related record type's data source could not be reached, or the query limit for that source has been reached. | While uncommon, for finicky data sources, this error code could be used to prevent an interface from breaking. |

## Usage considerations

### Unsupported record types

You must [update the target record type](update-a-record-type.html) after upgrading to 20.3 in order to use this query.

Service-backed and Salesforce-backed record types without [data sync](about-data-sync.html) enabled are not supported.

### Using the fields parameter

The _fields_ parameter allows you to specify which record fields and [related record fields](record-type-relationships.html) are returned from the query. If you leave this parameter empty, only the primary key field from the base record type will be returned.

As a best practice, you should only query the fields you need. Before creating a query, consider what data you actually need, since it can take longer to return large volumes of data or expensive fields, like real-time custom record fields or Extra Long Text fields.

To reference:

-   A record field, use the `recordType!` domain.

    For example, `recordType!Customer.fields.firstName` returns the `firstName` field from the Customer record type.

-   A related record field, use the `recordType!` domain to reference a relationship and select a related record field.

    For example, `recordType!Customer.relationships.cases.fields.status` is using the relationship on the Customer record type to select the `status` field from the Case record type.

If you must query all fields from a record type, you can use the [a!selectionFields()](fnc_system_selectionfields.html) function in the _fields_ parameter. However, you should only use this function when it is absolutely necessary to return all fields.

### Querying data from a one-to-many relationship

If you are querying related record fields from a one-to-many relationship, note that:

-   You cannot query related record fields of type Extra Long Text.
-   The maximum number of related record data returned for each base record is 100. For example, when querying customers and their related support cases, the query can return a max of 100 related support cases for each customer.

To limit, filter, and sort your related one-to-many data, you can use the _relatedRecordData_ parameter. [Learn more about using this parameter](#using-the-relatedrecorddata-parameter).

### Aggregating data

When performing an aggregation, you can apply filters within [a!measure()](Measure_Component.html).

You can filter by record fields or related record fields, but the field reference must start from the aggregated record type. For example, if the measure is on `recordType!Customer.relationships.cases.fields.id`, the field to filter by could be `recordType!Case.fields.status`.

See [Aggregation of all cases and cases with a status of critical](#aggregation-of-all-cases-and-cases-with-a-status-of-critical) for an example.

### Using async loading for slow queries

For slower queries, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the data to load. See [Asynchronous Loading](async_loading.html) for more information.

### Using the relatedRecordData parameter

The _relatedRecordData_ parameter allows you to filter, sort, and limit related record data from a [one-to-many relationship](record-type-relationships.html) using the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function.

For example, let's say you're querying the Customer record type and you only want to return the latest case associated with each customer. Since a customer can have many cases, by default, the query will return up to 10 cases related to each customer. In the _relatedRecordData_ parameter, you could use the `a!relatedRecordData()` function to limit and sort the cases returned from the related record type Case.

When applying a filter or sort to `a!relatedRecordData()`, your record field or related record field reference must start from the related record type specified in the _relationship_ parameter. See [additional usage considerations](fnc_system_relatedrecorddata.html#usage-considerations) for using the `a!relatedRecordData()` function.

**Note:**  You cannot use this parameter when performing an aggregation.

### Using the pagingInfo parameter

The _batchSize_ in your _pagingInfo_ for `a!queryRecordType()` can be between `0` and `5000.` It cannot be `-1`. If the record type isn't sorted by the identifier, a final identifier sort is added to ensure deterministic sorting when using a selection. See [a!pagingInfo()](fnc_system_a_paginginfo.html) for more information.

**Note:**  Multiple `sortInfos` are not available for process-backed record types.

### Using the fetchTotalCount parameter

For record types with data sync enabled, `fetchTotalCount` is applied because Appian already knows the total number of records and therefore doesn't need to query the source to provide this information.

For record types without data sync enabled, there is a performance cost to getting the total number of records with a query. If you decide you want to retrieve the total count, set `fetchTotalCount` to `true`. The following table describes two scenarios and how to set the parameters required to achieve that result.

| Scenario | Batch Size | Fetch Total Count | Value of totalCount |
| --- | --- | --- | --- |
| You want a subset of records, but also want to know the total number of records after filters are applied. Appian must run an extra query to get the total count. | Any positive number | `true` | Total number of records after filters are applied |
| You want a subset of rows and don't need to know the total number of rows after filters are applied. | Any positive number | `false` | \-1 |

## Examples

The following examples use the Customer record type, which has a [one-to-many relationship](record-type-relationships.html) with the Case record type.

For additional examples, see:

-   [Recipes querying records](Query_Recipes.html).
-   [Build Reports from Records](report-with-records.html).

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Selection of customer fields

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
a!queryRecordType(
  recordType: recordType!Customer,
  fields: {
    recordType!Customer.relationships.person.fields.fullName,
    recordType!Customer.fields.accountNumber,
    recordType!Customer.relationships.person.fields.emailPromotion
  },
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 5000,
    sort: {
      a!sortInfo(
        field: recordType!Customer.relationships.person.fields.modifiedDate,
        ascending: false
      ),
      a!sortInfo(
        field: recordType!Customer.relationships.person.fields.fullName,
        ascending: true
      )
    }
  ),
  fetchTotalCount: true
)

```

Sample output from the query above:

![Returns all active customers](images/query_record_type_output_example2.png)

### Selection of customer fields and support case fields

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
a!queryRecordType(
  recordType: recordType!Customer,
  fields: {
    /*Fields from the Customer record type*/
    recordType!Customer.fields.name,
    recordType!Customer.fields.phoneNumber,

    /*Related fields from the Case record type*/
    recordType!Customer.relationships.cases.fields.title
  },
  relatedRecordData: {
    /*Only return the latest support case for each customer*/
    a!relatedRecordData(
      relationship: recordType!Customer.relationships.cases,
      sort: {
        a!sortInfo(
          field: recordType!Case.fields.createdOn,
          ascending: false
        )
      },
      limit: 1
    )
  },
  pagingInfo: a!pagingInfo(
      startindex: 1,
      batchSize: 500
  )
)
```

Sample output from the query above:

![Returns the latest customer support case for each customer](images/latest-support-case.png)

### Aggregation of all cases and cases with a status of critical

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
31
32
33
34
35
36
37
38
39
40
41
42
43
44
a!queryRecordType(
  recordType: recordType!Customer,
  fields: a!aggregationFields(
    groupings:
      a!grouping(
        field: recordType!Customer.fields.name,
        alias: "customer_name"
      ),
    measures: {
      /* Count of all support cases */
      a!measure(
        field: recordType!Customer.relationships.cases.id,
        function: "COUNT",
        alias: "count_total",
        label: "All cases"
      ),
      /* Count of all support cases that have a status of "In Progress"*/
      a!measure(
        field: recordType!Customer.relationships.cases.id,
        function: "COUNT",
        alias: "casesInProgress",
        label: "Cases in progress",
        filters:
        /* Since the aggregation is on the Case record type,
        the field reference starts from the Case record type */
          a!queryFilter(
            field: recordType!Case.fields.status,
            operator: "=",
            value: "In Progress"
          )
      )
    }
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 100,
    sort: {
      a!sortInfo(
        field: "customer_name",
        ascending: true
      )
    }
  )
)
```

Sample output from the query above:

![Returns the total count of cases and the total count of critical cases for each customer](images/calculate-all-and-open-cases.png)

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

## Old versions

There are older versions of this function . You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!queryRecordType\_20r4](/suite/help/25.3/fnc_system_queryrecordtype_20r4.html) |
Replaced _selection_ with _fields_, which now allows for both selection and aggregation of record data when querying a given record type.

 |
| [a!queryRecordType\_24r4](/suite/help/25.3/fnc_system_queryrecordtype_24r4.html) |

Changed the default value for the _fetchTotalCount_ parameter to `false` to improve performance.

 |
| [a!queryRecordType\_25r2](/suite/help/25.3/fnc_system_queryrecordtype_25r2.html) |

Changed the _fields_ parameter behavior so when the parameter is null or empty, only the primary key field from the base record type is returned. Likewise, only referencing a relationship will return the primary key fields from both the base and related record types. Additionally, the evolution allows for the _relatedRecordData_ parameter to accept a limit of up to 100 related records.

For more on what's changed, see [New version details](/suite/help/25.3/fnc_system_queryrecordtype_25r2.html#new-version-details).

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...