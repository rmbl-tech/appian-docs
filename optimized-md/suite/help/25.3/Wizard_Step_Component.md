---
source_url: https://docs.appian.com/suite/help/25.3/Wizard_Step_Component.html
original_path: Wizard_Step_Component.html
version: "25.3"
title: "Wizard Step"
page_id: "Wizard_Step_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Wizard Step

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!wizardStep**( _label, instructions, contents, showWhen, disableNextButton, validations, validationGroup_ )

Displays the components and layouts of a single wizard step within the [Wizard Layout](Wizard_Layout.html).

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

Text to display as the heading for the wizard step. If using a milestone style for the wizard step indicator, the step label also displays as the step name in the milestone.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Optional text to display below the heading for the wizard step.

 |
|

Contents

 |

`contents`

 |

_Any Type_

 |

Components and layouts to display in the wizard step.

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the step is visible in the wizard. When set to false, the step is hidden. Default: true.

 |
|

Disable next button

 |

`disableNextButton`

 |

_Boolean_

 |

Determines if the user is prevented from selecting the Next button. Default: false.

 |
|

Validations

 |

`validations`

 |

_List of Variant_

 |

Validation errors displayed above the buttons when the value is not null. Configured using a text array or an array with a mix of text and Validation Message using `a!validationMessage(message, validateAfter)`.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text_

 |

The keyword used to identify the validation group for the wizard step's _validations_ parameter. When this parameter is specified, the _validations_ parameter is only evaluated when a button that uses the same validation group is selected. This value cannot contain spaces. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

 |

## Usage considerations

### Async loading placeholder

If this component relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.ÏÏ˝

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Simple wizard step

_This example is intended to be used within a `a!wizardLayout()` function._

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
29
30
31
32
a!wizardStep(
  label: "Name",
  instructions: "",
  contents: {
     a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!textField(
              label: "First Name",
              labelPosition: "ABOVE",
              saveInto: {},
              refreshAfter: "UNFOCUS",
              validations: {}
            )
          }
        ),
        a!columnLayout(
          contents: {
            a!textField(
              label: "Last Name",
              labelPosition: "ABOVE",
              saveInto: {},
              refreshAfter: "UNFOCUS",
              validations: {}
            )
          }
        )
      }
    )
  }
)
```

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

The following patterns include usage of the Wizard Step.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...