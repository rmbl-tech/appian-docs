---
source_url: https://docs.appian.com/suite/help/25.3/Side_By_Side_Item.html
original_path: Side_By_Side_Item.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Side By Side Item

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-side-by-side-layout.html">SAIL Design System guidance available for Side by Side Layout</a><p class="ds-release-notice-p">When you want to split the available space evenly to create a visual balance in your design, use the side by side layout.</p></td></tr></tbody></table>

## Function

**a!sideBySideItem**( _item, width, showWhen_ )

Displays one item within a side by side layout.

**See also**:

-   [Side By Side Layout](Side_By_Side_Layout.html)
-   [Side By Side and Columns design guidance](sail/ux-columns-and-side-by-side.html)
-   [Side By Side design guidance](sail/ux-side-by-side-layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Item

 |

`item`

 |

_Any Type_

 |

The component to display inside the layout.

 |
|

Width

 |

`width`

 |

_Text_

 |

Determines the amount of space allocated to each of the items in the row. Valid values: `"AUTO"` (default), `"MINIMIZE"`, `"1X"`, `"2X"`, `"3X"`, `"4X"`, `"5X"`, `"6X"`, `"7X"`, `"8X"`, `"9X"`, and `"10X"`.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the component or layout is displayed on the interface. When set to false, the component or layout is hidden and is not evaluated. Default: true.

 |

## Usage considerations

### Accepted widths and fields

-   Most fields are allowed for _Item_, except for grids, hierarchy browsers, the org chart, and layouts.
-   The `"MINIMIZE"` width is appropriate for items with a fixed width, such as images or buttons. Use relative widths for items whose width is determined by the containing layout or user interaction, such as text inputs or dropdowns. For further explanation and examples, see [UX Side by Side Guidance](sail/ux-side-by-side-layout.html).

## Examples

_Copy and paste an example into an Appian Expression Editor to experiment with it._

### Input fields with relative widths

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
a!sideBySideLayout(
  items: {
    a!sideBySideItem(
      width: "4X",
      item: a!textField(
        label: "First Name"
      )
    ),
    a!sideBySideItem(
      item: a!textField(
        label: "M.I."
      )
    ),
    a!sideBySideItem(
      width: "4X",
      item: a!textField(
        label: "Last Name"
      )
    )
  }
)
```

Displays the following:

![screenshot of inputs of different widths](images/sbs-with-relative-width.png)

### Minimized width for icon and button

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
a!sideBySideLayout(
  alignVertical: "MIDDLE",
  spacing: "DENSE",
  items: {
    a!sideBySideItem(
      width: "MINIMIZE",
      item: a!richTextDisplayField(
        labelPosition: "COLLAPSED",
        value: a!richTextIcon(
          icon: "user",
          size: "LARGE"
        )
      )
    ),
    a!sideBySideItem(
      item: a!textField(
        labelPosition: "COLLAPSED"
      )
    ),
    a!sideBySideItem(
      width: "MINIMIZE",
      item: a!buttonArrayLayout(
        marginBelow: "NONE",
        buttons: {
          a!buttonWidget(
            label: "Check Availability",
            size: "SMALL",
            style: "OUTLINE",
            color: "SECONDARY"
          )
        }
      )
    )
  }
)
```

Displays the following:

![screenshot of inputs using minimized widths](images/sbs-with-minimize.png)

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

The following patterns include usage of the Side By Side Item.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

-   [Activity History Pattern](/suite/help/25.3/activity-history.html) (_Formatting_): The Activity History pattern provides a common style and format for displaying an organization's activity measures.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

-   [Duration Display](/suite/help/25.3/duration-display-pattern.html) (_Rich Text, Events_): Use the duration display pattern to show the amount of time in between events in a quick, easy-to-read way.

-   [Dynamic Inputs](/suite/help/25.3/dynamic-inputs-pattern.html) (_Inputs, Dynamic Links_): Use the dynamic inputs pattern to allow users to easily add or remove as many values as needed.

-   [Event Timelines](/suite/help/25.3/event-timeline-pattern.html) (_Timeline, Events_): Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events.

-   [Inline Tags for Side-by-Side Layout Pattern](/suite/help/25.3/inline-tags-for-side-by-side-pattern.html) (_Formatting_): This pattern shows the best practice for combining tags with standard-sized rich text, or plain text, using a side by side layout.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Refresh Data After Executing a Smart Service](/suite/help/25.3/recipe-refresh-data-after-executing-a-smart-service.html) (_Auto-Refresh, Smart Services_):

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [User List Pattern](/suite/help/25.3/user-list-pattern.html) (_Looping_): The user list pattern retrieves all the users in a specified group and displays them in a single column.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...