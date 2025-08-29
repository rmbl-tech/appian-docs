---
source_url: https://docs.appian.com/suite/help/25.3/fnc_people_a_groupmembers.html
original_path: fnc_people_a_groupmembers.html
version: "25.3"
title: "a!groupMembers() Function"
page_id: "fnc_people_a_groupmembers"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!groupMembers() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!groupMembers**( _group, direct, memberType, pagingInfo_ )

Returns a DataSubset of group members of a given group.

**See also**: [Read-Only Grid Component](Paging_Grid_Component.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`group`

 |

_Group_

 |

The group whose members are to be retrieved.

 |
|

`direct`

 |

_Boolean_

 |

If set to true, returns only the direct members of the group. Default is false.

 |
|

`memberType`

 |

_Text_

 |

Determines the member types that are retrieved. Valid values: "ALL" (default), "GROUP", "USER".

 |
|

`pagingInfo`

 |

_[PagingInfo](Appian_Data_Types.html#paginginfo)_

 |

The paging and sorting configurations to apply when retrieving group members. The minimum batchSize is 0 and the maximum is 10,000. If none is provided, a default batchSize of 100 will be used.

 |

## Returns

[DataSubset](Appian_Data_Types.html#datasubset)

## Usage considerations

By default, the DataSubset is sorted by `groupName`, ascending for member groups and by `username`, ascending for member users. In cases when the function returns both member groups and member users, the returned datasubset lists all groups first, followed by the users.

For member groups, designers can choose to sort on any of the following group attributes:

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

For member users, designers can choose to sort on any of the following user attributes:

-   `displayName`
-   `email`
-   `firstName`
-   `lastName`
-   `middleName`
-   `username`

If the user running the expression does not have permission to see a group or user, then that group or user will not be included in the DataSubset returned by the function. See also: [Group Visibility](Configuring_Security_for_Groups.html#group-visibility) and [User Profile Visibility](User_Profile_Visibility.html).

Using this function in a process model with [autoscale](autoscale-processes.html) enabled may result in degraded site or application performance. It should be used with caution and tested thoroughly before deploying it for real-world use. When the application is in production, use the [Autoscaled Process Activity](monitoring-autoscaled-processes.html) tab to monitor how the process performs at scale.

## Examples

_You can copy and paste these examples into the [Expression Rule Designer](Expression_Rules.html) to see how this works._

Given a rule input `ri!group` of type `Group` with the following group members:

Direct: `{[Group:7] (Group Type: Custom),[Group:8] (Group Type: Custom),[User: patricia.parker],[User: steve.bing]}`

Indirect: `{[Group:9] (Group Type: Team),[Group:10] (Group Type: Team),[User: john.smith],[User: tim.dove]}`

#### Return Direct Members

```
1
2
3
4
a!groupMembers(
  group: ri!group,
  direct: true
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
15
16
17
18
19
20
21
22
DataSubset
  startIndex: 1
  batchSize: 100
  sort: List of SortInfo: 2 items
    SortInfo
      field: "groupName"
      ascending: true
    SortInfo
      field: "username"
      ascending: true
  totalCount: 4
  data: List of Variant: 4 items
    7 - Group A (Group)
    8 - Group B (Group)
    patricia.parker - Patricia Parker (User)
    steve.bing - Steve Bing (User)
  identifiers: List of Variant: 4 items
    7 - Group A (Group)
    8 - Group B (Group)
    patricia.parker - Patricia Parker (User)
    steve.bing - Steve Bing (User)

```

#### Return Member Users

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
a!groupMembers(
  group: ri!group,
  memberType: "USER",
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 5,
    sort: a!sortInfo(
     field: "lastName",
     ascending: true
     )
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
15
16
17
18
DataSubset
  startIndex: 1
  batchSize: 5
  sort: List of SortInfo: 1 item
    SortInfo
      field: "lastName"
      ascending: true
  totalCount: 4
  data: List of Usernames: 4 items
    steve.bing - Steve Bing (User),
    tim.dove - Tim Dove (User),
    patricia.parker - Patricia Parker (User)
    john.smith - John Smith (User)
  identifiers: List of Usernames: 4 items
    steve.bing - Steve Bing (User),
    tim.dove - Tim Dove (User),
    patricia.parker - Patricia Parker (User)
    john.smith - John Smith (User)
```

#### Return Member Groups

```
1
2
3
4
a!groupMembers(
  group: ri!group,
  memberType: "GROUP"
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
15
16
17
18
DataSubset
  startIndex: 1
  batchSize: 100
  sort: List of SortInfo: 1 item
    SortInfo
      field: "groupName"
      ascending: true
  totalCount: 4
  data: List of Group: 4 items
    7 - Group A (Group)
    8 - Group B (Group)
    9 - Group C (Group)
   10 - Group D (Group)
  identifiers: List of Group: 4 items
    7 - Group A (Group)
    8 - Group B (Group)
    9 - Group C (Group)
   10 - Group D (Group)
```

#### Return Indirect Group Members

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
a!groupMembers(
  group: ri!group,
  memberType: "ALL",
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 1000,
    sort: {
      a!sortInfo(
        field: "groupTypeName",
        ascending: true
      ),
      a!sortInfo(
        field: "lastName",
        ascending: true
      )
    }
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
DataSubset
  startIndex: 1
  batchSize: 1000
  sort: List of SortInfo: 2 items
    SortInfo
      field: "groupTypeName"
      ascending: true
    SortInfo
      field: "lastName"
      ascending: true
  totalCount: 8
  data: List of Variant: 8 items
    7 - Group A (Group)
    8 - Group B (Group)
    9 - Group C (Group)
   10 - Group D (Group)
    steve.bing - Steve Bing (User)
    tim.dove - Tim Dove (User)
    patricia.parker - Patricia Parker (User)
    john.smith - John Smith (User)
  identifiers: List of Variant: 8 items
    7 - Group A (Group)
    8 - Group B (Group)
    9 - Group C (Group)
   10 - Group D (Group)
    steve.bing - Steve Bing (User)
    tim.dove - Tim Dove (User)
    patricia.parker - Patricia Parker (User)
    john.smith - John Smith (User)
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