---
source_url: https://docs.appian.com/suite/help/25.3/Milestone_Component.html
original_path: Milestone_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Milestone Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!milestoneField**( _label, instructions, steps, links, active, labelPosition, helpTooltip, showWhen, orientation, accessibilityText, color, marginAbove, marginBelow, stepStyle_ )

Displays the completed, current, and future steps of a process or sequence, such as a user's current step in a wizard or the current state of a business process.

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

Instructions

 |

`instructions`

 |

_Text_

 |

Supplemental text about this field.

 |
|

Steps

 |

`steps`

 |

_List of Text String_

 |

Array of labels describing the sequence of steps.

 |
|

Links

 |

`links`

 |

_List of Variant_

 |

Array of links to apply to the steps. Create links with a!documentDownloadLink(), a!dynamicLink(), a!newsEntryLink(), a!processTaskLink(), a!recordLink(), a!reportLink(), a!safeLink(), a!startProcessLink(), a!submitLink(), a!userRecordLink(), or a!authorizationLink().

 |
|

Active

 |

`active`

 |

_Number (Integer)_

 |

Index of the current step. When null, all steps are in the future. When -1, all steps are completed.

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

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

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

Orientation

 |

`orientation`

 |

_Text_

 |

Determines the layout of the milestone steps. Valid values: `"HORIZONTAL"` (default), `"VERTICAL"`.

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

Color

 |

`color`

 |

_Text_

 |

Determines the fill color. Valid values: ny valid hex color or hex color including transparency, or `"ACCENT"` (default), `"POSITIVE"`, `"NEGATIVE"`, `"WARN"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

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

Step Style

 |

`stepStyle`

 |

_Text_

 |

Determines the style of the milestone steps. When viewed in Appian Mobile, the default "LINE" style is used. Valid values: "LINE" (default), "CHEVRON", "DOT".

 |

## Usage considerations

### Using the active and links parameters

-   The _active_ parameter can't be `0` or greater than the total number of items in the _steps_ parameter. If it's null, all steps display as future steps. If it's `-1`, all steps display as completed.
-   Each item in the _links_ array renders the corresponding item in the _steps_ array as a link. An item in the _steps_ array for which there is a null value or no value in the _links_ array will render as plain text. There is no need to pad the end of the _steps_ array with _null_.

### Number and width of steps

-   The _steps_ parameter must contain at least one item. We recommend that _steps_ contains no more than seven items.
-   When viewed on a mobile device, the milestone component scrolls instead of shrinking the step width.

### Milestone display options

You can choose to display your milestones using three different styles using the _stepStyle_ parameter: "LINE", "DOT", and "CHEVRON". You can also choose either horizontal or vertical orientation using the _orientation_ parameter.

By default, the milestone uses "ACCENT" for the color. You can select a custom color for your milestone using the _color_ parameter.

The following are some examples of how each style appears.

Line style example:

![milestone line style](images/milestone-line-style.png)

Dot style example:

![milestone-dot-style](images/milestone-dot-style.png)

Chevron style example:

![milestone chevron style](images/milestone-chevron-style.png)

### Length of text values

To ensure a professional and easy-to-read interface, use concise text values of similar length. The following adjustments will be applied automatically:

Trimming:

-   Tabs, leading/trailing spaces, and line breaks will be removed.
-   Double spaces between words will be reduced to one.

For each item in the steps array, there is no character limit, but text will truncate based on orientation:

-   **Horizontal Orientation**: Up to three lines of text display, with character limits per line based on the number of steps and available horizontal space.
-   **Vertical Orientation**: Text displays on a single line until space runs out.

### Appian Mobile considerations

On Appian Mobile, the _stepStyle_ parameter is ignored. When a milestone component is viewed in Appian Mobile, it will always display using the default "LINE" style.

## Examples

Use the interactive editor below to test out the example code.

### Horizontal milestone

### Vertical milestone

### Milestone with conditional color changing

### Milestone with chevron style status indicator

### Milestone with dot style in wizard

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

The following patterns include usage of the Milestone Component.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...