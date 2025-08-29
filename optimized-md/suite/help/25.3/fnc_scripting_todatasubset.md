---
source_url: https://docs.appian.com/suite/help/25.3/fnc_scripting_todatasubset.html
original_path: fnc_scripting_todatasubset.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# todatasubset() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**todatasubset**( _arrayToPage, pagingConfiguration_ )

The function takes an array of values as well as optional paging/sorting configurations and returns a DataSubset value with a subset of the array in a specified sort order and the total count of items in the initial array.

**See also**:

-   [DataSubset](Appian_Data_Types.html#datasubset)
-   [PagingInfo](Appian_Data_Types.html#paginginfo)
-   [Grid Tutorial](Grid_Tutorial.html)
-   [Array Functions](Array_Functions.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`arrayToPage`

 |

_Any Type_

 |

The array of values to page and sort.

 |
|

`pagingConfiguration`

 |

_PagingInfo_

 |

The paging and sorting configuration.

 |

## Returns

DataSubset

## Usage considerations

This function should be used primarily as a method for configuring a Read-Only Grid form component or grid component, such as one that displays data on a task form for review before persisting the data to a database. You can also use it to sort an array for CDTs and then use the dot operator to extract the array from the returned data value.

The _arrayToPage_ value can include primitive system, complex system, and custom complex data types. See also: [Data Types](Appian_Data_Types.html)

You can use also dictionary syntax to create a value for the _arrayToPage_ parameter.

If the array contains null or duplicate values, they are preserved unless removed through the _pagingConfiguration_ value.

If the _startIndex_ value of _pagingConfiguration_ is greater than the total number of items in the list, a null array is returned as the _data_ field of the DataSubset return value.

If the _batchSize_ value of _pagingConfiguration_ is greater than zero, the function returns a subset of the _arrayToPage_ with at most the _batchSize_ number of values starting at _startIndex_. If the _batchSize_ value is `-1`, all items in the _arrayToPage_ are returned. If the _batchSize_ value is null or zero, the _totalCount_ and _startIndex_ of the array is returned, but no data.

If the _sort_ value of _pagingConfiguration_ is not null or empty, the function returns a subset of the input sorted by the _field_ value. If the value is null or empty, it returns an unsorted subset of the input. If the _ascending_ field has a value of `true`, the sort is ascending - otherwise, descending.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

Return all items in an array starting at index 1:

```
1
todatasubset({1, 2, 3, 4, 5})
```

returns

```
1
2
3
4
5
6
[startIndex=1,
 	 batchSize=-1,
 	 sort=,
 	 totalCount=5,
 	 data=1; 2; 3; 4; 5,
 	 identifiers=1; 2; 3; 4; 5]
```

Return two items in an array starting at index 1:

```
1
todatasubset({1, 2, 3, 4, 5}, topaginginfo(1, 2))
```

returns

```
1
2
3
4
5
6
[startIndex=1,
 	 batchSize=2,
 	 sort=,
 	 totalCount=5,
 	 data=1; 2,
 	 identifiers=1; 2]
```

Access the subset of data returned using the dot operator:

```
1
todatasubset({1, 2, 3, 4, 5}, topaginginfo(1, 2)).data
```

returns

```
1
1,2
```

Sort an array of Column values by a field called "alias" in ascending order:

```
1
2
3
4
5
6
7
todatasubset({
  type!Column(field: "username", alias: "un", visible: true),
  type!Column(field: "firstName", alias: "first", visible: false),
  type!Column(field: "lastName", alias: "last", visible: true)
  },
  a!pagingInfo(startIndex: 1, batchSize: 2, sort:{field: "alias", ascending: true})
)
```

returns

```
1
2
3
4
5
6
[startIndex=1,
 batchSize=2,
 	 sort=[field=alias, ascending=true],
 	 totalCount=3,
 data=[field=firstName, alias=first, visible=false]; [field=lastName, alias=last, visible=true],
 identifiers=2; 3]
```

See also: [Column Data Type](Appian_Data_Types.html#column)

Sort an array by a field called "alias" and then by a field called "nameType" using dictionary syntax:

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
todatasubset({
  {nameType: "username", alias: "un", visible: true},
  {nameType: "firstName", alias: "first", visible: false},
  {nameType: "nickName", alias: "first", visible: false},
  {nameType: "lastName", alias: "last", visible: true}
  },
  a!pagingInfo(startIndex: 1, batchSize: 2, sort: {
    {field: "alias", ascending: true},
    {field: "nameType", ascending: false}
    }
  )
)
```

returns

```
1
2
3
4
5
6
[startIndex=1,
 batchSize=2,
 sort=[field=alias, ascending=true]; [field=nameType, ascending=false],
 totalCount=4,
 data=[nameType:nickName,alias:first,visible:false]; [nameType:firstName,alias:first,visible:false],
 identifiers=3; 2]
```

Return paging and sort configurations with no data values:

```
1
2
3
4
5
6
7
todatasubset({
  type!Column(field: "username", alias: "un", visible: true),
  type!Column(field: "firstName", alias: "first", visible: false),
  type!Column(field: "lastName", alias: "last", visible: true)
  },
  a!pagingInfo(startIndex: 1, batchSize: 0, sort:{field: "alias", ascending: true})
)
```

returns

```
1
2
3
4
5
6
[startIndex=1,
 batchSize=0,
 sort=[field=alias, ascending=true],
 totalCount=3,
 data=,
 identifiers=]
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
| Offline Mobile | Incompatible |  |
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