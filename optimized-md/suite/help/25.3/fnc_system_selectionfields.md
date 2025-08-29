---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_selectionfields.html
original_path: fnc_system_selectionfields.html
version: "25.3"
title: "a!selectionFields() Function"
page_id: "fnc_system_selectionfields"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!selectionFields() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!selectionFields**( _allFieldsFromRecordType, selectFields, includeRealTimeCustomFields, includeExtraLongTextFields_ )

Returns all fields from a record type and any of its related record types within a query. You can also query specific fields from other record types at the same time.

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`allFieldsFromRecordType`

 |

_Record Type_

 |

The record type and related record types you want to query all fields from. By default, [real-time custom record fields](custom-record-fields.html#prodlink-real-time-evaluations) and [Extra Long Text fields](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data) are excluded from the query. For optimal performance, only reference the record types for which you need all fields. Use the _selectFields_ parameter to specify individual fields to query from the record types, or to include specific real-time custom fields or extra long text fields. Reference the base record type using the `recordType!` domain, then use [relationship references](reference-records.html#reference-a-relationship) for related record types.

 |
|

`selectFields`

 |

_Record Fields_

 |

Specific fields for the query to retrieve. Use this parameter to query individual fields from the base record type and its related record types. Reference fields from the base record type using the `recordType!` domain, and then use relationships to reference fields from related record types.

 |
|

`includeRealTimeCustomFields`

 |

_Boolean_

 |

Determines if real-time custom record fields are queried from the record types specified in the _allFieldsFromRecordType_ parameter. Default is `false` to exclude these fields since they can impact query performance. Use the _selectFields_ parameter to include specific real-time custom record fields in the query instead of querying all of them.

 |
|

`includeExtraLongTextFields`

 |

_Boolean_

 |

Determines if Extra Long Text fields are queried from the record types specified in the _allFieldsFromRecordType_ parameter. Default is `false` to exclude these fields since they can impact query performance. Use the _selectFields_ parameter to include specific Extra Long Text fields in the query instead of querying all of them.

 |

## Returns

Record Fields

## Usage consideration

### When to use this function

The `a!selectionFields()` function allows you to return all record fields or related record fields in a query by simply referencing the record type or relationship. However, you should only use this function in your queries if you need to use all fields in your interface or expression—there's no need to query data that you're not going to use.

If you don't need all of the fields, use individual [field references](reference-records.html#reference-record-fields) in your queries instead.

### Where to use the function

If you need to return all fields from a record type or a related record type, you can use the `a!selectionFields()` function in the _fields_ parameter of the following functions:

-   [a!queryRecordType()](fnc_system_queryrecordtype.html)
-   [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html)
-   [a!recordData()](fnc_system_recorddata.html)

### Using the allFieldsFromRecordType parameter

The _allFieldsFromRecordType_ parameter allows you to query all fields from a record type and any of its related record types.

By default, [real-time custom record fields](custom-record-fields.html#prodlink-real-time-evaluations) and [Extra Long Text fields](about-data-sync.html#use-extra-long-text-fields-to-store-large-volumes-of-data) are excluded from the query because they require more resources and time to retrieve. For this reason, you'll often hear these fields referred to as _expensive fields_.

If you need to include these types of fields in your query, Appian recommends referencing the specific real-time custom record field or Extra Long Text field in the _selectFields_ parameter. See an [example below](#return-all-record-fields-and-certain-related-record-fields).

### Using the selectFields parameter

You can use the _selectFields_ parameter in addition to the _allFieldsFromRecordType_ parameter. This is useful when you need to return all fields from a record type, and only one or two fields from a related record type.

For example, you may need to return all fields from the Customer record type, but only one or two fields from the related Order record type. You could specify the Customer record type in the _allFieldsFromRecordType_ parameter, and use the _selectFields_ parameter to specify those two additional fields from the Order record type. [See this example expression below](#return-all-record-fields-and-certain-related-record-fields).

You can also use this parameter to specify specific real-time custom record field or Extra Long Text fields to include in the query instead of returning all of those field types using the _includeRealTimeCustomFields_ or _includeExtraLongTextFields_ parameters. See an [example below](#return-all-record-fields-and-a-specific-real-time-custom-record-field).

## Examples

The following examples use the AR Customer record type, which has a [one-to-many relationship](record-type-relationships.html) with the AR Order record type.

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Return all record fields except expensive fields

The following query return all fields from the AR Customer record type except for any real-time custom record fields or Extra Long Text fields.

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
a!queryRecordType(
  recordType: recordType!AR Customer,
  fields: a!selectionFields(
    allFieldsFromRecordType: recordType!AR Customer
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 1
  )
).data
```

Returns

[![images/selectionFields/allDefaultFields.png](images/selectionFields/allDefaultFields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img47)

[![](images/selectionFields/allDefaultFields.png)](#_)

### Return all record fields and a specific real-time custom record field

The following query return all fields from the AR Customer record type and the real-time custom record field called `orderCount`.

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
a!queryRecordType(
  recordType: recordType!AR Customer,
  fields: a!selectionFields(
    allFieldsFromRecordType: recordType!AR Customer,
    selectFields: recordType!AR Customer.fields.orderCount
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 1
  )
).data
```

Returns

[![images/selectionFields/allFields-and-rtcrfs.png](images/selectionFields/allFields-and-rtcrfs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img48)

[![](images/selectionFields/allFields-and-rtcrfs.png)](#_)

### Return all record fields and certain related record fields

The following query return all fields from the AR Customer record type and three fields from the related AR Order record type.

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
a!queryRecordType(
  recordType: recordType!AR Customer,
  fields: a!selectionFields(
    allFieldsFromRecordType: recordType!AR Customer,
    selectFields: {
      recordType!AR Customer.relationships.order.fields.createdOn,
      recordType!AR Customer.relationships.order.fields.assignee,
      recordType!AR Customer.relationships.order.fields.total
    }
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 1
  )
).data
```

Returns

[![images/selectionFields/allFields-and-someRelatedFields.png](images/selectionFields/allFields-and-someRelatedFields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img49)

[![](images/selectionFields/allFields-and-someRelatedFields.png)](#_)

### Return all record fields and all related record fields, except expensive fields

The following query return all fields from the AR Customer record type and the related AR Order record type, except real-time custom record fields and Extra Long Text fields.

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
a!queryRecordType(
  recordType: recordType!AR Customer,
  fields: a!selectionFields(
    allFieldsFromRecordType: {recordType!AR Customer, recordType!AR Customer.relationships.order},
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 1
  )
).data
```

Returns

[![images/selectionFields/allFields-and-allRelatedFields.png](images/selectionFields/allFields-and-allRelatedFields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img50)

[![](images/selectionFields/allFields-and-allRelatedFields.png)](#_)

### Return all record fields and all related record fields, including all expensive fields

The following query return all fields from the AR Order record type and the related AR Customer record type, including all real-time custom record fields and Extra Long Text fields.

**Note:**  This example starts from the AR Order record type because Extra Long Text fields cannot be queried from a one-to-many relationship, so the only way to return that field is by querying the AR Order record type and related fields from the AR Customer record type.

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
a!queryRecordType(
recordType: recordType!AR Order,
fields: a!selectionFields(
  allFieldsFromRecordType: {recordType!AR Order, recordType!AR Order.relationships.customer},
  includeExtraLongTextFields: true,
  includeRealTimeCustomFields: true
),
pagingInfo: a!pagingInfo(
  startIndex: 1,
  batchSize: 1
)
).data
```

Returns

[![images/selectionFields/allFields.png](images/selectionFields/allFields.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img51)

[![](images/selectionFields/allFields.png)](#_)

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
| Offline Mobile | Compatible |  |
| Sync-Time Custom Record Fields | Compatible |
Can be used to create a custom record field that only [evaluates at sync time](custom-record-fields.html#prodlink-sync-time-evaluations).

 |
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