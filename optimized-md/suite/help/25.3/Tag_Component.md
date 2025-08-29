---
source_url: https://docs.appian.com/suite/help/25.3/Tag_Component.html
original_path: Tag_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Tag Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-tags.html">SAIL Design System guidance available for Tags</a><p class="ds-release-notice-p">Draw attention and drive engagement to the right places on your interface. Learn how to use tags to highlight valuable links, sections, or other components so users don't miss important or notable items.</p></td></tr></tbody></table>

## Function

**a!tagField**( _label, labelPosition, instructions, helpTooltip, tags, align, accessibilityText, size, showWhen, marginAbove, marginBelow_ )

Displays a list of short text labels with colored background to highlight important attributes.

**See also**: [Tag Item](Tag_Item_Component.html), [Tag design guidance](sail/ux-tags.html)

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

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

 |
|

Tags

 |

`tags`

 |

_List of Variant_

 |

List of tags to display. Configured using [a!tagItem()](Tag_Item_Component.html).

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the image(s). Valid values: `"START"`, `"CENTER"`, `"END"`.

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

Size

 |

`size`

 |

_Text_

 |

Determines the size of the tags. Valid values: `"SMALL"`, `"STANDARD"` (default).

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

### Using the tag parameter with text values

-   If the _tags_ parameter is null, contains an empty array, or only contains tag items with no _text_ value, then the label and instructions render with no tags displayed.
-   If multiple tags are displayed in a narrow container, tags can wrap onto multiple lines. An individual tag will never be split onto two lines.

### Adding links to tags

You can use the _link_ parameter in the [a!tagItem()](Tag_Item_Component.html) function to add any link type to a tag, giving the tag additional functionality. For example, if you have tags representing categories (such as groups of products or sales regions), the tags could link to interfaces showing all relevant items in that category, or a related report.

## Examples

Use the interactive editor below to test out the example code.

### Display tags with custom colors

### Display multiple tags using looping

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

The following patterns include usage of the Tag Component.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Inline Tags for Side-by-Side Layout Pattern](/suite/help/25.3/inline-tags-for-side-by-side-pattern.html) (_Formatting_): This pattern shows the best practice for combining tags with standard-sized rich text, or plain text, using a side by side layout.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...