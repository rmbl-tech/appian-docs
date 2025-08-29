---
source_url: https://docs.appian.com/suite/help/25.3/Section_Layout.html
original_path: Section_Layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Section Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-section-layout.html">SAIL Design System guidance available for Section Layout</a><p class="ds-release-notice-p">The arrangement of the information on your interface will be a determining factor in the usability and usefulness of your design. Learn how to use sections to visually group the related parts of your interface.</p></td></tr></tbody></table>

## Function

**a!sectionLayout**( _label, contents, validations, validationGroup, isCollapsible, isInitiallyCollapsed, showWhen, divider, marginBelow, accessibilityText, labelIcon, iconAltText, labelSize, labelHeadingTag, labelColor, dividerColor, dividerWeight, marginAbove_ )

This layout requires Appian for Mobile Devices version 17.2 or later. Displays any arrangement of layouts and components beneath a section title on an interface.

**See also**:

-   [Dashboard](Dashboard_Layout.html)
-   [Form](Form_Layout.html)
-   [Columns](Columns_Layout.html)
-   [Section Layout design guidance](sail/ux-section-layout.html)

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

Text to display as the section's title.

 |
|

Contents

 |

`contents`

 |

_Any Type_

 |

Components and layouts to display in the section body.

 |
|

Validations

 |

`validations`

 |

_List of Variant_

 |

Validation errors to display above the section.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text_

 |

When present, the requiredness of the field is only evaluated when a button in the same validation group is pressed. The value for this parameter cannot contain spaces. For example, `“validation group”` is not a valid value. You need to add an underscore between words: `“validation_group”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

 |
|

Collapsible

 |

`isCollapsible`

 |

_Boolean_

 |

Determines if an expand/collapse control appears in the section label. Default is false.

 |
|

Initially Collapsed

 |

`isInitiallyCollapsed`

 |

_Boolean_

 |

Determines if the section is collapsed when the interface first loads. Default is false.

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

Divider Line

 |

`divider`

 |

_Text_

 |

Determines where a divider appears within the section. Valid values: `"NONE"` (default), `"ABOVE"`, `"BELOW"`.

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

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Label Icon

 |

`labelIcon`

 |

_Text_

 |

Icon to display next to the label. For a list of icons, see [Appian Icons](Appian_Icons.html#standard-icons).

In the component configuration pane, you can click **SUGGEST ICON** to use AI to suggest an icon based on the _label_ parameter. If the _label_ parameter isn't a simple text string, this option is disabled.

 |
|

Icon Alternative Text

 |

`iconAltText`

 |

_Text_

 |

Equivalent alternate text for use by screen readers.

 |
|

Label Size

 |

`labelSize`

 |

_Text_

 |

Determines the label size. Valid values: `"LARGE_PLUS"`, `"LARGE"`, `"MEDIUM_PLUS"`, `"MEDIUM"` (default), `"SMALL"`, `"EXTRA_SMALL"`.

 |
|

Accessibility Heading Tag

 |

`labelHeadingTag`

 |

_Text_

 |

Determines the heading tag associated with the label for use by screen readers; produces no visible change. Valid values: `"H1"`, `"H2"`, `"H3"`, `"H4"`, `"H5"`, `"H6"`. The default is dependent on the chosen label size. For more information on header tags, see our [header accessibility guidance](sail/ux-accessibility.html#use-accessible-headers).

 |
|

Label Color

 |

`labelColor`

 |

_Text_

 |

Determines the label color. Valid values: Any valid hex color or `"ACCENT"` (default), `"STANDARD"`, `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`.

 |
|

Divider Color

 |

`dividerColor`

 |

_Text_

 |

Determines the divider line color. Valid values: Any valid hex color or hex color including transparency, or `"SECONDARY"` (default), `"STANDARD"`, `"ACCENT"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Divider Weight

 |

`dividerWeight`

 |

_Text_

 |

Determines the divider line thickness. Valid values: `"THIN"` (default), `"MEDIUM"`, `"THICK"`.

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

### Validations

-   Sections that contain validation messages are not collapsible regardless of the _collapsible_ parameter's value. For example, if a validation is triggered when the form loads, then that section is expanded even if you have specified `true` for the _isInitiallyCollapsed_ parameter.
-   If you have nested section layouts, any validations on an inner section will also appear in the outer section.

### Section headers

The _labelHeadingTag_ parameter allows you to add a descriptive tag to a section heading so that screen readers can more easily convey page structure to the user. For more information and examples, see our design guidance on [Accessible Headers](sail/ux-accessibility.html#use-accessible-headers).

### Async loading placeholder

If this component relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.ÏÏ˝

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Two columns within one section

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
a!sectionLayout(
  label: "Customers for Review",
  labelHeadingTag: "H1",
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
```

Displays the following:

![screenshot of two columns in a section layout](images/Sectionlayout_simple_75.png)

### Nested sections

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
{
  a!sectionLayout(
    label: "Patient Profile",
    labelSize: "LARGE",
    labelHeadingTag: "H1",
    labelColor: "STANDARD",
    contents: {
      a!sectionLayout(
        label: "Personal Details",
        labelHeadingTag: "H2",
        contents: {
          a!columnsLayout(
            columns: {
              a!columnLayout(
                contents: {
                  a!sectionLayout(
                    label: "Contact Information",
                    labelSize: "SMALL",
                    labelHeadingTag: "H3",
                    labelColor: "SECONDARY",
                    contents: {
                      a!textField(
                        label: "Name",
                        labelPosition: "ADJACENT",
                        value: "Katherine Johnson",
                        readOnly: true
                      ),
                      a!textField(
                        label: "Phone",
                        labelPosition: "ADJACENT",
                        value: "(202) 555-7513",
                        readOnly: true
                      )
                    }
                  )
                }
              ),
              a!columnLayout(
                contents: {
                  a!sectionLayout(
                    label: "Work Information",
                    labelSize: "SMALL",
                    labelHeadingTag: "H3",
                    labelColor: "SECONDARY",
                    contents: {
                      a!textField(
                        label: "Position",
                        labelPosition: "ADJACENT",
                        value: "Full-time remote",
                        readOnly: true
                      ),
                      a!textField(
                        label: "Department",
                        labelPosition: "ADJACENT",
                        value: "Information Technology",
                        readOnly: true
                      )
                    }
                  )
                }
              )
            }
          ),
          a!sectionLayout(
            label: "COVID-19 Health Information",
            labelHeadingTag: "H2",
            contents: {
              a!columnsLayout(
                columns: {
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "Vaccination Status",
                        labelSize: "SMALL",
                        labelHeadingTag: "H3",
                        labelColor: "SECONDARY",
                        contents: {
                          a!textField(
                            label: "Status",
                            labelPosition: "ADJACENT",
                            value: "Partially Validated",
                            readOnly: true
                          ),
                          a!textField(
                            label: "Vaccine",
                            labelPosition: "ADJACENT",
                            value: "Pfizer-BioNTech COVID-19 Vaccine",
                            readOnly: true
                          )
                        }
                      )
                    }
                  ),
                  a!columnLayout(
                    contents: {
                      a!sectionLayout(
                        label: "History",
                        labelSize: "SMALL",
                        labelHeadingTag: "H3",
                        labelColor: "SECONDARY",
                        contents: {
                          a!textField(
                            label: "Have you ever tested positive for COVID-19?",
                            labelPosition: "ADJACENT",
                            value: "No",
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
        }
      )
    }
  )
}
```

Displays the following:

![screenshot of nested section layouts with patient information](images/section_nesting_example.png)

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
| [a!sectionLayout\_17r1](/suite/help/25.3/Section_Layout_171.html) |
Replaced _firstColumnContents_ and _secondColumnContents_ with `contents`. Now supports greater than two-column layout.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Section Layout.

-   [Add and Populate Sections Dynamically](/suite/help/25.3/recipe-add-and-populate-sections-dynamically.html) (_Looping_): Add and populate a dynamic number of sections, one for each item in a CDT array.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Browse Hierarchical Data](/suite/help/25.3/recipe-configure-a-columns-browser.html) (_Hierarchical Data_): Display a hierarchical data browser.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Conditionally Hide a Column in a Grid](/suite/help/25.3/recipe-conditionally-hide-a-column-in-a-grid.html) (_Grids, Conditional Display_): Conditionally hide a column in a read-only grid when all data for that column is a specific value.

-   [Configure Cascading Dropdowns](/suite/help/25.3/recipe-configure-cascading-dropdowns.html) (_Conditional Display, Choice Components_): Show different dropdown options depending on the user selection.

-   [Configure a Chart Drilldown to a Grid](/suite/help/25.3/recipe-configure-a-chart-drilldown-to-a-grid.html) (_Charts, Grids, Query Data, Records_): Displays a column chart with aggregate data from a record type and conditionally shows a grid with filtered records when a user selects a column on the chart.

-   [Configure an Array Picker with a Show All Option](/suite/help/25.3/recipe-configure-an-array-picker-with-a-show-all-option.html) (_Pickers_): Allow users to choose from a long text array using an autocompleting picker, but also allow them to see the entire choice set using a dropdown.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Display Last Refresh Time](/suite/help/25.3/recipe-display-last-refresh-time.html) (_Auto-Refresh, Grids, Records_): Display the last time the interface was updated, either based on a user interaction or a timer.

-   [Display Multiple Files in a Grid](/suite/help/25.3/recipe-display-multiple-files-in-a-grid-for-editing.html) (_Document Management, Grids_): Show a dynamic number of files in a grid and edit certain file attributes.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Dual Picklist Pattern](/suite/help/25.3/dual-picklist-pattern.html) (_Choice Components, Cards, Checkboxes, Buttons_): Use this pattern to view side-by-side lists and move items from one list to the other. The dual picklist is great for moving items from one state to another, like from active to inactive.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [Form Steps](/suite/help/25.3/form-steps-pattern.html) (_Stamps_): Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces.

-   [Grid With Detail Pattern](/suite/help/25.3/grid-with-detail-pattern.html) (_Grids_): The grid with detail pattern allows users to select an item from a grid to see more details next to the grid.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [Milestone Patterns](/suite/help/25.3/milestone_bar.html) (_Looping_): There are two options for milestone patterns which all display some form of a progress indicator to guide users through a series of steps.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Searching on Multiple Columns](/suite/help/25.3/recipe-searching-on-multiple-fields.html) (_Grids, Filtering, Reports_): Display a grid populated based on search criteria specified by end users.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use Links in a Grid to Show More Details and Edit Data in External System](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html) (_Grids, Web Services_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data.

-   [Use a Filter to Adjust Chart Reference Lines](/suite/help/25.3/recipe-use-a-filter-to-adjust-chart-reference-lines.html) (_Filtering, Charts_): Using a dropdown, filter the results of a data set while also adjusting a chart reference line.

-   [Use the Gauge Fraction and Gauge Percentage Configurations](/suite/help/25.3/recipe-use-guage-fraction-and-percentage-configurations.html) (_Formatting, Reports_): This recipe provides a common configuration of the [Gauge Component](Gauge_Component.html) using [a!gaugeFraction()](Gauge_Fraction_Component.html) and [a!gaugePercentage()](Gauge_Percentage_Component.html), and includes a walkthrough that demonstrates the benefits of using design mode when configuring the gauge component.

-   [Use the Write Records Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-records-smart-service-function-on-an-interface.html) (_Smart Services, Looping_): Allow the user to publish several rows of data to a database table with the a!writeRecords() smart service function.

-   [Use the Write to Data Store Entity Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) (_Smart Services, Grids, Looping_): Allow the user to publish several rows of data to a table through the a!writeToDataStoreEntity() smart service function.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...