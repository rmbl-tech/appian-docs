---
source_url: https://docs.appian.com/suite/help/25.3/card_layout.html
original_path: card_layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Card Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-card-layout.html">SAIL Design System guidance available for Card Layout</a><p class="ds-release-notice-p">Reduce clutter and bring balance to your interface designs with cards. Learn how to use cards to organize content in a way that is easier for users to understand and navigate.</p></td></tr></tbody></table>

## Function

**a!cardLayout**( _contents, link, height, style, showBorder, showShadow, tooltip, showWhen, marginBelow, accessibilityText, padding, shape, marginAbove, decorativeBarPosition, decorativeBarColor, borderColor_ )

Displays any arrangement of layouts and components within a card on an interface. Can be styled or linked.

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

Components and layouts to display within the card.

 |
|

Link

 |

`link`

 |

_Any Type_

 |

Link to apply to the card. Create a link with `a!documentDownloadLink()`, `a!dynamicLink()`, `a!newsEntryLink()`, `a!processTaskLink()`, `a!recordLink()`, `a!reportLink()`, `a!safeLink()`, `a!startProcessLink()`, `a!submitLink()`, `a!userRecordLink()`, or `a!authorizationLink().`

 |
|

Height

 |

`height`

 |

_Text_

 |

Determines the card height. Valid values: `"EXTRA_SHORT"`, `"SHORT"`, `"SHORT_PLUS"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"TALL"`, `"TALL_PLUS"`, `"EXTRA_TALL"`, `"AUTO"`(default).

 |
|

Style

 |

`style`

 |

_Text_

 |

Determines the card background color. Valid values: Any valid hex color or hex color including transparency, or `"NONE"` (default), `"TRANSPARENT"`, `"STANDARD"`, `"ACCENT"`, `"SUCCESS"`, `"INFO"`, `"WARN"`, `"ERROR"`, `"CHARCOAL_SCHEME"`, `"NAVY_SCHEME"`, `"PLUM_SCHEME"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Show Border

 |

`showBorder`

 |

_Boolean_

 |

Determines whether the layout has an outer border. Default: true.

 |
|

Show Shadow

 |

`showShadow`

 |

_Boolean_

 |

Determines whether the layout has an outer shadow. Default: false.

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display on mouseover.

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

Determines how much space is added below the layout. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

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

Padding

 |

`padding`

 |

_Text_

 |

Determines the space between the card edges and its contents. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"` (default), `"STANDARD"`, `"MORE"`, `"EVEN_MORE"`.

 |
|

Shape

 |

`shape`

 |

_Text_

 |

Determines the card shape. Valid values: `"SQUARED"` (default), `"SEMI_ROUNDED"`, `"ROUNDED"`.

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

Decorative Bar Position

 |

`decorativeBarPosition`

 |

_Text_

 |

Determines where the decorative bar displays. Valid values: `"TOP"`, `"BOTTOM"`, `"START"`, `"END"`, `"NONE"` (default).

 |
|

Decorative Bar Color

 |

`decorativeBarColor`

 |

_Text_

 |

Determines the decorative bar color. Valid values: Any valid hex color or hex color including transparency, or `"ACCENT"` (default), `"POSITIVE"`, `"WARN"`, `"NEGATIVE"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Border Color

 |

`borderColor`

 |

_Text_

 |

Determines the border color. Valid values: Any valid hex color or hex color including transparency, or `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"WARN"`, `"NEGATIVE"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |

## Usage considerations

### Using the decorativeBarPosition and decorativeBarColor parameters

-   The _decorativeBarColor_ is ignored unless the _decorativeBarPosition_ is set.
-   To create a consistent and orderly UI, use the same _decorativeBarPosition_ for all cards on an interface.

### Using the style parameter with color schemes and header content layouts

-   If you're using a predefined or custom color scheme for your interface, use the card layout's _style_ parameter to select matching or complimentary card colors.
    -   If you use a [header content layout](Header_Layout.html) with a [predefined color scheme](sail/ux-header-content-layout.html#background-color) for your background, make sure that your header content layout and cards are using the same predefined color scheme.
    -   If you use a dark custom background color for your header content layout, make your cards a lighter color. For more information on backgrounds, check out our [header content layout design guidance](sail/ux-header-content-layout.html#background-color).
    -   If you need your card to blend into the background of your interface, use the `"TRANSPARENT"` style. This style is great for cards that will appear on multiple different interfaces and be reused throughout an application.

### Async loading placeholder

If this component relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.ÏÏ˝

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

The following patterns include usage of the Card Layout.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

-   [Call to Action Pattern](/suite/help/25.3/call-to-action-pattern.html) (_Formatting_): Use the call to action pattern as a landing page when your users have a single action to take.

-   [Cards as Buttons Pattern](/suite/help/25.3/cards-as-buttons-pattern.html) (_Choice Components, Formatting, Conditional Display_): The cards as buttons pattern is a great way to prominently display a select few choices.

-   [Cards as List Items Patterns](/suite/help/25.3/cards-as-list-items-pattern.html) (_Choice Components, Images_): Use the cards as list items pattern to create visually rich lists as an alternative to grids or feeds. This pattern uses a combination of cards and billboards to show lists of like items. You can easily modify the pattern to change the card content or the number of cards per row to fit your use case.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Document List Pattern](/suite/help/25.3/document-list-pattern.html) (_Documents_): Use the document list items pattern to display a list of documents that can be searched and filtered. This pattern uses a combination of cards and rich text to show an easy to navigate list of documents of different types.

-   [Dual Picklist Pattern](/suite/help/25.3/dual-picklist-pattern.html) (_Choice Components, Cards, Checkboxes, Buttons_): Use this pattern to view side-by-side lists and move items from one list to the other. The dual picklist is great for moving items from one state to another, like from active to inactive.

-   [Event Timelines](/suite/help/25.3/event-timeline-pattern.html) (_Timeline, Events_): Use the event timeline pattern to display a dated list of events and actions in chronological order. This pattern uses a combination of cards, rich text, and user images to show an easy to navigate list of dated events.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [KPI Patterns](/suite/help/25.3/kpis-pattern.html) (_Formatting_): The Key Performance Indicator (KPI) patterns provide a common style and format for displaying important performance measures.

-   [Leaderboard](/suite/help/25.3/leaderboard-pattern.html) (_Looping_): Use the leaderboard pattern to show a selection of your data in an easy to read ranked display.

-   [Limit the Number of Rows in a Grid That Can Be Selected](/suite/help/25.3/recipe-limit-the-number-of-rows-in-a-grid-that-can-be-selected.html) (_Validation, Grids, Records_): Limit the number of rows that can be selected to an arbitrary number.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Stamp Steps (Numbered)](/suite/help/25.3/stamp-steps-pattern.html) (_Stamps_): Use the stamp steps (numbered) pattern to show steps that require context or explanation.

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Year-Over-Year Sales Growth](/suite/help/25.3/recipe-show-sales-growth.html) (_Records, Reports, Formatting_): This pattern illustrates how to calculate year-over-year sales growth and display it in a KPI.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...