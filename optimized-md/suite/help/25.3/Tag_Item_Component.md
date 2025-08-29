---
source_url: https://docs.appian.com/suite/help/25.3/Tag_Item_Component.html
original_path: Tag_Item_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Tag Item

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

**a!tagItem**( _text, backgroundColor, textColor, tooltip, showWhen, link_ )

Displays a short text label with colored background for use with a!tagField. Tag items can contain a record link or user record link.

**See also**: [Tag Field](Tag_Component.html), [Tag design guidance](sail/ux-tags.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Text

 |

`text`

 |

_Text_

 |

Text to display within the tag. The tag displays a maximum of 40 characters.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Determines the background color. Valid values: Any valid hex color or hex color including transparency, or `"ACCENT"` (default), `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Text Color

 |

`textColor`

 |

_Text_

 |

Determines the text color. Valid values: Any valid hex color or `"STANDARD"` (default).

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display as a tooltip on the tag.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the tag is displayed on the interface. When set to false, the tag is hidden and is not evaluated. Default: true.

 |
|

Link

 |

`link`

 |

_Any Type_

 |

Link to apply to the tag. Create a link with `a!documentDownloadLink()`, `a!dynamicLink()`, `a!newsEntryLink()`, `a!processTaskLink()`, `a!recordLink()`, `a!reportLink()`, `a!safeLink()`, `a!startProcessLink()`, `a!submitLink()`, `a!userRecordLink()`, or `a!authorizationLink()`.

 |

## Usage considerations

### Using the text parameter

-   A tag will not render if no _text_ is specified.
-   Any tabs, line breaks, and leading or trailing spaces are trimmed. Spaces between words are trimmed down to one space.
-   If the text is too long to display within a tag, the text is truncated. The full text is shown on hover.

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
| [a!tagItem\_24r2](/suite/help/25.3/Tag_Item_Component_24r2.html) |
Added the ability to use any [link type](SAIL_Components.html#link-types) in a tag.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Tag Item.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Inline Tags for Side-by-Side Layout Pattern](/suite/help/25.3/inline-tags-for-side-by-side-pattern.html) (_Formatting_): This pattern shows the best practice for combining tags with standard-sized rich text, or plain text, using a side by side layout.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...