---
source_url: https://docs.appian.com/suite/help/25.3/recipe-upload-files-in-editable-grid.html
original_path: recipe-upload-files-in-editable-grid.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Upload Multiple Documents in an Editable Grid

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

Build a form that allows users to create a record and upload related documents in an editable grid.

Documents are often related to other application data, like system logs attached to a specific support case, so this recipe illustrates how to create a support case and related documents in a [form layout](Form_Layout.html).

[![Form to create a support case and an editable grid to upload documents](images/doc_management/recipe-editable-grid-to-upload-docs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img34)

[![](images/doc_management/recipe-editable-grid-to-upload-docs.png)](#_)

### Elements of this recipe

This recipe contains two sections:

-   One section to create or update a case title and description. This information is written to the **SCA Case** record type.
-   One section to upload related case documents in an [editable grid](Editable_Grid_Component.html). This information is written to the **SCA Case Document** record type, which is a [document management record type](manage-docs-with-records.html#required-object).

[![Form annotated to show which record types are used in which components](images/doc_management/form-to-create-cases-and-docs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img35)

[![](images/doc_management/form-to-create-cases-and-docs.png)](#_)

The editable grid contains three columns:

-   A **Document** column. This column includes a [File Upload component](File_Upload_Component.html) so users can upload a document.
-   A **Document Type** column. This column includes a [dropdown component](Dropdown_Component.html) so users can specify the type of document being uploaded.
-   An **X** column. Clicking this icon allows users to delete a document.

[![Editable grid to upload documents](images/doc_management/editable-grid-to-upload-docs.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img36)

[![](images/doc_management/editable-grid-to-upload-docs.png)](#_)

### Example data model

To get the most out of the recipe, it helps to understand how the data is related.

The expression below references the following record types:

-   **SCA Case record type**: Contains support cases submitted by customers.
-   **SCA Case Document record type**: Manages the documents associated with each support case.
-   **SCA Document Type record type**: Contains a list of document types that can be uploaded with a support case. This lookup record type allows you to categorize the different documents by type in your queries and interfaces. For example, system logs, screenshots, or invoices.
-   **Document record type**: Contains information about all documents managed by record types in your environment.

The Case record type has a relationship to the Case Document record type, and the Case Document record type has a relationship to the Case, Document Type, and Document record types.

[![Case Document relationship diagram](images/doc_management/case-document-data-model.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img37)

[![](images/doc_management/case-document-data-model.png)](#_)

## Rule inputs

This expression uses the following rule inputs to store user inputs and pass information to a process model:

| Rule Input Name | Type | Description |
| --- | --- | --- |
| `case` | Case record type | Stores the user input provided in the **Title** and **Description** fields, and the **Document** and **Document Type** columns in the grid.

Since Case has a one-to-many relationship with Case Document, we can use this process variable to store data for both record types. |
| `deletedCaseDocuments` | Case Document record type | Stores the documents that are removed from the editable grid when a user clicks X on a row. |
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
a!formLayout(
  titleBar: a!headerTemplateFull(
    title: if(
      ri!isUpdate,
      "Update Case",
      "Create Case"
    ),
    secondaryText: if(
      ri!isUpdate,
      "Update details for the support case",
      "Enter details for the support case"
    )
  ),
  isTitleBarFixed: true,
  showTitleBarDivider: false,
  contents: {
  /* Section for adding general case information */
    a!sectionLayout(
      contents: {
        a!headingField(
          text: "Details",
          size: "SMALL",
          headingTag: "H2",
          fontWeight: "BOLD"
        ),
        a!textField(
          label: "Title",
          labelPosition: "ABOVE",
          value: ri!case[recordType!SCA Case.fields.title],
          saveInto: ri!case[recordType!SCA Case.fields.title],
          refreshAfter: "UNFOCUS",
          required: true,
          validations: {}
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
      marginBelow: "STANDARD"
    ),
  /* Section for uploading related case documents */
    a!sectionLayout(
      contents: {
        a!headingField(
          text: "Case Documents",
          size: "SMALL",
          headingTag: "H2",
          fontWeight: "BOLD",
          marginAbove: "MORE"
        ),
        a!gridLayout(
          labelPosition: "COLLAPSED",
          label: "Grid of Documents",
          instructions: "Upload any relevant documents that support the case",
          headerCells: {
            a!gridLayoutHeaderCell(label: "Document"),
            a!gridLayoutHeaderCell(label: "Document Type"),
            /* For the "Remove" column */
            a!gridLayoutHeaderCell()
          },
          columnConfigs: {
            a!gridLayoutColumnConfig(width: "NARROW_PLUS"),
            a!gridLayoutColumnConfig(width: "NARROW_PLUS"),
            a!gridLayoutColumnConfig(width: "ICON")
          },
          /* a!forEach() will loop through an expression to create each row */
          rows: a!forEach(
            items: ri!case[recordType!SCA Case.relationships.caseDocuments],
            expression: a!gridRowLayout(
              id: fv!index,
              contents: {
                /* Column to upload documents */
                a!fileUploadField(
                  labelPosition: "COLLAPSED",
                  /*  Reference the document management record type */
                  target: recordType!SCA Case Document,
                  maxSelections: 1,
                  value: fv!item[recordType!SCA Case Document.fields.documentId],
                  saveInto: fv!item[recordType!SCA Case Document.fields.documentId],
                  required: true
                ),
                /*  Column to select document types */
                a!dropdownField(
                  data: recordType!SCA Case Document Type,
                  choiceLabels: recordType!SCA Case Document Type.fields.value,
                  choiceValues: recordType!SCA Case Document Type.fields.id,
                  labelPosition: "COLLAPSED",
                  placeholder: "Select a document type",
                  value: fv!item[recordType!SCA Case Document.fields.typeId],
                  saveInto: fv!item[recordType!SCA Case Document.fields.typeId]
                ),
                /* Column to delete documents */
                a!imageField(
                  images: a!documentImage(
                    document: a!iconIndicator(icon: "REMOVE"),
                    altText: "Remove Row",
                    link: a!dynamicLink(
                      value: fv!index,
  /*
   * If a user clicks X on a row, save the document id in the deletedCaseDocuments rule input.
   * If the user clicks X on a row that already has a primary key value,
   * append the deleted data to the rest of the data being passed to the process model.
   * Otherwise, do not pass the deletedCaseDocuments rule input to the process model.
  */
                      saveInto: {
                        a!save(
                          ri!deletedCaseDocuments,
                          if(
                            a!isNotNullOrEmpty(
                              ri!case[recordType!SCA Case.relationships.caseDocuments][save!value][recordType!SCA Case Document.fields.documentId]
                            ),
                            append(
                              ri!deletedCaseDocuments,
                              ri!case[recordType!SCA Case.relationships.caseDocuments][save!value]
                            ),
                            ri!deletedCaseDocuments
                          )
                        ),
                        a!save(
                          ri!case[recordType!SCA Case.relationships.caseDocuments],
                          remove(
                            ri!case[recordType!SCA Case.relationships.caseDocuments],
                            save!value
                          )
                        )
                      }
                    )
                  ),
                  size: "ICON"
                )
              }
            )
          ),
          height: "AUTO",
          /* Add another row to the grid and associate the document with the case */
          addRowLink: a!dynamicLink(
            label: "Add Row",
         /* Ensure you add empty brackets after the record type reference */
         /* Otherwise, you cannot add a row                               */
            value: recordType!SCA Case Document(),
            saveInto: a!save(
              ri!case[recordType!SCA Case.relationships.caseDocuments],
              append(
                ri!case[recordType!SCA Case.relationships.caseDocuments],
                save!value
              )
            )
          ),
          shadeAlternateRows: false,
          borderStyle: "LIGHT",
          rowHeader: 1
        )
      },
      marginBelow: "STANDARD"
    )
  },
  contentsWidth: "MEDIUM",
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(
        label: if(ri!isUpdate, "Save", "Create"),
        submit: true,
        style: "SOLID",
        validate: true
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
  )
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

-   To allow users to interact with this form, you can set the interface as a start form in a [process model](process_modeling.html). For example, you could use this interface as the start form in a process model like the one below:

    [![Process model for this use case](images/doc_management/create-and-update-docs-process.png)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img38)

    [![](images/doc_management/create-and-update-docs-process.png)](#_)

-   You can allow users to download any uploaded documents by adding an additional column and including a [document download link](Document_Link_Component.html) component.

-   To allow users to edit the document name and description before they submit the form, consider

-   If you want to upload files outside of a start form or task, update the _saveInto_ parameter in the **Submit** button to _saveInto_: [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...