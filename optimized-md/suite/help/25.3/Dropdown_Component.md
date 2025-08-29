---
source_url: https://docs.appian.com/suite/help/25.3/Dropdown_Component.html
original_path: Dropdown_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Dropdown Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!dropdownField**( _label, labelPosition, instructions, required, disabled, choiceLabels, choiceValues, placeholder, value, validations, saveInto, validationGroup, requiredMessage, helpTooltip, accessibilityText, showWhen, searchDisplay, data, sort, marginAbove, marginBelow_ )

Displays a list of choices for the user to select one item and saves a value based on the selected choice.

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
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.

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

_List of Variant_

 |

Array of options for the user to select. When the data source is a record type, use a record type reference to specify a record field or related record field. To format a record field or display multiple record fields, use `fv!data` and a record type reference. For example, `fv!data[recordType!Order.fields.city] & ", " & fv!data[recordType!Order.fields.state]`

 |
|

Choice Values

 |

`choiceValues`

 |

_List of Variant_

 |

Array of values associated with the corresponding choices. When the data source is a record type, this is a record field (usually the primary key field).

 |
|

Placeholder

 |

`placeholder`

 |

_Text_

 |

Text to display when nothing is selected and the value is null.

 |
|

Selected Value

 |

`value`

 |

_Any Type_

 |

Value of the choice to display as selected.

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

One or more variables that are updated with the choice value when the user changes the selection. Use `a!save()` to save a modified or alternative value to a variable.

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
|

Data Source

 |

`data`

 |

_Any_

 |

The record type used as the source of the component's choices. This can be specified with a record type reference or `a!recordData()`.

 |
|

Sort

 |

`sort`

 |

_List of SortInfo_

 |

Array of Sort Info configurations created with [a!sortInfo()](fnc_system_a_sortinfo.html). When the data source is a record type, you can use the value `"choiceLabels"` or `"choiceValues"` in the `a!sortInfo()` function to sort by the values in that parameter. For example, `a!sortInfo(field: "choiceLabels", ascending: false)`

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

### When to use a dropdown

There are multiple selection components you can use to display options in an interface. As a best practice, you should use a dropdown component when there are only a small set of options.

If there aren't many options and users would benefit from easily seeing them all at once, consider using [radio buttons](Radio_Button_Component.html).

If there are a large set of options, consider using a [picker component](Custom_Picker_Component.html). The picker search runs server-side and the performance cost of loading options happens while the user is searching. This may lead to better performance than a dropdown if you have a large set of options.

If the user may select none, one, or many of the options, use either the [checkbox component](Checkbox_Component.html) or a [multiple dropdown component](Multiple_Dropdown_Component.html).

### Using the choiceLabels and choiceValues parameters

When configuring the Choice Labels and Choice Values parameters, keep the following in mind:

-   The _Choice Labels_ cannot be null.
-   The _Choice Values_ cannot contain nulls or duplicate values.
-   The _Choice Labels_ list and _Choice Values_ list must be the same length.

When you select **Record Type** as the data source, the _Choice Labels_ and _Choice Values_ are automatically populated with record field references. By default, the labels will be the first text field from the record type, and the values will be the primary key field.

You can format and display multiple record fields in the Choice Labels parameter using `fv!data` and a record field reference. For example, if you want to display a list of US cities with their states in parentheses, you could use the following expression:

```
1
choiceLabels: fv!data[recordType!Location.fields.city] & " (" & fv!data[recordType!Location.fields.state] & ")"
```

This would display choice labels as:

```
1
2
3
4
5
New York City (New York)
Los Angeles (California)
Chicago (Illinois)
Houston (Texas)
Phoenix (Arizona)
```

**Note:**  You cannot reference related record fields with `fv!data` in the Choice Labels parameter. Instead, you should create a component using the related record type as the source to display that data in the Choice Labels parameter.

### Sort choices

The way you sort the choices depends on the source of the component. If no sort is applied, the labels will appear in the order they're provided.

When you select **Record Type** as the data source:

-   The choice order is determined by the _Sort_ parameter.
-   You can automatically sort by the values configured in the _Choice Labels_ or _Choice Values_ parameters by using `"choiceLabels"` or `"choiceValues"` in the [a!sortInfo()](fnc_system_a_sortinfo.html) function.

    For example, `a!sortInfo(field: “choiceLabels”, ascending: true)` would automatically sort the choices by the values in the _Choice Labels_ parameter.

When you select **Other** as the data source:

-   The choices display in the order defined in the _Choice Labels_.

### Using the placeholder parameter

To allow users on web to clear the selected value, text must be specified for the `placeholder` parameter. Users can always clear the value on the Appian for Mobile application.

Passing a null value to the dropdown's _Selected Value_ parameter causes the placeholder text to appear selected. The _Placeholder_ and _Selected Value_ parameter cannot both be null.

### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

## Examples

_Record type object references are specific to each environment. If you copy and paste the example with record field references into your interface, it will not evaluate. Use that example as a reference only._

### Dropdown with choices from a record type

In this example, the component's choices are retrieved from a reference record type that contains the full names and abbreviations of US states.

The `choiceLabels` parameter references the `name` field and the `name_short` field to display the name of each state and the state's abbreviation in parentheses. The `choiceValues` are set using the record type's primary key field, `id`.

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
12
a!dropdownField(
  data: recordType!AT State,
  choiceLabels: fv!data[recordType!AT State.fields.name] & " (" & fv!data[recordType!AT State.fields.name_short] & ")",
  choiceValues: recordType!AT State.fields.id,
  label: "State",
  placeholder: "Select a State",
  value: ri!record[recordType!AT Customer.relationships.address.fields.stateId],
  saveInto: ri!record[recordType!AT Customer.relationships.address.fields.stateId],
  sort: a!sortInfo(
    field: "choiceLabels",
    ascending: true)
)
```

### Dropdown with the first choice selected by default and search on auto

Since the `searchDisplay` parameter is set to `AUTO` and the number of `choiceValues` is less than 12, no search box will be displayed.

Use the interactive editor below to test out the example code.

Since the `searchDisplay` parameter is set to `AUTO` and the number of `choiceValues` is more than 11, a search box will be displayed.

Use the interactive editor below to test out the example code.

### Dropdown with no choice selected by default and search on

Since the `searchDisplay` parameter is set to `ON`, even though the number of `choiceValues` is less than 12, a search box will be displayed.

Use the interactive editor below to test out the example code.

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
| [a!dropdownField\_20r2](/suite/help/25.3/Dropdown_Component_20r2.html) |
Added an optional search box and renamed the placeholderLabel parameter to placeholder.'

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Dropdown Component.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Conditionally Hide a Column in a Grid](/suite/help/25.3/recipe-conditionally-hide-a-column-in-a-grid.html) (_Grids, Conditional Display_): Conditionally hide a column in a read-only grid when all data for that column is a specific value.

-   [Configure Buttons with Conditional Requiredness](/suite/help/25.3/recipe-configure-buttons-with-conditional-requiredness.html) (_Validation_): Present two buttons to the end user and only make certain fields required if the user clicks a particular button

-   [Configure Cascading Dropdowns](/suite/help/25.3/recipe-configure-cascading-dropdowns.html) (_Conditional Display, Choice Components_): Show different dropdown options depending on the user selection.

-   [Configure a Dropdown Field to Save a CDT](/suite/help/25.3/recipe-configure-a-dropdown-field-to-save-a-cdt.html) (_Choice Components_): When using a dropdown to select values from the database, or generally from an array of CDT values, configure it to save the entire CDT value rather than just a single field.

-   [Configure a Dropdown with an Extra Option for Other](/suite/help/25.3/recipe-configure-a-dropdown-with-an-extra-option-for-other.html) (_Choice Components_): Show a dropdown that has an "Other" option at the end of the list of choices. If the user selects "Other", show a required text field.

-   [Configure an Array Picker with a Show All Option](/suite/help/25.3/recipe-configure-an-array-picker-with-a-show-all-option.html) (_Pickers_): Allow users to choose from a long text array using an autocompleting picker, but also allow them to see the entire choice set using a dropdown.

-   [Display Multiple Files in a Grid](/suite/help/25.3/recipe-display-multiple-files-in-a-grid-for-editing.html) (_Document Management, Grids_): Show a dynamic number of files in a grid and edit certain file attributes.

-   [Dynamically Show Sales by Product Category Compared to Total Sales](/suite/help/25.3/recipe-show-total-sales-compared-to-sales-per-category.html) (_Records, Reports, Charts, Filtering_): This pattern illustrates how to create an area chart that dynamically displays sales generated by product category compared to total sales.

-   [Filter the Data in a Grid](/suite/help/25.3/recipe-filter-the-data-in-a-grid.html) (_Grids, Filtering, Records_): Configure a user filter for your read-only grid that uses a record type as the data source. When the user selects a value to filter by, update the grid to show the result.

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Searching on Multiple Columns](/suite/help/25.3/recipe-searching-on-multiple-fields.html) (_Grids, Filtering, Reports_): Display a grid populated based on search criteria specified by end users.

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Update an Entity-Backed Record Type from its Summary View](/suite/help/25.3/recipe-update-an-entity-backed-record-from-its-summary-view.html) (_Records, Smart Services_): Enable users to make quick changes to a record by updating it right from a record view.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

-   [Use Validation Groups for Buttons with Multiple Validation Rules](/suite/help/25.3/recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html) (_Validation_): Present two buttons to the end user that, based on the selection, will validate only after a particular button is clicked.

-   [Use a Filter to Adjust Chart Reference Lines](/suite/help/25.3/recipe-use-a-filter-to-adjust-chart-reference-lines.html) (_Filtering, Charts_): Using a dropdown, filter the results of a data set while also adjusting a chart reference line.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...