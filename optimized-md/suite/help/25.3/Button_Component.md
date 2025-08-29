---
source_url: https://docs.appian.com/suite/help/25.3/Button_Component.html
original_path: Button_Component.html
version: "25.3"
title: "Button Component"
page_id: "Button_Component"
section: "Function"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Button Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

<table><tbody><tr><td><a href="/suite/help/25.3/sail/home.html"><img class="ds-release-icon" src="images/design-sys/sail.png"></a></td><td><a class="ds-release-notice-a ds-release-notice-a-big" href="/suite/help/25.3/sail/ux-buttons.html">SAIL Design System guidance available for Buttons</a><p class="ds-release-notice-p">The wrong button in the wrong place at the wrong time can stop a user's workflow dead in its tracks. Learn how to configure and display buttons appropriately to create a beautiful, intuitive, and efficient workflow experience for your application.</p></td></tr></tbody></table>

## Function

**a!buttonWidget**( _label, style, confirmMessage, value, saveInto, disabled, submit, validate, validationGroup, size, width, confirmHeader, confirmButtonLabel, cancelButtonLabel, showWhen, icon, accessibilityText, tooltip, recaptchaSaveInto, loadingIndicator, iconPosition, color_ )

Displays a button that can conditionally be used to submit a form.

**See also**: [Button design guidance](sail/ux-buttons.html)

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

Optional text to display on the button.

 |
|

Style

 |

`style`

 |

_Text_

 |

Determines the button's appearance and behavior. Valid values:

-   `"OUTLINE"` (default): Button with a transparent background and colored border.
-   `"GHOST"`: Button with a transparent background and colored border that switches to a solid color when highlighted.
-   `"LINK"`: Button with a transparent background and border that switches to a colored border when highlighted.
-   `"SOLID"`: Button with a solid color.

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

Value

 |

`value`

 |

_Any Type_

 |

The value associated with this button.

 |
|

Save Value To

 |

`saveInto`

 |

_Save Array_

 |

One or more variables that are updated with the button value when the user presses it. Use `a!save()` to save a modified or alternative value to a variable.

 |
|

Disabled

 |

`disabled`

 |

_Boolean_

 |

Determines if the user is prevented from clicking the button and triggering the state change. Default is `false`.

 |
|

Submit

 |

`submit`

 |

_Boolean_

 |

Determines whether this button submits a form after saving its value.

 |
|

Validate

 |

`validate`

 |

_Boolean_

 |

Determines whether this button performs validation before saving its value. When _submit_ is true, this defaults to `true`, otherwise it defaults to `false`.

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

Size

 |

`size`

 |

_Text_

 |

Determines the size of the button. Valid values: `"SMALL"`, `"STANDARD"` (default), and `"LARGE"`.

 |
|

Width

 |

`width`

 |

_Text_

 |

Determines button width. Valid values are `"MINIMIZE"` and `"FILL"`. Default behavior displays `"FILL"` width buttons on phone size screens and `"MINIMIZE"` buttons on wider screens.

-   `"MINIMIZE"` width is determined by button label.
-   `"FILL"` width fills the button container.

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

Text to display on the confirmation button. Default: "Yes".

 |
|

Cancel Button Label

 |

`cancelButtonLabel`

 |

_Text_

 |

Text to display on the cancel button. Default: "No".

 |
|

Show When

 |

`showWhen`

 |

_Boolean_

 |

Determines whether the button is displayed on the interface. When set to false the button is hidden and is not evaluated. Default: true.

 |
|

Icon

 |

`icon`

 |

_Text_

 |

Icon to display before any text inside the button. See the list of available [icons](sail/ux-styled-icons.html).

In the component configuration pane, you can click **SUGGEST ICON** to use AI to suggest an icon based on the _label_ parameter. If the _label_ parameter isn't a simple text string, this option is disabled.

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

Tooltip

 |

`tooltip`

 |

_Text_

 |

Text to display on mouseover (web) or long press (mobile).

 |
|

reCAPTCHA Save Value To

 |

`recaptchaSaveInto`

 |

_List of saves_

 |

One or more variables that are updated after reCAPTCHA executes. Use `a!verifyRecaptcha()` to verify the reCAPTCHA result and `a!save()` to save a modified or alternative value to a variable. Only for use in Portals.

 |
|

Show loading indicator on press

 |

`loadingIndicator`

 |

_Boolean_

 |

Determines whether the button will display a loading indicator on press and be disabled while processing. Default: false.

 |
|

Icon Position

 |

`iconPosition`

 |

_Text_

 |

Determines where the icon appears in relation to the text. Valid values: `"START"` (default), `"END"`.

 |
|

Color

 |

`color`

 |

_Text_

 |

Determines the button color. Valid values: Any valid hex color or hex color including transparency, or `"ACCENT"` (default), `"NEGATIVE"`, `"SECONDARY"`. To add transparency to the hex color, add two additional digits between 00 (more transparent) and FF (less transparent).

 |

## Usage considerations

### Using the submit parameter

For buttons that are used to submit a start form or task, set the value of the _submit_ parameter to `true` in order to submit the start form or task. Otherwise, use the default value, `false`.

### Using the confirmation parameters

-   In the confirmation dialog there are two buttons. The confirm button is in the primary position and the cancel button is in the secondary position.
-   If _confirmHeader_ and _confirmMessage_ are both null, the interface refreshes and the _saveInto_ state change occurs once the user clicks the button. If either is not null, the confirmation dialog displays. The interface only refreshes and the _Save Value To_ state change only occurs if the user clicks the confirm button.

### Button styles and colors

-   The `"GHOST"` and `"OUTLINE"` styles use a transparent background.
-   When the color is applied to the background of the button, on `"SOLID"` and `"GHOST"`, the color of the label is automatic for better contrast. For example, if the button background is dark, the label will be white.

[![images/button_transparent_background.gif](images/button_transparent_background.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img53)

[![](images/button_transparent_background.gif)](#_)

### Confirmation dialog button colors

When a [confirmation dialog](#confirmation-dialog) is enabled, the value of the _color_ parameter of the button will affect the color of the confirmation button in the dialog. The cancel button always uses `"SECONDARY"`.

| Button color | Confirmation button color |
| --- | --- |
| `"NEGATIVE"` | `"NEGATIVE"` |
| A hex value | The same hex value |
| `"ACCENT"` | `"ACCENT"` |
| `"SECONDARY"` | `"ACCENT"` |

### Button shape and capitalization

By default, all buttons have a squared shape and use uppercase capitalization for labels. You can configure this in a [site object](sites_object.html#branding) or [portal object](portal-object.html#branding), which will apply to all buttons in the site or portal.

If you deselect **Use uppercase capitalization for button labels**, you can control button label capitalization in each button component. Just be sure to use consistent capitalization across all buttons in your site or portal.

To view the selected button shape and capitalization in an interface object, use the [Branding preview](interface_object.html#branding-preview) ![branding preview icon](images/branding-preview-icon.svg) menu to choose the site or portal that the interface will be used in.

For details on configuring button shape and button label capitalization, see [Buttons](sail/ux-buttons.html#button-shape-and-capitalization) guidance in the SAIL Design System.

### Using the recaptchaSaveInto parameter in a Portal

[reCAPTCHA](recaptcha.html) allows you to monitor your [public portals](portals-home.html) for potentially malicious or fraudulent activity. Appian works with Google’s reCAPTCHA services to provide you with a configurable experience that allows you to choose your thresholds for and responses to potential misuses of your Portal.

reCAPTCHA works on the button component so that you can apply it to submission buttons in a Portal. This allows you to have more control over what kinds of users are submitting entries using your Portal. To use reCAPTCHA, you must use the [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html) function within the _recaptchaSaveInto_ parameter and define logic to determine what to do when a bot may be using your Portal.

You can use the `a!save()` function to save new or updated values to variables in the same way that you would for configuring any button, but make sure to nest `a!save()` inside the `a!verifyRecaptcha()` function.

For more information on using reCAPTCHA in Portals or a breakdown of examples, check out our [reCAPTCHA guidance](recaptcha.html).

**Note:**  reCAPTCHA does not work within Appian designer and will always evaluate the _onError_ parameter of the [a!verifyRecaptcha()](fnc_connector_recaptcha_verifyrecaptcha.html)) function. For more information on testing reCAPTCHA, check out our [reCAPTCHA guidance](recaptcha.html#testing-monitoring-and-troubleshooting-recaptcha).

## Examples

_Copy and paste an example into an Appian Expression Editor to experiment with it._

### Button styles and sizes

### Button styles and colors

Use the interactive editor below to test out the example code.

### Icon-only button with tooltip

Use the interactive editor below to test out the example code.

### Confirmation dialog

Use the interactive editor below to test out the example code.

### reCAPTCHA in a button

The following is an example of what the expression for a button using reCAPTCHA might look like when separated out from the rest of the interface. If you copy and paste the example into an expression editor, reCAPTCHA will not work. Use this example only as a reference. Only for use in [Portals](portals-home.html).

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
a!localVariables(
  local!submissionDetails: a!map(needsReview: null),
  local!submissionStatus,
  local!confirmationMessage,
  {
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Submit",
          recaptchaSaveInto: a!verifyRecaptcha(
            onSuccess: {
              if(
                fv!score > .7,
                /* Score >.7 indicates the user is likely human */
                {
                  /* No need for a manual review since the user was confirmed by reCAPTCHA to be human*/
                  a!save(
                    local!submissionDetails.needsReview,
                    false
                  ),
                  a!writeToDataStoreEntity(
                    dataStoreEntity: cons!PORTAL_ENTITY,
                    valueToStore: local!submissionDetails,
                    onSuccess: {
                      a!save(local!submissionStatus, "SUCCESS"),
                      a!save(
                        local!confirmationMessage,
                        "Your submission is confirmed."
                      )
                    }
                  )
                },
                if(
                  fv!score > .3,
                  /* Score is between .3 & .7 indicating that the user may be human or a bot*/
                  {
                    /* No need for a manual review since the user was confirmed by reCAPTCHA to be human*/
                    a!save(
                      local!submissionDetails.needsReview,
                      true
                    ),
                    a!writeToDataStoreEntity(
                      dataStoreEntity: cons!PORTAL_ENTITY,
                      valueToStore: local!submissionDetails,
                      onSuccess: {
                        a!save(local!submissionStatus, "WARN"),
                        a!save(
                          local!confirmationMessage,
                          "Your submission is processing. You will receive an email shortly with confirmation details. If you do not hear from us soon, please try again or give us a call."
                        )
                      }
                    )
                  },
                  /* Score <.3 indicates the user is most likely a bot*/
                  {
                    a!save(local!submissionStatus, "BOT"),
                    a!save(
                      local!confirmationMessage,
                      "Your submission was not successful. Please try again or call us at (202) 555-7171."
                    )
                  }
                )
              )
            },
            onError: {
              /* Cannot connect to Google reCAPTCHA services.*/
              a!save(local!submissionStatus, "ERROR"),
              a!save(
                local!confirmationMessage,
                "Your submission was not successful. Please try again or call us at (202) 555-7171."
              )
            }
          ),
          width: "FILL",
          style: "SOLID",
          loadingIndicator: true
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

## Old versions

There are older versions of this interface component. You can identify older versions by looking at the name to see if there is a version suffix. If you are using an old version, be sure to refer to the corresponding documentation from the list below.

| Old Versions | Reason for Update |
| --- | --- |
| [a!buttonWidget\_23r3](/suite/help/25.3/Button_Component_23r3.html) |
Added more flexible options for button styling with a new color parameter and updated style parameter. You can now control button color and style separately.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the Button Component.

-   [Action Banner Pattern](/suite/help/25.3/alert-banners.html) (_Formatting, Buttons, Rich Text, Cards_): Use the action banner pattern to display prominent messages that include interactive elements like links or buttons.

-   [Add Multiple Validation Rules to One Component](/suite/help/25.3/recipe-add-multiple-validation-rules-to-one-component.html) (_Validation_): Enforce that the user enters at least a certain number of characters in their text field, and also enforce that it contains the "@" character.

-   [Add Validations to an Inline Editable Grid](/suite/help/25.3/recipe-add-validations-to-an-inline-editable-grid.html) (_Validation, Grids, Looping_): Allows the user to change data directly in a grid, and validate a various entries.

-   [Add and Populate Sections Dynamically](/suite/help/25.3/recipe-add-and-populate-sections-dynamically.html) (_Looping_): Add and populate a dynamic number of sections, one for each item in a CDT array.

-   [Add, Edit, and Remove Data in an Inline Editable Grid](/suite/help/25.3/recipe-add-edit-and-remove-data-in-an-inline-editable-grid.html) (_Grids, Looping_): Allow the user to change data directly in an inline editable grid.

-   [Add, Remove, and Move Group Members Browser](/suite/help/25.3/recipe-add-remove-move-group-members-browser.html) (_Hierarchical Data, Group Management_): Display the membership tree for a given group and provide users with the ability to add, remove, and move user members from a single interface.

-   [Build a Wizard with Milestone Navigation](/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html) (_Conditional Display, Validation, Wizards_): Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

-   [Call to Action Pattern](/suite/help/25.3/call-to-action-pattern.html) (_Formatting_): Use the call to action pattern as a landing page when your users have a single action to take.

-   [Cards as Choices Pattern](/suite/help/25.3/cards-as-choices-pattern.html) (_Card Choices, Rich Text_): Use this pattern to display sets of choices that are quick and easy to navigate.

-   [Configure Buttons with Conditional Requiredness](/suite/help/25.3/recipe-configure-buttons-with-conditional-requiredness.html) (_Validation_): Present two buttons to the end user and only make certain fields required if the user clicks a particular button

-   [Configure a Boolean Checkbox](/suite/help/25.3/recipe-configure-a-boolean-checkbox.html) (_Choice Components_): Configure a checkbox that saves a boolean (true/false) value, and validate that the user selects the checkbox before submitting a form.

-   [Configure a Dropdown Field to Save a CDT](/suite/help/25.3/recipe-configure-a-dropdown-field-to-save-a-cdt.html) (_Choice Components_): When using a dropdown to select values from the database, or generally from an array of CDT values, configure it to save the entire CDT value rather than just a single field.

-   [Configure a Dropdown with an Extra Option for Other](/suite/help/25.3/recipe-configure-a-dropdown-with-an-extra-option-for-other.html) (_Choice Components_): Show a dropdown that has an "Other" option at the end of the list of choices. If the user selects "Other", show a required text field.

-   [Create a Custom Smart Search Box in a Read-only Grid](/suite/help/25.3/recipe-add-custom-smart-search-box-in-read-only-grid.html) (_Grids, Query Data, Records_): Build a custom [smart search](records-smart-search.html) experience using `a!gridField()` with `a!recordData()` and configure your own query logic.

-   [Delete Rows in a Grid](/suite/help/25.3/recipe-delete-rows-in-a-grid.html) (_Grids_): Delete one or more rows of data in a read-only grid.

-   [Dual Picklist Pattern](/suite/help/25.3/dual-picklist-pattern.html) (_Choice Components, Cards, Checkboxes, Buttons_): Use this pattern to view side-by-side lists and move items from one list to the other. The dual picklist is great for moving items from one state to another, like from active to inactive.

-   [Form Steps](/suite/help/25.3/form-steps-pattern.html) (_Stamps_): Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces.

-   [Inline Survey](/suite/help/25.3/inline-survey-pattern.html) (_Radio Buttons, Checkboxes, Buttons_): Use this pattern to create a clean and easy to navigate survey.

-   [Make a Component Required Based on a User Selection](/suite/help/25.3/recipe-make-a-component-required-based-on-a-user-selection.html) (_Validation_): Make a paragraph component conditionally required based on the user selection.

-   [Refresh Data After Executing a Smart Service](/suite/help/25.3/recipe-refresh-data-after-executing-a-smart-service.html) (_Auto-Refresh, Smart Services_):

-   [Refresh Data Using a Refresh Button](/suite/help/25.3/recipe-refresh-data-using-a-refresh-button.html) (_Auto-Refresh_):

-   [Refresh Until a Background Action Completes](/suite/help/25.3/recipe-refresh-until-asynchronous-action-completes.html) (_Auto-Refresh_): Use a refresh interval to display the results of a background action automatically.

-   [Save a User's Report Filters to a Data Store Entity](/suite/help/25.3/recipe-save-a-users-report-filters-to-data-store-entity.html) (_Grids, Smart Services, Filtering, Reports_): Allow a user to save their preferred filter on a report and automatically load it when they revisit the report later.

-   [Searching on Multiple Columns](/suite/help/25.3/recipe-searching-on-multiple-fields.html) (_Grids, Filtering, Reports_): Display a grid populated based on search criteria specified by end users.

-   [Set the Default Value Based on a User Input](/suite/help/25.3/recipe-set-the-default-value-based-on-a-user-input.html) (_Default Value_): Set the default value of a variable based on what the user enters in another component.

-   [Set the Default Value of CDT Fields Based on a User Input](/suite/help/25.3/recipe-set-the-default-value-of-cdt-fields-based-on-a-user-input.html) (_Default Value_): Set the value of a CDT field based on a user input.

-   [Set the Default Value of an Input on a Start Form](/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-start-form.html) (_Default Value_): Display a default value in some form inputs on a start form, and save the value into the process when submitting.

-   [Set the Default Value of an Input on a Task Form](/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-task-form.html) (_Default Value_): Display a default value in some form inputs on a task form, and save the value to process when submitting.

-   [Showing Validation Errors that Aren't Specific to One Component](/suite/help/25.3/recipe-showing-validation-errors-that-arent-specific-to-one-component.html) (_Validation_): Alert the user about form problems that aren't specific to one component, showing the message only when the user clicks "Submit".

-   [Tabs Patterns](/suite/help/25.3/tabs-pattern.html) (_Formatting, Choice Components, Buttons, Rich Text, Cards_): The tabs patterns provide an ideal style and design for creating tabbed interfaces.

-   [Task Report Pattern](/suite/help/25.3/task-report-pattern.html) (_Grids, Filters, Process Task Links, Task Reports_): Provides a simple way to create and display an Appian [task report](Process_Reports.html#task-report-type).

-   [Track Adds and Deletes in Inline Editable Grid](/suite/help/25.3/recipe-track-adds-and-deletes-in-an-inline-editable-grid.html) (_Grids_): In an inline editable grid, track the employees that are added for further processing in the next process steps.

-   [Trend-Over-Time Report](/suite/help/25.3/trend-over-time-report-pattern.html) (_Charts, Reports_): This report provides an attractive, interactive design for exploring different series of data over time.

-   [Update an Entity-Backed Record Type from its Summary View](/suite/help/25.3/recipe-update-an-entity-backed-record-from-its-summary-view.html) (_Records, Smart Services_): Enable users to make quick changes to a record by updating it right from a record view.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

-   [Use Links in a Grid to Show More Details and Edit Data](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data.html) (_Grids_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data. The data available for editing may include more fields than are displayed in the grid.

-   [Use Links in a Grid to Show More Details and Edit Data in External System](/suite/help/25.3/recipe-use-links-in-a-grid-to-show-more-details-and-edit-data-in-external-system.html) (_Grids, Web Services_): Allow end users to click a link in a read-only grid to view the details for the row, and make changes to the data.

-   [Use Selection For Bulk Actions in an Inline Editable Grid](/suite/help/25.3/recipe-use-selection-for-bulk-actions-in-an-inline-editable-grid.html) (_Grids_): Allow the user to edit data inline in a grid one field at a time, or in bulk using selection.

-   [Use Validation Groups for Buttons with Multiple Validation Rules](/suite/help/25.3/recipe-use-validation-group-for-buttons-with-multiple-validation-rules.html) (_Validation_): Present two buttons to the end user that, based on the selection, will validate only after a particular button is clicked.

-   [Use the Write Records Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-records-smart-service-function-on-an-interface.html) (_Smart Services, Looping_): Allow the user to publish several rows of data to a database table with the a!writeRecords() smart service function.

-   [Use the Write to Data Store Entity Smart Service Function on an Interface](/suite/help/25.3/recipe-use-the-write-to-data-store-entity-smart-service-function-on-an-interface.html) (_Smart Services, Grids, Looping_): Allow the user to publish several rows of data to a table through the a!writeToDataStoreEntity() smart service function.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...