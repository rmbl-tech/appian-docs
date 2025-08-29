---
source_url: https://docs.appian.com/suite/help/25.3/Columns_Layout.html
original_path: Columns_Layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Columns Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-columns-layout.html">SAIL Design System guidance available for Columns Layout</a><p class="ds-release-notice-p">When you need greater flexibility and control over the width of certain sections on your interface, use the columns layout. Learn how to use different column widths and configurations to bring greater balance to your content arrangements.</p></td></tr></tbody></table>

## Function

**a!columnsLayout**( _columns, alignVertical, showWhen, marginBelow, stackWhen, showDividers, spacing, marginAbove_ )

Displays any number of columns alongside each other. On narrow screens and mobile devices, columns are stacked.

**See also**:

-   [Responsive Design](responsive_design.html)
-   [Columns and Side By Side design guidance](sail/ux-columns-and-side-by-side.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Columns

 |

`columns`

 |

_Any Type_

 |

Columns to display using a [column layout](Column_Layout.html), `a!columnLayout()`.

 |
|

Vertical Alignment

 |

`alignVertical`

 |

_Text_

 |

Determines vertical alignment of all column content with the layout. Valid values are `"TOP"` (default), `"MIDDLE"`, and `"BOTTOM"`.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the layout is displayed on the interface. When set to false, the layout is hidden and is not evaluated. Default: true.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the layout. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |
|

Stack When

 |

`stackWhen`

 |

_List of Text_

 |

Determines the window width at which column layouts stack vertically. List all widths where columns should stack. Valid Values: `"PHONE"` (default), `"TABLET_PORTRAIT"`, `"TABLET_LANDSCAPE"`,`"DESKTOP"`, `"DESKTOP_WIDE"`, `"NEVER"`.

 |
|

Show Dividers

 |

`showDividers`

 |

_Boolean_

 |

Determines whether dividers appear between the columns. Default: false.

 |
|

Column Spacing

 |

`spacing`

 |

_Text_

 |

Determines the space between columns in the layout when they are not stacked. Valid values: `“STANDARD”` (default), `“NONE”`, `“DENSE”`, `“SPARSE”`.

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the layout. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |

## Usage considerations

### Async loading placeholder

If this component relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.ÏÏ˝

### Appian Mobile considerations

On mobile phones, columns are stacked by default.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Three columns within one columns layout

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
a!columnsLayout(
  columns: {
    a!columnLayout(
      contents: {
        a!textField(
          label: "Customer",
          value: "Jane Doe",
          readOnly: true
        ),
        a!textField(
          label: "Status",
          value: "Active",
          readOnly: true
        ),
        a!textField(
          label: "Priority",
          value: "High",
          readOnly: true
        )
      }
    ),
    a!columnLayout(
      contents: {
        a!textField(
          label: "Customer",
          value: "John Smith",
          readOnly: true
        ),
        a!textField(
          label: "Status",
          value: "Prospective",
          readOnly: true
        ),
        a!textField(
          label: "Priority",
          value: "High",
          readOnly: true
        )
      }
    ),
    a!columnLayout(
      contents: {
        a!textField(
          label: "Customer",
          value: "Michael Johnson",
          readOnly: true
        ),
        a!textField(
          label: "Status",
          value: "Prospective",
          readOnly: true
        ),
        a!textField(
          label: "Priority",
          value: "Medium",
          readOnly: true
        )
      }
    )
  }
)
```

Displays the following:

![screenshot of three columns within one columns layouts](images/Columnslayout_simple_172.png)

### Columns layout nested in another columns layout

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
a!columnsLayout(
  columns: {
    a!columnLayout(
      contents: {
        a!textField(
          label: "Customer",
          value: "Jane Doe",
          readOnly: true
        ),
        a!textField(
          label: "Status",
          value: "Active",
          readOnly: true
        ),
        a!textField(
          label: "Priority",
          value: "High",
          readOnly: true
        )
      }
    ),
    a!columnLayout(
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Customer",
                  value: "John Smith",
                  readOnly: true
                ),
                a!textField(
                  label: "Status",
                  value: "Prospective",
                  readOnly: true
                ),
                a!textField(
                  label: "Priority",
                  value: "High",
                  readOnly: true
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Customer",
                  value: "Michael Johnson",
                  readOnly: true
                ),
                a!textField(
                  label: "Status",
                  value: "Prospective",
                  readOnly: true
                ),
                a!textField(
                  label: "Priority",
                  value: "Medium",
                  readOnly: true
                )
              }
            )
          }
        )
      }
    )
  }
)
```

Displays the following:

![screenshot of nested columns layouts](images/Columnslayout_nested_172.png)

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

## Related Patterns

The following patterns include usage of the Columns Layout.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Call to Action Pattern](/suite/help/25.3/call-to-action-pattern.html) (_Formatting_): Use the call to action pattern as a landing page when your users have a single action to take.

-   [Cards as Buttons Pattern](/suite/help/25.3/cards-as-buttons-pattern.html) (_Choice Components, Formatting, Conditional Display_): The cards as buttons pattern is a great way to prominently display a select few choices.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [Conditionally Hide a Column in a Grid](/suite/help/25.3/recipe-conditionally-hide-a-column-in-a-grid.html) (_Grids, Conditional Display_): Conditionally hide a column in a read-only grid when all data for that column is a specific value.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Dual Picklist Pattern](/suite/help/25.3/dual-picklist-pattern.html) (_Choice Components, Cards, Checkboxes, Buttons_): Use this pattern to view side-by-side lists and move items from one list to the other. The dual picklist is great for moving items from one state to another, like from active to inactive.

-   [Dynamic Inputs](/suite/help/25.3/dynamic-inputs-pattern.html) (_Inputs, Dynamic Links_): Use the dynamic inputs pattern to allow users to easily add or remove as many values as needed.

-   [Dynamically Show Sales by Product Category Compared to Total Sales](/suite/help/25.3/recipe-show-total-sales-compared-to-sales-per-category.html) (_Records, Reports, Charts, Filtering_): This pattern illustrates how to create an area chart that dynamically displays sales generated by product category compared to total sales.

-   [Event Timelines](/suite/help/25.3/event-timeline-pattern.html) (_Timeline, Events_): Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

-   [Form Steps](/suite/help/25.3/form-steps-pattern.html) (_Stamps_): Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces.

-   [Grid With Detail Pattern](/suite/help/25.3/grid-with-detail-pattern.html) (_Grids_): The grid with detail pattern allows users to select an item from a grid to see more details next to the grid.

-   [Grid with Heatmap Pattern](/suite/help/25.3/grid-with-heatmap-pattern.html) (_Grids_): Displays a grid with conditional formatting of background colors at different thresholds.

-   [Grid with Selection Pattern](/suite/help/25.3/grid-with-selection-pattern.html) (_Grids, Heading component_): This pattern is an example of good UX design for a grid that allows users to select items and easily view their selections when there are multiple pages of data. It also provides information on a common save behavior.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [Make a Component Required Based on a User Selection](/suite/help/25.3/recipe-make-a-component-required-based-on-a-user-selection.html) (_Validation_): Make a paragraph component conditionally required based on the user selection.

-   [Milestone Patterns](/suite/help/25.3/milestone_bar.html) (_Looping_): There are two options for milestone patterns which all display some form of a progress indicator to guide users through a series of steps.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Percentage of Online Sales](/suite/help/25.3/recipe-show-percentage-of-sales.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate the percent of sales generated from online orders and display it in a gauge component.

-   [Refresh Data After Executing a Smart Service](/suite/help/25.3/recipe-refresh-data-after-executing-a-smart-service.html) (_Auto-Refresh, Smart Services_):

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Searching on Multiple Columns](/suite/help/25.3/recipe-searching-on-multiple-fields.html) (_Grids, Filtering, Reports_): Display a grid populated based on search criteria specified by end users.

-   [Stamp Steps (Numbered)](/suite/help/25.3/stamp-steps-pattern.html) (_Stamps_): Use the stamp steps (numbered) pattern to show steps that require context or explanation.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Update an Entity-Backed Record Type from its Summary View](/suite/help/25.3/recipe-update-an-entity-backed-record-from-its-summary-view.html) (_Records, Smart Services_): Enable users to make quick changes to a record by updating it right from a record view.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use the Gauge Fraction and Gauge Percentage Configurations](/suite/help/25.3/recipe-use-guage-fraction-and-percentage-configurations.html) (_Formatting, Reports_): This recipe provides a common configuration of the [Gauge Component](Gauge_Component.html) using [a!gaugeFraction()](Gauge_Fraction_Component.html) and [a!gaugePercentage()](Gauge_Percentage_Component.html), and includes a walkthrough that demonstrates the benefits of using design mode when configuring the gauge component.

-   [Year-Over-Year Sales Growth](/suite/help/25.3/recipe-show-sales-growth.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate year-over-year sales growth and display it in a KPI.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...