---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_recorddata.html
original_path: fnc_system_recorddata.html
version: "25.3"
title: "a!recordData() Function"
page_id: "fnc_system_recorddata"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!recordData() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!recordData**( _recordType, filters, relatedRecordData, fields_ )

This function references a set of records from a record type and allows additional filtering in a read-only grid, chart, or selection component that uses a record type as the source. When referencing one-to-many relationships in grid columns, you can filter, sort, and limit that related record set using the _relatedRecordData_ parameter and the `a!relatedRecordData()` function.

**See also:**

-   [Record Type Object](Record_Type_Object.html)
-   [Read-only grid component](Paging_Grid_Component.html)
-   [Configure charts using records](Chart_Configuration_Using_Records.html)
-   [a!queryFilter() function](fnc_system_a_queryfilter.html)
-   [a!relatedRecordData() function](fnc_system_relatedrecorddata.html)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`recordType`

 |

_RecordType_

 |

A reference to a record type, configured using the `recordType!` domain. For example, `recordType!Employee`.

 |
|

`filters`

 |

_Any Type_

 |

A single logical expression or a list of query filters, which are applied together with an `AND` operation, can be provided to apply additional filters to the record set. Queries also inherit the record-level security or default filters defined on the referenced record type. When filtering, use only record fields or related record fields from the referenced record type. Record types sourced from a web service or other expression only support this parameter if the data is synced.

 |
|

`relatedRecordData`

 |

_List of RelatedRecordData_

 |

When selecting [one-to-many related record data](record-type-relationships.html), use [a!relatedRecordData()](fnc_system_relatedrecorddata.html) to filter, sort, and limit the related record sets. This parameter is only supported when `a!recordData()` is used in a [read-only grid](Paging_Grid_Component.html).

 |
|

`fields`

 |

_Any Type_

 |

Fields to retrieve in a [read-only grid](Paging_Grid_Component.html). Reference a list of fields using the `recordType!` domain, or use [a!selectionFields()](fnc_system_selectionfields.html) to return all fields from the record type and any related record types. When this parameter is null in a read-only grid, only the fields specified in the _columns_ parameter will be retrieved.

 |

## Returns

RecordData

## Usage considerations

### Where to use this function

The `a!recordData()` function is supported within the _data_ parameter of the following components:

-   [Read-only grid](Paging_Grid_Component.html)
-   [Chart](Chart_Configuration_Using_Records.html)
-   [Checkbox](Checkbox_Component.html#checkbox-with-choices-from-a-record-type)
-   [Dropdown](Dropdown_Component.html#dropdown-with-choices-from-a-record-type)
-   [Multiple dropdown](Multiple_Dropdown_Component.html#multiple-dropdown-with-choices-from-a-record-type)
-   [Radio button](Radio_Button_Component.html#radio-button-with-choices-from-a-record-type)

### Using the filters parameter

**Note:**  Filters are not supported on unsynced service-backed record types.

The _filters_ parameter allows you to specify which data is returned using [a!queryFilter()](fnc_system_a_queryfilter.html) or [a!queryLogicalExpression()](fnc_system_a_querylogicalexpression.html). You can filter by record fields or related record fields using the `recordType` domain.

For example, the following expression would display a pie chart with all active employees.

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
{
  a!pieChartField(
    data: a!recordData(
     recordType: recordType!Employee,
      filters: a!queryLogicalExpression(
        operator: "AND",
        filters: {
          a!queryFilter(
           field: recordType!Employee.relationships.employeeStatus.fields.isActive,
            operator: "=",
            value: true
          )
        },
        ignoreFiltersWithEmptyValues: true
      )
    )
    ...
```

### Using the relatedRecordData parameter

The _relatedRecordData_ parameter allows you to filter, sort, and limit the related record sets. This parameter is only supported when `a!recordData()` is used in a read-only grid, and references a record type that has a [one-to-many relationship](record-type-relationships.html).

By default, when you add a related record field from a one-to-many relationship as a column in a grid, the maximum number of related records returned for each base record is 100. The list of related records returned for each base record is sorted in ascending order by the primary key value from the related record type.

To change the default limit and sort behavior on your one-to-many related records, you can configure the [a!relatedRecordData()](fnc_system_relatedrecorddata.html) function to apply a new limit and sort, as well as filter the related record set.

For example, let's say you have a read-only grid that displays customer information, and you add the related record field `orderNumber` as a new column in the grid. By default, each customer will have a maximum of 100 orders listed in their row. The orders for each customer will be sorted in ascending order by the primary key field in the Order record type.

To only display the latest order for each customer, you can configure the `a!relatedRecordData()` function in the _relatedRecordData_ parameter so you can limit the related orders to `1` and sort by `orderDate` in descending order.

![/relatedrecorddata-on-grid](images/relatedrecorddata-on-grid.png)

See the [a!relatedRecordData() function](fnc_system_relatedrecorddata.html#usage-considerations) for additional usage considerations.

### Using the fields parameter

The _fields_ parameter allows you to specify when to query the fields referenced in the columns of a [read-only grid](Paging_Grid_Component.html). Configuring this parameter can improve performance on grids that use dynamic behavior (such as conditional logic) to determine which fields display in your grid.

By default, a grid will query and display all the data specified in the _columns_, _pagingSaveInto_, and _selectionSaveInto_ parameters. This default behavior can potentially impact performance if your grid includes dynamic behavior since it may result in querying more data than necessary.

For example, let's say you configured the _showWhen_ parameter on the [columns](Grid_Column_Component.html) in your grid so that certain columns only appear to managers. Even when columns are hidden from the grid, those fields will still be queried since they're specified in the _columns_ parameter of the grid.

To alter this default behavior, you can configure an `if()` statement in the _fields_ parameter of `a!recordData()` to specify that when a manager views the grid, it should only query certain fields. If someone other than a manager views the grid, query a different set of fields.

The expression would look something like this:

**Note:**  When configuring the _fields_ parameter, you must specify all of the fields referenced in the _columns_, _selectionSaveInto_, and _pagingSaveInto_ parameters of the read-only grid. Otherwise, those fields will not be queried and, therefore, not appear in the grid.

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
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
a!localVariables(
local!managers: a!isUserMemberOfGroup(loggedInUser, cons!MANAGER_GROUP),
a!gridField(
  data: a!recordData(
    recordType: recordType!Case,
    /* The grid will only retrieve one of these two sets of fields */
!   fields: if(local!managers,
!     { /* Fields for Managers */
!       recordType!Case.fields.id,
!       recordType!Case.fields.name,
!       recordType!Case.fields.description,
!       recordType!Case.fields.createdOn,
!     },
!     { /* Fields for Engineers */
!       recordType!Case.fields.id,
!       recordType!Case.fields.description,
!       recordType!Case.fields.status,
!       recordType!Case.fields.assignedTo,
!       recordType!Case.fields.timeInQueue,
!       recordType!Case.relationships.comment.fields.description,
!       recordType!Case.fields.createdOn,
!     }
! ),
  /* Only fetch the last 3 comments added to a case */
  a!relatedRecordData(
    relationship: recordType!Case.relationships.comment,
    sort: a!sortInfo(
      field: recordType!Case.relationships.comment.fields.createdOn,
      ascending: false
    ),
    limit: 3
  ),
  columns: {
    a!gridColumn(
     label: "Id",
     value: fv!row[recordType!Case.fields.id],
    ),
    a!gridColumn(
     label: "Name",
     value: fv!row[recordType!Case.fields.name],
    ),
    a!gridColumn(
     label: "Description",
     value: fv!row[recordType!Case.fields.description],
    ),
    /* The fields used in the following 4 grid columns
       may or may not be displayed. But by using the
       'fields' parameter we ensure they are not queried if
       they are not needed.
    */
    a!gridColumn(
     label: "Status",
     value: fv!row[recordType!Case.fields.status],
!    showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "Assigned To",
     value: fv!row[recordType!Case.fields.assignedTo],
!    showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "Time in Queue",
     value: fv!row[recordType!Case.fields.timeInQueue],
     align: "END",
!    showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "Time in Queue",
     value: fv!row[recordType!Case.relationships.comment.fields.description],
!    showWhen: not(local!managers)
    ),
    a!gridColumn(
     label: "createdOn",
     align: "END",
     value: fv!row[recordType!Case.fields.createdOn]
    )
   }
  )
 )
)
```

### Unsupported field types

You cannot query record fields of type Extra Long Text using `a!recordData()`, so fields of this type cannot be used in records-powered components.

### Using smart search

[Smart search](records-smart-search.html) lets you retrieve records based on semantic relevance, not just a [keyword match](records-smart-search.html#keyword-search-and-smart-search). If you want to create a custom experience that uses smart search in a grid, use `a!recordData` inside `a!gridField` and add your own filters.

Here's how:

1.  In the read-only grid, use `a!recordData()` to configure the source of the grid.
2.  In `a!recordData()`, configure the _filters_ parameter with `a!queryFilter` and use the `"search"` operator to perform a smart search on a record field.

**Tip:**  To compare multiple fields, include a separate search filter for each field you want to search.

#### How smart search works with record data in grids

-   Smart search looks at fields that are both included in the grid and enabled for smart search, including fields from related record types. When a record matches across multiple fields, smart search calculates a similarity score for each of those fields and returns the highest score in `searchResults.allSearchFields.similarityScore`.
-   [`a!gridField`](Paging_Grid_Component.html#using-smart-search) can use `a!recordData` as its data source. When `a!recordData` is used in a grid:
    -   Fields referenced in `fv!row` are automatically included in the query, so you don't need to manually list them in the `fields` parameter of `a!recordData`.
    -   Inside `fv!row`, you can reference `similarityScore` and `sourceContent` to understand how closely a record matches the search term and which content matched. These values help explain why a record appeared in the results.
-   Prevent validation errors by avoiding sorting and filtering by `sourceContent`.
-   Smart search details appear in `fv!row.searchResults`.To only show elements when a similarity score exists, wrap your check in `a!isNotNullOrEmpty` in parameters such as `showWhen` or `exportWhen`. You can use the same check anywhere you want to display the score instead of an empty label when no search ran.

    Here is an example of what that might look like.

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
    a!gridColumn(
        label: "Score",
        sortField: recordType!SSTA Case.searchResults.allSearchFields.similarityScore,
        value: a!localVariables(
          local!scoreValue: fv!row[recordType!SSTA Case.searchResults.allSearchFields.similarityScore],
         if(a!isNotNullOrEmpty(local!scoreValue),
          a!match(
          value: local!scoreValue,
          whenTrue: fv!value >= 0.00389,
          then: "Great",

          whenTrue: fv!value >= 0.0027,
          then: "Good",
          default: "Ok"
         ),
          "---"
         )
        )
      ),
    ```

For more information and examples for getting started with smart search, see the [Smart Search](records-smart-search.html) page.

## Examples

_Record type object references are specific to each environment. If you copy and paste these examples into your interface, they will not evaluate. Use them as a reference only._

### Display employees with certain titles in a grid

Let's say you want to create a read-only grid that displays all employees that do not have a "manager" title.

A sample expression could look like this. This expression uses an Employee record type, which has a [one-to-many relationship](record-type-relationships.html) with a Case record type.

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
a!gridField(
  label: "Employees",
  data:
    a!recordData(
      recordType: recordType!Employee,
      filters: a!queryFilter(
        field: recordType!Employee.fields.title,
        /* This filter removes all records where "Manager" is found in the "Title" column. */
        operator: "<>",
        value: "Manager"
      )
    ),
  columns: {
    a!gridColumn(
      label: "Name",
      sortField: recordType!Employee.fields.lastname,
      value: a!linkField(
        links: {
          a!recordLink(
            label: fv!row[recordType!Employee.fields.firstname] & " " & fv!row[recordType!Employee.fields.lastname],
            recordType: recordType!Employee,
            identifier: fv!identifier
          )
        }
      )
    ),
    a!gridColumn(
      label: "Title",
      sortField: recordType!Employee.fields.title,
      value: fv!row[recordType!Employee.fields.title]
    ),
    a!gridColumn(
      label: "Department",
      sortField: recordType!Employee.fields.department,
      value: fv!row[recordType!Employee.fields.department]
    ),
    a!gridColumn(
      label: "Phone Number",
      sortField: recordType!Employee.fields.phonenumber,
      value: fv!row[recordType!Employee.fields.phonenumber]
    )
  },
)
```

This would return something like:

![Returns a grid with employee information](images/recorddata_example1.png)

### Display employees and their latest open case in a grid

In this example, you want to create a read-only grid that displays all employees and their latest open support case.

A sample expression could look like this. This expression uses an Employee record type, which has a [one-to-many relationship](record-type-relationships.html) with a Case record type.

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
51
52
53
54
55
56
57
58
59
   a!gridField(
     label: "Employees",
     data: a!recordData(
       recordType: recordType!Employee,
        /* This function limits the number of returned support cases to 1
        and returns that latest open support case based on its creation
        date and status. */
       relatedRecordData:
        a!relatedRecordData(
          relationship: recordType!Employee.relationships.cases,
          limit: 1,
          sort:
            a!sortInfo(
              field: recordType!Case.fields.createdOn,
              ascending: false
            ),
          filters:
            a!queryFilter(
              field: recordType!Case.fields.status,
              operator: "=",
              value: "Open"
           )
         )
       ),
     columns: {
       a!gridColumn(
         label: "ID",
         sortField: recordType!Employee.fields.id,
         value: fv!row[recordType!Employee.fields.id],
         align: "END",
         width: "ICON"
       ),
       a!gridColumn(
         label: "First Name",
         sortField: recordType!Employee.fields.firstName,
         value: fv!row[recordType!Employee.fields.firstName]
       ),
       a!gridColumn(
         label: "lastName",
         sortField: recordType!Employee.fields.lastName,
         value: fv!row[recordType!Employee.fields.lastName]
       ),
       a!gridColumn(
         label: "Phone Number",
         sortField: recordType!Employee.fields.phoneNumber,
         value: fv!row[recordType!Employee.fields.phoneNumber]
       ),
       a!gridColumn(
         label: "Title",
         sortField: recordType!Employee.fields.title,
         value: fv!row[recordType!Employee.fields.title]
       ),
       a!gridColumn(
         label: "Latest Case",
         sortField: recordType!Employee.relationships.cases.fields.caseTitle,
         value: fv!row[recordType!Employee.relationships.cases.fields.caseTitle]
       )
     }
   )
```

This would return something like:

![Returns a grid with employee information and the latest support case assigned to each](images/recorddata_example2.png)

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