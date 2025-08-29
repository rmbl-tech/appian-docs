---
source_url: https://docs.appian.com/suite/help/25.3/Text_Component.html
original_path: Text_Component.html
version: "25.3"
title: "Text Component"
page_id: "Text_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Text Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!textField**( _label, instructions, required, readOnly, disabled, value, validations, saveInto, refreshAfter, validationGroup, requiredMessage, align, labelPosition, placeholder, helpTooltip, masked, accessibilityText, showWhen, inputPurpose, characterLimit, showCharacterCount, marginAbove, marginBelow_ )

Displays and allows entry of a single line of text. For a multiple line of text, use a [paragraph](Paragraph_Component.html) component.

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

_Text_

 |

Text to display in the text field.

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

One or more variables that are updated with the text when the user changes it. Use a!save() to save a modified or alternative value to a variable.

 |
|

Refresh After

 |

`refreshAfter`

 |

_Text_

 |

Determines when the interface is refreshed with the saved value from the text field. Valid values are `"KEYPRESS"` to refresh after every character typed into the field and `"UNFOCUS"` (the default value) to refresh when the user deselects the field after changing its value.

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

Determines alignment of the text value. Appian recommends this setting only be used inside the Grid Layout component. Valid values: `"LEFT"`, `"CENTER"`, `"RIGHT"`.

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

Masked

 |

`masked`

 |

_Boolean_

 |

Determines if the value is obscured from view. Default: false.

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

Input Purpose

 |

`inputPurpose`

 |

_Text_

 |

Indicates the intent of input for accessibility improvements, like autocomplete, used by browsers and assistive technologies. Valid values are `"NAME"`, `"EMAIL"`, `"PHONE_NUMBER"`, `"STREET_ADDRESS"`, `"POSTAL_CODE"`, `"CREDIT_CARD_NUMBER"`, and `"OFF"`.

 |
|

Character Limit

 |

`characterLimit`

 |

_Number (Integer)_

 |

Determines the maximum number of characters. Depending on the language, some characters may count as more than one.

 |
|

Show Character Limit Count

 |

`showCharacterCount`

 |

_Boolean_

 |

Determines if the character count displays on the text field. Only applicable if the character limit is set. Default: true.

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

### Displaying different data types and placeholder text

-   This component is useful for displaying values of another type that require formatting other than the original type’s default formatting.
-   Whether placeholder text clears on focus or input varies by device and browser.

### Using the characterLimit parameter

-   Emojis and characters in some languages (for example, Chinese and Arabic) may be counted by _characterLimit_ as more than one character.
-   The _characterLimit_ parameter and character limits set on CDT fields must be independently maintained to ensure that the two limits match.
-   If you set _readOnly_ to `true`, the component's character limit won't be displayed.

### Using the readOnly parameter

-   If _readOnly_ is set to `true`, the component's value displays without a box around it.
-   If you pass the same local variable to _value_ and _saveInto_ when _readOnly_ is set to `false`, you can use the user's input in the component to modify the interface, such as filtering a grid.

### Using inputPurpose parameter

-   When using _inputPurpose_, there is no visible change in the interface object.
-   If _inputPurpose_ is set to `"OFF"`, autocomplete may be disabled depending on your browser settings. The default behavior allows for autocomplete, but does not require you to specify inputs.
-   _inputPurpose_ is not supported if the _masked_ parameter is set to `true`.

## Examples

Use the interactive editor below to test out the example code.

### Text with only a label

### Text with label and instructions

### Time with 24-hour formatting

### Integer with no formatting or with special formatting

This example shows an integer with no thousand separators.

### Integer formatted as currency

```
1
2
3
4
5
6
7
8
a!textField(
  label: "Amount",
  value: a!currency(
    isoCode: "USD",
    value: 12345
  ),
  readOnly: true
)
```

Displays the following:

![integer as currency](images/text_comp_integer_currency.png)

### Date with "m/dd/yy" formatting

### Date and time with "m/dd/yy h:mm a" formatting

### Text with character limit

This example uses the _characterLimit_ parameter to validate that a user's entry meets a particular limit.

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

The following patterns include usage of the Text Component.

-   [Define a Simple Currency Component](/suite/help/25.3/recipe-define-a-simple-currency-component.html) (_Formatting_): Show a text field that allows the user to enter dollar amounts including the dollar symbol and thousand separators, but save the value as a decimal rather than text. Additionally, always show the dollar amount with the dollar symbol.

-   [Format the User's Input](/suite/help/25.3/recipe-format-the-users-input.html) (_Formatting_): Format the user's input as a telephone number in the US and save the formatted value, not the user's input.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...