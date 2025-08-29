---
source_url: https://docs.appian.com/suite/help/25.3/File_Upload_Component_171.html
original_path: File_Upload_Component_171.html
version: "25.3"
title: "a!fileUploadField\_17r1 Component"
page_id: "File_Upload_Component_171"
section: "File Upload 17.1"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!fileUploadField\_17r1 Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

This page contains information related to an old version of the [File Upload Component](/suite/help/25.3/File_Upload_Component.html).

To take advantage of the latest features and improvements, we always recommend you use the latest version whenever possible. See the latest version's page for information about [what's been changed.](/suite/help/25.3/File_Upload_Component.html#Old_Version)

## File Upload 17.1

**Function**: `a!fileUploadField_17r1()`

Allows users to upload a file. File upload is only enabled on start and task forms.

**See Also:** [Document](Appian_Data_Types.html#document), [Document or Folder](Appian_Data_Types.html#document-or-folder)

**Parameters**

| Name | Keyword | Type | Description |
| --- | --- | --- | --- |
| Label | label | Text | Optional text to display as the field label. |
| Label Position | labelPosition | Text | Optional text to determine where the label appears. Valid values include
-   `"ABOVE"` (default) Displays the label above the component.
-   `"ADJACENT"` Displays the label to the left of the component.
-   `"COLLAPSED"` Hides the label. The label will still be read by screen readers; see [accessibility considerations](building_accessible_applications.html) for more information.

 |
| Instructions | instructions | Text | Optional text displayed below the field's value. |
| Help Tooltip | helpTooltip | Text | Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`. |
| Target | target | Document or Folder | Determines the eventual location of the uploaded file. When a Folder, the uploaded file is created as a document in that folder. When a Document, the uploaded file is created as a new version of that document. |
| Document Name | documentName | Text | Optionally determines the name for the document. When not provided, the uploaded filename is used. |
| Document Description | documentDescription | Text | Determines the description for the document. When not provided, the description of the new file or version is empty. |
| Selected Document | value | Document | The document associated with this field. |
| Save Document To | saveInto | Save Array | One or more variables that are updated with the document when the user uploads a file. Removing an uploaded file saves a null document. Use `a!save()` to save a modified or alternative value to a variable. |
| Required | required | Boolean | Determines if a value is required to submit the form. Default is `false`. |
| Required Message | requiredMessage | Text | Custom message to be displayed when the field's value is required and not provided. |
| Disabled | disabled | Boolean | Determines if the user is prevented from changing the value and determines if the field should be grayed out. Default is `false`. |
| Validations | validations | Text Array | Validation errors to be displayed below the field when the value is not null. |
| Validation Group | validationGroup | Text | When present, this field is only validated when a button in the same validation group is clicked. |
| Show When | showWhen | Boolean | Determines whether the component is displayed on the interface. When set to false, the component is hidden and is not evaluated. Default: true. |

**Notes**

-   When a file is uploaded, the component updates with a temporary Document representing the uploaded file. Between the upload and the form submission, the file on the server is an inactive temporary document and not accessible.
-   When implementing form cancel behavior via a submission, remember that the uploaded file is moved to its target on submission. If this is undesirable in a cancel scenario, it should be deleted (if target is a folder) or reverted via a new version (if the target is a document) by the process after submission.
-   If a file is uploaded to a form that is never submitted, the temporary file is automatically deleted after thirty days.
-   If any of the following characters appear in a document's name, they are replaced by underscores: `\ / " ; : | ? ' < > *`
-   The user submitting the form must have at least author access to the target folder or document. Any error creating the new document or version causes submission to be canceled and an error to be displayed to the user.
-   The file upload component only functions on start and task forms. When placed on a record view or report, the field appears but is automatically disabled.
-   Task forms with one or more file upload fields can only be saved if either no file has been uploaded or every uploaded file has been removed.

**Examples**

_To experiment with examples, copy and paste the expression into an interface object._

**_Single File Upload_**

```
1
2
3
4
5
6
7
8
=a!fileUploadField_17r1(
  label: "Upload resume",
  instructions: "Accepted Formats: docsx, xlsx, png, etc",
  target: cons!RESUME_FOLDER,
  value: ri!file,
  saveInto: ri!file,
  required: true
)
```

Displays the following:

![](images/FileUploadEmpty_75.png)

Using the field to upload a file called "Resume.pdf" displays the following:

![](images/FileUploadWithFile_75.png)

## Feature compatibility

The table below lists this component's compatibility with various features in Appian.

| Feature | Compatibility | Note |
| --- | --- | --- |
| Portals | Compatible |  |
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

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...