---
source_url: https://docs.appian.com/suite/help/25.3/Signature_Component.html
original_path: Signature_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Signature Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!signatureField**( _label, labelPosition, instructions, helpTooltip, target, fileName, fileDescription, value, saveInto, required, requiredMessage, buttonStyle, buttonSize, readOnly, disabled, validationGroup, marginAbove, marginBelow, accessibilityText, showWhen_ )

Allows users to capture and save a .png signature file. To upload signatures outside of a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html), use [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html).

The signature field cannot upload multiple signature files or a pre-existing signature file.

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
-   `"JUSTIFIED"` Aligns the label alongside the component starting at the edge of the page

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

Target Folder

 |

`target`

 |

_Document or Folder_

 |

Determines the eventual location of the saved signature file.

 |
|

File Name

 |

`fileName`

 |

_Text_

 |

Determines the name for the signature file. When not provided, the timestamp will be used.

 |
|

File Description

 |

`fileDescription`

 |

_Text_

 |

Determines the description for the signature file. When not provided, the description of the new file is empty.

 |
|

Display Value

 |

`value`

 |

_Document_

 |

The signature file associated with this field.

 |
|

Save Input To

 |

`saveInto`

 |

_Save_

 |

Variable that is updated with the signature file when the user saves a signature. Removing a signature file removes the document and saves a null. Use `a!save()` to save a modified or alternative value to a variable.

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

Custom message to display when the value of the field is required but not provided.

 |
|

Button Style

 |

`buttonStyle`

 |

_Text_

 |

Determines the style of the signature button. Valid values: `"PRIMARY"`, `"SECONDARY"` (default), `"STANDARD"`, `"LINK"`.

 |
|

Button Size

 |

`buttonSize`

 |

_Text_

 |

Determines the size of the signature button. Valid values: `"SMALL"` (default), `"STANDARD"`, `"LARGE"`.

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

Determines if the field should display as potentially editable but grayed out. When a signature is present in this state, it may not be deleted. Default: false.

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

## Usage considerations

### Submitting the signature

After a user draws their signature, it is saved to a temporary folder. It is not saved to the target folder until it is submitted.

In start forms and tasks, on the button used to submit the form, make sure that the _submit_ parameter set to `true`. When this button is clicked, the signature will be saved to the target folder.

Outside of start forms and tasks, use `a!submitUploadedFiles()` in the _saveInto_ parameter of a button or link. This button or link could be used to submit the signature, as in [this a!submitUploadedFiles() example](fnc_system_a_submituploadedfiles.html#using-the-documents-parameter-with-more-than-one-file-upload-component), or the entire form, as in [this example](#signature-upload-outside-of-a-start-form-or-task). When this button is clicked, the signature will be saved to the target folder.

### Give end users Editor permissions to the target

In order to submit a signature, users must have at least **Editor** permissions to the target folder or document. For portals, give the [portal service account](portals-service-accounts.html#prodlink-portals-service-account-permissions) **Editor** permissions to the target folder or document.

Any issue with creating or updating the target folder or document will cancel the signature submission and display an error.

### Avoid saving unnecessary signatures

#### In a start form or task

For a start form or task, both the cancel and submit buttons will usually have the _submit_ parameter set to `true`. As soon as one of these buttons are clicked, any signature that has been drawn will be saved to its destination.

To avoid saving a signature from a canceled form, configure the [cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow) in the process model to [delete](Delete_Document_Smart_Service.html) the unnecessary signature file.

#### Outside of a start form or task

If you are using the signature component outside of a start form or task, use `a!submitUploadedFiles()` in the _saveInto_ parameter of a button or link. Do not use it in the signature component's _saveinto_ parameter. This ensures that the signature is only saved to the target when the user is ready to submit it.

See [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html#only-use-this-function-in-the-saveinto-parameter-of-a-button-or-link) for more information.

### For portals, test the signature upload in a published portal

To make sure signature files will be uploaded correctly in a portal, publish the portal and test it on the portal website. The signature may seem to submit correctly when you test it in the interface object, but it may not work in the portal itself. For example, if the portal service account doesn't have **Editor** permissions to the target folder, you will see an error in the portal, but not in the interface object.

See [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html#testing-and-troubleshooting-asubmituploadedfiles-in-portals) for more information on testing and troubleshooting signature uploads in portals.

### Saving a task as a draft with a signature

If a user has uploaded a signature to a task, they won't be able to save the task as a draft unless it is an [offline-enabled task](enable-offline-actions-and-tasks.html) that they are viewing on Appian Mobile. They can remove the signature to save the task as a draft.

### Signatures are stored as temporary documents until submission

Between drawing the signature and submitting it, the signature file is an inactive temporary document and not accessible.

If a signature is uploaded but never submitted, the temporary file is automatically deleted after 30 days.

### File names

By default, the signature file uses the time stamp of when the signature was captured as a file name. You can define a custom file name in the _fileName_ parameter. Check out the [Signature upload in a start form or task](#signature-upload-in-a-start-form-or-task) example to see a custom file name in use.

If any of the following characters appear in a signature's file name, they are replaced by underscores: `\ / " ; : | ? ' < > *`.

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Signature upload in a start form or task

This example shows how to use the signature component in an interface that will be used in a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html).

Keep in mind that if you don't use this interface in a start form or task, on the submit button, you would need to replace `submit: true` with `saveInto: a!submitUploadedFiles()`. See [Signature upload outside of a start form or task](#signature-upload-outside-of-a-start-form-or-task) for more information.

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
a!localVariables(
  local!signature,
  a!formLayout(
    titleBar: a!headerTemplateSimple(
      title: "Signature Form",
      secondaryText: "Use this example in a start form or task"
    ),
    contents: {
      a!signatureField(
        label: "Signature",
        labelPosition: "ABOVE",
        /* The file name and description are used for the uploaded signature file */
        fileName: loggedInUser() & "_signature_" & today(),
        fileDescription: loggedInUser() & "'s signature on " & today(),
        /* Replace this with a constant of type Folder in your environment */
        target: cons!FOLDER_CONSTANT,
        value: local!signature,
        saveInto: local!signature
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Submit",
          style: "SOLID",
          loadingIndicator: true,
          /* If you don't set the submit parameter to true, the signature will not be uploaded */
          submit: true
        )
      },
      secondaryButtons: {
        a!buttonWidget(
          label: "Cancel",
          value: true,
          saveInto: {},
          submit: true,
          style: "OUTLINE",
          validate: false
        )
      }
    )
  )
)
```

Displays the following:

![screenshot showing the signature component in a form](images/signature_example.png)

### Signature upload outside of a start form or task

This example shows how to use the signature component outside of a start form or task using `a!submitUploadedFiles()` in the _saveInto_ parameter of a button. See [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html#examples) for more examples.

Keep in mind that if you use this interface in a start form or task, on the submit button you would need to replace `saveInto: a!submitUploadedFiles()` with `submit: true`. See [Signature upload in a start form or task](#signature-upload-in-a-start-form-or-task) for more information.

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
a!localVariables(
  local!signature,
  local!submissionSuccessful,
  local!errorCode,
  {
    a!signatureField(
      label: "Signature",
      value: local!signature,
      saveInto: local!signature,
      /* Replace this with a constant of type Folder in your environment */
      target: cons!FOLDER_CONSTANT,
    ),
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Submit",
          style: "SOLID",
          /* If you don't use a!submitUploadedFiles(), the signature will not be uploaded */
          saveInto: a!submitUploadedFiles(
            onSuccess: a!save(local!submissionSuccessful, true),
            onError: {
              a!save(local!submissionSuccessful, false),
              a!save(local!errorCode, fv!error)
            }
          )
        )
      },
      align: "END"
    )
  }
)
```

Displays the following:

![Signature component with a submit button](images/signature_submituploadedfiles.png)

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