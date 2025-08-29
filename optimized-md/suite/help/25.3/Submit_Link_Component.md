---
source_url: https://docs.appian.com/suite/help/25.3/Submit_Link_Component.html
original_path: Submit_Link_Component.html
version: "25.3"
title: "Submit Link"
page_id: "Submit_Link_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Submit Link

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!submitLink**( _label, confirmMessage, confirmButtonStyle, value, saveInto, skipValidation, validationGroup, confirmHeader, confirmButtonLabel, cancelButtonLabel, showWhen_ )

Defines a link to trigger form submission. Links can be used in charts, grids, hierarchy browsers, images, link fields, milestones, pickers, and rich text.

**See also**:

-   [Submit Button](Submit_Button_Component.html)
-   [Link](Link_Component.html)
-   [Images](Image_Component.html)
-   [Buttons and link design guidance](sail/ux-buttons-vs-links.html)

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

Text associated with this link.

 |
|

Confirmation Message

 |

`confirmMessage`

 |

_Text_

 |

Text to display in an optional confirmation dialog where a null argument disables the confirmation dialog and a text argument enables it with the text entered as the confirmation message.

 |
|

Confirmation Button Style

 |

`confirmButtonStyle`

 |

_Text_

 |

Determines the style of the primary button in the confirmation dialog. Valid values: `"PRIMARY"` (default),`"DESTRUCTIVE"`.

 |
|

Value

 |

`value`

 |

_Any Type_

 |

Value to be saved when the link is clicked.

 |
|

Save Value To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated with the link value when the user clicks it. Use a!save() to save a modified or alternative value to a variable.

 |
|

Skip Validation

 |

`skipValidation`

 |

_Boolean_

 |

When true, submit without performing validation. Default: false.

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

Confirmation Header

 |

`confirmHeader`

 |

_Text_

 |

Text to display at the top of the confirmation dialog.

 |
|

Confirmation Button Label

 |

`confirmButtonLabel`

 |

_Text_

 |

Text to display on the confirm button. Default: `"Yes"`.

 |
|

Cancel Button Label

 |

`cancelButtonLabel`

 |

_Text_

 |

Text to display on the cancel button. Default: `"No"`.

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

## Usage considerations

### Primary and secondary buttons

-   In the confirmation dialog there are two buttons. The confirm button is in the primary position and the cancel button is in the secondary position.
-   The cancel button is always `"SECONDARY"` style.

### Saving values

-   If _confirmationHeader_ and _confirmationMessage_ are null, the interface refreshes and the _saveInto_ state change occurs once the user clicks the link. If either is not null, the confirmation dialog displays. The interface only refreshes and the _saveInto_ state change only occurs if the user clicks the confirm button.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Confirmation dialog

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
a!linkField(
  links: {
    a!submitLink(
      label: "Delete Request",
      confirmHeader: "Warning!",
      confirmMessage: "This request will be permanently deleted. Do you want to continue?",
      confirmButtonLabel: "Delete Request",
      confirmButtonStyle: "DESTRUCTIVE",
      cancelButtonLabel: "Cancel"
    )
  }
)
```

Displays the following when clicked:

![screenshot of a confirmation dialog](images/confirmation-dialog-172.png)

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Incompatible |  |
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