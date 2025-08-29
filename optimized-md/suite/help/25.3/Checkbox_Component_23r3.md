---
source_url: https://docs.appian.com/suite/help/25.3/Checkbox_Component_23r3.html
original_path: Checkbox_Component_23r3.html
version: "25.3"
title: "a!checkboxField\_23r3 Component"
page_id: "Checkbox_Component_23r3"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!checkboxField\_23r3 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Checkbox Component](/suite/help/25.3/Checkbox_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Checkbox_Component.html#Old_Version)

## Function

**a!checkboxField\_23r3**( _label, instructions, required, disabled, choiceLabels, choiceValues, value, validations, saveInto, validationGroup, requiredMessage, align, labelPosition, helpTooltip, choiceLayout, accessibilityText, showWhen, choiceStyle, spacing_ )

Displays a limited set of choices from which the user may select none, one, or many items and saves the values of the selected choices. To save the index of the choice instead of a value, use [checkboxes by index](Checkbox_By_Index_Component.html).

If the choice is exclusive, then consider using [radio buttons](Radio_Button_Component.html) or a [dropdown](Dropdown_Component.html).

If there are many choices, the component grows as large as necessary to display all the options. If a more compact presentation is desirable, consider using a [multiple dropdown](Multiple_Dropdown_Component.html).

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

Choice Values

 |

`choiceValues`

 |

_List of Variant_

 |

Array of values associated with the available choices.

 |
|

Display Value

 |

`value`

 |

_List of Variant_

 |

Values of choices to display as selected.

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

One or more variables that are updated with the choice values when the user changes the selections. Use a!save() to save a modified or alternative value to a variable.

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

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of choice labels. Appian recommends this setting only be used inside the Grid Layout component. Valid values: `"LEFT"`, `"CENTER"`, `"RIGHT"`.

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

Choice Layout

 |

`choiceLayout`

 |

_Text_

 |

Determines the layout. Valid values: `"STACKED"` (default), `"COMPACT"`.

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

Spacing

 |

`spacing`

 |

_Text_

 |

Determines the space between the options. Valid values: `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |

## Usage considerations

### Saving values

-   If a single item is selected, the system saves a single-item array.
-   If no selection is made, the system saves a null value into the component's _saveInto_ field.

### Using the choiceLayout parameter

-   The `"COMPACT"` option for _choiceLayout_ should only be used for checkboxes with short choice labels, such as "Yes", "No", or "Maybe". When using the `"COMPACT"` option, labels with text longer than two lines will be truncated.
-   For long labels, use the `"STACKED"` option for _choiceLayout_.

### Using the choiceLabels and choiceValue parameters

-   Choices display in the order defined in the _choiceLabels_ parameter.
-   The _choiceLabels_ argument cannot be null.
-   _choiceLabels_ and _choiceValues_ must be the same length.
-   _choiceValues_ cannot contain nulls or duplicate values.

## Examples

Use the interactive editor below to test out the example code.

### Checkbox with first and third values checked

Use the interactive editor below to test out the example code.

### Checkbox with no default values checked

Use the interactive editor below to test out the example code.

### Checkbox with cards style

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