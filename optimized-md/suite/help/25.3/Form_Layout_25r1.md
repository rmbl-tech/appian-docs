---
source_url: https://docs.appian.com/suite/help/25.3/Form_Layout_25r1.html
original_path: Form_Layout_25r1.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!formLayout\_25r1 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [Form Layout](/suite/help/25.3/Form_Layout.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. For what's changed, see [New version details](#new-version-details).

## Function

**a!formLayout\_25r1**( _backgroundColor, formWidth, showWhen, label, instructions, showHeaderDivider, isHeaderFixed, contents, skipAutoFocus, buttons, showButtonFooterDivider, validations, validationGroup_ )

Displays any arrangement of layouts and components beneath a header and above buttons. Use this as the top-level layout for start and task forms.

![form_layout_example](images/form_layout_example.png)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Background Color

 |

`backgroundColor`

 |

_Text_

 |

Color to show behind the contents of the form. Valid values: Any valid hex color or "WHITE" (default), "TRANSPARENT", "CHARCOAL\_SCHEME", "NAVY\_SCHEME", "PLUM\_SCHEME".

 |
|

Form Width

 |

`formWidth`

 |

_Text_

 |

Determines the maximum width of the form on a page or in a dialog. If the page or dialog is narrower than the selected value, the form will fill the entire width. Valid values: "FULL" (default), "WIDE", "MEDIUM", "NARROW", "EXTRA\_NARROW".

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the layout is displayed on the interface. When set to false, the layout is hidden and is not evaluated. Default: true.

 |
|

Label

 |

`label`

 |

_Text_

 |

Optional text to display as the interface's title.

 |
|

Instructions

 |

`instructions`

 |

_Text_

 |

Optional text displayed below the field's label.

 |
|

Show header divider

 |

`showHeaderDivider`

 |

_Boolean_

 |

Determines whether to display a divider line below the header to separate it from the rest of the content. Default: true.

 |
|

Fix header when scrolling

 |

`isHeaderFixed`

 |

_Boolean_

 |

Determines whether the header remains at the top of the form when scrolling. In Appian Mobile, the header is never fixed. Default: In dialogs, the header is fixed; otherwise, it is not fixed. Setting this parameter to true or false will override this behavior.

 |
|

Contents

 |

`contents`

 |

_Any Type Array_

 |

Components and layouts to display in the form body.

 |
|

Don’t automatically focus on first input

 |

`skipAutoFocus`

 |

_Boolean_

 |

Determines whether the first input will receive focus when a form loads. Default is false.

 |
|

Buttons

 |

`buttons`

 |

_Button Layout_

 |

Buttons to display at the bottom of the form, arranged using [a!buttonLayout()](Button_Layout.html).

 |
|

Show button footer divider

 |

`showButtonFooterDivider`

 |

_Boolean_

 |

Determines whether to display a divider line above the button footer to separate it from the rest of the content. Default: true.

 |
|

Validations

 |

`validations`

 |

_Text or Validation Message_

 |

Validation errors displayed above the form buttons. Configured using a text array or an array with a mix of text and Validation Message using `a!validationMessage(message, validateAfter)`.

 |
|

Validation Group

 |

`validationGroup`

 |

_Text or Validation Message Array_

 |

When present, the requiredness of the field is only evaluated when a button in the same validation group is pressed. The value for this parameter cannot contain spaces. For example, `“validation group”` is not a valid value. You need to add an underscore between words: `“validation_group”`. See the following recipes for more information:

-   [Configure Buttons with Conditional Requiredness](recipe-configure-buttons-with-conditional-requiredness.html)
-   [Validation Groups for Buttons with Multiple Validation Rules](recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html)'

 |

## Usage considerations

### Using a!formLayout()

-   A button layout must be present for a back button to appear for activity-chained tasks.
-   Use form validation messages for problems that are not specific to a single component.
-   This component cannot be read-only or disabled.

### Form width in record action dialogs

If you are planning to display the form in a record action dialog, keep in mind that the dialog size is set in the [record type](record-actions.html#record-action-properties) and that the form width is set in the form layout. Be sure to open the record action to make sure the form width looks good with the dialog size.

We recommend setting the _formWidth_ parameter to `"FULL"` when displaying the form in a dialog.

### Initial behavior & focusing

-   The component is not in an initially collapsed section.
-   Focus will automatically be applied on initial load to the first component in a form that is one of the following:
    -   [Checkbox](Checkbox_Component.html)
    -   [Date](Date_Component.html)
    -   [Date and Time](Date_and_Time_Component.html)
    -   [Decimal](Floating_Point_Component.html)
    -   [Dropdown](Dropdown_Component.html)
    -   [Encrypted Text](Encrypted_Text_Component.html)
    -   [File-Upload](File_Upload_Component.html)
    -   [Integer](Integer_Component.html)
    -   [Multi-Dropdown](Multiple_Dropdown_Component.html)
    -   [Paragraph](Paragraph_Component.html)
    -   [Picker Components](SAIL_Components.html#pickers)
    -   [Radio Button](Radio_Button_Component.html)
    -   [Text](Radio_Button_Component.html)

### Scroll behavior in wizards

In wizards, Appian automatically handles the [page scrolling](sail/forms.html#taking-advantage-of-automatic-scrolling-in-wizards) between each step of the wizard. This means that whenever a user navigates to the next step, the page will automatically scroll to the top of the page.

If you are using the form layout in a wizard, make sure that the buttons or dynamic links that control form navigation are placed in the _buttons_ parameter. If they are placed in the _contents_ parameter, auto scrolling will not work.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Read-only form

Use the interactive editor below to test out the example code.

### Form with background color

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
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
a!localVariables(
  local!data:a!map( firstName:null, lastName:null, email:null, country:null, orgName:null, title:null ),
  a!formLayout(
    backgroundColor: "#f8f6f0",
    formWidth: "MEDIUM",
    label: "REGISTER NOW",
    instructions: "Enter your details below to register for the conference",
    contents: {
      a!sectionLayout(
        label: "YOUR DETAILS",
        labelSize: "SMALL",
        labelColor: "STANDARD",
        contents: {
          a!cardLayout(
            contents: {
              a!columnsLayout(
                columns: {
                  a!columnLayout(
                    contents: {
                      a!textField(
                        label: "First name",
                        value: local!data.firstName,
                        saveInto: local!data.firstName
                      )
                    }
                  ),
                  a!columnLayout(
                    contents: {
                      a!textField(
                        label: "Last name",
                        value: local!data.lastName,
                        saveInto: local!data.lastName
                      )
                    }
                  )
                }
              ),
              a!textField(
                label: "Email address",
                labelPosition: "ABOVE",
                value: local!data.email,
                saveInto: local!data.email,
                marginAbove: "STANDARD"
              ),
              a!dropdownField(
                label: "Country",
                labelPosition: "ABOVE",
                placeholder: "Select your country of residence",
                choiceLabels: {"United States", "United Kingdom", "Canada"},
                choiceValues: {1, 2, 3},
                value: local!data.country,
                saveInto: local!data.country,
                marginAbove: "STANDARD"
              ),
              a!textField(
                label: "Organization name",
                labelPosition: "ABOVE",
                value: local!data.orgName,
                saveInto: local!data.orgName,
                marginAbove: "STANDARD"
              ),
              a!textField(
                label: "Job title",
                labelPosition: "ABOVE",
                value: local!data.title,
                saveInto: local!data.title,
                marginAbove: "STANDARD"
              )
            },
            style: "#f2ede1",
            shape: "SEMI_ROUNDED",
            padding: "STANDARD",
            marginBelow: "STANDARD",
            borderColor: "#d4cebe"
          )
        },
        marginAbove: "STANDARD"
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Register",
          icon: "arrow-right",
          submit: true,
          validate: true,
          style: "SOLID",
          color: "#DEB03D"
        )
      },
      secondaryButtons: {
        a!buttonWidget(
          label: "Cancel",
          submit: true,
          validate: false,
          saveInto: {},
          style: "OUTLINE",
          color: "#000000",
          value: true
        )
      }
    ),
    showButtonFooterDivider: false
  )
)
```

Displays the following:

![screenshot of a form with background color](images/Formlayout_background_color.png)

## New version details

The [form layout](Form_Layout.html) was evolved to implement the new [title bar templates](SAIL_Components.html#title-bar-templates). We've made the following changes to parameters to accommodate the new title bar design experience, as well as to align the parameters with wizard layout.

| Change type | Original parameter | New parameter |
| --- | --- | --- |
| Added | `titleBar` | None |
| Removed | `label` | None |
| Removed | `instructions` | None |
| Renamed | `formWidth` | `contentsWidth` |
| Renamed | `showHeaderFixed` | `isTitleBarFixed` |
| Renamed | `skipAutoFocus` | `focusOnFirstInput` |
| Renamed | `showButtonFooterDivider` | `showButtonDivider` |

Additional updates:

-   We've reorganized the parameter order and design view and introduced dynamic defaults for certain parameters.
-   The default behavior for _contentsWidth_, _showTitleBarDivider_, and _showButtonDivider_ parameters will automatically adapt based on if the form is displayed in a dialog or not.
-   The title bar divider's width depends on the _isTitleBarFixed_ parameter:
    -   If _isTitleBarFixed_ is false, the divider's width matches the content width.
    -   If _isTitleBarFixed_ is true, the divider extends to the full width of the screen or dialog.

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