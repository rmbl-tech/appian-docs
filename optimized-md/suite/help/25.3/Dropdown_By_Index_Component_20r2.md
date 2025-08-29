---
source_url: https://docs.appian.com/suite/help/25.3/Dropdown_By_Index_Component_20r2.html
original_path: Dropdown_By_Index_Component_20r2.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!dropdownFieldByIndex\_20r2 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Dropdown By Index Component](/suite/help/25.3/Dropdown_By_Index_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/Dropdown_By_Index_Component.html#Old_Version)

## Dropdown By Index

**Function**: `a!dropdownFieldByIndex_20r2()`

Displays a limited set of exclusive choices from which the user must select one item and saves the index of the selected choice. To save a value instead of the index, use a [dropdown](Dropdown_Component.html). This component is not available from the interface component picker in the design view.

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

Choice Labels

 |

`choiceLabels`

 |

_List of Text String_

 |

Array of options for the user to select.

 |
|

Placeholder Label

 |

`placeholderLabel`

 |

_Text_

 |

Text to display when nothing is selected and the value is null.

 |
|

Selected Index

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

**Notes**

-   If you set _Label Position_ to `"ADJACENT"` or `"ABOVE"`, but do not give a value for _Label_, a space still displays to the left-side or above, respectively, of the component as if there was a label displayed. To ensure the component appears to the far left when _Label_ has no value, use `"COLLAPSED"` for _Label Position_.
-   Choices display in the same order as defined in the _Choice Labels_ parameter. The _Choice Labels_ argument cannot be null.
-   Passing a null value to the dropdown's _Selected Index_ parameter causes the placeholder text to appear selected. The _Placeholder Label_ and _Selected Index_ arguments cannot both be null. If the placeholder is selected and _Required_ is true when a validating button is clicked, the field prompts the user to select a value.
-   The argument passed to the _Placeholder Label_ parameter does not have an index.
-   Choice index numbers start at 1. The index number for _Selected Index_ cannot be null, empty, less than 1, or greater than the length of the _Choice Labels_ array.
-   The choice at the index passed to the _Selected Index_ parameter displays as selected by default.

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