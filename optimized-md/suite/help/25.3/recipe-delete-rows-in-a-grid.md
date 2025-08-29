---
source_url: https://docs.appian.com/suite/help/25.3/recipe-delete-rows-in-a-grid.html
original_path: recipe-delete-rows-in-a-grid.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Delete Rows in a Grid

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Delete one or more rows of data in a read-only grid.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

![images/SAIL_Recipe_Delete_from_Grid.png](images/SAIL_Recipe_Delete_from_Grid.png)

This scenario demonstrates how to remove rows from a grid.

## Expression

When the user clicks the **REMOVE** button, the selected row IDs are added to a local variable. Any ID in that variable is filtered out of the grid using `a!queryFilter()` within the `a!recordData()` function. Note that the source rows are not actually removed; the rows are just visibly removed from the grid. To actually remove the records from the source, you would want to pass those removed IDs to another function, process, or service.

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
81
82
83
84
85
a!localVariables(
  /* This variable stores the grid's selection. */
  local!selection,
  /* This variable stores the row information for the grid's selection. */
  local!selectedRows,
  /* This variable stores the IDs of the rows that were removed via the REMOVE button
     to filter out those rows from the grid. It can also be used to pass these
     IDs to a process to remove them from the source entity. */
  local!removedIds,
  {
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "REMOVE",
          saveinto: {
            /* Append the selected rows IDs to the local!removedIds variable. */
            a!save(local!removedIds, append(local!removedIds, local!selectedRows[recordType!Employee.fields.id])),
            /* Reset local!selectedRows so other rows can be removed. */
            a!save(local!selectedRows, null),
            /* Reset the grid selection as well. */
            a!save(local!selection, null)
          },
          style: "OUTLINE",
          /* Disable the button if local!selectedRows is empty. */
          disabled: if(or(isnull(local!selectedRows),length(local!selectedRows)<1),true,false)
        )
      },
      align: "START"
    ),
    a!gridField(
      label: "Grid with Removable Rows",
      /* The recordData function allows us to filter the record data. */
      data: a!recordData(
        recordType: recordType!Employee,
        /* This query filter applies to all rows where the row ID is found in local!removedRows. */
        filters: a!queryFilter(
          field: recordType!Employee.fields.id,
          operator: if(isnull(local!removedIds),"not null","not in"),
          value: local!removedIds
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
          label: "Department",
          sortField: recordType!Employee.fields.department,
          value: fv!row[recordType!Employee.fields.department]
        ),
        a!gridColumn(
          label: "Title",
          sortField: recordType!Employee.fields.title,
          value: fv!row[recordType!Employee.fields.title]
        )
      },
      selectable: true,
      selectionStyle: "ROW_HIGHLIGHT",
      selectionValue: local!selection,
      selectionSaveInto:  {
        local!selection,
        /* Add row data to local!selectedRows list when that row is selected by the user. */
        a!save(local!selectedRows, append(local!selectedRows,fv!selectedRows)),
        /* Remove row data from local!selectedRows when that row is deselected by the user. */
        a!save(local!selectedRows, difference(local!selectedRows,fv!deselectedRows))
      },
      showSearchBox: false,
      showRefreshButton: false
    )
  }
)
```

## Test it out

Select a checkbox or two, click **REMOVE**, and note that the rows are removed from the grid.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...