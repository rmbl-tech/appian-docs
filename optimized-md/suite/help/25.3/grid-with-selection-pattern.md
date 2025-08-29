---
source_url: https://docs.appian.com/suite/help/25.3/grid-with-selection-pattern.html
original_path: grid-with-selection-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Grid with Selection Pattern

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page explains how you can use the grid with selection pattern in your interface and walks you through the design structure of the pattern in detail.

![grid_with_selection_pattern_orig.png](images/patterns/grid_with_selection_pattern_orig.png)

## Design structure

The main components in this pattern are a rich text header, grid field, and column layout. The image below displays how the pattern looks on a blank interface with callouts of the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![grid_with_selection_pattern.png](images/patterns/grid_with_selection_pattern.png)

### Pattern expression

When you drag and drop the grid with selection pattern onto your interface, 103 lines of expressions will be added to the section where you dragged it.

### \[Line 1-51\] Define local variables and grid data

Put the data directly into the grid and let the grid handle the paging information with `fv!pagingInfo`.

```sail
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
{
  a!localVariables(
    /* This variable is used to persist the checkbox on selected items by holding the identifiers of the selected rows. */
    local!selection,
    /* This variable would be used to pass the full rows of data on the selected items out of this interface, such as to a process model. */
    local!selectedEmployees,
    {
      a!headingField(
        text: "Performance Review Portal",
        size: "SMALL",
        fontWeight: "BOLD",
        marginBelow: "LESS"
      ),
      a!columnsLayout(
        columns:{
          a!columnLayout(
            contents:{
              a!gridField(
                label: "Employee Directory",
                /* Replace the dummy data with a query, rule, or function that returns a datasubset and uses fv!pagingInfo as the paging configuration. */
                data: todatasubset(
                  {
                    a!map(id: 11, name: "Elizabeth Ward",  dept: "Engineering",     role: "Senior Engineer",       team: "Front-End Components",     pto: 15, startDate: today()-500),
                    a!map(id: 22, name: "Michael Johnson", dept: "Finance",         role: "Payroll Manager",       team: "Accounts Payable",         pto: 2,  startDate: today()-100),
                    a!map(id: 33, name: "John Smith",      dept: "Engineering",     role: "Quality Engineer",      team: "User Acceptance Testing",  pto: 5,  startDate: today()-1000),
                    a!map(id: 44, name: "Diana Hellstrom", dept: "Engineering",     role: "UX Designer",           team: "User Experience",          pto: 49, startDate: today()-1200),
                    a!map(id: 55, name: "Francois Morin",  dept: "Sales",           role: "Account Executive",     team: "Commercial North America", pto: 15, startDate: today()-700),
                    a!map(id: 66, name: "Maya Kapoor",     dept: "Sales",           role: "Regional Director",     team: "Front-End Components",     pto: 15, startDate: today()-1400),
                    a!map(id: 77, name: "Anthony Wu",      dept: "Human Resources", role: "Benefits Coordinator",  team: "Accounts Payable",         pto: 2,  startDate: today()-300)
                  },
                  fv!pagingInfo
                ),
                columns: {
                  a!gridColumn(
                    label: "Name",
                    sortField: "name",
                    value: fv!row.name
                  ),
                  a!gridColumn(
                    label: "Department",
                    sortField: "dept",
                    value: fv!row.dept
                  ),
                  a!gridColumn(
                    label: "Start Date",
                    sortField: "startDate",
                    value: fv!row.startDate,
                    align: "END"
                  )
                },
                pageSize: 3,
```

### \[Line 52-63\] Selection options

Selection for grids is enabled with the `selectable` parameter. While `local!selection` contains the current grid selection for proper display, `local!selectedEmployees` contains the row information from those selections. This is accomplished by the `selectionSaveInto` parameter. Its function variables (`fv!selectedRows` and `fv!deselectedRows`) contain the row information from each user interaction. These variables append the selected rows and remove the deselected rows from `local!selectedEmployees` so that it contains all the information necessary for the detail view in the second column.

```sail
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
                selectable: true,
                selectionValue: local!selection,
                selectionSaveInto: {
                  local!selection,
                  /* This save adds the full rows of data for items selected in the most recent user interaction to local!selectedEmployees. */
                  a!save(local!selectedEmployees, append(local!selectedEmployees, fv!selectedRows)),
                  /* This save removes the full rows of data for items deselected in the most recent user interaction to local!selectedEmployees. */
                  a!save(local!selectedEmployees, difference(local!selectedEmployees, fv!deselectedRows))
                }
              )
            }
          ),
```

### \[Line 64-103\] Heading for detail view

The next column contains the detail view for the grid selection, using the [header component](heading-component.html).

```sail
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
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
          a!columnLayout(
            contents:{
              a!richTextDisplayField(
                label: "Selected Employees",
                value: {
                  if(
                    or(isnull(local!selectedEmployees), length(local!selectedEmployees) = 0),
                    a!richTextItem(
                      text: "None",
                      style: "EMPHASIS"
                    ),
                    a!forEach(
                      local!selectedEmployees,
                      {
                        a!richTextIcon(
                          icon: "USER-CIRCLE",
                          color: "ACCENT"
                        ),
                        "  ",
                        a!richTextItem(
                          text: fv!item.name
                        ),
                        char(10)
                      }
                    )
                  )
                }
              )
            },
            width: "NARROW"
          )
        },
        stackWhen: {
          "PHONE",
          "TABLET_PORTRAIT"
        }
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...