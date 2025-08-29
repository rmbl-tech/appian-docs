---
source_url: https://docs.appian.com/suite/help/25.3/Validation_Message.html
original_path: Validation_Message.html
version: "25.3"
title: "Validation Message"
page_id: "Validation_Message"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Validation Message

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!validationMessage**( _message, validateAfter, showWhen_ )

Configures a validation message for forms, sections, grids, and wizard steps.

See also:

-   [Form](Form_Layout.html)
-   [Section](Section_Layout.html)
-   [Editable Grid](Editable_Grid_Component.html)
-   [applyValidations() function](fnc_system_a_applyValidations.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Message

 |

`message`

 |

_Text_

 |

The validation message to display.

 |
|

Validate After

 |

`validateAfter`

 |

_Text_

 |

Determines when to display the validation message. Valid values are '"REFRESH"'' (default), and '"SUBMIT"'.

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

-   Only supported in form layout, section layout, wizard step, and grid components.
-   When _Validate After_ is `"SUBMIT"`, the validation message is only displayed when the user selects a button component where validate is `true`, or when the user selects a submit button.

## Example

_To experiment with examples, copy and paste the expression into an interface object._

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
28
=a!localVariables(
  local!amount: 5000,
  a!formLayout(
    contents: {
      a!textField(
        label: "Amount",
        value: local!amount,
        saveInto: local!amount
      )
    },
    buttons: {
      a!buttonArrayLayout(
        buttons: {
          a!buttonWidget(
            label: "Submit",
            style: "SOLID",
            submit: true
          )
        }
      )
    },
    validations: a!validationMessage(
      message: "The total cannot be greater than $1,000",
      validateAfter: "REFRESH",
      showWhen: local!amount > 1000
    )
  )
)
```

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

## Related Patterns

The following patterns include usage of the Validation Message.

-   [Showing Validation Errors that Aren't Specific to One Component](/suite/help/25.3/recipe-showing-validation-errors-that-arent-specific-to-one-component.html) (_Validation_): Alert the user about form problems that aren't specific to one component, showing the message only when the user clicks "Submit".

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...