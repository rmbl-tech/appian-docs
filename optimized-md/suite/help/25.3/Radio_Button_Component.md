---
source_url: https://docs.appian.com/suite/help/25.3/Radio_Button_Component.html
original_path: Radio_Button_Component.html
version: "25.3"
title: "Radio Button Component"
page_id: "Radio_Button_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Radio Button Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!radioButtonField**( _label, instructions, required, disabled, choiceLabels, choiceValues, value, validations, saveInto, validationGroup, requiredMessage, labelPosition, choiceLayout, helpTooltip, accessibilityText, showWhen, choiceStyle, spacing, data, sort, marginAbove, marginBelow, choicePosition_ )

Displays a limited set of choices from which the user must select one item and saves a value based on the selected choice. To save the index instead of a value, use [radio buttons by index](Radio_Button_By_Index_Component.html).

If the choice is not exclusive, then consider using [checkboxes](Checkbox_Component.html) or a [multiple dropdown](Multiple_Dropdown_Component.html) component.

If there are many choices, make the component as large as necessary to display all the options. If a more compact presentation is desirable, consider using a [dropdown](Dropdown_Component.html) component.

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

Display Value

 |

`value`

 |

_Any Type_

 |

Value of choice to display as selected.

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

Choice Layout

 |

`choiceLayout`

 |

_Text_

 |

Determines the layout. Valid values: `"STACKED"` (default), `"COMPACT"`.

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

Choice Style

 |

`choiceStyle`

 |

_Text_

 |

Determines how the choices should be displayed on the interface. Valid values: `"STANDARD"` (default), `"CARDS"`.

 |
|

Spacing

 |

`spacing`

 |

_Text_

 |

Determines the space between the options. Valid values: `"STANDARD"` (default), `"MORE"`, `"EVEN_MORE"`.

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
|

Choice Position

 |

`choicePosition`

 |

_Text_

 |

Determines whether radio buttons appear on the left or right of the choice labels. Valid values: "START" (default for "STANDARD" choiceStyle), "END" (default for "CARDS" choiceStyle).

 |

## Usage considerations

### Using the choiceLayout, choiceStyle, and choicePosition parameters

See the SAIL Design System for [choice best practices](sail/ux-inputs.html#choice-best-practices).

### Using the choiceLabels and choiceValue parameters

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

### Row limit for records-powered components

Interface components that use a record type as the data source are known as [_records-powered components_](Using_the_Records_Tab.html#interface-components).

Records-powered components can display a maximum of 5,000 rows. As a best practice, you should not display all 5,000 rows in a component since it may impact performance.

## Examples

_Record type object references are specific to each environment. If you copy and paste the example with record field references into your interface, it will not evaluate. Use that example as a reference only._

### Radio button with choices from a record type

In this example, the component's choices are retrieved from a reference record type that contains the industries your customer's represent. `choiceLabels` uses the `name` field and the corresponding `choiceValues` are set using the record type's primary key field, `id`.

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
13
a!radioButtonField(
  data: recordType!AT Industry,
  choiceLabels: recordType!AT Industry.fields.name,
  choiceValues: recordType!AT Industry.fields.id,
  label: "Industry",
  value: ri!record[recordType!AT Customer.fields.districtId],
  saveInto: ri!record[recordType!AT Customer.fields.districtId],
  sort:
    a!sortInfo(
      field: "choiceLabels",
      ascending: true
    )
)
```

### Radio Button with first choice selected by default

Use the interactive editor below to test out the example code.

### Radio Buttons with compact layout and cards style

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
| [a!radioButtonField\_23r3](/suite/help/25.3/Radio_Button_Component_23r3.html) |
Added the ability to use record field values as radio button choices.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Radio Button Component.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...