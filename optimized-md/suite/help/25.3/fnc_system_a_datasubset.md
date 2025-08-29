---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_datasubset.html
original_path: fnc_system_a_datasubset.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!dataSubset() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!dataSubset**( _startIndex, batchSize, sort, totalCount, data, identifiers_ )

Creates a value of type DataSubset for defining the source of expression-backed records and for use with `a!pickerFieldCustom`, leaving the data as provided. To apply sorting and paging, use `todatasubset()`.

**See also:** [DataSubset](Appian_Data_Types.html#datasubset)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`startIndex`

 |

_Integer_

 |

The index of the first item to be returned in the subset.

 |
|

`batchSize`

 |

_Integer_

 |

The number of items to be returned in the subset.

 |
|

`sort`

 |

_SortInfo Array_

 |

Valid values include `null`, or a `SortInfo` where `<SortInfo>.field` is the name of a field on the input array elements or "dot" notation for a nested field.

 |
|

`totalCount`

 |

_Integer_

 |

The number of items in total.

 |
|

`data`

 |

_Any Type Array_

 |

The data to be returned in the subset.

 |
|

`identifiers`

 |

_Any Type Array_

 |

A parallel list of unique identifiers for each item in the subset.

 |

## Returns

DataSubset

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
9
10
11
	=a!dataSubset(
       startIndex: 1,
       batchSize: 4,
       sort: a!sortInfo(
         field: "name",
         ascending: true()
       ),
       totalCount: 10,
       data: {"a", "b", "c", "d"},
       identifiers: {1, 2, 3, 4}
    )
```

returns

![/returns-datasubset](images/returns-datasubset.png)

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