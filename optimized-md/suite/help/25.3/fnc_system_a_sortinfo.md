---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_sortinfo.html
original_path: fnc_system_a_sortinfo.html
version: "25.3"
title: "a!sortInfo() Function"
page_id: "fnc_system_a_sortinfo"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!sortInfo() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!sortInfo**( _field, ascending_ )

Creates a value of type SortInfo for use with grids and record queries.

**See also:**

-   [SortInfo](Appian_Data_Types.html#sortinfo)
-   [a!queryRecordType()](fnc_system_queryrecordtype.html)
-   [a!queryEntity()](fnc_system_a_queryentity.html)
-   [a!relatedRecordData()](fnc_system_relatedrecorddata.html)
-   [a!pagingInfo()](fnc_system_a_paginginfo.html)
-   [Read-Only Grid](Paging_Grid_Component.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`field`

 |

_Any Type_

 |

The name of the field used to sort by. When sorting record data, use the `recordType!` domain to reference a record field or related record field. For example, `recordType!Case.fields.caseName`. When sorting data from a data store entity, use the field name in quotations. For example, `"department"`. When sorting on aggregate data, you must use the alias as the sort field if an alias is defined in the groupings or measures.

 |
|

`ascending`

 |

_Boolean_

 |

Determines what order the data is sorted in. Sorted in ascending order when the value is `true` and descending order when the value is `false`. Default: `false`.

 |

## Returns

SortInfo

## Usage considerations

### Supported data types

Sorting is only supported for complex data types and is not supported for a dictionary array.

### Sorting in a!queryRecordType vs a!queryEntity

Depending on the type of query, the way you reference the sort field will vary.

If you are sorting in `a!queryRecordType()`, you must use a [record field reference](reference-records.html#reference-record-fields).

For example:

```
1
2
3
4
a!sortInfo(
        field: recordType!Customer.fields.sumOfSales,
        ascending: false
      )
```

If you are sorting in `a!queryEntity()`, you must reference the field by name in quotations.

For example:

```
1
2
3
4
a!sortInfo(
        field: "lastName",
        ascending: false
      )
```

### Sorting on related record data from a one-to-many relationships

When applying a sort to the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function, you must reference record fields or related record fields from the related record type specified in the _relationship_ parameter of the function.

See [Filtering and sorting the related record set](fnc_system_relatedrecorddata.html#filtering-and-sorting-the-related-record-set) for more information.

### Sorting on aggregated data in a query

When an alias is defined in the [grouping](Grouping_Component.html) or [measure](Measure_Component.html) of your query, you must use the alias instead of the record field reference as the sort field.

For example:

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
a!queryRecordType(
  recordType: recordType!Case,
  fields: a!aggregationFields(
    groupings: a!grouping(
      field: recordType!Case.fields.createdOn,
      interval: "DATE_SHORT_TEXT"
!     alias: "createdOn",
    ),
    measures: a!measure(
      field: recordType!Case.fields.id,
      function: "COUNT",
      label: "# of cases",
      alias: "caseCount"
    )
  ),
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 500,
!   sort: a!sortInfo(field: "createdOn", ascending: true)
  )
).data
```

### Sorting on records-powered charts

To sort your chart data, you can:

-   Use the alias of any groupings or measures to sort by fields referenced in the chart.
-   Use a record field or related record field reference to sort by fields that are _not_ referenced in the chart. The field must be of type Number (Integer), Number (Decimal), Date, Date and Time, Time, or Boolean.

You can add multiple sort fields on [line](Bar_Chart_Component.html), [bar](Bar_Chart_Component.html), and [column](Column_Chart_Component.html) charts that uses a record type as the source.

See [Configure Charts Using Records](Chart_Configuration_Using_Records.html#configure-the-data-limit-and-sorting) for more information on sorting records-powered charts.

## Example

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

```
1
2
3
4
	=a!sortInfo(
	  field: "name",
	  ascending: true()
	)
```

Returns

```
1
2
	[field=name,
	 ascending=true]
```

For more examples, see [Recipes for Querying Records](Query_Recipes.html) or [Recipes for Querying Entities](Query_Recipes_entity.html).

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