---
source_url: https://docs.appian.com/suite/help/25.3/Paging_Grid_Component_191.html
original_path: Paging_Grid_Component_191.html
version: "25.3"
title: "a!gridField\_19r1 Component"
page_id: "Paging_Grid_Component_191"
section: "Paging Grid"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!gridField\_19r1 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Read-Only Grid Component](/suite/help/25.3/Paging_Grid_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Paging_Grid_Component.html#Old_Version)

## Paging Grid

**Function**: `a!gridField_19r1()`

Displays read-only text, links, and images in a grid that supports selecting, sorting, and paging. To organize editable inputs in a tabular layout, use an [editable grid](Editable_Grid_Component.html).

**Parameters**

| Name | Keyword | Type | Description |
| --- | --- | --- | --- |
| Label | label | Text | Optional text to display as the field label. |
| Label Position | labelPosition | Text | Optional text to determine where the label appears. Valid values include
-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

 |
| Instructions | instructions | Text | Optional text that displays below the label. |
| Help Tooltip | helpTooltip | Text | Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`. |
| Total Count | totalCount | Integer | Total number of rows of data for all pages in the grid. |
| Empty Grid Message | emptyGridMessage | Text | Text to display in the grid when no data is available. Default is `"No items available".` |
| Columns | columns | Array of [Text Columns](Grid_Text_Column_Component.html) or [Image Columns](Grid_Image_Column_Component.html) | Holds an array of Text or Image columns that configure and define the data or links to display for each column in the grid. Configured using `a!gridTextColumn()` or `a!gridImageColumn()`. |
| Identifiers | identifiers | Text or Integer Array | Accepts an array of text or integers that are used to determine which rows are selected. |
| Paging and Selection Value | value | [PagingInfo](Appian_Data_Types.html#paginginfo) or [GridSelection](Grid_Selection_Component.html) | Holds the paging and sorting configurations for the grid as well as which rows in the grid should be selected. When defined with the variable configured in _Save Paging and Selection To_, it allows users to change the sort column, view another grid page, or select and deselect rows. When the type is GridSelection, checkboxes appear for each row if selection is enabled. When the type is PagingInfo, no checkboxes appear. |
| Save Paging and Selection To | saveInto | Save Array | One or more variables that are updated with the paging or grid selection configuration when the user pages, sorts, or changes the grid's selections. Use `a!save()` to save a modified or alternative value to a variable. |
| Selectable | selection | Boolean | Determines if the rows in the grid are selectable. Default is `false`. |
| Selection required | requireSelection | Boolean | Determines if a selection is required to submit the form. Default is `false`. |
| Required Message | requiredMessage | Text | Custom message to be displayed when a selection is required and not provided. |
| Disabled | disabled | Boolean | Determines if the user is prevented from changing which rows are selected. Default is `false`. |
| Validations | validations | Text Array | Validation errors to be displayed below the field when the value is not null. |
| Validation Group | validationGroup | Text | When present, this field is only validated when a button in the same validation group is clicked. |
| Visibility | showWhen | Boolean | Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true. |
| Spacing | spacing | Text | Determines the spacing within grid cells. Valid values: `"STANDARD"` (default), `"DENSE"`. |
| Height | height | Text | Determines the height of the grid. Valid values: `“SHORT”`, `“MEDIUM”`, `“TALL”`, `“AUTO”` (default). When set to `SHORT`, `MEDIUM`, or `TALL`, the header is frozen. |
| Border Style | borderStyle | Text | Determines the style of the grid border. Valid values: `"STANDARD"` (default), `"LIGHT"`. |
| Shade Alternate Rows | shadeAlternateRows | Boolean | Determines whether alternate rows are shaded. Default: true. |
| Selection Style | selectionStyle | Text | Determines the style when a row is selected. Valid values: `"CHECKBOX"` (default), `"ROW_HIGHLIGHT"`. |
| Row Header | rowHeader | Integer | Index of the column to be used as the row header. Screen readers will announce the value in each row header when navigating to other cells within that row. Used only for accessibility; produces no visible change. |

**Configuration Notes**

-   The paging grid requires certain configurations to render properly. It errors under the following conditions:
    -   The _columns_ and _value_ parameters are null or empty
    -   The _batchSize_ in _Paging and Selection Value_ is less than the length of the _data_ array in any column
    -   The _startIndex_ in _Paging and Selection Value_ is greater than the _totalCount_ value
    -   The length of the _data_ array in any column is null or less than the _totalCount_ value
-   Interacting with the grid produces a value of type PagingInfo that is then saved in your _Save Paging and Selection To_ parameter. This is used to refresh and render the grid accordingly.
-   Passing a local variable with the `load()` function to the _Value_ parameter and passing the same local variable to the _Save Paging and Selection To_ parameter allows for re-evaluation of the expression. Re-evaluation occurs when users click a column to change the sorting or navigate to another page of the grid.
-   When using a datasubset obtained using _a!queryEntity()_ as the source of data for the paging grid, make sure to set its _fetchTotalCount_ parameter to `true`. Otherwise, the `totalCount` field on the resulting datasubset may be invalid (i.e. set to -1). See also: [a!queryEntity() Function](fnc_system_a_queryentity.html).
-   For accessibility purposes, every grid should have a row header configured. The first column containing text is usually the correct choice for row header. See the [SAIL Design System](sail/ux-grids.html#accessibility) for more information.

**Display Notes**

-   To reduce clutter on smaller grids, the following happens:
    -   No paging controls are displayed when the grid has 5 or fewer rows and all rows are on one page.
    -   Paging controls to jump to the first or last page are not displayed when a grid has 100 or fewer total items.
-   The order of items in _Columns_ determines the order of the columns. The order of items in the _Data_ array in each column determines the default order of the data.
-   Spaces and line breaks are supported within a column’s _Data_ values but not its _Label_ values.
-   If the _Data_ value for a column is empty or null, the grid still renders the column with just the label.
-   Each column’s width is determined by the length of the longest value in that column. If the total width is wider than the page or column containing the grid, a horizontal scroll bar displays for users to view the remaining data.
-   Paging and sorting do not function and images do not render when this component is used offline.
-   Grid heights behave as a fixed height on web but a maximum height on mobile.
-   Setting the height of the grid to `SHORT`, `MEDIUM`, or `TALL` will freeze the grid's header and footer. See the [Short Two-Column Grid with Process Task Links](#short-two-column-grid-with-process-task-links) example below.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Grid Showing Static Columns

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
    =a!gridField_19r1(
      label: "Employees",
      totalCount: 5,
      columns: {
        a!gridTextColumn(
          label: "Name",
          data: {"John Smith", "Michael Johnson", "Mary Reed", "Angela Cooper", "Elizabeth Ward"},
          alignment: "LEFT"
        ),
        a!gridTextColumn(
          label: "Title",
          data: {"Director", "Analyst", "Software Engineer", "Sales", "Sales"},
          alignment: "LEFT"
        ),
        a!gridTextColumn(
          label: "Department",
          data: {"Engineering", "Finance", "Engineering", "Sales", "Sales"},
          alignment: "LEFT"
        )
      },
      value: a!pagingInfo(
        startIndex: 1,
        batchSize: 5,
        sort: a!sortInfo(
          field: "name",
          ascending: true
        )
      ),
      rowHeader: 1
    )
```

Displays the following:

![](images/Grid_simple_75.png)

### Single-Column Grid with Paging/Sorting

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
    =load(
      local!pagingInfo: a!pagingInfo(startIndex: 1, batchSize: 5, sort: a!sortInfo(field: "label", ascending: true)),
      local!sampleData: {
        type!LabelValue(label: "John Smith"),
        type!LabelValue(label: "Michael Johnson"),
        type!LabelValue(label: "Mary Reed"),
        type!LabelValue(label: "Angela Cooper"),
        type!LabelValue(label: "Elizabeth Ward"),
        type!LabelValue(label: "Daniel Lewis"),
        type!LabelValue(label: "Paul Martin"),
        type!LabelValue(label: "Jessica Peterson"),
        type!LabelValue(label: "Mark Hall"),
        type!LabelValue(label: "Rebecca Wood")
      },
      with(
        local!datasubset: todatasubset(local!sampleData, local!pagingInfo),
        local!dataForCurrentPage: local!datasubset.data,
        a!gridField_19r1(
          label: "Employees",
          instructions: local!pagingInfo,
          totalCount: local!datasubset.totalCount,
          columns: {
            a!gridTextColumn(
              label: "Name",
              field: "label",
              data: index(local!dataForCurrentPage, "label", null),
              alignment: "LEFT"
            )
          },
          value: local!pagingInfo,
          saveInto: local!pagingInfo
        )
      )
    )
```

Displays the following:

![](images/Grid_complex_75.png)

**Note:**  If you sort or page through this example, you’ll notice the instructions change. We’ve configured this value as `local!pagingInfo` to show how the `pagingInfo` value changes each time the expression is re-evaluated.

### Single-Column Grid with Static Links

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
    =a!gridField_19r1(
      totalCount: 4,
      columns: {
        a!gridTextColumn(
          label: "Company Information",
          data:{
            "Company Website",
            "LinkedIn",
            "Twitter",
            "Facebook"
          },
          links: {
            a!safeLink(uri: "http://www.appian.com"),
            a!safeLink(uri: "http://www.linkedin.com/company/appian-corporation"),
            a!safeLink(uri: "https://twitter.com/appian"),
            a!safeLink(uri: "https://www.facebook.com/AppianCorporation")
          },
          alignment: "LEFT"
        )
      },
      value: a!pagingInfo(
        startIndex: 1,
        batchSize: 4,
        sort: a!sortInfo(
          field: "name",
          ascending: true
        )
      )
    )
```

Displays the following:

![](images/Gridlink_onecol_75.png)

### Short Two-Column Grid with Process Task Links

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
      =load(
      local!pagingInfo: a!pagingInfo(startIndex: 1, batchSize: -1, sort: a!sortInfo(field: "label", ascending: true)),
      local!sampleData: {
        type!LabelValue(label: "Smith, John"),
        type!LabelValue(label: "Johnson, Michael"),
        type!LabelValue(label: "Reed, Mary"),
        type!LabelValue(label: "Cooper, Angela"),
        type!LabelValue(label: "Ward, Elizabeth"),
        type!LabelValue(label: "Garcia, Emilia"),
        type!LabelValue(label: "Klein, Raphael")
      },
      with(
        local!dataForCurrentPage: todatasubset(local!sampleData, local!pagingInfo).data,
        a!gridField_19r1(
          totalCount: length(local!sampleData),
          columns: {
            a!gridTextColumn(
              label: "Name",
              field: "label",
              data: local!dataForCurrentPage.label,
              alignment: "LEFT"
            ),
            a!gridTextColumn(
              label: "Open Task",
              data: {
                "Expense Approval",
                "Expense Approval",
                "Timesheet Approval",
                "Timesheet Approval",
                "Expense Approval",
                "Timesheet Approval",
                "Timesheet Approval",
              },
              links:{
                a!processTaskLink(task: 1382),
                a!processTaskLink(task: 1377),
                a!processTaskLink(task: 536870918),
                a!processTaskLink(task: 268436948),
                a!processTaskLink(task: 1383),
                a!processTaskLink(task: 268439975),
                a!processTaskLink(task: 1388),
              },
              alignment: "LEFT"
            )
          },
          value: local!pagingInfo,
          saveInto: local!pagingInfo,
          height: "SHORT"
        )
      )
    )
```

Displays the following:

![](images/gridLink_twocol.gif)

### Paging Grid with Row Selection

**Tip:**  This recipe uses an employee data structure and objects created through the [Use the Write to Data Store Entity Smart Service Function on an Interface](recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) recipe. Make sure that recipes has been built first in order to see data in this example.

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
=load(
  /* Set the default paging and sorting config */
  local!gridSelection: a!gridSelection(
    selected: {},
    pagingInfo: a!pagingInfo(
      startIndex: 1,
      batchSize: 10,
      sort: a!sortInfo(
        field: "lastName",
        ascending: true
      )
    )
  ),
  with(
    local!datasubset: a!queryEntity(
      entity: cons!EMPLOYEE_ENTITY,
      query: a!query(
        selection: a!querySelection(
          columns: {
            a!queryColumn(
              field: "firstName"
            ),
            a!queryColumn(
              field: "lastName"
            ),
            a!queryColumn(
              field: "title"
            )
          }
        ),
        pagingInfo: local!gridSelection.pagingInfo
      ),
	  fetchTotalCount: true
    ),
    a!sectionLayout(
      contents: {
        a!gridField_19r1(
          label: "SAIL Example: Employee Grid Selection",
          totalCount: local!datasubset.totalCount,
          columns: {
            a!gridTextColumn(
              label: "First",
              field: "firstName",
              data: index(
                local!datasubset.data,
                "firstName",
                {}
              )
            ),
            a!gridTextColumn(
              label: "Last",
              field: "lastName",
              data: index(
                local!datasubset.data,
                "lastName",
                {}
              )
            ),
            a!gridTextColumn(
              label: "Title",
              field: "title",
              data: index(
                local!datasubset.data,
                "title",
                {}
              )
            )
          },
          identifiers: local!datasubset.identifiers,
          value: local!gridSelection,
          saveInto: {
            local!gridSelection
          },
          rowHeader: 1,
          selection: true,
          shadeAlternateRows: false,
          selectionStyle: "ROW_HIGHLIGHT"
        ),
        a!textField(
          label: "Selected Employee IDs",
          readOnly: true,
          value: if(
            length(
              local!gridSelection.selected
            ) = 0,
            "No employees selected",
            joinarray(
              local!gridSelection.selected,
              ", "
            )
          )
        )
      }
    )
  )
)
```

Displays the following:

![](images/grid_row_selection_example.png)

## See Also

[Tempo Report Design Best Practices](Tempo_Report_Design.html#design-best-practices): Includes best practices for configuring a grid on a Tempo report for optimal performance and usability.

[SAIL Design System: Grids](sail/ux-grids.html): Includes UX best practices for designing grids.

[Grid Tutorial](Grid_Tutorial.html): Details the steps for creating a Tempo report using a grid component that shows data queried from an external database and allows for sorting and paging.

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

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
| Process Events | Incompatible |

Cannot be used to configure a process event node, such as a start event or timer event.

 |
| Process Autoscaling | Incompatible |

Cannot be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...