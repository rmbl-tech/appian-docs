---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_queryrecordbyidentifier.html
original_path: fnc_system_a_queryrecordbyidentifier.html
version: "25.3"
title: "a!queryRecordByIdentifier() Function"
page_id: "fnc_system_a_queryrecordbyidentifier"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryRecordByIdentifier() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!queryRecordByIdentifier**( _recordType, identifier, fields, relatedRecordData_ )

Executes a query on a given record identifier and returns the record data.

`a!queryRecordByIdentifier()` and `a!queryRecordType()` are designed to be used in specific situations, and one is often a better choice than the other. Read more about [choosing the right query function](#aqueryrecordbyidentifier-versus-aqueryrecordtype).

**See also:**

-   [Recipes for Querying Records](Query_Recipes.html)
-   [a!queryRecordType()](fnc_system_queryrecordtype.html)
-   [a!relatedRecordData()](fnc_system_relatedrecorddata.html)

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

`identifier`

 |

_Any Type_

 |

The identifier of the record to query. This is typically the primary key field.

 |
|

`fields`

 |

_Any Type_

 |

Fields to be retrieved for the query. Reference a list of fields using the `recordType!` domain, or use [a!selectionFields()](fnc_system_selectionfields.html) to return all fields from the record type and any related record types. When this parameter is null, only the primary key field of the specified record type is returned.

 |
|

`relatedRecordData`

 |

_List of RelatedRecordData_

 |

When selecting [one-to-many related record data](record-type-relationships.html), use [a!relatedRecordData()](fnc_system_relatedrecorddata.html) to filter, sort, and limit the related record sets.

 |

## Returns

Record Type

## Usage considerations

### a!queryRecordByIdentifier() versus a!queryRecordType()

Depending on the amount of data you need and whether you want to aggregate that data, you can use:

-   [a!queryRecordType()](fnc_system_queryrecordtype.html) function to select or aggregate data from a record type. This function is great for building interfaces that show multiple records to users.

-   `a!queryRecordByIdentifier()` function to return data for a specific record and any of its related record data. This function is a good choice when building summary views and related actions that update a single record. It can also be used in the process models for record actions where you need to act on new or updated record data after a Write Records node.

The table below outlines the key differences between these two functions:

|   | `a!queryRecordByIdentifier()` | `a!queryRecordType()` |
| --- | --- | --- |
| Number of base records returned | One | One or more |
| Number of related records per relationship | Up to 250 | Up to 100 |
| Batching | Automatic | Configured with [a!pagingInfo()](fnc_system_a_paginginfo.html) |
| [Query editor](query-editor.html) support | No | Yes |

**Note:**  a!queryRecordByIdentifier() should not be used in a loop. If you need to query more than one base record or more than 100 related records, the related record type should be queried separately.

### Using the fields parameter

The _fields_ parameter allows you to specify which record fields and [related record fields](record-type-relationships.html) are returned from the query. If you leave this parameter empty, only the primary key field from the base record type will be returned.

As a best practice, you should only query the fields you need. Before creating a query, consider what data you actually need, since it can take longer to return large volumes of data or expensive fields, like real-time custom record fields or Extra Long Text fields.

To reference:

-   A record field, use the `recordType!` domain.

    For example, `recordType!Customer.fields.firstName` returns the `firstName` field from the Customer record type.

-   A related record field, use the `recordType!` domain to reference a relationship and select a related record field.

    For example, `recordType!Customer.relationships.cases.fields.status` is using the relationship on the Customer record type to select the `status` field from the Case record type.

If you must query all fields from a record type, you can use the [a!selectionFields()](fnc_system_selectionfields.html) function in the _fields_ parameter. However, you should only use this function when it is absolutely necessary to return all fields.

### Using the relatedRecordData parameter

The _relatedRecordData_ parameter allows you to filter, sort, and limit related record data from a [one-to-many relationship](record-type-relationships.html) using the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function.

For example, let's say you're querying the Customer record type and you only want to return the last three cases associated with each customer. By default, the query will return up to 100 cases related to each customer. In the _relatedRecordData_ parameter, you could use the `a!relatedRecordData()` function to limit the result to three and sort the cases so the most recent appears first.

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
a!queryRecordByIdentifier(
  recordType: recordType!Customer,
  identifier: ri!id,
  fields: {
    recordType!Customer.fields.fullName,
    recordType!Customer.relationships.case.fields.name
  },
  relatedRecordData: a!relatedRecordData(
    relationship: recordType!Customer.relationships.case,
    limit: 3,
    sort: a!sortInfo(
      field: recordType!Customer.relationships.case.fields.entryDate,
      ascending: true
    )
  )
)
```

When applying a filter or sort to `a!relatedRecordData()`, your record field or related record field reference must start from the related record type specified in the _relationship_ parameter. See [additional usage considerations](fnc_system_relatedrecorddata.html#usage-considerations) for using the `a!relatedRecordData()` function.

### Aggregating related record data

The `a!aggregationFields()` function is not supported with `a!queryRecordByIdentifier()`.

If you need to aggregate related record data, use [a!queryRecordType()](fnc_system_queryrecordtype.html#aggregating-data) instead.

### Using async loading for slow queries

For slower queries, consider using [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html) to load the data asynchronously. This allows users to interact with the rest of the interface while waiting for the data to load. See [Asynchronous Loading](async_loading.html) for more information.

## Examples

See [Recipes for Querying Records](Query_Recipes.html) for examples of queries using `a!queryRecordByIdentifier()`.

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
| [a!queryRecordByIdentifier\_25r2](/suite/help/25.3/fnc_system_queryrecordbyidentifier_25r2.html) |
Changed the _fields_ parameter behavior so when the parameter is null or empty, only the primary key field from the base record type is returned. Likewise, only referencing a relationship will return the primary key fields from both the base and related record types. Additionally, the evolution allows for the _relatedRecordData_ parameter to accept a limit of up to 250 related records.

For more on what's changed, see [New version details](/suite/help/25.3/fnc_system_queryrecordbyidentifier_25r2.html#new-version-details).

 |

To use the latest version of the function, replace the function with a version suffix with a new function reference.

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...