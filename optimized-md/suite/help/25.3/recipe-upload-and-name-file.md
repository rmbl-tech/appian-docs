---
source_url: https://docs.appian.com/suite/help/25.3/recipe-upload-and-name-file.html
original_path: recipe-upload-and-name-file.html
version: "25.3"
title: "Upload and name a file"
page_id: "recipe-upload-and-name-file"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Upload and name a file

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

Allow users to upload and name a file.

_This design pattern is not recommended for offline interfaces because reflecting immediate changes in an interface based on user interaction requires a connection to the server._

[![images/edit-document-details-before-submitting.gif](images/edit-document-details-before-submitting.gif)![](/suite/help/25.3/images/rn/zoom_magnify_center.png)](#img27)

[![](images/edit-document-details-before-submitting.gif)](#_)

This scenario demonstrates:

-   How to configure a [file upload component](File_Upload_Component.html) to upload a document and store it in the folder for a [document management record type](manage-docs-with-records.html). In most cases, documents are created alongside other application data, but for this recipe, we are uploading a document without other application data.

-   How to use the [document()](fnc_scripting_document.html) function to view and edit document properties before submitting.

## Rule inputs

This expression includes a rule input (ri!record) set to the AR Order Document record type, which is a document management record type.

| Rule Input Name | Type | Description |
| --- | --- | --- |
| `record` | AR Order Document record type, which is a [document management record type](manage-docs-with-records.html). | Stores the document identifier for the uploaded document.

The AR Order Document has a many-to-one relationship with the Document record type, so we can also reference and update information from that record type. |
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
		/* Section to show or hide the document name and description */
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

## Test it out

Record type references are specific to each environment. If you copy and paste the expression above into an interface, it will not evaluate.

To test this expression in your application:

1.  [Create an interface](interface_object.html#create-an-interface-object).
2.  [Create the necessary rule inputs](#rule-inputs).
3.  Copy and paste the [expression](#expression) in the interface.
4.  Replace all record type references with references to the document management record type in your environment.

## Notable implementation details

-   If you want to upload files outside of a start form or task, update the _saveInto_ parameter in the **Submit** button to _saveInto_: [a!submitUploadedFiles()](fnc_system_a_submituploadedfiles.html).

-   If you want to allow users to upload multiple files in a start form or task, see either of the following recipes:
    -   [Upload Multiple Documents in an Editable Grid](recipe-upload-files-in-editable-grid.html).
    -   [Upload Multiple Documents and Edit Document Properties](recipe-upload-files-in-card-layout.html).
-   To allow users to preview an uploaded file, you can add a [document viewer component](Document_Viewer_Component.html) within the section that shows or hides the document details.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...