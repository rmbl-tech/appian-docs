---
source_url: https://docs.appian.com/suite/help/25.3/fnc_system_a_submituploadedfiles.html
original_path: fnc_system_a_submituploadedfiles.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# a!submitUploadedFiles() Function

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Function

**a!submitUploadedFiles**( _onSuccess, onError, documents_ )

To upload files outside of a start form or task, use this function in the _saveInto_ parameter of a submit [button](Button_Component.html) or [link](Link_Component.html). This function submits the files uploaded to any [file upload](File_Upload_Component.html) or [signature](Signature_Component.html) components in the interface to their target folder.

**Note:**  In interfaces with file upload or signature components that are used outside of start forms or tasks, if you don't use this function, the file will not be saved to the target document or folder. This function cannot be used in interfaces that are used in start forms or tasks.

**See also**:

-   Portal Best Practices: [Working with documents](portals-design.html#working-with-documents)

## Parameters

| Keyword | Type | Description |
| --- | --- | --- |
|
`onSuccess`

 |

_Any Type_

 |

A list of saves to execute after the uploaded files are submitted successfully.

 |
|

`onError`

 |

_Any Type_

 |

A list of saves to execute after the uploaded files are not submitted successfully. Use `fv!error` to access the returned error code.

 |
|

`documents`

 |

_List of Number (Integer)_

 |

Use this optional parameter when you have multiple file upload or signature components on an interface and each one submits with a different button or link. This parameter accepts a list of documents to submit when the user clicks the button or link. See [Usage Considerations](#submitting-files-from-multiple-file-upload-or-signature-components-on-one-interface) for more information.

Documents that have already been submitted or cannot be found will be ignored. If this parameter isn't used, all uploaded files will be submitted.

 |

## Returns

Any type

## Usage considerations

### Only use this function in the saveInto parameter of a button or link

As soon as Appian evaluates `a!submitUploadedFiles()` in an interface, it will automatically save the uploaded files to the target folder, no matter where the function is used. It is important to use the function in the correct _saveInto_ parameter to make sure it is uploaded at the appropriate time.

For example, if you use `a!submitUploadedFiles()` in the _saveInto_ parameter of a file upload component, Appian will add the file to the target folder as soon as a user uploads it. This means that if a user uploads the wrong file, the function adds it to the folder before the user can change the file. This can result in adding unnecessary or incorrect files to the target folder.

To avoid this, use `a!submitUploadedFiles()` in the _saveInto_ parameter of a button or link. This ensures that Appian will evaluate the function when the user clicks the appropriate button or link to submit the uploaded files.

This function can be used with other functions inside the _saveInto_ parameter. It can also be nested within another function in the _saveInto_ parameter. To see this in practice, check out [this example](#upload-a-file-outside-of-a-start-form-or-task-and-start-a-process) that starts a process and submits an uploaded file.

### In the button component, set the submit parameter to false

On buttons that uses `a!submitUploadedFiles()`, set the value of the _submit_ parameter to `false`. Using `true` for the _submit_ parameter is for buttons that submit start forms and tasks, which can't use `a!submitUploadedFiles()`. The `a!submitUploadedFiles()` function is for buttons that upload files outside of start forms and tasks. Using `submit: true` and `saveInto: a!submitUploadedFiles` in the same button will not work correctly.

Note that the buttons in the form layout and templates in an interface object set the _submit_ parameter to `true` by default. To use these outside of a start for or task, you will need to update the _submit_ parameter to `false`.

![form layouts in interface](images/form_layouts_25-2.png)

### Submitting files from multiple file upload or signature components on one interface

For interfaces such as comment threads, you may have more than one file upload component with a submit button for each.

For example, in the following interface, users can attach a file to a comment or in a reply to a comment. You wouldn't want one of the buttons to submit files from both file upload components. Instead, you need to use the _documents_ parameter to specify which file should be submitted with which button. See [this example](#using-the-documents-parameter-with-more-than-one-file-upload-component) for how to use the _documents_ parameter.

![comment thread example with multiple file upload fields](images/submitfiles_comment_thread.png)

### Submission behavior when one file fails to upload

If multiple files are uploaded and at least one of them fails to submit, then none of the files will submit and they won't be added to the target folder.

### Testing and troubleshooting a!submitUploadedFiles() in portals

To make sure files will be uploaded correctly in a portal, publish the portal and test the file upload on the portal website. The file may seem to submit correctly when you test it in the interface object, but it may not work in the portal itself.

Some errors for `a!submitUploadedFiles()` only happen in a published portal. For example, if the portal service account doesn't have **Editor** permissions to the target folder, you will see an error in the portal, but not in the interface object. If you are getting an error in a published portal that you aren't seeing in the interface object, try [displaying the value of fv!error in the portal interface](#test-file-submission-in-a-portal-and-display-the-error-code).

In portals, only the error code displays as the value of `fv!error`, without a corresponding message. To find out what the error code means, see the following table.

| Error Code | Meaning |
| --- | --- |
| APNX‑1‑4561‑007 | An error occurred when submitting the uploaded file(s). |
| APNX‑2‑4196‑000 | An unexpected error has occurred. The form can't be submitted. |
| APNX‑2‑4196‑001 | The destination folder specified is invalid. |
| APNX‑2‑4196‑002 | The portal service account does not have **Editor** permissions to upload files to the designated folder. See [Service Accounts in Portals](portals-service-accounts.html#prodlink-portals-service-account-permissions) for more information. |
| APNX‑2‑4196‑006 | This file is empty. |
| APNX‑2‑4196‑007 | The uploaded file doesn't exist. |

## Examples

_To experiment with examples, copy and paste the expression into an interface object._

### Upload a file outside of a start form or task

This example uses `a!submitUploadedFiles()` in the _saveInto_ parameter of the **Submit** button. When the user uploads the file, it will be saved to a temporary folder. When they click **Submit**, the file will be saved to the target folder.

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
a!localVariables(
  local!file,
  {
    a!fileUploadField(
      label: "Supporting Image",
      value: local!file,
      saveInto: local!file,
      /* Replace this with a constant of type Folder in your environment */
      target: cons!FOLDER_CONSTANT,
      maxSelections: 1,
      validations: if(
        or(upper(fv!files.extension) = { "PNG", "JPG" }),
        null,
        "Please upload a valid image type: PNG or JPEG"
      )
    ),
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Submit",
          style: "SOLID",
          saveInto: a!submitUploadedFiles()
        )
      },
      align: "END"
    )
  }
)
```

### Upload a file outside of a start form or task and start a process

In this example, when the user clicks the **Submit** button, it starts a process. If the process completes successfully, the image is uploaded to the target folder.

This example uses data from the Acme Auto Solution Application application, available for free in [Appian Community Edition](https://community.appian.com/p/my-learning-journey/). To follow along with this example, [log in](https://explore.appian.community/suite/webapi/global-redirect) to Appian Community and register for Appian Community Edition.

If you do not see the Acme Auto Solution Application in your existing Appian Community Edition site, request a new Appian Community Edition site to get the latest application contents.

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
a!localVariables(
  local!data: 'recordType!{aa4ce38f-1a9d-4827-af51-e2ccb80a2c8b}AS Vehicle'(
    'recordType!{aa4ce38f-1a9d-4827-af51-e2ccb80a2c8b}AS Vehicle.fields.{8b9b140f-deaf-4ca3-8066-1c4624cda5ea}vehicleImage': null
  ),
  local!submissionSuccessful,
  {
    a!fileUploadField(
      label: "Vehicle Image",
      labelPosition: "ABOVE",
      value: local!data['recordType!{aa4ce38f-1a9d-4827-af51-e2ccb80a2c8b}AS Vehicle.fields.{8b9b140f-deaf-4ca3-8066-1c4624cda5ea}vehicleImage'],
      saveInto: local!data['recordType!{aa4ce38f-1a9d-4827-af51-e2ccb80a2c8b}AS Vehicle.fields.{8b9b140f-deaf-4ca3-8066-1c4624cda5ea}vehicleImage'],
      /* Replace this with a constant of type Folder in your environment */
      target: cons!FOLDER_CONSTANT
    ),
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Submit",
          style: "SOLID",
          saveInto: a!startProcess(
            /* Replace this with a constant of type Process Model that writes the image ID */
            processModel: cons!PROCESS_MODEL_CONSTANT,
            processParameters: {
              vehicle: local!data
            },
            /* Only upload the files if the process completes successfully */
            onSuccess: a!submitUploadedFiles(
              onSuccess: a!save(local!submissionSuccessful, true),
              onError: a!save(local!submissionSuccessful, false)
            ),
            onError: a!save(local!submissionSuccessful, false)
          )
        )
      },
      align: "START"
    )
  }
)
```

### Using the documents parameter with more than one file upload component

This example shows how to use the _documents_ parameter when there is more than one file upload component on an interface. See the [usage considerations](#submitting-files-from-multiple-file-upload-or-signature-components-on-one-interface) for more information.

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
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
a!localVariables(
  local!comment,
  local!commentFile,
  local!reply,
  local!replyFile,
  {
    a!sectionLayout(
      label: "",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!stampField(
                  labelPosition: "COLLAPSED",
                  icon: "user",
                  backgroundColor: "ACCENT",
                  contentColor: "#ffffff",
                  size: "SMALL"
                )
              },
              width: "EXTRA_NARROW"
            ),
            a!columnLayout(
              contents: {
                a!paragraphField(
                  labelPosition: "COLLAPSED",
                  placeholder: "Enter comment",
                  value: local!comment,
                  saveInto: local!comment,
                  refreshAfter: "UNFOCUS",
                  height: "MEDIUM"
                )
              }
            )
          }
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(contents: {}, width: "EXTRA_NARROW"),
            a!columnLayout(
              contents: {
                a!fileUploadField(
                  label: "File Upload",
                  labelPosition: "COLLAPSED",
                  /* Replace this with a constant of type Folder in your environment */
                  target: cons!FOLDER_CONSTANT,
                  value: local!commentFile,
                  saveInto: local!commentFile
                )
              }
            ),
            a!columnLayout(
              contents: {
                a!buttonArrayLayout(
                  buttons: {
                    a!buttonWidget(
                      label: "Post Comment",
                      saveInto: a!submitUploadedFiles(
                        documents: local!commentFile
                      ),
                      style: "SOLID"
                    )
                  },
                  align: "END"
                )
              }
            )
          }
        )
      },
      divider: "BELOW"
    ),
    a!richTextDisplayField(
      labelPosition: "COLLAPSED",
      value: {
        a!richTextItem(
          text: { "1 Comment" },
          size: "MEDIUM",
          style: { "STRONG" }
        )
      },
      marginAbove: "EVEN_LESS",
      marginBelow: "MORE"
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!stampField(
              labelPosition: "COLLAPSED",
              icon: "user",
              backgroundColor: "ACCENT",
              contentColor: "#ffffff",
              size: "SMALL"
            )
          },
          width: "EXTRA_NARROW"
        ),
        a!columnLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextItem(
                  text: { "Karen Anderson " },
                  style: { "STRONG" }
                ),
                "I have a comment about this.",
                char(10),
                a!richTextItem(
                  text: { "5 minutes ago" },
                  color: "SECONDARY",
                  size: "SMALL"
                )
              },
              marginAbove: "LESS"
            )
          },
          width: "AUTO"
        )
      }
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(contents: {}, width: "EXTRA_NARROW"),
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: { "Replying to Karen" },
                      color: "SECONDARY",
                      size: "SMALL",
                      style: { "STRONG" }
                    )
                  }
                ),
                a!paragraphField(
                  label: "",
                  labelPosition: "COLLAPSED",
                  placeholder: "Enter comment",
                  value: local!reply,
                  saveInto: local!reply,
                  refreshAfter: "UNFOCUS",
                  height: "MEDIUM"
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!fileUploadField(
                          label: "",
                          labelPosition: "COLLAPSED",
                          value: local!replyFile,
                          saveInto: local!replyFile
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!buttonArrayLayout(
                          buttons: {
                            a!buttonWidget(
                              label: "POST REPLY",
                              saveInto: a!submitUploadedFiles(
                                documents: local!replyFile
                              ),
                              size: "SMALL",
                              style: "OUTLINE"
                            )
                          }
                        )
                      }
                    )
                  }
                )
              },
              height: "AUTO",
              style: "TRANSPARENT",
              marginBelow: "STANDARD",
              showBorder: false,
              decorativeBarPosition: "START",
              decorativeBarColor: "#DDD"
            )
          },
          width: "AUTO"
        )
      }
    )
  }
)
```

Displays the following:

![comment thread example with multiple file upload fields](images/submitfiles_comment_thread.png)

### Test file submission in a portal and display the error code

Some errors for `a!submitUploadedFiles()` only happen in a published portal. If you are getting an error in a published portal that you aren't seeing in the interface object, follow the steps below to display the value of [fv!error](#testing-and-troubleshooting-asubmituploadedfiles-in-portals) in the portal.

To test the below example:

1.  Create an interface object and copy and paste the example expression into it.
2.  Create a portal object.
    -   Add a page to the portal using the interface with the example expression.
    -   For **Service Account**, create a [service account](portals-service-accounts.html), or select an existing one.
3.  Give the service account **Editor** permissions to the folder that the files will be uploaded to.
4.  In the portal object, turn on **Published**, then click **SAVE** to publish the portal.
5.  After the portal publication is complete, test the portal by uploading a file that is less than 10 MB. It should display "File uploaded successfully."
6.  Remove the service account's access to the folder and test the portal again. It should display "File not uploaded. APNX-2-4196-002".

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
a!localVariables(
  local!file,
  local!submissionSuccessful,
  local!errorCode,
  {
    a!fileUploadField(
      label: "Supporting Image",
      /* Replace this with a constant of type Folder in your environment */
      target: cons!FOLDER_CONSTANT,
      value: local!file,
      saveInto: local!file
    ),
    a!buttonArrayLayout(
      buttons: {
        a!buttonWidget(
          label: "Submit",
          saveInto: a!submitUploadedFiles(
            onSuccess: a!save(local!submissionSuccessful, true),
            onError: {
              a!save(local!submissionSuccessful, false),
              a!save(local!errorCode, fv!error)
            }
          ),
          style: "SOLID"
        )
      },
      align: "END"
    ),
    {
      if(
        isnull(local!submissionSuccessful),
        {},
        if(
          local!submissionSuccessful = true,
          /* Success message */
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextIcon(
                icon: "check-circle",
                color: "POSITIVE"),
                " ",
                a!richTextItem(
                  text: "File uploaded successfully",
                  style: "STRONG"
                )
            },
            align: "RIGHT"
          ),
          /* Error message */
          a!richTextDisplayField(
            labelPosition: "COLLAPSED",
            value: {
              a!richTextIcon(
                icon: "times-circle",
                color: "NEGATIVE"),
                " ",
                a!richTextItem(
                  text: {
                    "File not uploaded. ",
                    local!errorCode,
                  },
                  style: "STRONG",
                  color: "NEGATIVE"
                )
            },
            align: "RIGHT"
          )
        )
      )
    }
  }
)
```

## Feature compatibility

The table below lists this function's compatibility with various features in Appian.

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
| Process Events | Partially compatible |

If autoscale is enabled, can be used to configure a supported process event node (such as a start event or timer event).

 |
| Process Autoscaling | Compatible |

Can be used in autoscaled processes.

 |

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...