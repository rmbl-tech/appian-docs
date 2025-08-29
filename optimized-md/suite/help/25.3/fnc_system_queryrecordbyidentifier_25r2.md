---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_queryrecordbyidentifier_25r2.html
original_path: fnc_system_queryrecordbyidentifier_25r2.html
version: "25.3"
title: "a!queryRecordByIdentifier\_25r2() Function"
page_id: "fnc_system_queryrecordbyidentifier_25r2"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!queryRecordByIdentifier\_25r2() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [a!queryRecordByIdentifier() Function](/suite/help/25.3/fnc_system_a_queryrecordbyidentifier.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. For what's changed, see [New version details](#new-version-details).

## Function

**a!queryRecordByIdentifier\_25r2**( _recordType, identifier, fields, relatedRecordData_ )

Executes a query on a given record identifier and returns the record data.

`a!queryRecordByIdentifier_25r2()` and `a!queryRecordType()` are designed to be used in specific situations, and one is often a better choice than the other. Read more about [choosing the right query function](#aqueryrecordbyidentifier-versus-aqueryrecordtype).

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

Fields to be retrieved for the query. Use a list of record field or related record field references defined with the `recordType!` domain. When this parameter is null, all record fields from the specified record type are returned.

 |
|

`relatedRecordData`

 |

_List of RelatedRecordData_

 |

When selecting [one-to-many related record data](record-type-relationships.html), use `a!relatedRecordData()` to filter, sort, and limit the related record sets.

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

**Note:**  a!queryRecordByIdentifier\_25r2() should not be used in a loop. If you need to query more than one base record or more than 100 related records, the related record type should be queried separately.

### Using the fields parameter

By default, this function will return the fields from the base record type. If you also want to return [related record fields](record-type-relationships.html), you can reference the fields or the relationship in the _fields_ parameter.

| To return… | Use… | Example _fields_ value |
| --- | --- | --- |
| A record field | The `recordType!` domain to reference a record field. | `recordType!Case.fields.description` |
| All record fields | No reference. If you don't include the _fields_ parameters, the function will return all record fields. | N/A |
| A related record field | The `recordType!` domain to reference a relationship and related record field. | `recordType!Customer.relationships.cases.fields.status` |
| All related record fields from a relationship | The `recordType!` domain to reference a relationship. | `recordType!Customer.relationships.cases` |

If you are querying a [one-to-many relationship](record-type-relationships.html), a maximum of 100 related records will be returned. For example, when querying customers and their related support cases, the query will return up to 100 related support cases for the customer.

### Using the relatedRecordData parameter

The _relatedRecordData_ parameter allows you to filter, sort, and limit related record data from a [one-to-many relationship](record-type-relationships.html) using the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function.

For example, let's say you're querying the Customer record type and you only want to return the last three cases associated with each customer. Since a customer can have many cases, by default, the query will return up to 100 cases related to each customer. In the _relatedRecordData_ parameter, you could use the `a!relatedRecordData()` function to limit the result to three and sort the cases so the most recent appears first.

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
a!queryRecordByIdentifier_25r2(
  recordType: recordType!Customer,
  identifier: ri!id,
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

The `a!aggregationFields()` function is not supported with `a!queryRecordByIdentifier_25r2()`.

If you need to aggregate related record data, use [a!queryRecordType()](fnc_system_queryrecordtype.html#aggregating-data) instead.

## New version details

The [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html) function was evolved to reinforce query performance best practices.

The new version of the function includes the following behavior changes:

-   Changed the _fields_ parameter behavior so when the parameter is null or empty, only the primary key field from the base record type is returned. Likewise, only referencing a relationship will return the primary key fields from both the base and related record types.
-   The _relatedRecordData_ parameter to accept a limit of up to 250 related records.

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