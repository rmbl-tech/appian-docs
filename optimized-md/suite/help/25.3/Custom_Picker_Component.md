---
source_url: https://docs.appian.com/suite/help/25.3/Custom_Picker_Component.html
original_path: Custom_Picker_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Custom Picker Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!pickerFieldCustom**( _label, instructions, required, readOnly, disabled, maxSelections, suggestFunction, selectedLabels, selectedTooltips, value, validations, saveInto, validationGroup, requiredMessage, labelPosition, placeholder, helpTooltip, selectedLinks, accessibilityText, showWhen, marginAbove, marginBelow_ )

Displays an autocompleting input for the selection of one or more items from an arbitrary data set. For an example of how to configure the picker, see the Configure an Array Picker SAIL Recipe.

**See also**: [DataSubset](Appian_Data_Types.html#datasubset)

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

Maximum Selections

 |

`maxSelections`

 |

_Number (Integer)_

 |

Maximum number of allowed selections. Once this number is reached, further selections are blocked until a selection is removed.

 |
|

Suggestion Function

 |

`suggestFunction`

 |

_Any Type_

 |

A reference to a rule or function that populates the suggestion pane. The rule or function must take a single Text parameter and must return a DataSubset, created via a!dataSubset() or a plug-in function, where "data" contains the labels to display and "identifiers" contains the values to save.

 |
|

Selected Labels

 |

`selectedLabels`

 |

_List of Text String_

 |

Array of text display labels for the currently selected items.

 |
|

Selection Tooltips

 |

`selectedTooltips`

 |

_List of Text String_

 |

Array of text tooltips for the currently selected items.

 |
|

Display Value

 |

`value`

 |

_Any Type_

 |

Array of selected identifiers.

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

One or more variables that are updated with the array of selected identifiers when the user adds or removes an item. Use a!save() to save a modified or alternative value to a variable.

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

Selected Links

 |

`selectedLinks`

 |

_List of Variant_

 |

Array of links to apply to the selected tokens. Create links with a!authorizationLink(), a!documentDownloadLink(), a!dynamicLink(), a!newsEntryLink(), a!processTaskLink(), a!recordLink(), a!reportLink(), a!safeLink(), a!startProcessLink(), a!submitLink(), or a!userRecordLink().

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

### Using the suggestionFunction parameter

-   When a user types in the picker's text box, the text they type is passed to the _suggestionFunction_ parameter. The returned data-subset must have a text array as _data_. Each item in that array is a selectable suggestion in the pane. If a suggestion is picked, the component's value is updated with the object at the same index of the data-subset's _identifiers_ array (in addition to any existing selected identifiers).

### Text lengths and placeholders

-   _selectedLabels_, _selectedValues_, _selectedLinks_, and _selectedTooltips_ must all be the same length.
-   Whether placeholder text clears on focus or input varies by device and browser.

### Dropdowns vs. pickers

-   If you are trying to decide whether to use a [dropdown with search](Dropdown_Component.html) or a picker component, keep in mind that the dropdown search runs client-side and the performance cost of loading options happens on initial load whereas the picker search runs server-side and the performance cost of loading options happens while the user is searching. For small sets of options, we recommend using the dropdown component.

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

The following patterns include usage of the Custom Picker Component.

-   [Configure an Array Picker](/suite/help/25.3/recipe-configure-an-array-picker.html) (_Pickers_): Allow users to choose from a long text array using an auto-completing picker.

-   [Configure an Array Picker that Ignores Duplicates](/suite/help/25.3/recipe-configure-an-array-picker-that-ignores-duplicates.html) (_Pickers_): Allow users to choose from a long text array using an autocompleting picker and prevent any choice from being picked multiple times.

-   [Configure an Array Picker with a Show All Option](/suite/help/25.3/recipe-configure-an-array-picker-with-a-show-all-option.html) (_Pickers_): Allow users to choose from a long text array using an autocompleting picker, but also allow them to see the entire choice set using a dropdown.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...