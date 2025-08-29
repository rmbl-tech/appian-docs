---
source_url: https://docs.appian.com/suite/help/25.3/Paragraph_Component.html
original_path: Paragraph_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Paragraph Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!paragraphField**( _label, instructions, required, readOnly, disabled, value, validations, saveInto, refreshAfter, labelPosition, validationGroup, requiredMessage, height, placeholder, helpTooltip, showWhen, accessibilityText, characterLimit, showCharacterCount, marginAbove, marginBelow_ )

Displays and allows entry of multiple lines of text. For a single line of text, use a [text](Text_Component.html) component.

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

Text to display in the field.

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

Determines when the interface is refreshed with the saved value from the paragraph field. Valid values are `"KEYPRESS"` to refresh after every character typed into the field and `"UNFOCUS"` (the default value) to refresh when the user deselects the field after changing its value.

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

Height

 |

`height`

 |

_Text_

 |

Determines the field height. Valid values: `"SHORT"`, `"MEDIUM"` (default), `"TALL"`.

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

Determines if the character count displays on the paragraph field. Only applicable if the character limit is set. Default: true.

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

### Using the characterLimit parameter

-   Emojis and characters in some languages (for example, Chinese and Arabic) may be counted by _characterLimit_ as more than one character.
-   The _characterLimit_ parameter and character limits set on CDT fields must be independently maintained to ensure that the two limits match.
-   If you set _readOnly_ to `true`, the component's character limit won't be displayed.

### Using the readOnly parameter

-   If _readOnly_ is set to `true`, the component's value displays without a box around it.
-   If you pass the same local variable to _value_ and _saveInto_ when _readOnly_ is set to `false`, you can use the user's input in the component to modify the interface.

## Examples

Use the interactive editor below to test out the example code.

### Paragraph with only an adjacent label

### Editable paragraph with a label and instructions

### Paragraph using character limit

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

The following patterns include usage of the Paragraph Component.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...