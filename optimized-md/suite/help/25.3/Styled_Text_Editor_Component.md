---
source_url: https://docs.appian.com/suite/help/25.3/Styled_Text_Editor_Component.html
original_path: Styled_Text_Editor_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Styled Text Editor Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!styledTextEditorField**( _label, labelPosition, instructions, helpTooltip, value, saveInto, readOnly, required, requiredMessage, disabled, validations, validationGroup, showWhen, accessibilityText, height, sizeLimit, placeholder, allowedFormats, marginAbove, marginBelow_ )

Allows users to enter and view styled text. Text is stored with HTML formatting. To display text as a design element in your interface, use the [rich text display](Rich_Text_Component.html) component.

For more information on text input components and when to use each, see the [Inputs](sail/ux-inputs.html#text-inputs) best practices in the SAIL Design System.

### Supported text formatting

The styled text editor supports the following text formatting:

-   Bold text
-   Italic text
-   Underline text
-   Strikethrough text
-   Subscript
-   Superscript
-   Links
-   Text alignment
-   Bulleted lists
-   Numbered lists
-   Tables

Additionally, it also supports the following Markdown formatting:

| Format | Markdown Formatting | Example | Returns |
| --- | --- | --- | --- |
| Bold | Double asterisks `**` or underscores `__` | `**text**` or `__text__` | **text** |
| Italics | Single asterisk `*` or underscore `_` | `*text*` or `_text_` | _text_ |
| Strikethrough | Double tildes `~~` | `~~text~~` | ~text~ |
| Bulleted list | At the beginning of a new line, an asterisk `*`, dash `-`, or plus sign `+`, followed by a space | `* text`

`- text`

\-or-

`+ text` |
-   text

 |
| Numbered list | At the beginning of a new line, any number followed by a period and a space | `1. text`
`1. text` |

1.  text
2.  text

 |

To keep the Markdown characters in your text without applying the formatting, after the formatting is applied, select the backspace key. The effect will be removed and the Markdown characters will be visible as plain text. This must be done right after the effect appears. After you move the cursor away from the formatted text, selecting backspace will no longer revert the formatting.

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

Display Value

 |

`value`

 |

_Text_

 |

Text to display in the field, including the HTML formatting.

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

Read-only

 |

`readOnly`

 |

_Boolean_

 |

Determines if the field should display as not editable. Default: false.

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

Required Message

 |

`requiredMessage`

 |

_Text_

 |

Custom message to display when the field's value is required and not provided.

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

Validations

 |

`validations`

 |

_List of Text String_

 |

Validation errors to display below the field when the value is not null.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text_

 |

When present, this field is only validated when a button in the same validation group is pressed. Do not use spaces in the value for this parameter. For example, instead of `“Future Hire”`, use `“Future_Hire”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

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

Height

 |

`height`

 |

_Text_

 |

Determines the field height. Valid values: `"EXTRA_SHORT"`, `"SHORT"`, `"SHORT_PLUS"`, `"MEDIUM"` (default), `"MEDIUM_PLUS"`, `"TALL"`, `"TALL_PLUS"`, `"EXTRA_TALL"`.

 |
|

Size Limit

 |

`sizeLimit`

 |

_Number (Integer)_

 |

Determines how much text the user can enter. The parameter value is about equal to the number of characters allowed, including HTML formatting.

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

Allowed Formats

 |

`allowedFormats`

 |

_List of Text String_

 |

Determines the text formats available for styling text. Valid values: `"BOLD"`, `"ITALIC"`, `"UNDERLINE"`, `"STRIKETHROUGH"`, `"SUBSCRIPT"`, `"SUPERSCRIPT"`, `"LINK"`, `"TEXT_ALIGNMENT"`, `"NUMBERED_LIST"`, `"BULLETED_LIST"`, `"TABLE"`. Default: All formats allowed, except `"SUBSCRIPT"`, `"SUPERSCRIPT"`, `"TEXT_ALIGNMENT"`, `"TABLE"`.

 |
|

Margin Above

 |

`marginAbove`

 |

_Text_

 |

Determines how much space is added above the component. Valid values: `"NONE"` (default), `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` , `"MORE"`, `"EVEN_MORE"`.

 |
|

Margin Below

 |

`marginBelow`

 |

_Text_

 |

Determines how much space is added below the component. Valid values: `"NONE"`, `"EVEN_LESS"`, `"LESS"`, `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

 |

## Usage considerations

### Inputting and formatting text

The styled text editor uses standard HTML to format text. For example, when a user applies underline formatting to text, behind the scenes the styled text editor wraps the value in HTML tags like this: `<u>Text</u>`.

Because of this, users can copy and paste text from other programs, such as documents and emails, and the [supported text formatting](#supported-text-formatting) will be preserved. Any unsupported formatting will be removed. For example, if someone copies and pastes a table, the table row and column formatting will be removed, but any supported formatting, such as bold text or links, will be preserved.

If users copy and paste or manually type HTML tags, the tags will be treated as plain text. When the value is stored, the less-than (<) and greater-than (>) symbols in the HTML tags will be replaced with their character reference—`&lt;` for `<` and `&gt;` for `>`.

For example, if a user types or pastes `<u>Text</u>`, it will be saved as `&lt;u&gt;Text&lt;/u&gt;`. However, if a user copies "Text" into a styled text editor, it will be saved as `<u>Text</u>`.

When the text that the user is inputting reaches 100,000 bytes, the styled text editor will prevent them from entering more text.

### Displaying styled text editor values

#### Displaying the read-only value

When you need to display the styled text editor value in an interface, display it in a styled text editor component with the _readOnly_ parameter set to `true`. If you try to display it in any other component, it will display with the HTML tags.

The below screenshot shows the difference between displaying the value in rich text display, paragraph, and styled text editor components.

![styled-text-editor-display](images/styled-text-editor-display.png)

See [Displaying read-only styled text editor values](sail/ux-inputs.html#displaying-read-only-styled-text-editor-values) for guidance on displaying read-only values so that they are set apart from other formatted text in the interface.

#### Displaying the value in a grid

By default, displaying the value from a styled text editor component in a grid includes the HTML tags used for formatting.

If you need to display a styled text editor value in a grid, save an alternate value using `stripHtml()` to a separate field in your database. Use the alternate value for the _sortField_ and _value_ parameters in the [grid column](Grid_Column_Component.html).

For considerations about using the value from a styled text editor in a grid, see [Choosing which text input to use](sail/ux-inputs.html#choosing-which-text-input-to-use).

#### Displaying the value in emails

Because emails sent from Appian use HTML for formatting, you can use the styled text editor value in an [Send E-Mail](Send_Email_Smart_Service.html) node and it will display with the user's formatting applied to the text.

### Using parameters

#### Using the sizeLimit parameter

##### The size limit value

The value of the _sizeLimit_ parameter is in bytes, not characters. Most characters are one byte. However, certain characters are more than one byte, including emojis and some characters from non-latin alphabets. So if you set the _sizeLimit_ parameter to 4,000, you are allowing 4,000 bytes, not necessarily 4,000 characters.

Keep in mind that the HTML tags that are saved with the styled text editor value are included in the size limit. So even if a user enters exactly 4,000 characters, when they add any formatting, they will exceed the size limit.

##### Matching the size limit to the database field

Make sure the value you set for the _sizeLimit_ parameter matches the length of the field in your data source. For example, most standard Text fields have a 255 character limit.

##### Size limit validations

When a user approaches the size limit, the styled text editor displays the remaining percentage of text they have left. When they exceed the size limit, it displays the percentage of how far they are over the size limit and a size limit validation message appears below the component.

![typing and hitting a size validation in styled text editor](images/styled-text-editor-validation.gif)

##### Using a large size limit or no size limit

Whenever possible, set the _sizeLimit_ parameter to 4,000 or less.

If you need to allow users to enter more text, avoid using the value in a process model. To save the value to a database, write it directly from the interface using [a!writeToDataStoreEntity()](Write_to_Data_Store_Entity_Smart_Service.html#awritetodatastoreentity) or [a!writeRecords()](Write_Records_Smart_Service.html#awriterecords) in the _saveInto_ parameter of a button component.

### Using the allowedFormats parameter

By default, users are allowed to use all formats except subscript, superscript,text alignment, and tables.

To enable these formats, add the _allowedFormats_ parameter and enter a list of all the valid values listed in the parameter description.

For example, the following expression displays all supported formatting options:

```
1
2
3
4
5
6
7
8
9
10
11
{
  a!styledTextEditorField(
    label: "Styled Text Editor",
    labelPosition: "ABOVE",
    saveInto: {},
    sizeLimit: 4000,
    height: "MEDIUM",
    validations: {},
!    allowedFormats: {"BOLD", "ITALIC", "UNDERLINE", "STRIKETHROUGH", "SUBSCRIPT", "SUPERSCRIPT", "LINK", "TEXT_ALIGNMENT", "NUMBERED_LIST", "BULLETED_LIST", "TABLE"}
  )
}
```

#### Using the readOnly parameter

-   If _readOnly_ is set to `true`, the component's value displays without a box around it.
-   If you pass the same local variable to _value_ and _saveInto_ when _readOnly_ is set to `false`, you can use the user's input in the component to modify the interface.

## Examples

Use the interactive editor below to test out the example code.

### Read-only styled text editor component

See [Displaying read-only styled text editor values](sail/ux-inputs.html#displaying-read-only-styled-text-editor-values) for guidance on displaying read-only values so that they are set apart from other formatted text in the interface.

### Storing styled text editor value in a local variable

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