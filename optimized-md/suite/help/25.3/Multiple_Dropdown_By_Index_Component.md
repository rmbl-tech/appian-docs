---
source_url: https://docs.appian.com/suite/help/25.3/Multiple_Dropdown_By_Index_Component.html
original_path: Multiple_Dropdown_By_Index_Component.html
version: "25.3"
title: "Multiple Dropdown By Index Component"
page_id: "Multiple_Dropdown_By_Index_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Multiple Dropdown By Index Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!multipleDropdownFieldByIndex**( _label, labelPosition, instructions, required, disabled, placeholder, choiceLabels, value, validations, saveInto, validationGroup, requiredMessage, helpTooltip, accessibilityText, showWhen, searchDisplay_ )

Displays a list of choices for the user to select multiple items and saves the indices of the selected choices. To save a value instead of the index, use a [multiple dropdown component](Multiple_Dropdown_Component.html).

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

Placeholder

 |

`placeholder`

 |

_Text_

 |

Text to display in the field when it is empty.

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

Selected Indices

 |

`value`

 |

_List of Number (Integer)_

 |

Indices of choices to display as selected.

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

Save Selection To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated with the choice indexes when the user changes the selections. Use a!save() to save a modified or alternative value to a variable.

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

Search Display

 |

`searchDisplay`

 |

_Text_

 |

Determines when a search box displays above the options. Valid values: `"AUTO"` (default), `"ON"`, `"OFF"`. When set to `"AUTO"`, the search box displays if there are more than 11 options.

 |

## Usage considerations

### Using the selectedIndices parameter

-   The indices passed to the _selectedIndices_ parameter display as selected by default. If null is passed to _selectedIndices_, none of the options are selected. However, if a list is passed to _selectedIndices_, it cannot contain a null value.
-   Choice index numbers start at 1. Indices passed _selectedIndices_ cannot be less than 1 or greater than the length of the _choiceLabels_ array.
-   If a single item is selected, the system saves a single-item array.

### Using the choiceLabels parameters

-   Options display in the same order as defined in the _choiceLabels_ parameter. The _choiceLabels_ argument cannot be null.

### Saving and clearing values

-   If no selection is made or the selection is cleared, the system saves a null value into the component's _Save Selection To_ field.
-   Users can always clear the value using the `x` icon on web or the `Clear` link on the mobile application.

## Examples

Use the interactive editor below to test out the example code.

### Multiple dropdown by index with initial values

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!multipleDropdownFieldByIndex\_20r2](/suite/help/25.3/Multiple_Dropdown_By_Index_Component_20r2.html) |
Added an optional search box.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...