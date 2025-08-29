---
source_url: https://docs.appian.com/suite/help/25.3/Form_Layout.html
original_path: Form_Layout.html
version: "25.3"
title: "Form Layout"
page_id: "Form_Layout"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Form Layout

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-form-layout.html">SAIL Design System guidance available for Form Layout</a><p class="ds-release-notice-p">When you need to collect data in a structured, intuitive way, use the form layout. Learn how to use the form layout to simplify data collection and create forms that work as seamlessly as they look.</p></td></tr></tbody></table>

## Function

**a!formLayout**( _titleBar, isTitleBarFixed, showTitleBarDivider, backgroundColor, showWhen, contents, contentsWidth, focusOnFirstInput, buttons, isButtonFooterFixed, showButtonDivider, validations, validationGroup_ )

Displays any arrangement of layouts and components beneath a header and above buttons. Use this as the top-level layout for start and task forms.

![form_layout_example](images/form_layout_example_updated.png)

**See also**: [Wizard Layout](Wizard_Layout.html)

## Parameters

| Name | Keyword | Types | Description |
| --- | --- | --- | --- |
|
Title Bar

 |

`titleBar`

 |

_Any Type_

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

Determines whether the title bar remains at the top of the form when scrolling. In Appian Mobile, the title bar is never fixed. Default: If the parameter isn't specified, the title bar is not fixed. If the parameter isn’t specified and the form is in a dialog, the title bar is fixed.

 |
|

Show title bar divider

 |

`showTitleBarDivider`

 |

_Boolean_

 |

Determines whether to display a divider line to separate the title bar from the rest of the form. Default: If the parameter isn't specified, the divider is hidden. If the parameter isn’t specified and the form is in a dialog, the divider displays.

 |
|

Background Color

 |

`backgroundColor`

 |

_Text_

 |

Color to show behind the contents of the form. Valid values: Valid values: Any valid hex color or hex color including transparency, or `"WHITE"` (default), `"TRANSPARENT"`, `"CHARCOAL_SCHEME"`, `"NAVY_SCHEME"`, `"PLUM_SCHEME"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

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

Contents

 |

`contents`

 |

_Any Type Array_

 |

Components and layouts to display in the form body.

 |
|

Contents Width

 |

`contentsWidth`

 |

_Text_

 |

Determines the width of the form contents. Valid values: `“EXTRA_NARROW”`, `"NARROW"`, `"MEDIUM"`, `"WIDE"`, `"FULL"`. Default: If the parameter isn't specified, the width is `"NARROW"`. If the parameter isn’t specified and the form is in a dialog, the width is `"FULL"`. If the form contents is [a!paneLayout()](Pane_Layout.html), the width is always "FULL".

 |
|

Automatically focus on first input

 |

`focusOnFirstInput`

 |

_Boolean_

 |

Determines whether to automatically focus on the first input when the form loads. Default: `true`.

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

Fix buttons to bottom of form

 |

`isButtonFooterFixed`

 |

_Boolean_

 |

Determines whether the buttons are fixed to the bottom of the form. In Appian Mobile, the buttons are never fixed. Default: If the parameter isn't specified, the buttons are not fixed. If the parameter isn’t specified and the form is in a dialog, the buttons are fixed.

 |
|

Show button divider

 |

`showButtonDivider`

 |

_Boolean_

 |

Determines whether to display a divider line above the buttons. Default: If the parameter isn't specified, the divider is hidden. If the parameter isn’t specified and the form is in a dialog, the divider displays.

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

### Responsiveness of sidebar template

_Related style guidelines: [Sidebar template guidelines](sail/ux-form-layout.html#sidebar-template-guidelines)_

The sidebar is fully responsive and its appearance will change based on the screen width.

On narrow screens, the sidebar automatically displays as a header at the top of the interface. This includes when it displays in dialogs that use Medium width or narrower.

When the sidebar displays as a header, the `image` is hidden, but any components in the `additionalContents` parameter will still be displayed below the secondary text.

Sidebar on a wider screen:

![a sidebar layout on a wider screen](images/sidebar-responsive-wider.png)

Sidebar on a narrower screen:

![a sidebar layout on a narrower screen](images/sidebar-responsive-narrower.png)

### Using a pane layout in a form layout

_Related style guidelines: [Turn off pane dividers in forms with header and button footer dividers](sail/ux-pane-layout.html#turn-off-pane-dividers-in-forms-with-header-and-button-footer-dividers)_

You can place a single [pane layout](Pane_Component.html) within the _contents_ parameter of a [form layout](Form_Layout.html) to create forms with multiple, independently scrolling columns of content.

When a pane layout is used in a form layout:

-   The form's header and button footer will span across the top and bottom of all panes.
-   The _contentsWidth_ parameter of the form layout will always use "FULL". The panes will always occupy the entire width of the form's content area.

![pane layout in form layout example](images/pane_in_form_simple.png)

### Heading levels for headingTag parameters

In form layouts, the title bar title uses "H1" for the heading level. When you use the _headingTag_ parameter in components such as [box](Box_Layout.html) and [section](Section_Layout.html) layouts, use `"H2"` for the highest-level headings.

### Back buttons in activity chained tasks

For a back button to appear in activity-chained tasks a button layout must be present in the form.

### Using the validations parameter

Use form validation messages for problems that are not specific to a single component.

## Examples

### Basic form

Use the interactive editor below to test out the example code.

### Form with background color

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
a!localVariables(
  local!data:a!map( firstName:null, lastName:null, email:null, country:null, orgName:null, title:null ),
  a!formLayout(
    titleBar: a!headerTemplateSimple(
      title: "REGISTER NOW",
      secondaryText:"Enter your details below to register for the conference",
    ),
    backgroundColor: "#f8f6f0",
    contentsWidth: "MEDIUM",
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
    showButtonDivider: false
  )
)
```

Displays the following:

![screenshot of a form with background color](images/Formlayout_background_color.png)

### Empty form with panes

This example shows an empty [pane layout](Pane_Layout.html) within a [form layout](Form_Layout.html).

_To experiment with this example, copy and paste the expression into an interface object, or select the **Form with Panes** template from an empty interface object._

![screenshot of how to select form with panes template in an interface object](images/form_with_panes_selection.png)

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
a!formLayout(
  titleBar: a!headerTemplateFull(
    title: "Form",
    secondaryText: "Enter your details",
    secondaryTextColor: "SECONDARY",
    backgroundColor: "ACCENT"
  ),
  showTitleBarDivider: false,
  contents: {
 a!paneLayout(
      panes: {
        a!pane(contents: {}, width: "NARROW_PLUS"),
        a!pane(contents: {}, width: "AUTO")
      }
    )
  },
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(
        label: "Submit",
        submit: true,
        style: "SOLID",
        loadingIndicator: true
      )
    },
    secondaryButtons: {
      a!buttonWidget(
        label: "Cancel",
        value: true,
        saveInto: ri!cancel,
        submit: true,
        style: "OUTLINE",
        validate: false
      )
    }
  ),
  showButtonDivider: true
)
```

### Pane layout in form layout

This example shows a document review form created with a [pane layout](Pane_Layout.html) in a [form layout](Form_Layout.html). It displays the following interface.

![a pane layout in form layout with a document viewer in one pane and form fields in another pane](images/pane_layout_in_form_example.png)

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
a!formLayout(
  titleBar: a!headerTemplateSimple(
    title: "Review Form Data",
    secondaryText: "Review the information extracted from the submitted document. Compare the details below with the form on the left. Correct any fields that are inaccurate before submitting.",
    secondaryTextColor: "STANDARD"
  ),
  showTitleBarDivider: true,
  contents: {
    a!paneLayout(
      panes: {
        a!pane(
          contents: {
            a!documentViewerField(
              labelPosition: "COLLAPSED",
              /* Replace this with a document constant in your environment */
              /* document: cons!DOC_EXAMPLE, */
              height: "TALL"
            )
          },
          width: "AUTO",
          padding: "NONE"
        ),
        a!pane(
          contents: {
            a!textField(
              label: "Name"
            ),
            a!textField(
              label: "Street Address"
            ),
            a!textField(
              label: "City"
            ),
            a!dropdownField(
              data: null,
              label: "State",
              placeholder: "Select a state"
            ),
            a!integerField(
              label: "Zip Code"
            ),
            a!textField(
              label: "Phone Number"
            ),
            a!textField(
              label: "Email"
            ),
            a!paragraphField(
              label: "Supporting Information",
              height: "TALL"
            ),
            a!dateField(
              label: "Start Date"
            ),
            a!dateField(
              label: "End Date"
            )
          },
          width: "NARROW_PLUS",
          backgroundColor: "GRAY"
        )
      },
      showPaneDividers: false
    )
  },
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(
        label: "Submit",
        style: "SOLID"
      )
    },
    secondaryButtons: {
      a!buttonWidget(
        label: "Cancel"
      )
    }
  ),
  showButtonDivider: true
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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!formLayout\_17r1](/suite/help/25.3/Form_Layout_171.html) |
Replaced _firstColumnContents_ and _secondColumnContents_ with `contents`. Now supports greater than two-column layout.

 |
| [a!formLayout\_25r1](/suite/help/25.3/Form_Layout_25r1.html) |

Added support for title bar templates and added dynamic defaults for _contentsWidth_, _showTitleBarDivider_, and _showButtonDivider_ parameters. These parameters now automatically adapt based on if the form is displayed in a dialog or not.

For more on what's changed, see [New version details](/suite/help/25.3/Form_Layout_25r1.html#new-version-details).

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Form Layout.

-   [Add Multiple Validation Rules to One Component](/suite/help/25.3/recipe-add-multiple-validation-rules-to-one-component.html) (_Validation_): Enforce that the user enters at least a certain number of characters in their text field, and also enforce that it contains the "@" character.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Configure Buttons with Conditional Requiredness](/suite/help/25.3/recipe-configure-buttons-with-conditional-requiredness.html) (_Validation_): Present two buttons to the end user and only make certain fields required if the user clicks a particular button

-   [Configure a Boolean Checkbox](/suite/help/25.3/recipe-configure-a-boolean-checkbox.html) (_Choice Components_): Configure a checkbox that saves a boolean (true/false) value, and validate that the user selects the checkbox before submitting a form.

-   [Configure a Dropdown Field to Save a CDT](/suite/help/25.3/recipe-configure-a-dropdown-field-to-save-a-cdt.html) (_Choice Components_): When using a dropdown to select values from the database, or generally from an array of CDT values, configure it to save the entire CDT value rather than just a single field.

-   [Configure a Dropdown with an Extra Option for Other](/suite/help/25.3/recipe-configure-a-dropdown-with-an-extra-option-for-other.html) (_Choice Components_): Show a dropdown that has an "Other" option at the end of the list of choices. If the user selects "Other", show a required text field.

-   [Make a Component Required Based on a User Selection](/suite/help/25.3/recipe-make-a-component-required-based-on-a-user-selection.html) (_Validation_): Make a paragraph component conditionally required based on the user selection.

-   [Set the Default Value Based on a User Input](/suite/help/25.3/recipe-set-the-default-value-based-on-a-user-input.html) (_Default Value_): Set the default value of a variable based on what the user enters in another component.

-   [Set the Default Value of CDT Fields Based on a User Input](/suite/help/25.3/recipe-set-the-default-value-of-cdt-fields-based-on-a-user-input.html) (_Default Value_): Set the value of a CDT field based on a user input.

-   [Set the Default Value of an Input on a Start Form](/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-start-form.html) (_Default Value_): Display a default value in some form inputs on a start form, and save the value into the process when submitting.

-   [Set the Default Value of an Input on a Task Form](/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-task-form.html) (_Default Value_): Display a default value in some form inputs on a task form, and save the value to process when submitting.

-   [Showing Validation Errors that Aren't Specific to One Component](/suite/help/25.3/recipe-showing-validation-errors-that-arent-specific-to-one-component.html) (_Validation_): Alert the user about form problems that aren't specific to one component, showing the message only when the user clicks "Submit".

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Use Links in a Grid to Show More Details and Edit Data in External System](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html) (_Grids, Web Services_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

-   [Use Validation Groups for Buttons with Multiple Validation Rules](/suite/help/25.3/recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html) (_Validation_): Present two buttons to the end user that, based on the selection, will validate only after a particular button is clicked.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...