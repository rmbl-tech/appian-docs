---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_a_groupsbytype.html
original_path: fnc_people_a_groupsbytype.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!groupsByType() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!groupsByType**( _groupType, pagingInfo_ )

Returns a DataSubset of the groups of a given group type.

**See also**:

-   [Group Types](Group_Types.html)
-   [PagingInfo](Appian_Data_Types.html#paginginfo)
-   [DataSubset](Appian_Data_Types.html#datasubset)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`groupType`

 |

_Group Type_

 |

The group type of the groups to be retrieved.

 |
|

`pagingInfo`

 |

_PagingInfo_

 |

The paging and sorting configurations to apply when retrieving the groups. The minimum batchSize is 0 and the maximum is 10,000. If none is provided, a default batchSize of 1,000 will be used.

 |

## Returns

DataSubset

## Usage considerations

The _groupType_ value should be given as a constant of type Group Type.

By default, the DataSubset is sorted by `groupName`, ascending. If there are multiple groups with the same `groupName`, a secondary sort is applied on `id`, ascending.

Designers can choose to sort on any of the following group attributes:

-   `created`
-   `creator`
-   `description`
-   `groupName`
-   `groupTypeName`
-   `id`
-   `lastModified`
-   `memberPolicyName`
-   `parentId`
-   `parentName`
-   `securityMapName`
-   `viewingPolicyName`

If the user running the expression does not have permission to see a group, that group will not be returned in the result. If the user does not have permission to see any of the groups, the DataSubset returned will have an empty `data` value. See also: [Group Visibility](Configuring_Security_for_Groups.html#group-visibility)

`a!groupsByType()` cannot be used to define a column of process report data or in a process event.

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

Given a rule input `ri!groupType` of type `Group Type` with the following groups of this type: `{[Group:7],[Group:8],[Group:9],[Group:10],[Group:11]}`

#### Return Maximum Batch Size

```
1
a!groupsByType(groupType: ri!groupType)
```

Returns

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
DataSubset
  startIndex: 1
  batchSize: 1000
  sort: List of SortInfo
    SortInfo
      field: "groupName"
      ascending: true
  totalCount: 5
  data: List of Group
    7 - Group A (Group)
    8 - Group B (Group)
    9 - Group C (Group)
    10 - Group D (Group)
    11 - Group E (Group)
  identifiers: List of Group
    7 - Group A (Group)
    8 - Group B (Group)
    9 - Group C (Group)
    10 - Group D (Group)
    11 - Group E (Group)
```

#### Return Batch Size of Two

```
1
2
3
4
5
6
7
a!groupsByType(
  groupType: ri!groupType,
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 2
  )
)
```

Returns

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
DataSubset
  startIndex: 1
  batchSize: 2
  sort: List of SortInfo
    SortInfo
      field: "groupName"
      ascending: true
  totalCount: 5
  data: List of Group
    7 - Group A (Group)
    8 - Group B (Group)
  identifiers:List of Group
    7 - Group A (Group)
    8 - Group B (Group)
```

#### Only Return Data

```
1
2
3
4
5
6
7
a!groupsByType(
  groupType: ri!groupType,
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 2
  )
).data
```

Returns

```
1
2
3
List of Group
  7 - Group A (Group)
  8 - Group B (Group)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Partially compatible |
Can be used with Appian Portals if it is connected using an [integration and web API](portals-design.html#using-partially-compatible-functions-and-objects-in-a-portal).

 |
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
| Process Autoscaling | Partially compatible |

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...