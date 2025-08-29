---
source_url: https://docs.appian.com/suite/help/25.3/Floating_Point_Component.html
original_path: Floating_Point_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Decimal (Floating Point) Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!floatingPointField**( _label, instructions, required, readOnly, disabled, value, validations, saveInto, validationGroup, requiredMessage, align, labelPosition, refreshAfter, placeholder, helpTooltip, accessibilityText, showWhen, marginAbove, marginBelow_ )

Displays and allows entry of a single [decimal](Appian_Data_Types.html#number-decimal) number, stored with a floating point representation.

When working with an [integer](Appian_Data_Types.html#number-integer), use an [integer](Integer_Component.html) component. To display a number using a custom format, use a [text](Text_Component.html) component.

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

Read-only

 |

`readOnly`

 |

_Boolean_

 |

Determines if the field should display as not editable. Default: false.

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

Display Value

 |

`value`

 |

_Number (Decimal)_

 |

Number to display in the field.

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

One or more variables that are updated with the number when the user changes it. Use a!save() to save a modified or alternative value to a variable.

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

Determines alignment of the number value. Appian recommends this setting only be used inside the Grid Layout component. Valid values: `"LEFT"`, `"CENTER"`, `"RIGHT"`.

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

Refresh After

 |

`refreshAfter`

 |

_Text_

 |

Determines when the interface is refreshed with the saved value from the barcode field. Valid values are `"KEYPRESS"` to refresh after every character typed into the field and `"UNFOCUS"` (the default value) to refresh when the user deselects the field after changing its value.

 |
|

Placeholder

 |

`placeholder`

 |

_Text_

 |

Text to display in the field when it is empty. Does not show if the field is read only.

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

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the component. Valid values: "NONE" (default), "EVEN\_LESS", "LESS", "STANDARD" , "MORE", "EVEN\_MORE".

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the component. Valid values: "NONE", "EVEN\_LESS", "LESS", "STANDARD" (default), "MORE", "EVEN\_MORE".

 |

## Usage considerations

### Using text and placeholder text

-   If you want to display a number with thousand separators or with special formatting such as a currency, use the [text](Text_Component.html) component.
-   Whether placeholder text clears on focus or input varies by device and browser.

## Examples

Use the interactive editor below to test out the example code.

### Collect a decimal value from a user

### Display a decimal with a label

### Decimal with a validation

## Related Patterns

The following patterns include usage of the Decimal (Floating Point) Component.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...