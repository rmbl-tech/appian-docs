---
source_url: https://docs.appian.com/suite/help/25.3/Barcode_Component.html
original_path: Barcode_Component.html
version: "25.3"
title: "Barcode Component"
page_id: "Barcode_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Barcode Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!barcodeField**( _label, labelPosition, instructions, acceptedTypes, value, saveInto, refreshAfter, required, requiredMessage, readOnly, disabled, validations, validationGroup, align, placeholder, helpTooltip, masked, accessibilityText, showWhen, marginAbove, marginBelow_ )

Displays and allows entry of a barcode value using a barcode scanner or manual input.

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

Accepted Types

 |

`acceptedTypes`

 |

_List of Text String_

 |

Determines the types of barcodes that are accepted in the field. Null results in all types being accepted. Valid values: `"CODE39"`, `"CODE93"`, `"CODE128"`, `"DATAMATRIX"`, `"EAN8"`, `"EAN13"`, `"PDF417"`, `"QRCODE"`, `"UPCA"`, `"UPCE"`.

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

Determines when the interface is refreshed with the saved value from the barcode field. Valid values are `"KEYPRESS"` to refresh after every character typed into the field and `"UNFOCUS"` (the default value) to refresh when the user deselects the field after changing its value.

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

Alignment

 |

`align`

 |

_Text_

 |

Determines alignment of the text value. Valid values: `"LEFT"` (default), `"CENTER"`, `"RIGHT"`.

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

### Scanning on different devices

-   The native device's camera is used on mobile devices to scan barcodes.
-   The _masked_ parameter is ignored on offline interfaces on Android devices. All barcode components are shown un-masked in this case.
-   The barcode component does not support barcode scanning on Appian's web user interfaces. Instead, users can manually enter barcode values.

### Using the acceptedTypes parameter

-   Use the _acceptedTypes_ parameter to specify one or more type(s) of barcode.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Without masking

Use the interactive editor below to test out the example code.

Displays the following on Appian's browser user interfaces:

![screenshot of a barcode without masking in a browser](images/barcode-web-nomask.png)

Displays the following on Appian Mobile iOS application:

![screenshot of a barcode without masking on the mobile app on iOS](images/barcode_ios_nomask.png)

Displays the following on Appian Mobile Android application:

![screenshot of a barcode without masking on the mobile app on Android](images/barcode_android_nomask_30.png)

### With masking

Use the interactive editor below to test out the example code.

Displays the following on Appian's web user interfaces:

![screenshot of a barcode with masking in a browser ](images/barcode_web_masked.png)

Displays the following on Appian Mobile iOS application:

![screenshot of a barcode with masking on the mobile app on iOS](images/barcode_ios_masked.png)

Displays the following on Appian Mobile Android application:

![screenshot of a barcode with masking on the mobile app on Android](images/barcode_android_masked_30.png)

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