---
source_url: https://docs.appian.com/suite/help/25.3/recipe-conditionally-hide-a-column-in-a-grid.html
original_path: recipe-conditionally-hide-a-column-in-a-grid.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Conditionally Hide a Column in a Grid

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

Conditionally hide a column in a read-only grid when all data for that column is a specific value.

**Note:**  This expression uses direct references to the Employee record type, created in the [Records Tutorial](Records_Tutorial.html). If you've completed that tutorial in your environment, you can change the existing record-type references in this pattern to point to your Employee record type instead.

![images/SAIL_Recipe_Conditionally_Hide_Column.png](images/SAIL_Recipe_Conditionally_Hide_Column.png)

### Use Case

You can configure a read-only grid to conditionally hide a grid column, show a grid column, or both when the user selects a filter. This interface expression pattern demonstrates how to use `a!gridField()` to configure a read-only grid that conditionally hides the _Department_ column and makes the _Phone Number_ column visible when the user selects a _Department_ filter. It also shows you how to use a record type as the grid's data source and bring in additional features configured in the record type.

![/SAIL Recipe Conditionally Hide Column ALL](images/SAIL_Recipe_Conditionally_Hide_Column_ALL.png)

Use the pattern in this example as a template when you want to:

-   Conditionally hide or show certain record data based on a user's interaction with the grid.
-   Configure a user filter for a specific grid only.

## Expression

The expression pattern below shows you how to:

-   Conditionally hide a column in a read-only grid based on the user's interaction.
-   Use `a!queryFilter()` to query the record type to return a datasubset that matches the filter value selected.
-   Use record type field references, `recordType!<record type name>.fields.<field name>`, to reference record fields in the grid and `fv!row` with bracket notation to call the field values in a grid.
-   Use `a!localVariables` to store the filter value a user selects.
-   Use `a!dropdownField()` to configure a filter dropdown for the grid.

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
104
105
106
107
a!localVariables(
  /* In your application, replace the values defined by local!departments
   * with a constant that stores the filter values you want to use in your
   * grid. Then use cons!<constant name> to reference the constant in
   * local!departments. */
  local!departments: { "Corporate", "Engineering", "Finance", "HR", "Professional Services", "Sales" },

 /* Use a local variable to hold the name of the department filter the
  * user selects in the filter dropdown. This example, uses
  * local!selectedDepartment */
  local!selectedDepartment,

 {
    a!sectionLayout(
      label: "",
      contents: {
        a!richTextDisplayField(
          value: {
            a!richTextItem(
             /* The department name is appended to Employees and displayed
              * only when the user selects a department filter in the
              * dropdown list. */
              text: {"Employees"&if(isnull(local!selectedDepartment),null," in "&upper(local!selectedDepartment))},

              size: "MEDIUM",
              style: {
                "STRONG"
              }
            )
          }
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                /* We used the dropdownField() component to create an
                 * adhoc user filter for the grid. It pulls in the
                 * department names stored in local!departments as
                 * choiceLabels and choiceValues and saves the filter
                 * value selected by the user in local!selectedDepartment. */
                a!dropdownField(
                  label: "Department ",
                  placeholder: "-- Filter By Department -- ",
                  choiceLabels: local!departments,
                  choiceValues: local!departments,
                  value: local!selectedDepartment,
                  saveInto: local!selectedDepartment
                )
              },
              width: "NARROW_PLUS"
            )

          }
        ),
        a!gridField(
          data: a!recordData(
            recordType: recordType!Employee,
            filters: a!queryLogicalExpression(
              operator: "AND",
              filters: {
                a!queryFilter(
                  field: recordType!Employee.fields.department,
                  operator: "=",
                  value: local!selectedDepartment
                )
              },
              ignoreFiltersWithEmptyValues: true
            )
          ),
          columns: {
            a!gridColumn(
              label: "First Name",
              sortField:recordType!Employee.fields.firstName,
              value: fv!row[recordType!Employee.fields.firstName]
            ),
            a!gridColumn(
              label: "Last Name",
              sortField: recordType!mployee.fields.lastName,
              value: fv!row[recordType!Employee.fields.lastName]
            ),
            a!gridColumn(
              label: "Department",
              sortField: recordType!Employee.fields.department,
              value: fv!row[recordType!Employee.fields.department],
              /* The Department column is shown only when the user has not
               * selected a department filter in the dropdown list. */
              showWhen: isnull(local!selectedDepartment)
            ),
            a!gridColumn(
              label: "Title",
              sortField: recordType!Employee.fields.title,
              value: fv!row[recordType!Employee.fields.title]
            ),
            /* The Phone Number column is shown when the user selects
             * a Department filter. */
            a!gridColumn(
              label: "Phone Number",
              sortField: recordType!Employee.fields.phoneNumber,
              value: fv!row[recordType!Employee.fields.phoneNumber],
              showwhen: not(isnull(local!selectedDepartment))
            )
          }
        )
      }
    )
  }
)
```

For more information on record type field references and referencing record types in expressions, see [Record Type Object](reference-records.html).

## Test the grid

1.  After entering the expression pattern in your interface, click **SAVE**.
2.  Click **TEST** to refresh your interface and test the grid features.
3.  To filter the grid, select a _department_ filter from the dropdown. Notice that the department column is no longer visible and the phone number column becomes visible.
4.  Select "Filter By Department" from the dropdown. The **Department** column will shown in the grid and the **Phone Number** column will be hidden.

    ![images/SAIL_Recipe_Conditionally_Hide_Column.png](images/SAIL_Recipe_Conditionally_Hide_Column.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...