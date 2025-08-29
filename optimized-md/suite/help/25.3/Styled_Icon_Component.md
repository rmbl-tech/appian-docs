---
source_url: https://docs.appian.com/suite/help/25.3/Styled_Icon_Component.html
original_path: Styled_Icon_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Rich Text Icon

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

**a!richTextIcon**( _icon, altText, caption, size, color, link, linkStyle, showWhen_ )

Displays an icon for use in [rich text display](Rich_Text_Component.html). Icons can be formatted by configuring a color, size, or link. To show documents as images within rich text, see [Rich Text Image](Inline_Image_Component.html).

**See also**: [Rich text style guidance](sail/ux-rich-text.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Icon

 |

`icon`

 |

_Text_

 |

The key of the icon to display. See Available Icons below.

 |
|

Alternative Text

 |

`altText`

 |

_Text_

 |

Equivalent alternate text to display when accessibility or browser compatibility issues prevent the icon from displaying.

 |
|

Caption

 |

`caption`

 |

_Text_

 |

Text to display in mouseovers.

 |
|

Size

 |

`size`

 |

_Text_

 |

Determines the icon size. Valid values: `"STANDARD"` (default), `"SMALL"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"LARGE"`, `"LARGE_PLUS"`, and `"EXTRA_LARGE"`.

 |
|

Color

 |

`color`

 |

_Text_

 |

Determines the icon color. Valid values: Any hex color or `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`, and `"SECONDARY"`.

 |
|

Link

 |

`link`

 |

_Link_

 |

Link that determines the behavior of the icon when clicked. Create links with:

-   [a!authorizationLink()](authorization_link_component.html)
-   [a!documentDownloadLink()](Document_Link_Component.html)
-   [a!dynamicLink()](Dynamic_Link_Component.html)
-   [a!newsEntryLink()](News_Entry_Link_Component.html)
-   [a!processTaskLink()](Process_Task_Link_Component.html)
-   [a!recordLink()](Record_Link_Component.html)
-   [a!reportLink()](Report_Link_Component.html)
-   [a!startProcessLink()](Start_Process_Link_Component.html)
-   [a!submitLink()](Submit_Link_Component.html)
-   [a!userRecordLink()](User_Record_Link_Component.html)
-   [a!safeLink()](Web_Link_Component.html)

 |
|

Link Style

 |

`linkStyle`

 |

_Text_

 |

Determines how the link is underlined. Valid values: `"INLINE"` (default), `"STANDALONE"`.

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

### Using the icon, link, and style parameters

-   If _icon_ is null or contains an empty array, no icon is displayed.
-   If _link_ is null, the _icon_ is not displayed as a link.
-   For nested rich text, if two conflicting styles are found (for example, both SMALL and LARGE), the innermost style will be displayed.

### Adding decorative icons

An icon is considered decorative if it only serves a design purpose and does not add meaning or provide information. To meet accessibility guidelines for decorative elements, you should not include the `altText`, `caption`, or `link` parameters for a decorative icon. Appian will indicate the icon's purpose as decorative—and screen readers will skip it—when those parameters are not set and the icon is used in one of the following components:

-   [Button](Button_Component.html)
-   [Card choices](card-choices-component.html)
-   [Gauge](Gauge_Component.html)
-   [Rich text display](Rich_Text_Component.html)
-   [Section layout](Section_Layout.html)
-   [Stamp](Stamp_Component.html)

## Examples

Use the interactive editor below to test out the example code.

### Linked icons within text

### Icons in a grid

### Standalone links

## Available icons

The following table shows all available icons. Search the table to find specific icons.

* * *

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

The following patterns include usage of the Rich Text Icon.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Cards as Buttons Pattern](/suite/help/25.3/cards-as-buttons-pattern.html) (_Choice Components, Formatting, Conditional Display_): The cards as buttons pattern is a great way to prominently display a select few choices.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

-   [Drilldown Pattern](/suite/help/25.3/drilldown-pattern.html) (_Grids_): The drilldown pattern allows users to select an item from a grid to see more details in place of the grid.

-   [Drilldown Report Pattern](/suite/help/25.3/drilldown-report-pattern.html) (_Grids, Charts, Reports_): The drilldown report pattern consists of a bar chart and column chart, which each drill down into a grid.

-   [Duration Display](/suite/help/25.3/duration-display-pattern.html) (_Rich Text, Events_): Use the duration display pattern to show the amount of time in between events in a quick, easy-to-read way.

-   [Dynamic Inputs](/suite/help/25.3/dynamic-inputs-pattern.html) (_Inputs, Dynamic Links_): Use the dynamic inputs pattern to allow users to easily add or remove as many values as needed.

-   [Grid with Selection Pattern](/suite/help/25.3/grid-with-selection-pattern.html) (_Grids, Heading component_): This pattern is an example of good UX design for a grid that allows users to select items and easily view their selections when there are multiple pages of data. It also provides information on a common save behavior.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [Inline Tags for Side-by-Side Layout Pattern](/suite/help/25.3/inline-tags-for-side-by-side-pattern.html) (_Formatting_): This pattern shows the best practice for combining tags with standard-sized rich text, or plain text, using a side by side layout.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Offline Mobile Task Report](/suite/help/25.3/recipe-offline-task-report.html) (_Grids, Filtering, Process Task Links, Task Reports, Looping_): Display a task report for a user that will work in Appian Mobile, even when the user is offline.

-   [Set a Numeric Rating Using Rich Text Icons](/suite/help/25.3/recipe-set-a-numeric-rating-using-rich-text-icons.html) (_Conditional Display_): Save a numeric score using a set of clickable rich text icons.

-   [Show a Numeric Rating as Rich Text Icons](/suite/help/25.3/recipe-show-a-numeric-rating-as-rich-text-icons.html) (_Conditional Display_): Dynamically show a star rating based on a numeric score.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...