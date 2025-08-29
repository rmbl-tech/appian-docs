---
source_url: https://docs.appian.com/suite/help/25.3/Wizard_Layout.html
original_path: Wizard_Layout.html
version: "25.3"
title: "Wizard Layout"
page_id: "Wizard_Layout"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Wizard Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-wizard-layout.html">SAIL Design System guidance available for Wizard Layout</a><p class="ds-release-notice-p">When you want to display complex, multi-step forms, use the wizard layout. Learn how to use the wizard layout to organize forms into seamless, easy-to-use steps.</p></td></tr></tbody></table>

## Function

**a!wizardLayout**( _titleBar, isTitleBarFixed, showTitleBarDivider, backgroundColor, style, showWhen, steps, contentsWidth, showStepHeadings, focusOnFirstInput, primaryButtons, secondaryButtons, showButtonDivider, isButtonFooterFixed_ )

Displays a multi-step form with a step indicator. Use this as the top-level layout for complex forms to organize inputs into steps. Reference information about wizard steps using `fv!activeStepIndex`, `fv!isFirstStep`, and `fv!isLastStep`.

Use [a!wizardStep()](Wizard_Step_Component.html) to define each step in the wizard.

![wizard layout example](images/wizard-layout-example.png)

**See also**: [Form Layout](Form_Layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Title Bar

 |

`titleBar`

 |

_Any_

 |

Prominent text that includes a title and optional secondary text. Can be styled using templates or billboard and card layouts. Configure using text, [a!headerTemplateSimple()](Header_Template_Simple.html), [a!headerTemplateFull()](Header_Template_Full.html) or [a!headerTemplateImage()](Header_Template_Image.html), a single [a!billboardLayout()](Billboard_Layout.html) or [a!cardLayout()](card_layout.html), or an array of both layouts.

 |
|

Fix title bar when scrolling

 |

`isTitleBarFixed`

 |

_Boolean_

 |

Determines whether the title bar remains at the top of the wizard when scrolling. In Appian Mobile, the title bar is never fixed. Default: If the parameter isn't specified, the title bar is not fixed. If the parameter isn’t specified and the wizard is in a dialog, the title bar is fixed.

 |
|

Show title bar divider

 |

`showTitleBarDivider`

 |

_Boolean_

 |

Determines whether to display a divider line to separate the title bar from the rest of the wizard. Default: If the parameter isn't specified, the divider is hidden. If the parameter isn’t specified and the wizard is in a dialog, the divider displays.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

The background color for the wizard. Valid values: Any valid hex color or `"WHITE"` (default), `"TRANSPARENT"`, `"CHARCOAL_SCHEME"`, `"NAVY_SCHEME"`, `"PLUM_SCHEME"`.

 |
|

Style

 |

`style`

 |

_Text_

 |

Determines the orientation and style of the wizard step indicator. Valid values: `"DOT_VERTICAL”` (default), `"DOT_HORIZONTAL"`, `"CHEVRON_VERTICAL"`, `"CHEVRON_HORIZONTAL"`, `"LINE_VERTICAL"`, `"LINE_HORIZONTAL"`, `"MINIMAL"`.

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

Wizard Steps

 |

`steps`

 |

_List of Variant_

 |

Steps to display in the wizard, configured as a list of a!wizardStep().

 |
|

Contents Width

 |

`contentsWidth`

 |

_Text_

 |

Determines the width of the wizard step contents. Valid values: `“EXTRA_NARROW”`, `"NARROW"`, `"MEDIUM"`, `"WIDE"`, `"FULL"` (default).

 |
|

Show step headings

 |

`showStepHeadings`

 |

_Boolean_

 |

Determines whether wizard step labels show as headings above the step contents. The labels still appear in milestones, if a milestone style is used as the wizard step indicator. Default: true.

 |
|

Automatically focus on first input

 |

`focusOnFirstInput`

 |

_Boolean_

 |

Determines whether to automatically focus on the first input when the wizard loads or when the wizard step changes. Default: true.

 |
|

Primary Buttons

 |

`primaryButtons`

 |

_List of Variant_

 |

Array of primary buttons created with [a!buttonWidget()](Button_Component.html). The Next button is added automatically and can’t be configured.

 |
|

Secondary Buttons

 |

`secondaryButtons`

 |

_List of Variant_

 |

Array of secondary buttons created with [a!buttonWidget()](Button_Component.html). The Back button is added automatically and can’t be configured.

 |
|

Show button divider

 |

`showButtonDivider`

 |

_Boolean_

 |

Determines whether to display a divider line above the buttons. Default: If the parameter isn't specified, the divider is hidden. If the parameter isn’t specified and the wizard is in a dialog, the divider displays.

 |
|

Fix buttons to bottom of wizard

 |

`isButtonFooterFixed`

 |

_Boolean_

 |

Determines whether the buttons are fixed to the bottom of the wizard. In Appian Mobile, the buttons are never fixed. Default: If the parameter isn't specified, the title bar is not fixed. If the parameter isn't specified and the wizard is in a dialog, the title bar is fixed.

 |

## Usage considerations

### Title bar options

_Related style guidelines: [Title bar guidelines](sail/ux-form-layout.html#title-bar-guidelines)_

For the title bar, you can choose either a [simple header](Header_Template_Simple.html), [full header](Header_Template_Full.html), [image header](Header_Template_Image.html) or [sidebar](Sidebar_Template.html) template. See the [SAIL Design System](sail/ux-form-layout.html#choosing-a-title-bar-template) for more information about when to choose each template.

![header-template-compare.png](images/header-template-compare.png)

You can also just enter text as a string. For example, `titleBar: "Add Product"`.

Additionally, you can configure a custom header using [billboard](Billboard_Layout.html) and [card](card_layout.html) layouts.

### Contents width in record action dialogs

_Related style guidelines: [Use "Full" width when displaying forms in dialogs](sail/ux-form-layout.html#use-full-width-when-displaying-forms-in-dialogs), [Use one narrow column for the form content](sail/ux-form-layout.html#use-one-narrow-column-for-the-form-content), [Don't add additional columns to center form content](sail/ux-form-layout.html#dont-add-additional-columns-to-center-form-content)_

If you are planning to display this component in a record action dialog, keep in mind that the dialog size is set in the [record type](record-actions.html#record-action-properties) and that the step contents width is set in the wizard layout. Open the record action to make sure the contents width works with the selected dialog size.

We recommend setting the _contentsWidth_ parameter to `"FULL"` when displaying this component in a dialog.

### Dynamic defaults

Some parameters have dynamic defaults that automatically adapt based on if they are displayed in a dialog or not.

The following table details the behavior of these parameters when they are not specified in the expression.

Specifying any of these parameters in the expression will override this behavior.

| Parameter | In a dialog | In a page |
| --- | --- | --- |
| _contentsWidth_ | Full | Narrow |
| _isTitleBarFixed_
_isButtonFooterFixed_ | Fixed | Not fixed |
| _showTitleBarDivider_
_showButtonDivider_ | Visible | Hidden |

### Using the focusOnFirstInput parameter

If _focusOnFirstInput_ is true, the focus will be applied to the first component that is one of the following:

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

### Selecting a wizard style

When you [select a wizard style](sail/ux-wizard-layout.html#selecting-a-wizard-style), you choose the appearance and location of the milestone. Vertical styles display a milestone to the side of the wizard step contents, and horizontal styles display a milestone above the wizard step contents.

In general, you should use a vertical style if your wizard a large number of steps, since too many steps in a horizontal milestone can appear crowded and hard to understand. You should also use a vertical style if your step contents are very tall, to minimize the need to scroll within the wizard.

If you don't want to display the milestone, select `"MINIMAL"` to show the step number above the contents instead (for example, "Step 1 of 2").

On smaller screens, wizards will responsively display a minimal milestone style.

### Wizard buttons

In a wizard layout, the Next and Back buttons are added automatically and can't be configured. If you drag and drop the wizard layout into an interface, Submit and Cancel buttons are also added automatically.

You can use the _disableNextButton_ parameter in [a!wizardStep()](Wizard_Step_Component.html) specify when the Next button is disabled for a user on a step.

You can add more buttons to your wizard with the _primaryButtons_ and _secondaryButtons_ parameters. When you add more primary buttons, they appear next to the Next button. When you add more secondary buttons, they appear next to the Back button.

For more information about wizard buttons, see the wizard [style guidelines](sail/ux-wizard-layout.html#style-guidelines).

![screenshot of primary and secondary buttons](images/primary-and-secondary-buttons-with-cancel.png)

### Function variables

The following [function variables](parts-of-an-expression.html#function-variables) can be used anywhere within the wizard layout to reference information about wizard steps:

| Function Variable | Type | Description |
| --- | --- | --- |
| _fv!activeStepIndex_ | Integer | The current step's index in the steps array. |
| _fv!isFirstStep_ | Boolean | True for the first step in the step array, otherwise false. |
| _fv!isLastStep_ | Boolean | True for the last step in the steps array, otherwise false. |

_fv!isFirstStep_ and _fv!isLastStep_ will not be true for hidden wizard steps. For example, if you configured four wizard steps (A, B, C, and D), and the _showWhen_ parameter for step D is false, then _fv!isLastStep_ will be true for step C.

Hidden wizard steps are still counted by _fv!activeStepIndex_ to determine the step's index.

### Using sidebar template with wizard layout

#### Vertical milestone behavior in sidebar

When using a sidebar template in an `a!wizardLayout()` with a vertical milestone, the milestone steps will automatically be moved into the sidebar, appearing below the `secondaryText` and above any `additionalContents`.

When the [sidebar's responsive behavior](#sidebar-responsiveness) causes it to display as a header, the milestone will display below the header using the "MINIMAL" style.

![image of a wizard layout that uses the sidebar template](images/sidebar-example.png)

#### Responsiveness of sidebar

_Related style guidelines: [Sidebar template guidelines](sail/ux-form-layout.html#sidebar-template-guidelines)_

The sidebar is fully responsive and its appearance will change based on the screen width.

On narrow screens, the sidebar automatically displays as a header at the top of the interface. This includes when it displays in dialogs that use Medium width or narrower.

When the sidebar displays as a header, the `image` is hidden, but any components in the `additionalContents` parameter will still be displayed below the secondary text.

Sidebar on a wider screen:

![a sidebar layout on a wider screen](images/sidebar-responsive-wider.png)

Sidebar on a narrower screen:

![a sidebar layout on a narrower screen](images/sidebar-responsive-narrower.png)

### Heading levels for headingTag parameters

In wizard layouts, the title bar title uses "H1" and the wizard step titles use "H2" for the heading level. When you use the _headingTag_ parameter in components such as [box](Box_Layout.html) and [section](Section_Layout.html) layouts, use `"H3"` for the highest-level headings.

### Async loading placeholder

If a wizard step relies on an [async variable](async_loading.html#create-an-async-variable-using-the-aasyncvariable-function), a placeholder will be displayed for the wizard step contents until the async data is finished loading. See [a!asyncVariable()](fnc_evaluation_a_asyncvariable.html#placeholder-behavior) for more information on how the placeholder behavior works.

### Appian Mobile considerations

On Appian Mobile, the _style_ parameter is ignored. Wizard layouts viewed in Appian Mobile use the default `"LINE"` style.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Wizard with three steps

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
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
a!wizardLayout(
  titleBar: a!headerTemplateFull(
    title: "Request a Quote",
    secondaryText: "Customize your coverage",
    backgroundColor: "#434343"
  ),
  isTitleBarFixed: false,
  showTitleBarDivider: false,
  style: "DOT_VERTICAL",
  steps: {
    a!wizardStep(
      label: "About You",
      instructions: "Tell us about yourself",
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
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Email",
                  labelPosition: "ABOVE",
                  saveInto: {},
                  refreshAfter: "UNFOCUS",
                  validations: {}
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!integerField(
                  label: "Phone",
                  labelPosition: "ABOVE",
                  saveInto: {},
                  refreshAfter: "UNFOCUS",
                  validations: {}
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!checkboxField(
                  choiceLabels: {"Email Me", "Text Me"},
                  choiceValues: {1, 2},
                  label: "Contact Preference",
                  labelPosition: "ABOVE",
                  saveInto: {},
                  choiceLayout: "COMPACT",
                  validations: {}
                )
              }
            )
          }
        ),
        a!textField(
          label: "Street Address",
          labelPosition: "ABOVE",
          saveInto: {},
          refreshAfter: "UNFOCUS",
          validations: {}
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "City",
                  labelPosition: "ABOVE",
                  saveInto: {},
                  refreshAfter: "UNFOCUS",
                  validations: {}
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!dropdownField(
                  choiceLabels: {"Option 1", "Option 2", "Option 3", "Option 4",
                                  "Option 5", "Option 6", "Option 7", "Option 8",
                                  "Option 9", "Option 10", "Option 11", "Option 12"},
                  choiceValues: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
                  label: "State",
                  labelPosition: "ABOVE",
                  placeholder: "Select state",
                  saveInto: {},
                  searchDisplay: "AUTO",
                  validations: {}
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!integerField(
                  label: "Zip Code",
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
    ),
    a!wizardStep(
      label: "Coverage Options",
      contents: {}
    ),
    a!wizardStep(
      label: "Quote",
      contents: {}
    )
  },
  contentsWidth: "FULL",
  primaryButtons: {
    a!buttonWidget(
      label: "Submit",
      submit: true,
      style: "SOLID",
      loadingIndicator: true,
      showWhen: fv!isLastStep
    )
  },
  secondaryButtons: {
    a!buttonWidget(
      label: "Cancel",
      value: true,
      saveInto: {},
      submit: true,
      style: "LINK",
      validate: false
    )
  }
)
```

Displays the following:

![screenshot of a wizard with three steps](images/wizard-layout-basic-example.png)

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

The following patterns include usage of the Wizard Layout.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...