---
source_url: https://docs.appian.com/suite/help/25.3/Stamp_Component.html
original_path: Stamp_Component.html
version: "25.3"
title: "Stamp Component"
page_id: "Stamp_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Stamp Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!stampField**( _label, labelPosition, instructions, helpTooltip, icon, text, backgroundColor, contentColor, size, align, tooltip, showWhen, accessibilityText, link, marginAbove, marginBelow, shape_ )

Displays an icon and/or text on a colored circular background. They are best used as a decorative component to add visual interest to your page. This feature is perfect for drawing attention to important content and reduces the need for custom images.

Stamps can include a link and are an alternative style in places where you might otherwise use a button or a link.

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

Icon

 |

`icon`

 |

_Text_

 |

Icon to display inside the stamp. See the [documentation for details](sail/ux-styled-icons.html).

In the component configuration pane, you can click **SUGGEST ICON** to use AI to suggest an icon based on the label and instructions. If both the label and instructions aren't simple text strings, this option is disabled.

 |
|

Text

 |

`text`

 |

_Text_

 |

Text to display within the stamp.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Determines the background color. Valid values: Any valid hex color or hex color including transparency, or `"ACCENT"` (default), `"POSITIVE"`, `"NEGATIVE"`, `"SECONDARY"`, `"TRANSPARENT"`. If `"TRANSPARENT"` is selected, the circle border will take on the content color and the circle fill will be transparent. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |
|

Content Color

 |

`contentColor`

 |

_Text_

 |

Determines the icon color. Valid values: Any hex color or `"STANDARD"` (default), `"ACCENT"`, `"POSITIVE"`, `"NEGATIVE"`.

 |
|

Size

 |

`size`

 |

_Text_

 |

Determines the size of the stamp. Valid values: `"TINY"`, `"SMALL"`, `"MEDIUM"` (default), `"LARGE"`.

 |
|

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the stamp. Valid values: `"START"`, `"CENTER"` (default), `"END"`.

 |
|

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display on mouseover (web) or tap (mobile).

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

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

 |
|

Link

 |

`link`

 |

_Any Type_

 |

Link to apply to the stamp. Create a link with `a!documentDownloadLink()`, `a!dynamicLink()`, `a!newsEntryLink()`, `a!processTaskLink()`, `a!recordLink()`, `a!reportLink()`, `a!safeLink()`, `a!startProcessLink()`, `a!submitLink()`, `a!userRecordLink()`, or `a!authorizationLink()`.

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
|

Shape

 |

`shape`

 |

_Text_

 |

Determines the stamp shape. Valid values: `"ROUNDED"` (default), `"SEMI_ROUNDED"`, `"SQUARED"`.

 |

## Usage considerations

### Stamp color

-   A stamp with a `"TRANSPARENT"` background displays an icon and/or text with a colored circular border. The _contentColor_ will be used for the icon, text, and circular border.

## Examples

Use the interactive editor below to test out the example code.

### Stamp with an ACCENT background

### Stamp with a TRANSPARENT background

### Stamp with text

### Stamps with dynamic links

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

The following patterns include usage of the Stamp Component.

-   [Activity History Pattern](/suite/help/25.3/activity-history.html) (_Formatting_): The Activity History pattern provides a common style and format for displaying an organization's activity measures.

-   [Form Steps](/suite/help/25.3/form-steps-pattern.html) (_Stamps_): Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces.

-   [Milestone Patterns](/suite/help/25.3/milestone_bar.html) (_Looping_): There are two options for milestone patterns which all display some form of a progress indicator to guide users through a series of steps.

-   [Navigation Patterns](/suite/help/25.3/navigation-patterns.html) (_Conditional Display, Formatting, Navigation_): Use the navigation patterns to help orient users and enable them to easily navigate pages and content.

-   [Stamp Steps (Numbered)](/suite/help/25.3/stamp-steps-pattern.html) (_Stamps_): Use the stamp steps (numbered) pattern to show steps that require context or explanation.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...