---
source_url: https://docs.appian.com/suite/help/25.3/recipe-upload-files-in-card-layout.html
original_path: recipe-upload-files-in-card-layout.html
version: "25.3"
title: "Upload Multiple Documents and Edit Document Properties"
page_id: "recipe-upload-files-in-card-layout"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Upload Multiple Documents and Edit Document Properties

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

**Tip:**  Interface patterns give you an opportunity to explore different interface designs. Be sure to check out [How to Adapt a Pattern for Your Application](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html).

## Goal

Build a form that allows users to create a record and upload related documents. Users can edit the document name and add a document description before submitting the form.

Documents are often related to other application data, like system logs attached to a specific support case, so this recipe illustrates how to create a support case and related documents in a [wizard layout](Wizard_Layout.html).

[![Gif showing how users can upload a document and preview and update details](images/doc_management/upload-docs-card-layout.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img28)

[![](images/doc_management/upload-docs-card-layout.gif)](#_)

### Elements of this recipe

This recipe contains a wizard with two steps:

-   **Step 1**: Create or update a case title and description. This information is written to the **SCA Case** record type.
-   **Step 2**: Upload related case documents and edit the document properties as needed. This information is written to the **SCA Case Document** record type, which is a [document management record type](manage-docs-with-records.html#required-object).

[![Form annotated to show which record types are used in which step of the wizard](images/doc_management/form-to-create-cases-and-docs-wizard.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img29)

[![](images/doc_management/form-to-create-cases-and-docs-wizard.png)](#_)

In step 2 of the wizard, each uploaded document will be displayed in a card with the option to show or hide the document properties. Users can edit the uploaded document's name and add a description before submitting the form.

[![Show how documents display when theyre uploaded](images/doc_management/view-and-edit-uploaded-docs.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img30)

[![](images/doc_management/view-and-edit-uploaded-docs.gif)](#_)

### Example data model

To get the most out of the recipe, it helps to understand how the data is related.

The expression below references the following record types:

-   **SCA Case record type**: Contains support cases submitted by customers.
-   **SCA Case Document record type**: Manages the documents associated with each support case.
-   **SCA Document Type record type**: Contains a list of document types that can be uploaded with a support case. This lookup record type allows you to categorize the different documents by type in your queries and interfaces. For example, system logs, screenshots, or invoices.
-   **Document record type**: Contains information about all documents managed by record types in your environment.

The Case record type has a relationship to the Case Document record type, and the Case Document record type has a relationship to the Case, Document Type, and Document record types.

[![Case Document relationship diagram](images/doc_management/case-document-data-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img31)

[![](images/doc_management/case-document-data-model.png)](#_)

## Rule inputs

This expression uses the following rule inputs to store user inputs and pass information to a process model:

| Rule Input Name | Type | Description |
| --- | --- | --- |
| `case` | Case record type | Stores the user input provided in the Details step of the wizard, and the **Related Documents** step in the wizard.

Since Case has a one-to-many relationship with Case Document, we can use this rule input to store data for both record types. |
| `isUpdate` | Boolean | Determines if the form is used to create or update a support case.

When true, the form will use "Update" instead of "Create" in the header and button, and display the existing information in the form inputs. |
| `cancel` | Boolean | Stores true or false to indicate if the action was canceled. |

## Expression

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
196
197
198
199
200
201
202
203
204
205
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
280
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
302
303
304
305
306
307
308
309
310
311
312
313
314
315
316
317
318
319
320
321
322
323
324
325
326
327
328
329
330
a!wizardLayout(
  titleBar: a!headerTemplateFull(
    title: if(
      ri!isUpdate,
      "Update Case",
      "Create Case"
    ),
    secondaryText: if(
      ri!isUpdate,
      "Update case details and documents",
      "Provide case details and related documents"
    )
  ),
  isTitleBarFixed: true,
  showTitleBarDivider: false,
  backgroundColor: "#F6F7F9",
  style: "DOT_VERTICAL",
  steps: {
    /* Step 1 in Wizard: Add case information */
    a!wizardStep(
      label: "Details",
      contents: {
        a!cardLayout(
          contents: {
            a!textField(
              label: "Title",
              labelPosition: "ABOVE",
              value: ri!case[recordType!SCA Case.fields.title],
              saveInto: ri!case[recordType!SCA Case.fields.title],
              refreshAfter: "UNFOCUS",
              required: true,
            ),
            a!paragraphField(
              label: "Description",
              labelPosition: "ABOVE",
              value: ri!case[recordType!SCA Case.fields.description],
              saveInto: ri!case[recordType!SCA Case.fields.description],
              characterLimit: 4000,
              height: "TALL",
              required: true
            )
          },
          style: "NONE",
          shape: "SEMI_ROUNDED",
          padding: "MORE",
          marginBelow: "STANDARD"
        )
      }
    ),
    /* Step 2 in Wizard: Upload related documents */
    a!wizardStep(
      label: "Case Documents",
      contents: {
        a!cardLayout(
          contents: {
            a!localVariables(
              local!newFilesAddedInEdit: {},
              {
                a!fileUploadField(
                  labelPosition: "COLLAPSED",
                  target: recordType!SCA Case Document,
                  maxSelections: null(),
                  saveInto: {
                    if(
                      ri!isUpdate = true(),
                      a!save(
                        local!newFilesAddedInEdit,
                        /*Check to see if the uploaded document already exists in the document record type.*/
                        /*Results in a list of unique new documents uploaded*/
                        difference(
                          tointeger(save!value),
                          tointeger(
                            ri!case[recordType!SCA Case.relationships.caseDocuments][recordType!SCA Case Document.fields.documentId]
                          )
                        )
                      ),
                      null()
                    ),
                    a!save(
                      ri!case,
                      a!update(
                        ri!case,
                        recordType!SCA Case.relationships.caseDocuments,
                        append(
                          ri!case[recordType!SCA Case.relationships.caseDocuments],
                          a!forEach(
                            items: /*List of unique new documents*/
                            difference(
                              tointeger(save!value),
                              tointeger(ri!case[recordType!SCA Case.relationships.caseDocuments][recordType!SCA Case Document.fields.documentId]
                              )
                            ),
                            expression: /*Cast list of unique document ids to document record type*/
                            {
                              recordType!SCA Case Document(
                                recordType!SCA Case Document.fields.documentId: fv!item,
                                recordType!SCA Case Document.relationships.documentProperties: recordType!Document(
                                  recordType!Document.fields.name: document(fv!item, "name"),
                                  recordType!Document.fields.description: document(fv!item, "description")
                                )
                              )
                            }
                          )
                        )
                      )
                    )
                  }
                ),
                a!forEach(
                  items: ri!case[recordType!SCA Case.relationships.caseDocuments],
                  expression: a!localVariables(
                    local!expandProperties: false(),
                    local!isNewlyUploaded: contains(
                      tointeger(local!newFilesAddedInEdit),
                      tointeger(
                        fv!item[recordType!SCA Case Document.fields.documentId]
                      )
                    ),
                    local!isUpdatedFile: false(),
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!fileUploadField(
                                label: "Document",
                                labelPosition: if(
                                  a!isNullOrEmpty(
                                    fv!item[recordType!SCA Case Document.fields.documentId]
                                  ),
                                  "ABOVE",
                                  "COLLAPSED"
                                ),
                                target: recordType: recordType!SCA Case Document,
                                fileNames: fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.name],
                                fileDescriptions: fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.description],
                                maxSelections: 1,
                                value: fv!item[recordType!SCA Case Document.fields.documentId],
                                saveInto: {
                                  if(
                                    ri!isUpdate = true(),
                                    if(
                                      a!isNotNullOrEmpty(
                                        fv!item[recordType!SCA Case Document.fields.documentId]
                                      ),
                                      {
                                        a!save(
                                          fv!item[recordType!SCA Case Document.fields.documentId],
                                          null()
                                        ),
                                        a!save(local!isUpdatedFile, true())
                                      },
                                      {
                                        a!save(
                                          fv!item[recordType!SCA Case Document.fields.documentId],
                                          save!value
                                        ),
                                        a!save(
                                          fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.name],
                                          document(save!value[1], "name")
                                        ),
                                        a!save(
                                          fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.description],
                                          document(save!value[1], "description")
                                        )
                                      }
                                    ),
                                    null()
                                  )
                                },
                                required: true(),
                                disabled: if(ri!isUpdate, false(), true()),
                                marginAbove: "NONE",
                                marginBelow: "NONE"
                              )
                            ),
                            a!sideBySideItem(
                              item: a!imageField(
                                images: a!documentImage(
                                  document: a!iconIndicator(icon: "REMOVE"),
                                  altText: "Remove Document",
                                  link: a!dynamicLink(
                                    saveInto: {
                                      a!save(
                                        ri!case[recordType!SCA Case.relationships.caseDocuments],
                                        remove(
                                          ri!case[recordType!SCA Case.relationships.caseDocuments],
                                          fv!index
                                        )
                                      ),
                                      a!save(local!expandProperties, false())
                                    }
                                  )
                                ),
                                size: "ICON"
                              ),
                              width: "MINIMIZE",
                              showWhen: a!isNotNullOrEmpty(
                                fv!item[recordType!SCA Case Document.fields.documentId]
                              )
                            )
                          },
                          alignVertical: "MIDDLE",
                          spacing: "STANDARD",
                          marginAbove: "NONE",
                          marginBelow: "NONE"
                        ),
                    /* Section containing document properties */
                    /* By default, this section is collapsed */
                        a!sectionLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextIcon(
                                  icon: if(
                                    local!expandProperties,
                                    "angle-down-bold",
                                    "angle-right-bold"
                                  ),
                                  link: a!dynamicLink(
                                    saveInto: a!save(
                                      local!expandProperties,
                                      not(local!expandProperties)
                                    )
                                  ),
                                  linkStyle: "STANDALONE"
                                ),
                                " ",
                                a!richTextItem(
                                  text: "Properties",
                                  link: a!dynamicLink(
                                    saveInto: a!save(
                                      local!expandProperties,
                                      not(local!expandProperties)
                                    )
                                  ),
                                  linkStyle: "STANDALONE"
                                )
                              }
                            )
                          },
                          divider: "ABOVE",
                          marginAbove: "NONE",
                          marginBelow: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!textField(
                                  label: "Name",
                                  value: fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.name],
                                  saveInto: a!save(
                                    fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.name],
                                    save!value
                                  ),
                                  required: true(),
                                  readOnly: and(
                                    a!defaultValue(ri!isUpdate, false()),
                                    not(local!isNewlyUploaded),
                                    not(local!isUpdatedFile)
                                  ),
                                  marginAbove: "LESS",
                                  marginBelow: "STANDARD"
                                ),
                                a!paragraphField(
                                  label: "Description",
                                  value: fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.description],
                                  saveInto: a!save(
                                    fv!item[recordType!SCA Case Document.relationships.documentProperties][recordType!Document.fields.description],
                                    save!value
                                  ),
                                  readOnly: and(
                                    a!defaultValue(ri!isUpdate, false()),
                                    not(local!isNewlyUploaded),
                                    not(local!isUpdatedFile)
                                  ),
                                  marginAbove: "LESS",
                                  marginBelow: "STANDARD"
                                )
                              },
                              width: "MEDIUM_PLUS"
                            )
                          },
                          showWhen: local!expandProperties = true(),
                          marginAbove: "LESS",
                          marginBelow: "NONE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      shape: "SEMI_ROUNDED",
                      padding: "STANDARD",
                      marginAbove: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: true(),
                      showShadow: false()
                    )
                  )
                )
              }
            )
          },
          style: "NONE",
          shape: "SEMI_ROUNDED",
          padding: "MORE",
          marginBelow: "STANDARD"
        )
      }
    )
  },
  contentsWidth: "FULL",
  primaryButtons: a!buttonWidget(
    label: if(ri!isUpdate, "Save", "Create"),
    submit: true,
    style: "SOLID",
    showWhen: fv!isLastStep,
    validate: true
  ),
  secondaryButtons: a!buttonWidget(
    label: "Cancel",
    value: true,
    saveInto: ri!cancel,
    submit: true,
    style: "LINK",
    validate: false
  ),
  showButtonDivider: true
)
```

## Test it out

Record type references are specific to each environment. If you copy and paste the expression above into an interface, it will not evaluate.

To test this expression in your application:

1.  [Create an interface](interface_object.html#create-an-interface-object).
2.  [Create the necessary rule inputs](#rule-inputs).
3.  Copy and paste the [expression](#expression) in the interface.
4.  Replace all record type references with references to the document management record type in your environment.

## Notable implementation details

-   To allow users to interact with this form, you can set the interface as a start form in a [process model](process_modeling.html).

    For example, you could use this interface as the start form in a process model like the one below:

    [![Process model for this use case](images/doc_management/create-and-update-docs-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img32)

    [![](images/doc_management/create-and-update-docs-process.png)](#_)

-   In the `a!columnsLayout()` on line 247, you can add other components like a [document viewer](Document_Viewer_Component.html) or a [document download link](Document_Link_Component.html) to allow users to further interact with the uploaded document.

    For example, you could add the following after the `paragraphField()` function on line 267 to display a document preview:

    ```
    1
    2
    3
    4
    5
    a!documentViewerField(
      document: ri!case[recordType!SCA Case.relationships.caseDocuments.fields.documentId],
      height: "SHORT",
      label: "Preview"
    )
    ```

    This would display the following:

    [![Process model for this use case](images/doc_management/preview-uploaded-doc.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img33)

    [![](images/doc_management/preview-uploaded-doc.png)](#_)

-   If you do not want users to edit document properties, you can use an editable grid to upload documents instead. See the[Upload Multiple Documents in an Editable Grid](recipe-upload-files-in-editable-grid.html) recipe to learn how.

-   If you want to upload files outside of a start form or task, update the _saveInto_ parameter in the **Submit** button to _saveInto_: [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...