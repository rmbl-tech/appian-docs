---
source_url: https://docs.appian.com/suite/help/25.3/Column_Layout.html
original_path: Column_Layout.html
version: "25.3"
title: "Column Layout"
page_id: "Column_Layout"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Column Layout

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

**a!columnLayout**( _contents, width, showWhen_ )

Displays a column that can be used within the [columns layout](Columns_Layout.html).

**See also**:

-   [Columns](Columns_Layout.html)
-   [Columns and Side By Side design guidance](sail/ux-columns-and-side-by-side.html)
-   [Columns layout design guidance](sail/ux-columns-layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Contents

 |

`contents`

 |

_Any Type_

 |

Values that define the interface components for a column.

 |
|

Width

 |

`width`

 |

_Text_

 |

Determines the width of the column. Valid values: `"AUTO"` (default), `"EXTRA_NARROW"`, `"NARROW"`, `"NARROW_PLUS"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"WIDE"`, `"WIDE_PLUS"`, `"1X"`, `"2X"`, `"3X"`, `"4X"`, `"5X"`, `"6X"`, `"7X"`, `"8X"`, `"9X"`, `"10X"`.

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

## Usage considerations

### Using the contents parameter

-   The following layouts are not supported in the contents parameter: form layout, header content layout, and column layout. All other layouts can be used, including columns layout.

### Column widths

Use the _width_ parameter to set the width of each column. See the [SAIL Design System](sail/ux-columns-layout.html#usage) for guidance on choosing between column widths.

Valid values are:

-   "AUTO" (Default)
-   Relative widths: "1X", "2X", "3X", "4X", "5X", "6X", "7X", "8X", "9X", "10X".
-   Fixed widths: "EXTRA\_NARROW", "NARROW", "NARROW\_PLUS", "MEDIUM", "MEDIUM\_PLUS", "WIDE", "WIDE\_PLUS".

#### Auto width

The "AUTO" column width distributes the space evenly across all columns. As you resize the screen, the columns will remain distributed evenly.

![resizing auto column width gif](images/columns_layout_auto_resize.gif)

#### Relative widths

Relative column widths are always proportional to other columns in the same columns layout. If there is only one column in a columns layout and it is set it to a relative width, it would take up the entire width because there isn't another column to compare it to.

Relative widths are always a multiple of "1X". If you have two columns and one uses "2X" and the other uses "3X", you could imagine the columns being split into five sections. The "2X" column takes up 2/5 of the space, and the "3X" column takes up 3/5 of the space.

![relative column width example](images/columns_layout_relative.png)

As you resize the screen, columns with a relative width will maintain the same proportions.

![resizing relative column widths gif](images/columns_layout_relative_resize.gif)

#### Fixed widths

As long as they have enough room on the screen, fixed column widths will always maintain the same pixel width.

[![fixed column width example](images/columns_layout_fixed.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img54)

[![](images/columns_layout_fixed.png)](#_)

If their combined width takes up more than the width of the screen, they will size down appropriately.

![](images/columns_layout_fixed_resize.gif)

_In this example, the "WIDE\_PLUS" columns will almost always be wider than the "MEDIUM" column. But none of them will be as wide as their default width when the screen is wide enough to use their full width._

#### Combining column width types

##### Fixed and relative column widths

If you use fixed column widths and relative column widths in the same columns layout, the fixed width applies first. The relative columns split the remaining space.

![](images/columns_layout_fixed_relative.png)

_In this example, the "NARROW\_PLUS" and "MEDIUM" columns will first take up the specified amount of space. The "1X" and "3X" columns will take up 1/4 and 3/4 of the remaining space, respectively._

If the screen is resized, the fixed column widths will maintain their size for as long as possible. The relative column widths will maintain their proportion to each other in the remaining space.

![resizing fixed column width gif](images/columns_layout_fixed_relative_resize.gif)

##### Auto column widths

If used with relative column widths, "AUTO" column widths are equal to "1X".

If used with fixed column widths, "AUTO" column widths will take up the remaining space on the page.

### Async loading placeholder

If this component relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.ÏÏ˝

## Examples

### Single column

Use the interactive editor below to test out the example code.

### Relative column width: aligning columns across rows

This example has three columns on the top row and two columns on the bottom row. The columns on the top row each take up 1/3 of the space and the columns on the bottom take up 1/3 and 2/3 of the space.

![column layout relative width example](images/column_layout_relative_example.png)

To do this, create two rows with the same number of columns. Use the same relative column widths for each row. This ensures that the margins will line up.

![relative_column_width_spacing_step1.png](images/relative_column_width_spacing_step1.png)

Then, for the column on the top row that lines up with the longer column on the bottom row, nest an `a!columnsLayout()` to split the space into to more columns.

![relative_column_width_spacing_finalstep.png](images/relative_column_width_spacing_finalstep.png)

Copy and paste the example into an Appian Expression Editor to experiment with it.

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
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
{a!columnsLayout(
    columns: {
      a!columnLayout(
        width: "1X",
        contents: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!cardLayout(
                    height: "AUTO",
                    style: "NONE",
                    marginBelow: "STANDARD",
                    contents: {
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(text: "Energy Consumption", color: "SECONDARY"),
                          char(10),
                          a!richTextItem(text: "3,415", size: "LARGE", style: "STRONG")
                        }
                      )
                    }
                  )
                }
              )
            }
          )
        }
      ),
      a!columnLayout(
        width: "2X",
        contents: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!cardLayout(
                    height: "AUTO",
                    style: "NONE",
                    marginBelow: "STANDARD",
                    contents: {
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(text: "Transportation", color: "SECONDARY"),
                          char(10),
                          a!richTextItem(text: "3,415", size: "LARGE", style: "STRONG"
                          )
                        }
                      )
                    }
                  )
                }
              ),
              a!columnLayout(
                contents: {
                  a!cardLayout(
                    height: "AUTO",
                    style: "NONE",
                    marginBelow: "STANDARD",
                    contents: {
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(text: "Waste", color: "SECONDARY"),
                          char(10),
                          a!richTextItem(text: "3,415", size: "LARGE", style: "STRONG")
                        }
                      )
                    }
                  )
                }
              )
            }
          )
        }
      )
    }
  ),
  a!columnsLayout(
    columns: {
      a!columnLayout(
        width: "1X",
        contents: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!cardLayout(
                    height: "AUTO",
                    style: "NONE",
                    marginBelow: "STANDARD",
                    contents: {
                      a!pieChartField(
                        label: "Emissions by Category",
                        labelPosition: "ABOVE",
                        series: {
                          a!chartSeries(label: "Energy", data: 314),
                          a!chartSeries(label: "Transportation", data: 219),
                          a!chartSeries(label: "Waste", data: 89)
                        },
                        colorScheme: "RAINFOREST",
                        style: "DONUT",
                        seriesLabelStyle: "ON_CHART",
                        height: "MEDIUM"
                      )
                    }
                  )
                }
              )
            }
          )
        }
      ),
      a!columnLayout(
        width: "2X",
        contents: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!cardLayout(
                    height: "AUTO",
                    style: "NONE",
                    marginBelow: "STANDARD",
                    contents: {
                      a!areaChartField(
                        label: "Emissions over Time",
                        labelPosition: "ABOVE",
                        categories: {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"},
                        series: {
                          a!chartSeries(
                            label: "Energy",
                            data: {29.8, 28, 24.9, 21.5, 27.4, 27.2, 22.1, 29.9, 25.6, 26.4, 23.1, 25.3}
                          ),
                          a!chartSeries(
                            label: "Transportation",
                            data: {15.2, 19.8, 17.1, 16.7, 18.8, 15, 19.5, 19.4, 16.9, 16.7, 15.3,16.6
                            }
                          ),
                          a!chartSeries(
                            label: "Waste",
                            data: {7.1, 6.2, 7.1, 7.6, 7.9, 7.6, 6, 7.9, 6.5, 6.3, 6.6, 6.4
                            }
                          )
                        },
                        xAxisTitle: "2021",
                        yAxisTitle: "MTCO2e",
                        stacking: "NONE",
                        showLegend: true,
                        showTooltips: true,
                        colorScheme: "RAINFOREST",
                        height: "MEDIUM"
                      )
                    }
                  )
                }
              )
            }
          )
        }
      )
    }
  )
}
```

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

The following patterns include usage of the Column Layout.

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