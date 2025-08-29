---
source_url: https://docs.appian.com/suite/help/25.3/Button_Array_Layout.html
original_path: Button_Array_Layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Button Array Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-buttons.html">SAIL Design System guidance available for Buttons</a><p class="ds-release-notice-p">The wrong button in the wrong place at the wrong time can stop a user's workflow dead in its tracks. Learn how to configure and display buttons appropriately to create a beautiful, intuitive, and efficient workflow experience for your application.</p></td></tr></tbody></table>

## Function

**a!buttonArrayLayout**( _buttons, showWhen, align, marginBelow, accessibilityText_ )

Displays a list of buttons in the order they are specified. Use this layout for buttons within interfaces rather than for submission buttons at the bottom of forms This layout cannot be selected from the interface component picker in the design view.

**See also**: [Button design guidance](sail/ux-buttons.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Buttons

 |

`buttons`

 |

_List of ButtonWidget_

 |

Array of buttons created with a!buttonWidget().

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

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the button(s). Valid values: `"START"`, `"CENTER"`, `"END"`.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the buttons. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

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

## Usage considerations

### Buttons formatting

-   If you pass one button to _Buttons_, it renders right-justified. If you pass more than one button, they render left-justified.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Buttons in a toolbar

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
a!buttonArrayLayout(
  align: "START",
  buttons: {
    a!buttonWidget(
      label: "Refresh",
      size: "SMALL",
      style: "OUTLINE",
      color: "SECONDARY"
    ),
    a!buttonWidget(
      label: "Edit",
      size: "SMALL",
      style: "OUTLINE",
      color: "SECONDARY"
    ),
    a!buttonWidget(
      label: "Add Item",
      size: "SMALL",
      style: "OUTLINE",
      color: "SECONDARY"
    )
  }
)
```

Displays the following:

![screenshot of three buttons in a toolbar](images/buttons-in-toolbar.png)

### Button with no margin below

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
{
  a!sideBySideLayout(
    items: {
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
              label: "Test",
              size: "SMALL",
              style: "OUTLINE",
              color: "SECONDARY"
            )
          }
        )
      )
    }
  )
}
```

Displays the following:

![screenshot of a text field with a button beside it](images/button-in-sbs.png)

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

The following patterns include usage of the Button Array Layout.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

-   [Add and Populate Sections Dynamically](/suite/help/25.3/recipe-add-and-populate-sections-dynamically.html) (_Looping_): Add and populate a dynamic number of sections, one for each item in a CDT array.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Call to Action Pattern](/suite/help/25.3/call-to-action-pattern.html) (_Formatting_): Use the call to action pattern as a landing page when your users have a single action to take.

-   [Cards as Choices Pattern](/suite/help/25.3/cards-as-choices-pattern.html) (_Card Choices, Rich Text_): Use this pattern to display sets of choices that are quick and easy to navigate.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Delete Rows in a Grid](/suite/help/25.3/recipe-delete-rows-in-a-grid.html) (_Grids_): Delete one or more rows of data in a read-only grid.

-   [Dual Picklist Pattern](/suite/help/25.3/dual-picklist-pattern.html) (_Choice Components, Cards, Checkboxes, Buttons_): Use this pattern to view side-by-side lists and move items from one list to the other. The dual picklist is great for moving items from one state to another, like from active to inactive.

-   [Form Steps](/suite/help/25.3/form-steps-pattern.html) (_Stamps_): Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [Refresh Data After Executing a Smart Service](/suite/help/25.3/recipe-refresh-data-after-executing-a-smart-service.html) (_Auto-Refresh, Smart Services_):

-   [Refresh Data Using a Refresh Button](/suite/help/25.3/recipe-refresh-data-using-a-refresh-button.html) (_Auto-Refresh_):

-   [Tabs Patterns](/suite/help/25.3/tabs-pattern.html) (_Formatting, Choice Components, Buttons, Rich Text, Cards_): The tabs patterns provide an ideal style and design for creating tabbed interfaces.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...