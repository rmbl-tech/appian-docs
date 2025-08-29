---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_paginginfo.html
original_path: fnc_system_a_paginginfo.html
version: "25.3"
title: "a!pagingInfo() Function"
page_id: "fnc_system_a_paginginfo"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!pagingInfo() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!pagingInfo**( _startIndex, batchSize, sort_ )

Creates a value of type PagingInfo for use with grids, queries, and `todatasubset()`.

**See also:** [PagingInfo](Appian_Data_Types.html#paginginfo), [Read-Only Grid](Paging_Grid_Component.html), [a!sortInfo()](fnc_system_a_sortinfo.html), [a!queryRecordType()](fnc_system_queryrecordtype.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`startIndex`

 |

_Integer_

 |

Index of the array in which to start returning values for the subset. Valid values include those greater than zero.

 |
|

`batchSize`

 |

_Integer_

 |

The number of items to return. When used with records, valid values are 0 to 5,000. When used with an entity, valid values include those greater than or equal to -1. See [Using the batchSize parameter](#using-the-batchsize-parameter) for more information about the allowed values.

 |
|

`sort`

 |

_SortInfo Array_

 |

Valid values include `null`, an empty array of `SortInfo`, or an array of SortInfo where `<SortInfo>.field` is the name of a field on the input array elements or "dot" notation for a nested field.

 |

## Returns

PagingInfo

## Usage considerations

### Using the startIndex parameter

If the _startIndex_ value is greater than the total number of items in the list the PagingInfo value is applied to, a null array is returned as the data.

### Using the batchSize parameter

The _batchSize_ parameter determines the number of items to return. Depending on the data you are querying, the valid values for a _batchSize_ may vary.

| batchSize value | Returns |
| --- | --- |
| \-1 | All items are returned. This value is only supported in [a!queryEntity()](fnc_system_a_queryentity.html). |
| 0 or null | Only the _totalCount_ and _startIndex_ of the array are returned (no data). This value is only supported in [a!queryEntity()](fnc_system_a_queryentity.html) and [a!queryRecordType](fnc_system_queryrecordtype.html) where the source is a database or Salesforce. |
| \>1 | Returns the specified number of results, starting at the _startIndex_. |

If the _batchSize_ is 0, the total count of records will be returned, but no data.

If the _batchSize_ value is -1, all items are returned. When [People Functions](fnc_people_topeople.html) contain PagingInfo, the batchSize parameter must be greater than or equal to zero; -1 is not a valid option.

A batch size of 0 cannot be used for the following record types:

-   Service-backed record types that have data sync disabled
-   Process-backed record types
-   [Legacy record types](update-a-record-type.html)

### Using the sort parameter

If the _sort_ value is not null or empty, the function your PagingInfo is applied to returns a subset of the input sorted by the _field_ value of the SortInfo. If the value is null or empty, it returns an unsorted subset of the input.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

```
1
2
3
4
5
6
7
8
a!pagingInfo(
  startIndex: 1,
  batchSize: 4,
  sort: a!sortInfo(
    field: "name",
    ascending: true()
  )
)
```

returns

`[startIndex=1, batchSize=4, sort=[field=name, ascending=true]]`

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