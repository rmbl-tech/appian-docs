---
source_url: https://docs.appian.com/suite/help/25.3/Radio_Button_By_Index_Component.html
original_path: Radio_Button_By_Index_Component.html
version: "25.3"
title: "Radio Button By Index Component"
page_id: "Radio_Button_By_Index_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Radio Button By Index Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!radioButtonFieldByIndex**( _label, instructions, required, disabled, choiceLabels, value, validations, saveInto, validationGroup, requiredMessage, labelPosition, choiceLayout, helpTooltip, accessibilityText, showWhen, choiceStyle, choicePosition_ )

Displays a limited set of choices from which the user must select one item and saves the index of the selected choice. To save a value instead of the index, use [radio buttons](Radio_Button_Component.html).

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

Required

 |

`required`

 |

_Boolean_

 |

Determines if a value is required to submit the form. Default: false.

 |
|

Disabled

 |

`disabled`

 |

_Boolean_

 |

Determines if the field should display as potentially editable but grayed out. Default: false.

 |
|

Choice Labels

 |

`choiceLabels`

 |

_List of Text String_

 |

Array of options for the user to select.

 |
|

Display Value

 |

`value`

 |

_Number (Integer)_

 |

Index of the choice to display as selected.

 |
|

Validations

 |

`validations`

 |

_List of Text String_

 |

Validation errors to display below the field when the value is not null.

 |
|

Save Input To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated with the choice index when the user changes the selection. Use a!save() to save a modified or alternative value to a variable.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text_

 |

When present, the requiredness of the field is only evaluated when a button in the same validation group is pressed. The value for this parameter cannot contain spaces. For example, `“validation group”` is not a valid value. You need to add an underscore between words: `“validation_group”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

 |
|

Required Message

 |

`requiredMessage`

 |

_Text_

 |

Custom message to display when the field's value is required and not provided.

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

Choice Layout

 |

`choiceLayout`

 |

_Text_

 |

Determines the layout. Valid values: `"STACKED"` (default), `"COMPACT"`.

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

Accessibility Text

 |

`accessibilityText`

 |

_Text_

 |

Additional text to be announced by screen readers. Used only for accessibility; produces no visible change.

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

Choice Style

 |

`choiceStyle`

 |

_Text_

 |

Determines how the choices should be displayed on the interface. Valid values: `"STANDARD"` (default), `"CARDS"`.

 |
|

Choice Position

 |

`choicePosition`

 |

_Text_

 |

Determines whether radio buttons appear on the left or right of the choice labels. Valid values: "START" (default for "STANDARD" choiceStyle), "END" (default for "CARDS" choiceStyle).

 |

## Usage considerations

### Using the choiceLabels parameter

-   Choices display in the same order as defined in the _choiceLabels_ parameter. The _choiceLabels_ argument cannot be null.

### Using the choiceLayout, choiceStyle, and choicePosition parameters

See the SAIL Design System for [choice best practices](sail/ux-inputs.html#choice-best-practices).

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