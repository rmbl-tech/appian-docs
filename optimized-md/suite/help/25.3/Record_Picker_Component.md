---
source_url: https://docs.appian.com/suite/help/25.3/Record_Picker_Component.html
original_path: Record_Picker_Component.html
version: "25.3"
title: "Record Picker Component"
page_id: "Record_Picker_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Record Picker Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!pickerFieldRecords**( _label, labelPosition, instructions, helpTooltip, placeholder, maxSelections, recordType, filters, value, saveInto, required, requiredMessage, readOnly, disabled, validations, validationGroup, accessibilityText, showWhen, showRecordLinks, marginAbove, marginBelow_ )

Displays an autocompleting input for the selection of one or more records, filtered by a single record type. Suggestions and picker tokens use the title of the record.

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

Placeholder

 |

`placeholder`

 |

_Text_

 |

Text to display in the field when it is empty. Does not show if the field is read only.

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

Record Type

 |

`recordType`

 |

_RecordType_

 |

Required, singular. Filters picker to select records of this type.

 |
|

Filters

 |

`filters`

 |

_Any Type_

 |

A single [logical expression](fnc_system_a_querylogicalexpression.html) or a list of [query filters](fnc_system_a_queryfilter.html) can be provided to apply additional filters to the record set. Queries inherit the default filters defined on the referenced record type. Service-backed record types can only be filtered using a logical expression if data sync is enabled.

 |
|

Display Value

 |

`value`

 |

_Any Type_

 |

Array of currently selected records. This will be either a List of Text or a List of Number (Integer), depending on the recordType selected.

 |
|

Save Input To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated with the array of selected records when the user selects or removes a record. Use a!save() to save a modified or alternative value to a variable.

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

When present, the requiredness of the field is only evaluated when a button in the same validation group is pressed. The value for this parameter cannot contain spaces. For example, `“validation group”` is not a valid value. You need to add an underscore between words: `“validation_group”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

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

Show Record Links

 |

`showRecordLinks`

 |

_Boolean_

 |

Determines whether selected records display links to their summary views. Default: true.

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

### Suggestions and permissions

-   The picker can display a maximum of 25 suggestions.
-   Suggestions are based on the fields used in the record title. However, if you use a service-backed record type without data sync enabled, the search is based on the search property configured in the [source expression](configure-record-data-source.html#record-data-source-\(sync-enabled\)).
-   Only records that the viewing user has permissions to see appear in the suggestions list, as determined by the [record-level security](record-level-security.html) or the default filters in the record type.

### Selections and placeholders

-   Any nulls in the array passed to selected records are not displayed. A `[Not Available]` token is displayed for any invalid identifiers in the selected records array.
-   The component always saves an array regardless of how many selections have been made.
-   By default, all selected record tokens include a link to the record unless _showRecordLinks_ is false. Consider setting _showRecordLinks_ to false when selecting reference data from the picker. See [Select a record from a record type without a link to the record](#select-a-record-from-a-record-type-without-a-link-to-the-record) for an example.
-   This picker cannot be used to selected records of a rule-backed record type (deprecated).
-   Whether placeholder text clears on focus or input varies by device and browser.

### Service-backed record types

If you want to use a [record picker](Record_Picker_Component.html) with a service-backed record type, it should work as expected, without the need to change your record definition. But, in case something is not working as desired, here are a few notes on how the record picker works and how you can tweak your record design to optimize for a record picker.

-   When a user types text into the picker field, it is equivalent to a user typing text into the search bar of the record list. The difference is that every new letter in the picker is a new call to the web service, whereas in the record list, the user must hit enter before any calls are made. This means increased load on the web service.
-   Once a record is picked, the component makes one call to the web service for every picked item to get the information displayed in the label. This could be problematic because there is often overhead in web service calls. For that reason, only use the record picker when the number of items you expect users to pick at one time is low.
-   Filters applied in the component are processed in the same way that default filters and user filters are processed. This means that any new filters in the picker needed to be handled accordingly in your source expression and data retrieval rule.

If this picker does not meet your needs, use a [custom picker](Custom_Picker_Component.html).

## Examples

_Record type object references are specific to each environment. If you copy and paste these examples into an interface, they will not evaluate. Use them as a reference only._

### Select a record from a record type

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
a!localVariables(
  local!storedRecord,
  a!pickerFieldRecords(
    label: "Choose an Employee Record",
    /* For the "recordType" parameter below, replace the record type reference (recordType!Employee)
     * with a valid record type reference in your environment.
     */
    recordType: recordType!Employee,
    value: local!storedRecord,
    saveInto: local!storedRecord
  )
)
```

Displays the following:

![screenshot of a record picker with a record from a record type selected](images/Record_picker_example_172.png)

### Select a record from a record type with filters

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
14
15
16
17
18
19
20
21
22
23
24
25
26
27
a!localVariables(
  local!storedRecord,
  a!pickerFieldRecords(
    label: "Choose an Employee Record",
    /* For the "recordType" parameter below, replace the record type reference (recordType!Employee)
     * with a valid record type reference in your environment.
     */
    recordType: recordType!Employee,
    filters: a!queryLogicalExpression(
        operator: "AND",
        filters: {
          a!queryFilter(
            field: recordType!Employee.fields.department,
            operator: "=",
            value: "Engineering"
          ),
          a!queryFilter(
            field: recordType!Employee.fields.startDate,
            operator: ">",
            value: date(2022, 1, 1)
          )
        }
      ),
    value: local!storedRecord,
    saveInto: local!storedRecord
  )
)
```

Displays the following:

![screenshot of a record picker with a filter and a record selected](images/Record_Picker_w_Filter_172.png)

### Select a record from a record type without a link to the record

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
14
15
16
a!localVariables(
  local!storedRecord,
    a!pickerFieldRecords(
      label: "Choose a Case Priority",
    /* For the "recordType" parameter below, replace the record type reference (recordType!Priority)
     * with a valid record type reference in your environment.
     */
      recordType: recordType!Priority,
      value: local!storedRecord,
      saveInto: local!storedRecord,
    /* Since the Priority record type only contains reference data (the different case priority levels),
     * we can hide the record links to prevent users from navigating to their summary views.
     */
      showRecordLinks: false,
    )
)
```

Displays the following:

![screenshot of a record picker without a link to the selected record](images/Record_Picker_without_Link.png)

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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!pickerFieldRecords\_20r2](/suite/help/25.3/Record_Picker_Component_20r2.html) |
Supports updated record types that use record type field references.

 |
| [a!pickerFieldRecords\_22r1](/suite/help/25.3/Record_Picker_Component_22r1.html) |

Updated the _filters_ parameter so it can now accept a single [logical expression](fnc_system_a_querylogicalexpression.html) or a list of [query filters](fnc_system_a_queryfilter.html) to determine which records appear in the picker

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...