---
source_url: https://docs.appian.com/suite/help/25.3/Encrypted_Text_Component.html
original_path: Encrypted_Text_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Encrypted Text Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!encryptedTextField**( _label, instructions, required, readOnly, disabled, value, saveInto, refreshAfter, validationGroup, requiredMessage, align, labelPosition, placeholder, helpTooltip, masked, accessibilityText, showWhen, inputPurpose, marginAbove, marginBelow_ )

Allows entry of a single line of text that is encrypted when saved into a variable. The value remains encrypted while on the server and is only decrypted when displayed in the component.

The entered value is encrypted before being stored in the variable specified by the _Save Input To_ parameter. The _Display Value_ parameter is decrypted just before being displayed. The value remains encrypted when stored on disk.

**See Also:** [Encrypted Text Data Type](Appian_Data_Types.html#encrypted-text), [Text](Text_Component.html)

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

_Decrypted Text_

 |

Text to display in the text field.

 |
|

Save Input To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated with the encrypted text when the user changes the field.

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

Determines alignment of text value. Appian recommends this setting only be used inside the Grid Layout component. Valid values: `"LEFT"`, `"CENTER"`, `"RIGHT"`.

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

### Using validations

-   Since the value is encrypted before it can be acted upon by a validation expression, no validation beyond checking for requiredness is possible with this component. For example, it is not possible to write an expression that validates that an id number matches the form `xxx-xx-xxxx`, nor is it possible to compare to values of type Encrypted Text to determine if they are equal.

### Accessing rule input values

-   When creating an interface that uses this component to save into an rule input of type Encrypted Text, the value of that input is not displayed inline in the Data pane. To access the value, click `[Encrypted Text]` in the value column.

### Appearance & placeholder text

-   This component has the same appearance as the text component.
-   Whether placeholder text clears on focus or input varies by device and browser.

### Display values & data types

-   The variable given as the _value_ parameter and the _saveInto_ parameter must be of type Encrypted Text.
    -   Variables declared as `a!localVariables()` are valid.
    -   Literal values or variables of other types are not valid.
-   The value given to the _Display Value_ parameter cannot be modified by an expression that expects Text because Encrypted Text is a different [data type](Appian_Data_Types.html#encrypted-text).
    -   No modification to the user input before storing it into the _Save Input To_ variable is possible for the same reason.

### Using the inputPurpose parameter

-   When using _inputPurpose_, there is no visible change in the interface object.
-   If _inputPurpose_ is set to `"OFF"`, autocomplete may be disabled depending on your browser settings. The default behavior allows for autocomplete, but does not require you to specify inputs.
-   _inputPurpose_ is not supported if the _masked_ parameter is set to `true`.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Encrypting and decrypting a value from a user

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
| Offline Mobile | Incompatible |  |
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