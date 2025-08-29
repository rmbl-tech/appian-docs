---
source_url: https://docs.appian.com/suite/help/25.3/card-group-layout.html
original_path: card-group-layout.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Card Group Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

Displays an arrangement of cards, with the same width and height. The Card Group Layout component allows you to easily create consistent and responsive sets of cards, regardless of the card content, making your overall UI look more balanced and dynamic.

See also: [Card Layout](card_layout.html)

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

Determines where the label appears. Valid values: `"ABOVE"`, `"ADJACENT"`, `"COLLAPSED"` (default), `"JUSTIFIED"`.

 |
|

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The help icon does not show when the label position is `"COLLAPSED"`.

 |
|

Cards

 |

`cards`

 |

_Any Type_

 |

Cards to display using `a!cardLayout()`.

 |
|

Card Spacing

 |

`spacing`

 |

_Text_

 |

Determines the space between the cards. Valid values: `"STANDARD"` (default), `"NONE"`, `"DENSE"`, and `"SPARSE"`.

 |
|

Card Width

 |

`cardWidth`

 |

_Text_

 |

Determines the width of the cards in the layout. Valid values are: `"EXTRA_NARROW"`, `"NARROW"`, `"NARROW_PLUS"`, `"MEDIUM"` (default), `"MEDIUM_PLUS"`, `"WIDE"`, `"WIDE_PLUS"`, `"EXTRA_WIDE"`.

 |
|

Fill Container

 |

`fillContainer`

 |

_Boolean_

 |

When set to `false`, cards have a fixed width. When set to `true`, the width of the cards will expand to allow the card group to fill the container. Cards cannot shrink beyond the fixed width. Default: `true`. Cards in a card group always have matching widths.

 |
|

Card Height

 |

`cardHeight`

 |

_Text_

 |

Determines the height of the cards in the layout. Valid values: `"EXTRA_SHORT"`, `"SHORT"`, `"SHORT_PLUS"`, `"MEDIUM"`, `"MEDIUM_PLUS"`, `"TALL"`, `"TALL_PLUS"`, `"EXTRA_TALL"`, `"AUTO"`(default).

 |
|

Show When

 |

`showWhen`

 |

_Text_

 |

Determines whether the layout is displayed on the interface. When set to `false`, the layout is hidden and is not evaluated. Default: `true`.

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

Determines how much space is added below the layout. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"`, `"MORE"` (default), `"EVEN_MORE"`.

 |

## Usage considerations

### Card group layout ordering in LTR and RTL languages

-   The Card group layout component has the ability to maintain alignment for groups with variable number of cards, following a logical reading order that goes from left to right or right to left depending on your language and locale settings. For example, a group of cards numbered 1-6 and split into two rows might look like the following:
    -   In LTR locales, cards 1, 2, and 3 would be in the first row, in that order (read left to right), with the second row consisting of cards 4, 5, and 6 in that order.

        ![screenshot showing card group layout configuration in LTR locales](images/ltr-card-group-ex.png)

    -   In RTL locales, cards 3, 2, and 1 would be in the first row, in that order (read left to right), with the second row consisting of cards 6, 5, and 4 in that order.

        ![screenshot showing card group layout configuration in RTL locales](images/rtl-card-group-ex.png)

### Async loading placeholder

If this component relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.ÏÏ˝

## Examples

Use the interactive editor below to test out your code.

### Card group layout with only icons and text

### Card group layout with images, icons, and text

The screenshot below shows how the example is displayed at full width.

![screenshot of the example below using card group layout](images/card-group-layout-ex-2.png)

**Example expression**

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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...