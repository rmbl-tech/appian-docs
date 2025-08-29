---
source_url: https://docs.appian.com/suite/help/25.3/File_Upload_Component.html
original_path: File_Upload_Component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# File Upload Component

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!fileUploadField**( _label, labelPosition, instructions, helpTooltip, target, fileNames, fileDescriptions, maxSelections, value, saveInto, required, requiredMessage, disabled, validations, validationGroup, buttonStyle, buttonSize, accessibilityText, showWhen, uploadMethods, buttonDisplay, placeholder, showVirusScanMessage, marginAbove, marginBelow_ )

Allows users to upload one or more files. To upload files outside of a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html), use [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html). Uploaded documents are not accessible until after form submission.

Permitted file extensions can be controlled via the [File Upload](Appian_Administration_Console.html#file-upload) settings in the Admin Console.

**See also:**

-   [Document data type](Appian_Data_Types.html#document)
-   [About Document Management](about-doc-management.html)

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

Help Tooltip

 |

`helpTooltip`

 |

_Text_

 |

Displays a help icon with the specified text as a tooltip. The tooltip displays a maximum of 500 characters. The help icon does not show when the label position is `"COLLAPSED"`.

 |
|

Target

 |

`target`

 |

_Any Type_

 |

Determines the eventual location of the uploaded files. If a [folder](folder-and-document-management.html) is provided, the document is saved to that folder. If a document is provided, a new version of that document is created. If a [record type](manage-docs-with-records.html) is provided, the document is saved to the folder associated with that record type. [Learn more about this parameter](#using-the-target-parameter).

 |
|

File Names

 |

`fileNames`

 |

_Text_

 |

Determines the names for the files. When not provided, the uploaded filenames are used. Access name, size, and extension of each file using the variables `fv!file.name`, `fv!file.size`, and `fv!file`.extension. Access the index of each file using the variable `fv!index`.

 |
|

File Descriptions

 |

`fileDescriptions`

 |

_Text_

 |

Determines the descriptions for the files. When not provided, the descriptions of the new files are empty. Access name, size, and extension of each file using the variables fv!file.name, fv!file.size, and fv!file.extension. Access the index of each file using the variable fv!index.

 |
|

Maximum Selections

 |

`maxSelections`

 |

_Number (Integer)_

 |

Maximum number of allowed files. Once this number is reached, further uploads are blocked until a file is removed.

 |
|

Selected Files

 |

`value`

 |

_List of Document_

 |

The files associated with this field.

 |
|

Save Files To

 |

`saveInto`

 |

_List of Save_

 |

One or more variables that are updated with the files when the user uploads files. Removing all uploaded files saves a null document. Use a!save() to save a modified or alternative value to a variable.

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

Disabled

 |

`disabled`

 |

_Boolean_

 |

Determines if the field should display as potentially editable but grayed out. When files are present in this state, they may not be deleted. Default: false.

 |
|

Validations

 |

`validations`

 |

_List of Text String_

 |

Validation errors to display below the field when the value is not null. Access the names, sizes, and extensions of the uploaded files using the variables fv!files.name, fv!files.size, and fv!files.extension.

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

Button Style

 |

`buttonStyle`

 |

_Text_

 |

Determines the style of the upload button. Valid values:

-   `"NORMAL"` Displays the label and border in the accent color.
-   `"PRIMARY"` Displays the label in white on an accent color background.
-   `"SECONDARY"` (default) Displays the label and border in gray.
-   `"LINK"` Displays the label in the accent color and has no border until focused.

 |
|

Button Size

 |

`buttonSize`

 |

_Text_

 |

Determines the size of the upload button. Valid values: `"SMALL"` (default), `"STANDARD"`, `"LARGE"`.

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

Upload Methods (Mobile-only)

 |

`uploadMethods`

 |

_List of Text_

 |

(Mobile only) Determines which mobile upload methods are displayed to users. If one method is specified, the upload button will be customized. Multiple may be applied. If value is null, all methods are provided. Valid values include: null (Default),`"SIGNATURE"`, `"CAMERA"`, `"CHOOSE_PHOTO"`, `"CHOOSE_FILE"`.

 |
|

Button Display

 |

`buttonDisplay`

 |

_Text_

 |

Determines if the file upload will display a button with a label or an icon. Valid values: `"LABEL"`, `"ICON"`, and `"LABEL_AND_ICON"`. Default behavior displays `"LABEL"` on web and `"LABEL_AND_ICON"` on mobile.

 |
|

Placeholder

 |

`placeholder`

 |

_Text_

 |

Text to display when no file is uploaded. Default: `"Drop files here"`.

 |
|

Show scanning for viruses message

 |

`showVirusScanMessage`

 |

_Boolean_

 |

Determines whether the `"Scanning for viruses"` message appears during file upload. When set to false, the message is hidden, but the file is still scanned for viruses. An error message will still appear if [real-time virus scanning is enabled](Appian_Administration_Console.html#file-upload) and the uploaded file contains a virus. Default: true.

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

### Using the target parameter

Depending on how you're [managing documents](about-doc-management.html), you'll configure this parameter differently.

If you're using:

-   A [record type to manage documents](manage-docs-with-records.html), reference the document management record type in the _target_ parameter to automatically store documents in the document folder for that record type. See an [example](#file-upload-in-a-start-form-or-task) below.
-   A [folder to manage documents](folder-and-document-management.html), use a [constant](Constants.html) to reference the document folder in the _target_ parameter.

### Uploading files

Users can upload files in any of the following ways:

-   Click **UPLOAD** to browse and select files.
-   Drag and drop files into the upload area.
-   Click the upload area and paste files from the clipboard.

### Interacting and previewing uploaded files

You can include the functions in your the file upload component to allow users to review, edit, and download their uploaded documents before submitting:

-   Use the [document()](fnc_scripting_document.html) function to allow users to review and edit [certain document properties](fnc_scripting_document.html#access-and-update-document-properties-before-submitting-a-form) before submitting.
-   Add a [document viewer component](Document_Viewer_Component.html) or [image component](Image_Component.html) to allow users to preview their uploaded document inline.
-   Add a [document download link](Document_Link_Component.html) to allow users to download their uploaded document so they can verify it's the correct file.

See the [Upload Multiple Documents and Edit Document Properties](recipe-upload-files-in-card-layout.html) recipe for an example using the file upload component and the `document()` function.

### Give users permission to the target

Depending on how you're managing documents, users must have the following permission to submit an uploaded file:

-   If you're using a [record type to manage the documents](manage-docs-with-records.html), users must have at least **Viewer** permission to the record type.
-   If you're using a [folder to manage the documents](folder-and-document-management.html), users must have at least **Editor** permission to the target folder or document.

If users are uploading documents in a portal, give the [portal service account](portals-service-accounts.html#prodlink-portals-service-account-permissions) **Editor** permissions to the target folder or document.

File submission will be canceled if there are any errors when saving a new document or version of a document.

### If enabled in Admin Console, uploaded files are scanned for viruses

If [real-time virus scanning is enabled](Appian_Administration_Console.html#file-upload) for file uploads in the Admin Console, the uploaded file will always be scanned for viruses, regardless of whether the virus scanning message is shown.

### Uploaded file size limit

In portals, the size limit for uploaded files is 10 MB. Everywhere else, the file size limit is 1GB.

### Some characters in file names are replaced

The following characters in filenames are replaced by underscores `_` after submitting the file upload: `\ / " ; : | ? ' < > *`.

### Uploading new versions of multiple files

The file upload component cannot be used to upload new versions of multiple files. Instead, use one component for each file to replace.

### Saving a task as a draft with an uploaded file

If a user has uploaded a file to a task, they won't be able to save the task as a draft unless it is an [offline-enabled task](enable-offline-actions-and-tasks.html) that they are viewing on Appian Mobile. They can remove the uploaded files to save the task as a draft.

### Submitting files

When files are uploaded in the file upload component, they are saved to a temporary folder. They are not saved to the target until they are submitted.

In start forms and tasks, on the button used to submit the form, make sure that the _submit_ parameter set to `true`. When this button is clicked, the uploaded files will be saved to the target.

Outside of start forms and tasks, use `a!submitUploadedFiles()` in the _saveInto_ parameter of a button or link. This button or link could be used to submit the files, as in [this a!submitUploadedFiles() example](fnc_system_a_submituploadedfiles.html#using-the-documents-parameter-with-more-than-one-file-upload-component), or the entire form, as in [this example](#file-upload-outside-a-start-form-or-task). When this button is clicked, the uploaded files will be saved to the target folder.

### Uploaded files are stored as temporary documents until submission

When a file is uploaded, the component updates with a temporary document representing the uploaded file. Between the upload and the submission, the file on the server is an inactive temporary file and not accessible except through `fv!` variables described in the _File Name_, _File Description_, and _Validations_ parameters. This is the only way to access file metadata before the file upload is submitted.

If a file is uploaded but is never submitted, the temporary file is automatically deleted after 30 days.

### Avoid saving unnecessary files

#### In a start form or task

For a start form or task, both the cancel and submit buttons will usually have the _submit_ parameter set to `true`. As soon as one of these buttons are clicked, any uploaded files will be saved to their target.

To avoid saving files from a canceled form, configure the [cancel flow](Process_Modeling_Tutorial.html#add-a-cancel-flow) in the process model to handle the unnecessary files. If the target is a folder, [delete](Delete_Document_Smart_Service.html) any uploaded files. If the target is a document, revert the file upload via a new version of the document.

#### Outside of a start form or task

If you are using the file upload component outside of a start form or task, use `a!submitUploadedFiles()` in the _saveInto_ parameter of a button or link. Do not use it in the file upload component's _saveinto_ parameter. This ensures that the file is only saved to the target when the user is ready to submit it.

See [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html#only-use-this-function-in-the-saveinto-parameter-of-a-button-or-link) for more information.

### For portals, test the file upload in a published portal

To make sure files will be uploaded correctly in a portal, publish the portal and test the file upload on the portal website. The file may seem to submit correctly when you test it in the interface object, but it may not work in the portal itself. For example, if the portal service account doesn't have **Editor** permissions to the target folder, you will see an error in the portal, but not in the interface object.

See [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html#testing-and-troubleshooting-asubmituploadedfiles-in-portals) for more information on testing and troubleshooting uploading documents in portals.

### Appian Mobile considerations

The _uploadMethods_ parameter is only supported in the Appian Mobile app. This parameter allows you to limit the upload methods a mobile user has access to when tapping an upload button.

For example, this can be helpful to ensure users do not upload photos of a signature instead of drawing their signature within the application.

### Using fv! variables

These examples demonstrate how to use the `fv!` variables available in the File Name, File Description, and Validations parameters to set file metadata or create complex validations.

Add one of the following parameter configurations to a file upload component to achieve the desired behavior.

#### Swap spaces for underscores in file names

```
1
fileNames: substitute(fv!files.name, " ", "_")
```

#### Set file descriptions to a value plus file index

```
1
fileDescriptions: "Application ABC-123 attachment " & fv!index
```

#### All files must be PDFs

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
validations: a!localVariables(
  local!invalidExtensions: difference(upper(fv!files.extension), "PDF"),
  if(
    length(local!invalidExtensions) > 0,
    "Attachments must be pdf files. Remove: " &
      index(fv!files, "name", wherecontains(local!invalidExtensions, upper(fv!files.extension)), {}),
    ""
  )
)
```

#### No files may be PDFs

```
1
2
3
4
5
6
validations: if(
  contains(upper(fv!files.extension), "PDF"),
  "Attachments must not be pdf files. Remove: " &
    index(fv!files, "name", wherecontains("PDF", upper(fv!files.extension))),
  ""
)
```

#### Files may only be PNG or JPG

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
validations: a!localVariables(
  local!invalidExtensions: difference(upper(fv!files.extension), { "PNG", "JPG" }),
  if(
    length(local!invalidExtensions) > 0,
    "Attachments must be images. Remove: " &
      index(fv!files, "name", wherecontains(local!invalidExtensions, upper(fv!files.extension)), {}),
    ""
  )
)
```

#### Files must be larger than 5MB

```
1
2
3
4
5
6
validations: if(
  or(fv!files.size < 5000000),
  "Attachments must be at least 5MB. Remove: " &
    index(fv!files, "name", where(fv!files.size < 5000000), {}),
  ""
)
```

#### Files must be smaller than 5MB

```
1
2
3
4
5
6
validations: if(
  or(fv!files.size > 5000000),
  "Attachments may not exceed 5MB. Remove: " &
    index(fv!files, "name", where(fv!files.size > 5000000), {}),
  ""
)
```

#### Up to five files are allowed

```
1
validations: if(length(fv!files) > 5, "Only 5 attachments are allowed", "")
```

#### Exactly five files are required

```
1
validations: if(not(length(fv!files) = 5), "5 files must be attached", "")
```

#### At least five files are required

```
1
validations: if(length(fv!files) < 5, "There must be at least 5 attachments", "")
```

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### File upload in a start form or task

This example shows how to use the file upload component in an interface that will be used in a [start form](process-model-object.html#process-start-form-tab) or [task](Tasks.html). This example also includes the [document()](fnc_scripting_document.html) function, which will allow users to edit the document name and add a description before submitting the form.

[![images/edit-document-details-before-submitting.gif](images/edit-document-details-before-submitting.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img62)

[![](images/edit-document-details-before-submitting.gif)](#_)

This expression includes a rule input (`ri!record`) set to the AR Order Document record type, which is a [document management record type](manage-docs-with-records.html).

**Note:**  For the purposes of this example, we're just illustrating how to configure a file upload component using a record type. In most scenarios, documents will be uploaded alongside other application data (like uploading documents for a specific a order).

See the [Upload Multiple Documents and Edit Document Properties](recipe-upload-files-in-card-layout.html) recipe for an example creating a record and uploading related documents.

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
161
162
163
164
165
166
167
168
a!formLayout(
  titleBar: a!headerTemplateFull(
    title: "Upload a Document",
    secondaryText: "Edit the file name and description before submitting",
  ),
  isTitleBarFixed: true,
  contents: {
    a!cardLayout(
      contents: {
        a!localVariables(
        /* By default, document properties are hidden when a user uploads a document */
          local!expandDetails: false,
          a!sectionLayout(
            label: "Document",
            labelSize: "EXTRA_SMALL",
            labelColor: "STANDARD",
            contents: a!cardLayout(
              contents: {
                a!sideBySideLayout(
                  items: {
                    a!sideBySideItem(
                      item: a!fileUploadField(
                        label: "Document",
                        labelPosition: "ABOVE",
                        target: recordType!AR Order Document,
                      /* This example only allows users to upload one document */
                        maxSelections: 1,
                        required: true,
                        value: ri!record[recordType!AR Order Document.fields.documentId],
                        saveInto: {
                          ri!record[recordType!AR Order Document.fields.documentId],
                        /* If the user updates the name, save the value */
                          a!save(
                            ri!record[recordType!AR Order Document.relationships.documentProperties.fields.name],
                            document(ri!record[recordType!AR Order Document.fields.documentId], "name")),
                        /* If the user adds a description, save the value */
                          a!save(
                            ri!record[recordType!AR Order Document.relationships.documentProperties.fields.description],
                            document(ri!record[recordType!AR Order Document.fields.documentId], "description"))
                        },
                        fileNames: ri!record[recordType!AR Order Document.relationships.documentProperties.fields.name],
                        fileDescriptions: ri!record[recordType!AR Order Document.relationships.documentProperties.fields.description],
                        marginBelow: "NONE"
                      )
                    ),
                    /* Allow users to remove the uploaded document */
                    a!sideBySideItem(
                      showWhen: a!isNotNullOrEmpty(ri!record[recordType!AR Order Document.fields.documentId]),
                      item: a!imageField(
                        size: "ICON",
                        images: a!documentImage(
                          document: a!iconIndicator(
                            icon: "REMOVE"
                          ),
                          altText: "Remove Document",
                          link: a!dynamicLink(
                            saveInto: {
                              a!save(ri!record[recordType!AR Order Document.fields.documentId], null()),
                              a!save(local!expandDetails, false()),

                            }
                          )
                        )
                      ),
                      width: "MINIMIZE"
                    )
                  },
                  alignVertical: "MIDDLE",
                  spacing: "STANDARD",
                  marginBelow: "NONE"
                ),
                a!sectionLayout(
                  showWhen: a!isNotNullOrEmpty(ri!record[recordType!AR Order Document.fields.documentId]),
                  contents: a!richTextDisplayField(
                    accessibilityText: if(local!expandDetails, "Hide document properties", "View and edit document properties"),
                    labelPosition: "COLLAPSED",
                    value: {
                      a!richTextIcon(
                        icon: if(local!expandDetails, "angle-down-bold", "angle-right-bold"),
                        link: a!dynamicLink(
                          saveInto: a!save(local!expandDetails, not(local!expandDetails))
                        ),
                        linkStyle: "STANDALONE",
                        color: "SECONDARY",
                        size: "SMALL"
                      ),
                      a!richTextItem(
                        text: " "
                      ),
                      a!richTextItem(
                        text: "Properties",
                        link: a!dynamicLink(
                          value: true,
                          saveInto: a!save(local!expandDetails, not(local!expandDetails))
                        ),
                        linkStyle: "STANDALONE",
                        color: "#636363",
                        size: "STANDARD",
                        style: "PLAIN"
                      )
                    },
                    marginBelow: if(local!expandDetails, "STANDARD", "NONE")
                  ),
                  divider: "ABOVE",
                  marginBelow: "LESS"
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!textField(
                          label: "Name",
                          required: true,
                          value: ri!record[recordType!AR Order Document.relationships.documentProperties.fields.name],
                          saveInto: ri!record[recordType!AR Order Document.relationships.documentProperties.fields.name],

                        ),
                        a!paragraphField(
                          label: "Description",
                          value: ri!record[recordType!AR Order Document.relationships.documentProperties.fields.description],
                          saveInto: ri!record[recordType!AR Order Document.relationships.documentProperties.fields.description],

                        )
                      },
                      width: "MEDIUM_PLUS"
                    )
                  },
                  showWhen: local!expandDetails,
                  marginBelow: "NONE"
                )
              },
              padding: if(a!isNullOrEmpty(ri!record[recordType!AR Order Document.fields.documentId]), "NONE", "STANDARD"),
              showBorder: a!isNotNullOrEmpty(ri!record[recordType!AR Order Document.fields.documentId])
            )
          )
        ),
      },
      shape: "SEMI_ROUNDED",
      padding: "MORE",
      style: "NONE"
    )
  },
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(
        label: "Submit",
      /* If you don't use this interface in a start form or task, */
      /* replace submit: true with saveInto: a!submitUploadedFiles() */
        submit: true,
        validate: true,
        style: "SOLID"
      )
    },
    secondaryButtons: {
      a!buttonWidget(
        label: "Cancel",
        submit: true,
        validate: false,
        saveInto: ri!cancel,
        style: "OUTLINE",
        value: true
      )
    }
  ),
  backgroundColor: "#F6F7F9",
  showTitleBarDivider: false,
  contentsWidth: "FULL"
)
```

### File upload outside a start form or task

This example shows how to use the file upload component outside of a start form or task using [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html) in the _saveInto_ parameter of a button.

![file upload component used outside a start form or task](images/file_upload_no_start_form_25_2.png)

**Tip:**  Keep in mind that if you use this interface in a start form or task, on the **Submit** button you would need to replace `saveInto: a!submitUploadedFiles()` with `submit: true`. See [File upload in a start form or task](#file-upload-in-a-start-form-or-task) for more information.

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
a!localVariables(
  local!file,
  local!submissionSuccessful,
  local!errorCode,
  {
    a!fileUploadField(
      label: "File Upload",
      labelPosition: "ABOVE",
      saveInto: local!file,
      value: local!file,
      maxSelections: 1,
      /* Replace this with a constant of type Folder in your environment */
      target: cons!AS_DOCUMENTS_FOLDER_POINTER
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

### File upload with the icon style and no files

Use the interactive editor below to test out the example code.

To test out different file upload styles and placeholder texts, change the value of the _buttonDisplay_ parameter to `"LABEL_AND_ICON"` and enter a different text value for the _placeholder_ parameter.

### Single file upload

This example uses a [record type to manage documents](manage-docs-with-records.html), so the expression includes a rule input (`record`) set to the Candidate Document record type. The expression in this example will display the following:

![screenshot of a single file upload with a single file](images/file-upload-single-25_2.png)

```
1
2
3
4
5
6
7
8
a!fileUploadField(
  label: "Cover Letter",
  /* Replace this with a record type reference in your environment */
  target: recordType!Candidate Document,
  maxSelections: 1,
  value: ri!record[recordType!Candidate Document.fields.document],
  saveInto: ri!record[recordType!Candidate Document.fields.document]
)
```

### Signature-capture only field on the Appian Mobile application

This example allows Appian Mobile users to tap a "Signature" file upload button to draw their signature. Based on this expression, Appian Mobile users cannot use other upload methods such as taking a photo.

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
a!localVariables(
  local!signature,
  a!fileUploadField(
    label: "Signature",
    /* Replace this with a constant of type Folder in your environment */
    target: cons!FOLDER_CONSTANT,
    maxSelections: 1,
    value: local!signature,
    saveInto: local!signature,
    uploadMethods: "SIGNATURE"
  )
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
| [a!fileUploadField\_17r1](/suite/help/25.3/File_Upload_Component_171.html) |
Multiple file upload is now supported directly within the component. This removes the need to generate many individual file upload fields.

 |

To learn more about how Appian handles this kind of versioning, see the [Function and Component Versions](/suite/help/25.3/function_versions.html) page.

## Related Patterns

The following patterns include usage of the File Upload Component.

-   [Upload Multiple Documents and Edit Document Properties](/suite/help/25.3/recipe-upload-files-in-card-layout.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

-   [Upload Multiple Documents in an Editable Grid](/suite/help/25.3/recipe-upload-files-in-editable-grid.html) (_Document Management, Records_): Build a form that allows users to create a record and upload related documents in an editable grid.

-   [Upload and name a file](/suite/help/25.3/recipe-upload-and-name-file.html) (_Document Management, Records_): Allow users to upload and name a file.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...