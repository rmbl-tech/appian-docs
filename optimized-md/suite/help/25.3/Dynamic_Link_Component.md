---
source_url: https://docs.appian.com/suite/help/25.3/Dynamic_Link_Component.html
original_path: Dynamic_Link_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Dynamic Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!dynamicLink**( _label, value, saveInto, showWhen_ )

Defines a link that triggers updates to one or more variables. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**: [Link](Link_Component.html), [Read-Only Grid](Paging_Grid_Component.html), [Images](Image_Component.html), [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

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

Text displayed as the link name the user clicks on.

 |
|

Value

 |

`value`

 |

_Any Type_

 |

The value that is saved when the user clicks the link.

 |
|

Save Value To

 |

`saveInto`

 |

_Save Array_

 |

One or more variables that are updated with the link's value when the user clicks it. Use `a!save(target, value)` to save a modified or alternative value to a variable.

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

## Usage considerations

### Using dynamic links with the link field component

-   To display a single link or array of links, use inside the Link Field component. To display a link in a grid, use inside a Grid Text Column. To add a link to an image, use inside a document or web image. To add a link to a chart series, use inside the `a!chartSeries()` function. To add a link to an image, use inside a document, user, or web image.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Dynamic link that saves into a local variable

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

The following patterns include usage of the Dynamic Link.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Aggregate Data and Conditionally Display in a Chart or Grid](/suite/help/25.3/recipe-aggregate-data-and-conditionally-display-in-a-chart-or-grid.html) (_Reports, Charts, Query Data, Grids, Records_): Aggregate data and conditionally display it in a pie chart or grid. In this pattern, we will calculate the total number of employees in each department and display it in a pie chart and a read-only grid. Then, we'll use a link field to conditionally display each component.

-   [Breadcrumbs Pattern](/suite/help/25.3/breadcrumbs-pattern.html) (_Formatting_): The breadcrumbs pattern is a good example of breadcrumb-style navigation.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Cards as Buttons Pattern](/suite/help/25.3/cards-as-buttons-pattern.html) (_Choice Components, Formatting, Conditional Display_): The cards as buttons pattern is a great way to prominently display a select few choices.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [Configure a Chart Drilldown to a Grid](/suite/help/25.3/recipe-configure-a-chart-drilldown-to-a-grid.html) (_Charts, Grids, Query Data, Records_): Displays a column chart with aggregate data from a record type and conditionally shows a grid with filtered records when a user selects a column on the chart.

-   [Configure a Chart to Grid Toggle](/suite/help/25.3/recipe-configure-a-chart-to-grid-toggle.html) (_Charts, Grids_): Display a column chart with a toggle to display an alternate grid view of the data.

-   [Configure an Array Picker with a Show All Option](/suite/help/25.3/recipe-configure-an-array-picker-with-a-show-all-option.html) (_Pickers_): Allow users to choose from a long text array using an autocompleting picker, but also allow them to see the entire choice set using a dropdown.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Dynamic Inputs](/suite/help/25.3/dynamic-inputs-pattern.html) (_Inputs, Dynamic Links_): Use the dynamic inputs pattern to allow users to easily add or remove as many values as needed.

-   [Expand/Collapse Rows in a Tree Grid](/suite/help/25.3/recipe-expand-collapse-rows-in-a-tree-grid.html) (_Hierarchical Data, Grids_): Create a grid that shows hierarchical data and allows users to dynamically expand and collapse rows within the grid.

-   [Filter the Data in a Grid Using a Chart](/suite/help/25.3/recipe-filter-the-data-in-a-grid-using-a-chart.html) (_Charts, Grids, Filtering, Records_): Display an interactive pie chart with selectable sections so that a user may filter the results in a grid.

-   [Form Steps](/suite/help/25.3/form-steps-pattern.html) (_Stamps_): Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [More-Less Link](/suite/help/25.3/more-less.html) (_Grids, Rich Text_): Use this pattern to keep grids with rows containing varying text lengths looking clean and uniform. This design also improves readability and the user experience by limiting the amount of text in the interface.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Set a Numeric Rating Using Rich Text Icons](/suite/help/25.3/recipe-set-a-numeric-rating-using-rich-text-icons.html) (_Conditional Display_): Save a numeric score using a set of clickable rich text icons.

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Update an Entity-Backed Record Type from its Summary View](/suite/help/25.3/recipe-update-an-entity-backed-record-from-its-summary-view.html) (_Records, Smart Services_): Enable users to make quick changes to a record by updating it right from a record view.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use Links in a Grid to Show More Details and Edit Data in External System](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html) (_Grids, Web Services_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data.

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...