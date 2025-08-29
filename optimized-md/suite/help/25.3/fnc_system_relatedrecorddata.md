---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_relatedrecorddata.html
original_path: fnc_system_relatedrecorddata.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!relatedRecordData() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

References a one-to-many relationship defined on a record type and allows for additional filtering, sorting, and limiting of the related record set.

**See also:**

-   [a!queryRecordType()](fnc_system_queryrecordtype.html)
-   [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html)
-   [a!recordData()](fnc_system_recorddata.html)
-   [a!sortInfo()](fnc_system_a_sortinfo.html)
-   [a!queryFilter()](fnc_system_a_queryfilter.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`relationship`

 |

_Record Type Relationship_

 |

A reference to a one-to-many [record type relationship](record-type-relationships.html), configured using the `recordType!` domain. For example, `recordType!Department.relationships.employees`.

 |
|

`limit`

 |

_Number (Integer)_

 |

Number of related records to return. If you're using this function in [a!queryRecordType()](fnc_system_queryrecordtype.html) or in a records-powered component, the maximum number is 100. If you're using this function in [a!queryRecordByIdentifier()](fnc_system_a_queryrecordbyidentifier.html), the maximum number is 250.

 |
|

`sort`

 |

_List of SortInfo_

 |

Array of Sort Info configurations created with `a!sortInfo()`. When defining the field to sort on, reference a record field or related record field starting from the related record type. For example, sort on the field `recordType!Employee.fields.status` when _relationship_ is `recordType!Department.relationships.employees`.

 |
|

`filters`

 |

_Any Type_

 |

A single logical expression or a list of query filters, which are applied together with an `AND` operation, can be provided to apply additional filters to the record set. When defining fields to filter on, reference record fields or related record fields starting from the related record type. For example, filter on the field `recordType!Employee.fields.status` when _relationship_ is `recordType!Department.relationships.employees`. Queries also inherit the default filters defined on the referenced record type.

 |

## Returns

List of RelatedRecordData

## Usage considerations

### Function requirements

This function is only supported on record types that have [data sync](about-data-sync.html) enabled and have a [one-to-many relationship](record-type-relationships.html) with another record type.

You cannot use this function when performing an aggregation in `a!queryRecordType()` or in a [records-powered chart](Chart_Configuration_Using_Records.html).

### Supported use cases

Use this function to filter, sort, or limit the related record data returned from a one-to-many relationship referenced in `a!queryRecordType()`, `a!queryRecordByIdentifier()`, or in an `a!recordData()` function used in a read-only grid.

See [Examples](#examples) for sample use cases.

### Limiting the related record set

The maximum number of related records returned for each base record varies depending on the calling function:

| Function | Maximum number of related records returned | Default number of related records returned |
| --- | --- | --- |
| `a!queryRecordType()` | 100 | 10 |
| `a!recordData()` | 100 | 10 |
| `a!queryRecordByIdentifier()` | 250 | 100 |

In any case, if you don't specify a limit, the maximum is applied by default.

For example, when querying multiple customers and their related support cases using `a!queryRecordType()`, the query will return a max of 100 related support cases for each customer if no limit is applied.

If you use `a!queryRecordByIdentifier()` to query a single customer and their related support cases, the maximum of 250 related records is returned by default.

### Filtering and sorting the related record set

When applying a filter or sort to `a!relatedRecordData()`, your record field or related record field reference must start from the related record type specified in the _relationship_ parameter.

For example, the Department record type has a one-to-many relationship with the Employee record type, and you only want to see the employees in each department that have a status of "Active".

To return this data, you would do something like:

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
   relatedRecordData: {
   /*Only return related Employees that have a status of active*/
    a!relatedRecordData(
!    relationship: recordType!Department.relationships.employee,
     filters: {
        a!queryFilter(
!         field: recordType!Employee.fields.status,
          operator: "=",
          value: "Active"
          )
        }
      )
    }
```

## Examples

The following examples demonstrate how to use `a!relatedRecordData()` in the [a!queryRecordType()](fnc_system_queryrecordtype.html) function. We'll use the Customer record type, which has a one-to-many relatonship with the Case record type, to return information about customers and their related support cases.

See the [a!recordData()](fnc_system_recorddata.html) function for an example using `a!relatedRecordData()` in a read-only grid.

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Only return the latest customer support case

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
    /*Only return the latest support case for a customer*/
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
      startIndex: 1,
      batchSize: 500
  )
)
```

Returns

![Returns the latest customer support case for each customer](images/latest-support-case.png)

### Only return customer cases that have a status of "critical"

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
    /*Only return related cases that have a priority of critical*/
    a!relatedRecordData(
      relationship: recordType!Customer.relationships.cases,
      filters: {
        a!queryFilter(
          field: recordType!Case.relationships.priority.fields.label,
          operator: "=",
          value: "Critical"
        )
      }
    )
  },
  pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 500
  )
)
```

Returns

![Returns only cases that have a status of critical](images/return-critical-cases.png)

**Tip:**  Since there is no _limit_ specified in `a!relatedRecordData`, the query will return a maximum of 250 support cases for each customer.

### Return the latest critical support case and the latest case comment

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
45
46
47
48
49
50
a!queryRecordType(
  recordType: recordType!Customer,
  fields: {
    /*Fields from the Customer record type*/
    recordType!Customer.fields.name,
    recordType!Customer.fields.customerSince,

    /*Related fields from the Case record type*/
    recordType!Customer.relationships.cases.fields.title,
    recordType!Customer.relationships.cases.fields.status,

    /*Related fields from the Comments record type*/
    recordType!Customer.relationships.cases.relationships.comments.fields.commentText
  },
  relatedRecordData: {
    /*Only return the latest case with a priority of critical*/
    a!relatedRecordData(
      relationship: recordType!Customer.relationships.cases,
      filters: {
        a!queryFilter(
          field: recordType!Case.relationships.priority.fields.label,
          operator: "=",
          value: "Critical"
        )
      },
      sort: {
        a!sortInfo(
          field: recordType!Case.fields.createdOn,
          ascending: false
        )
      },
      limit: 1
    ),
    /*Only return the latest comment associated with each critical case*/
    a!relatedRecordData(
      relationship: recordType!Customer.relationships.cases.relationships.comments,
      sort: {
        a!sortInfo(
          field: recordType!Comments.fields.createdOn,
          ascending: false
        )
      },
      limit: 1
    )
  },
  pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 500
  )
)
```

Returns

![Returns only cases that have a status of critical and the latest related case comment](images/multiple-relatedrecorddata.png)

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
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