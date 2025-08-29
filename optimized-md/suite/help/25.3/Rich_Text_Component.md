---
source_url: https://docs.appian.com/suite/help/25.3/Rich_Text_Component.html
original_path: Rich_Text_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Rich Text Display Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-rich-text.html">SAIL Design System guidance available for Rich Text</a><p class="ds-release-notice-p">Enhance readability and comprehension on your interface by using rich text formatting to visually differentiate text.</p></td></tr></tbody></table>

## Function

**a!richTextDisplayField**( _label, labelPosition, instructions, align, value, helpTooltip, accessibilityText, showWhen, preventWrapping, tooltip, marginAbove, marginBelow_ )

Displays text in variety of styles, including bold, italics, underline, links, and numbered and bulleted lists. To enable users to enter styled text, use the [styled text editor](Styled_Text_Editor_Component.html) component.

**See also**: [Rich text style guidance](sail/ux-rich-text.html)

### Rich text types:

The following are the rich text types you can use within a rich text display component.

-   [Bulleted List](Bulleted_List_Component.html)
-   [Icon](Styled_Icon_Component.html)
-   [Image](Inline_Image_Component.html)
-   [List Item](List_Item_Component.html)
-   [Numbered List](Numbered_List_Component.html)
-   [Text Item](Styled_Text_Component.html)

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

Text to display as the field label.

 |
|

Label Position

 |

`labelPosition`

 |

_Text_

 |

Determines where the label appears. Valid values:

-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the text value. Valid values: `"LEFT"`, `"CENTER"`, `"RIGHT"`. Does not apply to lists.

 |
|

Display Value

 |

`value`

 |

_Any Type_

 |

Array of rich text to display. Create rich text using a combination of text, a!richTextItem(), a!richTextImage(), a!richTextIcon(), a!richTextBulletedList(), or a!richTextNumberedList(). Example: `{"Hello ", a!richTextItem(text: "World", style: "STRONG"), "!"}`.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

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

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true.

 |
|

Prevent Wrapping

 |

`preventWrapping`

 |

_Boolean_

 |

Determines if wrapping to multiple lines will be prevented. When set to true, each paragraph or list item will truncate to a single line. Default: false.

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display on mouseover (web) or long press (mobile).

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
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the layout. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |

## Usage considerations

### Editing rich text

The rich text configuration pane contains a rich text editor to help with designing your interfaces. It supports the following styles:

-   Bold
-   Italic
-   Underline
-   Strikethrough
-   Color
-   Safe links
-   Icons
-   Web images

If your rich text contains any of the following, it can only be edited in **Configure items** mode or as an expression:

-   Non-Web Images
-   Non-Safe Links
-   Functions
-   Variables

![rich text example](images/rich_text_editor.png)

**Tip:**  We recommend using the rich text editor to apply the supported styles, then switching to **Configure items** mode for additional configurations.

### Displaying values

-   If _value_ is null or contains an empty array, the _label_ and _instructions_ render with no rich text displayed.
-   Multiple formats can be applied to text by nesting [rich text items](Styled_Text_Component.html).

### Using the preventWrapping parameter

-   Don't use the _preventwrapping_ parameter in side-by-side layouts that use the `"MINIMIZE"` width.
-   Don't use the _preventWrapping_ parameter if your rich text display component contains nested list items.
-   When using the _preventwrapping_ parameter, the full text automatically appears in a tooltip when you hover over the truncated text.

    ![screenshot of grid column displaying truncated rich text with the full text appearing in a tooltip](images/preventWrapping_grid_example.png)

### Reducing render time

-   As with any interface, showing many components at once can increase server evaluation time, client rendering time, and network transmission time. The use of formatted text, bulleted, and numbered lists all contribute to this. To provide a fast user experience, limit the number of components, including rich text items, bulleted, and numbered lists, shown on a single interface. See also: [Interface Performance Best Practices](interface-performance.html#dont-wrap-text-in-arichtextitem-if-you-dont-need-to-style-it) and [Interface Evaluation Lifecycle](SAIL_Performance.html).

## Examples

Use the interactive editor below to test out the example code.

### Rich text items and icons with multiple formats

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

The following patterns include usage of the Rich Text Display Component.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

-   [Activity History Pattern](/suite/help/25.3/activity-history.html) (_Formatting_): The Activity History pattern provides a common style and format for displaying an organization's activity measures.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Breadcrumbs Pattern](/suite/help/25.3/breadcrumbs-pattern.html) (_Formatting_): The breadcrumbs pattern is a good example of breadcrumb-style navigation.

-   [Call to Action Pattern](/suite/help/25.3/call-to-action-pattern.html) (_Formatting_): Use the call to action pattern as a landing page when your users have a single action to take.

-   [Cards as Buttons Pattern](/suite/help/25.3/cards-as-buttons-pattern.html) (_Choice Components, Formatting, Conditional Display_): The cards as buttons pattern is a great way to prominently display a select few choices.

-   [Cards as Choices Pattern](/suite/help/25.3/cards-as-choices-pattern.html) (_Card Choices, Rich Text_): Use this pattern to display sets of choices that are quick and easy to navigate.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [Conditionally Hide a Column in a Grid](/suite/help/25.3/recipe-conditionally-hide-a-column-in-a-grid.html) (_Grids, Conditional Display_): Conditionally hide a column in a read-only grid when all data for that column is a specific value.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Display Last Refresh Time](/suite/help/25.3/recipe-display-last-refresh-time.html) (_Auto-Refresh, Grids, Records_): Display the last time the interface was updated, either based on a user interaction or a timer.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Dual Picklist Pattern](/suite/help/25.3/dual-picklist-pattern.html) (_Choice Components, Cards, Checkboxes, Buttons_): Use this pattern to view side-by-side lists and move items from one list to the other. The dual picklist is great for moving items from one state to another, like from active to inactive.

-   [Duration Display](/suite/help/25.3/duration-display-pattern.html) (_Rich Text, Events_): Use the duration display pattern to show the amount of time in between events in a quick, easy-to-read way.

-   [Dynamic Inputs](/suite/help/25.3/dynamic-inputs-pattern.html) (_Inputs, Dynamic Links_): Use the dynamic inputs pattern to allow users to easily add or remove as many values as needed.

-   [Event Timelines](/suite/help/25.3/event-timeline-pattern.html) (_Timeline, Events_): Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events.

-   [Expand/Collapse Rows in a Tree Grid](/suite/help/25.3/recipe-expand-collapse-rows-in-a-tree-grid.html) (_Hierarchical Data, Grids_): Create a grid that shows hierarchical data and allows users to dynamically expand and collapse rows within the grid.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

-   [Form Steps](/suite/help/25.3/form-steps-pattern.html) (_Stamps_): Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces.

-   [Grid With Detail Pattern](/suite/help/25.3/grid-with-detail-pattern.html) (_Grids_): The grid with detail pattern allows users to select an item from a grid to see more details next to the grid.

-   [Grid with Selection Pattern](/suite/help/25.3/grid-with-selection-pattern.html) (_Grids, Heading component_): This pattern is an example of good UX design for a grid that allows users to select items and easily view their selections when there are multiple pages of data. It also provides information on a common save behavior.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [Inline Tags for Side-by-Side Layout Pattern](/suite/help/25.3/inline-tags-for-side-by-side-pattern.html) (_Formatting_): This pattern shows the best practice for combining tags with standard-sized rich text, or plain text, using a side by side layout.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [Milestone Patterns](/suite/help/25.3/milestone_bar.html) (_Looping_): There are two options for milestone patterns which all display some form of a progress indicator to guide users through a series of steps.

-   [More-Less Link](/suite/help/25.3/more-less.html) (_Grids, Rich Text_): Use this pattern to keep grids with rows containing varying text lengths looking clean and uniform. This design also improves readability and the user experience by limiting the amount of text in the interface.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Percentage of Online Sales](/suite/help/25.3/recipe-show-percentage-of-sales.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate the percent of sales generated from online orders and display it in a gauge component.

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

-   [Set a Numeric Rating Using Rich Text Icons](/suite/help/25.3/recipe-set-a-numeric-rating-using-rich-text-icons.html) (_Conditional Display_): Save a numeric score using a set of clickable rich text icons.

-   [Show a Numeric Rating as Rich Text Icons](/suite/help/25.3/recipe-show-a-numeric-rating-as-rich-text-icons.html) (_Conditional Display_): Dynamically show a star rating based on a numeric score.

-   [Stamp Steps (Numbered)](/suite/help/25.3/stamp-steps-pattern.html) (_Stamps_): Use the stamp steps (numbered) pattern to show steps that require context or explanation.

-   [Tabs Patterns](/suite/help/25.3/tabs-pattern.html) (_Formatting, Choice Components, Buttons, Rich Text, Cards_): The tabs patterns provide an ideal style and design for creating tabbed interfaces.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

-   [Year-Over-Year Sales Growth](/suite/help/25.3/recipe-show-sales-growth.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate year-over-year sales growth and display it in a KPI.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...