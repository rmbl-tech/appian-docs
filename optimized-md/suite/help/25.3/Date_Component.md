---
source_url: https://docs.appian.com/suite/help/25.3/Date_Component.html
original_path: Date_Component.html
version: "25.3"
title: "Date Component"
page_id: "Date_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Date Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!dateField**( _label, instructions, required, readOnly, disabled, value, validations, saveInto, validationGroup, requiredMessage, align, labelPosition, helpTooltip, accessibilityText, showWhen, marginAbove, marginBelow_ )

Displays and allows entry of a single [date](Appian_Data_Types.html#date) (year, month, day). When the field is editable, users can input dates by typing or by picking from a calendar.

When working with [date and time](Appian_Data_Types.html#date-and-time) (year, month, day, hour, minute, second), use a [date & time](Date_and_Time_Component.html) component. To display a [time](Appian_Data_Types.html#time) (hour, minute, second), use a [time](Time_Component.html) component. To display a read-only date using a custom format, use a [text](Text_Component.html) component.

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

_Date_

 |

Date to display in the field.

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

One or more variables that are updated with the date when the user changes it. Use a!save() to save a modified or alternative value to a variable.

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

Determines alignment of the date value. Appian recommends this setting only be used inside the Grid Layout component. Valid values: `"LEFT"`, `"CENTER"`, `"RIGHT"`.

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

### Calendar and date formatting

-   The date is shown in the current user's time zone and calendar format.
-   If you want to display a date with formatting other than the default, use the Text Field component.

### Keyboard shortcuts

-   When focused on the calendar, selecting the **P** key will go to the previous month, the **N** key will go to next month, the **T** key will select today's date, and the **Delete** key will clear the value in the field.

## Examples

Use the interactive editor below to test out the example code.

### Date with only a label

### Date with a validation

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

The following patterns include usage of the Date Component.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Configure Buttons with Conditional Requiredness](/suite/help/25.3/recipe-configure-buttons-with-conditional-requiredness.html) (_Validation_): Present two buttons to the end user and only make certain fields required if the user clicks a particular button

-   [Disable Automatic Refresh After User Saves Into a Variable](/suite/help/25.3/recipe-disable-automatic-refresh-after-user-saves-into-a-variable.html) (_Auto-Refresh_): Automatically update a variable when its dependencies change until the user saves their own value into that variable.

-   [Refresh Data After Executing a Smart Service](/suite/help/25.3/recipe-refresh-data-after-executing-a-smart-service.html) (_Auto-Refresh, Smart Services_):

-   [Set the Default Value of an Input on a Start Form](/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-start-form.html) (_Default Value_): Display a default value in some form inputs on a start form, and save the value into the process when submitting.

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Use Links in a Grid to Show More Details and Edit Data in External System](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html) (_Grids, Web Services_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

-   [Use Validation Groups for Buttons with Multiple Validation Rules](/suite/help/25.3/recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html) (_Validation_): Present two buttons to the end user that, based on the selection, will validate only after a particular button is clicked.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...