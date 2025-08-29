---
source_url: https://docs.appian.com/suite/help/25.3/Grid_Column_Component.html
original_path: Grid_Column_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Read-Only Grid Column Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-grids.html">SAIL Design System guidance available for Grids</a><p class="ds-release-notice-p">Grids should help your users take action and make decisions. Check out the grids design guidance page to learn how to display your data in a structured, easy-to-scan layout to help your users find what they need.</p></td></tr></tbody></table>

## Function

**a!gridColumn**( _label, sortField, helpTooltip, value, showWhen, align, width, backgroundColor, accessibilityText, exportWhen_ )

Displays a column of data as read-only text, links, images, rich text, buttons, tags, record actions, or progress bars within the [Read-Only Grid Component](Paging_Grid_Component.html).

When configuring the component, click **Display Options** after choosing a value.

![Grid column display options dialog](images/grid_column_display_options_202.png)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Label

 |

`label`

 |

_Text_

 |

Text to display as the column header.

 |
|

Sort Field

 |

`sortField`

 |

_Any Type_

 |

The field used to sort the grid when selecting this column header. Grids that use record data must use the `recordType!` domain to reference a record field or related record field. For example, `recordType!Case.fields.caseName`.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon in the column header with the specified text as a tooltip.

 |
|

Display Value

 |

`value`

 |

_Any Type_

 |

The value to display in each cell within the column. The value can be text, `a!imageField()`, `a!linkField()`, `a!richTextDisplayField()`, `a!tagField()`, `a!buttonArrayLayout()`, `a!recordActionField()`, or `a!progressBarField()`. It is evaluated once for each row.

Reference fields from the source using dot notation, such as `fv!row.status`, or the identifier using `fv!identifier`. Grids that use record data must use the `recordType!` domain to reference a record field or related record field. For example, `fv!row[recordType!Case.fields.caseName]`.

If you use [a!recordData()](fnc_system_recorddata.html) to populate your grid and you specify a _fields_ parameter, any field references that are not included in that parameter will be ignored.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the column is displayed in the grid. When set to `false`, the column is hidden and is not evaluated. Default: `true`.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines the alignment for the header label and all values within the column. Valid values: `"START"` (default), `"CENTER"`, `"END"`.

 |
|

Width

 |

`width`

 |

_Text_

 |

Determines the column width. Valid values: `"AUTO"`, `"ICON"`, `"ICON_PLUS"`, `"NARROW"`, `"NARROW_PLUS"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"WIDE"`, `"1X"`, `"2X"`, `"3X"`, `"4X"`, `"5X"`, `"6X"`, `"7X"`, `"8X"`, `"9X"`, and `"10X"`.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Determines the cell background color. To set the color based on the value of the cell, use `fv!row` and dot notation to reference the field (such as `fv!row.status`). Grids that use record data must use the `recordType!` domain to reference a record field or related record field. For example, `fv!row[recordType!Case.fields.status]`. Valid colors: Any valid hex color or hex color including transparency, or `"NONE"` (default), `"ACCENT"`, `"SUCCESS"`, `"INFO"`, `"WARN"`, `"ERROR"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Export When

 |

`exportWhen`

 |

_Boolean_

 |

Determines whether the column is displayed in the grid on export. When set to `false`, the column is hidden in the exported grid. If no value is provided, the value of the _showWhen_ parameter determines whether to export the column or not.

 |

## Usage considerations

### Using the value parameter

| If the _value_ parameter… | Then… |
| --- | --- |
| Is null or empty | The grid will render the column with only the label. |
| Is a relationship reference | The column will not display any data. Instead, reference a specific related record field in this parameter to display related data in a column. For example, `recordType!Order.relationships.customers.fields.fullName`. |

Avoid using a query directly in the _value_ parameter since it will cause the query to run for each row in the grid. Instead, you can use a records-powered grid to easily reference data from a record type and any of it's related record types.

### Using the width parameter

When you use the `"AUTO"` value, note that:

-   The width is determined by the length of the longest unbroken value in that column. For example, this could be the length of the longest word in a paragraph or the width of the widest image.
-   If you use `"ICON"` & `"AUTO"` widths together, the column using `"ICON"` will always be the same width and the column using `"AUTO"` will fill up the remaining space.
-   You should avoid using `"AUTO"` and weighted column widths (such as `"1X"`, `"2X"`, or `"3X"`) together.

If you use a fixed width (such as `"NARROW"` or `"MEDIUM"`) for a column that doesn't take up the width of the page, the width will auto distribute depending on the content inside the column.

For complete guidance on when and how to use column widths, see [Column Widths](sail/ux-grids.html#column-widths).

### Using the backgroundColor parameter

To conditionally format the background color, use a logical function like [a!match()](fnc_logical_match.html) to define the conditions and the color to display when the condition is met. See the [grid with heatmap pattern](grid-with-heatmap-pattern.html) for an example of a grid with conditionally formatted background colors. Note that header cells do not display a background color.

**Note:**  Background colors are not included when you export a grid to Excel. Instead, you can save the page as a PDF if you want to include the grid background colors and share it with users who don't have access to your app.

### Using the accessibilityText parameter

When you've configured a background color, you should also set equivalent _accessibilityText_ values for screen readers to announce. This way, your grid will be accessible to a wider range of users.

For example, say your grid shows product information and one column shows the average customer rating. You could set the column's _backgroundColor_ to be red, yellow, or green based on the value of that field. To indicate the meaning of these values to screen readers, add the _accessibilityText_ parameter with text to read when the same conditions are met.

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
a!gridColumn(
  label: "Average customer rating",
  backgroundColor: a!match(
    value: fv!row,
    whenTrue: fv!row <= 4,
    then: "NEGATIVE",
    whenTrue: fv!row <= 7,
    then: "WARN",
    whenTrue: fv!row >= 8,
    then: "SUCCESS"
    default: "NONE"),
  accessibilityText: a!match(
    value: fv!row,
    whenTrue: fv!row <= 4,
    then: "Poor",
    whenTrue: fv!row <= 7,
    then: "OK",
    whenTrue: fv!row >= 8,
    then: "Good",
    default: "No ratings")
```

The screen reader will announce the value of _label_, so you don't need to include the word `rating` in the _accessibilityText_ values.

### Using the exportWhen parameter

The _exportWhen_ parameter allows you to choose which columns are exported from a [records-powered grid](Paging_Grid_Component.html#using-records-powered-grids).

You can use this parameter to omit certain columns from export, like those containing formatting or styling unsupported by Microsoft Excel, and add additional columns that are only visible upon export.

For example, the expression below includes a column for "Status," which uses rich text icons to indicate whether a customer is active or inactive. Since [icons cannot be exported to Excel](Optimizing_Record_Lists_for_Export_to_Excel.html#exporting-rich-text), the column is hidden from export and an additional "Status" column is configured to export instead.

Similarly, the column containing record actions is also hidden from export, since users can't access the actions in Excel.

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
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
{
  a!gridField(
    label: "Read-only Grid",
    labelPosition: "ABOVE",
    data: recordType!Customer,
    columns: {
      a!gridColumn(
        label: "Name",
        sortField: recordType!Customer.fields.displayName,
        value: a!linkField(
          links: {
            a!recordLink(
              label: fv!row[recordType!Customer.fields.displayName],
              recordType: {
                recordType!Customer
              },
              identifier: fv!row[recordType!Customer.fields.id]
            )
          }
        )
      ),
      a!gridColumn(
        label: "District",
        sortField: recordType!Customer.relationships.district.fields.name,
        value: fv!row[Customer.relationships.district.fields.name]
        align: "START"
      ),
      a!gridColumn(
        label: "Status",
        sortField: recordType!Customer.fields.isActive,
        value: if(
          fv!row[recordType!Customer.fields.isActive],
          a!richTextDisplayField(
            label: "active icon",
            labelPosition: "COLLAPSED",
            value: a!richTextIcon(
              icon: "check-circle",
              color: "POSITIVE"
            )
          ),
          a!richTextDisplayField(
            label: "inactive icon",
            labelPosition: "COLLAPSED",
            value: a!richTextIcon(
              icon: "times-circle",
              color: "SECONDARY"
            )
          )
        ),
    /* Hide this column from export since */
    /* rich text icons cannot be exported to Excel */
        exportWhen: false
      ),
      a!gridColumn(
        label: "Status",
        value: if(
          fv!row[recordType!Customer.fields.isActive],
          "Active",
          "Inactive"
        ),
    /* Hide this column from the app, but */
    /* export this column to show customer status */
        showWhen: false,
        exportWhen: true
      ),
      a!gridColumn(
        label: "YTD Payment",
        sortField: recordType!Customer.fields.ytdPayment,
        value: if(
          isnull(
            fv!row[recordType!Customer.fields.ytdPayment]
          ),
          "-",
          fixed(
            fv!row[recordType!Customer.fields.ytdPayment],
            2
          )
        ),
        align: "END"
      ),
      a!gridColumn(
        label: "# Payments",
        sortField: recordType!Customer.fields.paymentCount,
        value: fv!row[recordType!Customer.fields.paymentCount],
        align: "END"
      ),
      a!gridColumn(
        label: "# Deliveries",
        sortField: recordType!Customer.fields.deliveryCount,
        value: fv!row[recordType!Customer.fields.deliveryCount],
        align: "END"
      ),
      a!gridColumn(
        label: "Customer Since",
        sortField: recordType!Customer.fields.customerSince,
        value: if(
          isnull(
            fv!row[recordType!Customer.fields.customerSince]
          ),
          "-",
          datetext(
            fv!row[recordType!Customer.fields.customerSince],
            "default"
          )
        ),
        align: "END"
      ),
      a!gridColumn(
        label: "",
        value: a!recordActionField(
           actions:{
             a!recordActionItem(
               action: recordType!Customer.actions.updateCustomer,
               identifier: fv!identifier
             ),
             a!recordActionItem(
               action: recordType!Customer.actions.deleteReCustomer,
               identifier: fv!identifier
             )
           },
           style: "MENU_ICON"
         ),
      /* Hide this column from export since */
      /* record actions aren't needed upon export */
         exportWhen: false
      )
    },
    showExportButton: true,
    validations: {},
    refreshAfter: "RECORD_ACTION",
    showSearchBox: true,
    showRefreshButton: true,
  )
}
```

## Examples

You can find example configurations of a read-only grid and its columns at [Configuring the Read-Only Grid](read-only-grid-configuration.html) and [Grid Tutorial](Grid_Tutorial.html).

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!gridTextColumn](/suite/help/25.3/Grid_Text_Column_Component.html) |
Now supports multiple interface components.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Read-Only Grid Column Component.

-   [Aggregate Data and Conditionally Display in a Chart or Grid](/suite/help/25.3/recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) (_Reports, Charts, Query Data, Grids, Records_): Aggregate data and conditionally display it in a pie chart or grid. In this pattern, we will calculate the total number of employees in each department and display it in a pie chart and a read-only grid. Then, we'll use a link field to conditionally display each component.

-   [Conditionally Hide a Column in a Grid](/suite/help/25.3/recipe-conditionally-hide-a-column-in-a-grid.html) (_Grids, Conditional Display_): Conditionally hide a column in a read-only grid when all data for that column is a specific value.

-   [Configure a Chart Drilldown to a Grid](/suite/help/25.3/recipe-configure-a-chart-drilldown-to-a-grid.html) (_Charts, Grids, Query Data, Records_): Displays a column chart with aggregate data from a record type and conditionally shows a grid with filtered records when a user selects a column on the chart.

-   [Configure a Chart to Grid Toggle](/suite/help/25.3/recipe-configure-a-chart-to-grid-toggle.html) (_Charts, Grids_): Display a column chart with a toggle to display an alternate grid view of the data.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Delete Rows in a Grid](/suite/help/25.3/recipe-delete-rows-in-a-grid.html) (_Grids_): Delete one or more rows of data in a read-only grid.

-   [Display Last Refresh Time](/suite/help/25.3/recipe-display-last-refresh-time.html) (_Auto-Refresh, Grids, Records_): Display the last time the interface was updated, either based on a user interaction or a timer.

-   [Display Processes by Process Model with Status Icons](/suite/help/25.3/recipe-display-processes-by-process-model-with-status-icons.html) (_Grids, Images, Reports_): Use an interface to display information about instances of a specific process model.

-   [Display a User's Tasks in a Grid With Task Links](/suite/help/25.3/recipe-display-a-users-tasks-in-a-grid-with-task-links.html) (_Grids, Reports, Looping_): Display the tasks for a user in a Read-Only Grid and allow them to click on a task to navigate to the task itself.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [Grid With Detail Pattern](/suite/help/25.3/grid-with-detail-pattern.html) (_Grids_): The grid with detail pattern allows users to select an item from a grid to see more details next to the grid.

-   [Grid with Heatmap Pattern](/suite/help/25.3/grid-with-heatmap-pattern.html) (_Grids_): Displays a grid with conditional formatting of background colors at different thresholds.

-   [Grid with Selection Pattern](/suite/help/25.3/grid-with-selection-pattern.html) (_Grids, Heading component_): This pattern is an example of good UX design for a grid that allows users to select items and easily view their selections when there are multiple pages of data. It also provides information on a common save behavior.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [More-Less Link](/suite/help/25.3/more-less.html) (_Grids, Rich Text_): Use this pattern to keep grids with rows containing varying text lengths looking clean and uniform. This design also improves readability and the user experience by limiting the amount of text in the interface.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Refresh Data Using a Refresh Button](/suite/help/25.3/recipe-refresh-data-using-a-refresh-button.html) (_Auto-Refresh_):

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Searching on Multiple Columns](/suite/help/25.3/recipe-searching-on-multiple-fields.html) (_Grids, Filtering, Reports_): Display a grid populated based on search criteria specified by end users.

-   [Show Calculated Columns in a Grid](/suite/help/25.3/recipe-show-calculated-columns-in-a-grid.html) (_Formatting, Grids, Records_): Display calculated values in columns in a grid.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use the Write to Data Store Entity Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) (_Smart Services, Grids, Looping_): Allow the user to publish several rows of data to a table through the a!writeToDataStoreEntity() smart service function.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...