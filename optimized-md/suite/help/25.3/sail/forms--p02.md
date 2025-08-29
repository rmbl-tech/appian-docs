---
source_url: https://docs.appian.com/suite/help/25.3/sail/forms.html
original_path: sail/forms.html
version: "25.3"
part: 2/4
---

## Which form type is best for your use case?

When deciding how to design a form, keep the following questions and considerations in mind:

-   **Form complexity and length**: How many steps will a user need to complete? How complex are they?
-   **User experience**: Will progress indicators be helpful for the user? Are read-only details necessary for successful form completion?
-   **Submission and feedback**: How will users know their data has been received? What input types best fit the data that's being collected? What are the next steps after form completion?

Ultimately, the form's content determines the form type you should use. For example, a single-step form or a single page multi-step form may be the most appropriate for a simple form. For longer forms, [wizards](ux-wizard-layout.html) can make the completion process easier for your users.

**Tip:**  See [Form Layout (SAIL Design System: Components)](ux-form-layout.html#style-guidelines---form-and-wizard-layouts) for form and wizard layout style guidelines.

### Single-step form

Use this pattern as a starting point for basic forms. The [form layout component](../Form_Layout.html) makes it easy to automate some of these best practices, which include:

-   Showing the form title in the header.
-   Adding submit and cancel buttons, with the [recommended styling](ux-buttons.html) for both, at the bottom of the form. If you have a record action that is configured to open in a dialog, the buttons are automatically fixed to the bottom of the dialog and will stay in view as the user scrolls.

In this pattern, the form title "Create Event" is in the header. The form collects information through simple inputs like text fields, dropdowns, and date selectors.

![Example of a form dialog with fields that collect information required to create a company event](ds-images/forms-dialog-company-event.png)

### Multi-step form: Single page

If your form requires multiple steps, you can decide between using a [wizard](ux-wizard-layout.html) or a multi-step single page form. For less complex forms with smaller sets of inputs that can be grouped into sections, a multi-step single page form might be more effective than a wizard.

In this pattern, displaying section names and instructions in a column alongside its respective inputs reduces vertical scrolling and horizontal whitespace.

![](ds-images/image35.png)

Copy expression Launch demo

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
a!formLayout(
  titleBar: a!headerTemplateSimple(
    title: "Create New Campaign",
  ),
  contents: {
    a!sectionLayout(
      label: "",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        a!richTextIcon(icon: "info-circle"),
                        " Description"
                      },
                      size: "MEDIUM_PLUS",
                      style: { "STRONG" }
                    ),
                    char(10)
                  }
                )
              },
              width: "AUTO"
            ),
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Title",
                  labelPosition: "ABOVE",
                  saveInto: {},
                  refreshAfter: "UNFOCUS",
                  validations: {}
                ),
                a!styledTextEditorField(
                  label: "Summary",
                  labelPosition: "ABOVE",
                  saveInto: {},
                  sizeLimit: 4000,
                  height: "MEDIUM",
                  validations: {}
                )
              }
            )
          },
          spacing: "SPARSE"
        )
      }
    ),
    a!sectionLayout(
      label: "",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        a!richTextIcon(icon: "folder-open"),
                        " Type"
                      },
                      size: "MEDIUM_PLUS",
                      style: { "STRONG" }
                    ),
                    char(10),
                    char(10),
                    a!richTextItem(
                      text: {
                        "The selected campaign category dictates available templates for building out campaign details."
                      },
                      color: "SECONDARY",
                      size: "STANDARD"
                    ),
                    char(10),
                    char(10),
                    a!richTextItem(
                      text: {
                        "Mark campaigns as Internal to prevent them from appearing on the master list."
                      },
                      color: "SECONDARY",
                      size: "STANDARD"
                    )
                  }
                )
              },
              width: "AUTO"
            ),
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: { "Category" },
                      style: { "STRONG" }
                    )
                  }
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextIcon(
                                  icon: "money",
                                  color: "ACCENT",
                                  size: "LARGE_PLUS"
                                ),
                                char(10),
                                a!richTextItem(
                                  text: { "Fundraiser" },
                                  color: "SECONDARY",
                                  size: "STANDARD"
                                ),
                                char(10),
                                char(10)
                              },
                              align: "CENTER"
                            )
                          },
                          link: a!dynamicLink(
                            label: "Dynamic Link",
                            saveInto: {}
                          ),
                          height: "AUTO",
                          style: "NONE",
                          padding: "LESS",
                          marginBelow: "STANDARD"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextIcon(
                                  icon: "bullhorn",
                                  color: "ACCENT",
                                  size: "LARGE_PLUS"
                                ),
                                char(10),
                                a!richTextItem(
                                  text: { "Awareness" },
                                  color: "SECONDARY",
                                  size: "STANDARD"
                                ),
                                char(10),
                                char(10)
                              },
                              align: "CENTER"
                            )
                          },
                          link: a!dynamicLink(
                            label: "Dynamic Link",
                            saveInto: {}
                          ),
                          height: "AUTO",
                          style: "NONE",
                          padding: "LESS",
                          marginBelow: "STANDARD"
                        )
                      }
                    ),
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextIcon(
                                  icon: "handshake-o",
                                  color: "ACCENT",
                                  size: "LARGE_PLUS"
                                ),
                                char(10),
                                a!richTextItem(
                                  text: { "Lobbying" },
                                  color: "SECONDARY",
                                  size: "STANDARD"
                                ),
                                char(10),
                                char(10)
                              },
                              align: "CENTER"
                            )
                          },
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                          height: "AUTO",
                          style: "NONE",
                          padding: "LESS",
                          marginBelow: "STANDARD"
                        )
                      }
                    )
                  }
                ),
                a!radioButtonField(
                  choiceLabels: { "Public", "Internal" },
                  choiceValues: { 1, 2 },
                  label: "Visibility",
                  labelPosition: "ABOVE",
                  value: 1,
                  saveInto: {},
                  choiceLayout: "COMPACT",
                  choiceStyle: "CARDS",
                  validations: {}
                )
              }
            )
          },
          spacing: "SPARSE"
        )
      },
      divider: "ABOVE"
    ),
    a!sectionLayout(
      label: "",
      contents: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: {
                        a!richTextIcon(icon: "calendar"),
                        " Schedule"
                      },
                      size: "MEDIUM_PLUS",
                      style: { "STRONG" }
                    ),
                    char(10),
                    char(10),
                    a!richTextItem(
                      text: {
                        "Choose one of the standard campaign durations for more reliable comparison of results."
                      },
                      color: "SECONDARY",
                      size: "STANDARD"
                    ),
                    char(10)
                  }
                )
              },
              width: "AUTO"
            ),
            a!columnLayout(
              contents: {
                a!dateField(
                  label: "Start",
                  labelPosition: "ABOVE",
                  saveInto: {},
                  validations: {}
                ),
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(text: { "End" }, style: { "STRONG" })
                  }
                ),
                a!radioButtonField(
                  choiceLabels: { "Custom", "30 Days", "60 Days" },
                  choiceValues: { 1, 2, 3 },
                  label: "Schedule Type",
                  labelPosition: "COLLAPSED",
                  value: 1,
                  saveInto: {},
                  choiceLayout: "COMPACT",
                  choiceStyle: "CARDS",
                  validations: {}
                ),
                a!dateField(
                  label: "End",
                  labelPosition: "COLLAPSED",
                  saveInto: {},
                  validations: {}
                )
              }
            )
          },
          spacing: "SPARSE"
        )
      },
      divider: "ABOVE"
    )
  },
  showButtonDivider: true(),
  contentsWidth: "WIDE",
  buttons: a!buttonLayout(
    primaryButtons: {
      a!buttonWidget(label: "Create", style: "SOLID")
    },
    secondaryButtons: {
      a!buttonWidget(label: "Cancel", style: "OUTLINE")
    }
  ),
  isButtonFooterFixed: false(),
  showTitleBarDivider: true
)
```

### Multi-step form: Wizard

Wizards are useful when a form is complex or has conditional field logic. Wizard step indicators are helpful for:

-   Breaking form fields into categories, making it easier to understand and complete each section.
-   Structuring form fields and steps in a logical flow to reduce the chance of missing or incorrectly filling out important information.
-   Improving navigation with visual cues that show users their progress and remaining steps.

Depending on the complexity of your form, you can decide between single level sidebar step indicators or multi-level sidebars that further break steps down into sub-steps.

**Tip:**  In wizards, Appian automatically handles the [page scrolling](#taking-advantage-of-automatic-scrolling-in-wizards) between each step of the wizard. This means that whenever a user navigates to the next step, the page will automatically scroll to the top of the page.

If you are using the form layout in a wizard, make sure that the buttons or dynamic links that control form navigation are placed in the _buttons_ parameter. If they are placed in the _contents_ parameter, auto scrolling will not work.

#### Using the wizard layout

Use the [Wizard Layout](ux-wizard-layout.html) to easily create great-looking wizards. If you want to build more complex milestones, you can follow the other patterns in [Creating a custom wizard](#creating-a-custom-wizard).

![](ds-images/image51.png)

Copy expression

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
a!localVariables(
local!country: 1,
local!office: 1,
a!wizardLayout(
  titleBar: a!headerTemplateImage(
    title: "Return to Work Readiness Questionnaire",
    secondaryText: "Please answer the questions below and provide any requested documentation in order to determine if you meet local requirements for returning to work.",
    backgroundColor: "#020A51",
    image: a!documentImage(
      document: a!EXAMPLE_DOCUMENT_IMAGE()
    ),
    imageSize: "MEDIUM"
  ),
  style: "DOT_VERTICAL",
  steps: {
    a!wizardStep(
      label: "Work Location",
      contents: {
        a!richTextDisplayField(
          label: "Rich Text",
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: {
                "Which office  will you be returning to?"
              },
              size: "MEDIUM",
              style: "PLAIN"
            )
          },
          marginAbove: "STANDARD",
          marginBelow: "MORE"
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Select Country",
                  labelPosition: "ABOVE",
                  placeholder: "Select Country...",
                  saveInto: {},
                  refreshAfter: "UNFOCUS",
                  validations: {},
                  marginBelow: "STANDARD"
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(
              contents: {}
            )
          }
        ),
        a!cardChoiceField(
          label: "",
          labelPosition: "COLLAPSED",
          data: {
            a!map(id:1 , primaryText: "United States"),
            a!map(id:2 , primaryText: "United Kingdom"),
            a!map(id:3 , primaryText: "Australia"),
            a!map(id:4 , primaryText: "Spain"),
            a!map(id:5 , primaryText: "Germany"),
            a!map(id:6 , primaryText: "Italy")
          },
          cardTemplate: a!cardTemplateBarTextStacked(
            id: fv!data.id,
            primaryText: fv!data.primaryText
          ),
          value: local!country,
          saveInto: local!country,
          maxSelections: 1,
          validations: {}
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: {
                a!textField(
                  label: "Select Office",
                  labelPosition: "ABOVE",
                  placeholder: "Search offices...",
                  saveInto: {},
                  refreshAfter: "UNFOCUS",
                  validations: {}
                )
              },
              width: "MEDIUM"
            ),
            a!columnLayout(
              contents: {}
            )
          },
          marginAbove: "MORE"
        ),
        a!cardChoiceField(
          label: "",
          labelPosition: "COLLAPSED",
          data: {
            a!map(id:1 , primaryText: "Headquarters", secondaryText: "McLean VA"),
            a!map(id:2 , primaryText: "NYC WeWork", secondaryText: "NewYork NY"),
            a!map(id:3 , primaryText: "Remote WFH", secondaryText: "United States")
          },
          cardTemplate: a!cardTemplateBarTextStacked(
            id: fv!data.id,
            primaryText: fv!data.primaryText,
            secondaryText: fv!data.secondaryText,
          ),
          value: local!office,
          saveInto: local!office,
          maxSelections: 1,
          validations: {}
        )
      }
    ),
    a!wizardStep(
      label: "Health Symptoms",
      contents: {}
    ),
    a!wizardStep(
      label: "Community Exposure",
      contents: {}
    ),
    a!wizardStep(
      label: "Medical Certifications",
      contents: {}
    )
  },
  contentsWidth: "MEDIUM",
  showStepHeadings: false(),
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
)
```

#### Creating a custom wizard

##### Sidebar step indicator

Use this pattern to indicate step progress in a wizard. The vertical arrangement of wizard steps works well for longer lists of steps and helps balance whitespace in simpler forms.

![Example of a donation form allowing user to select the amount of money to donate and the frequency of donation](ds-images/forms-donation.png)

###### Functional pattern SAIL

Use this pattern for a quick, functional sidebar with wizard steps. In your interface, switch to expression mode to update the data with contents that are unique to your app.

Copy expression Launch demo

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
a!localVariables(
  local!formSteps: {
    "Donor Information",
    "Amount and Frequency",
    "Payment Source",
    "Tax Information",
    "Confirmation"
  },
  local!currentFormStep: 2,
  a!headerContentLayout(
    contents: {
      a!paneLayout(
        panes: {
          a!pane(
            contents: {
              a!headingField(
                text: "Set Up a Recurring Gift",
                size: "MEDIUM_PLUS",
                headingTag: "H2",
                fontWeight: "SEMI_BOLD",
                marginBelow: "EVEN_MORE"
              ),
              a!milestoneField(
                steps: local!formSteps,
                active: local!currentFormStep,
                stepStyle: "DOT",
                orientation: "VERTICAL"
              )
            },
            width: "MEDIUM",
            backgroundColor: "#f0f0f0",
            padding: "EVEN_MORE"
          ),
          a!pane(
            contents: {
              a!columnsLayout(
                columns: {
                  a!columnLayout(contents: {}),
                  a!columnLayout(
                    contents: {
                      a!headingField(
                        text: local!formSteps[local!currentFormStep],
                        size: "LARGE",
                        marginAbove: "EVEN_MORE",
                        marginBelow: "EVEN_MORE",
                        headingTag: "H3"
                      ),
                      a!match(
                        value: local!currentFormStep,
                        equals: 1,
                        then: a!sectionLayout(),
                        equals: 2,
                        then: a!sectionLayout(
                          contents: {
                            a!radioButtonField(
                              label: "Gift Amount",
                              labelPosition: "ABOVE",
                              choiceLabels: {
                                "$5",
                                "$10",
                                "$25",
                                "$50",
                                "$100",
                                "$250",
                                "$500",
                                "$1,000",
                                "Other"
                              },
                              choiceValues: { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
                              value: 3,
                              saveInto: {},
                              choiceLayout: "COMPACT",
                              choiceStyle: "CARDS",
                              validations: {}
                            ),
                            a!radioButtonField(
                              label: "Frequency",
                              labelPosition: "ABOVE",
                              choiceLabels: { "Monthly", "Quarterly", "Annually" },
                              choiceValues: { 1, 2, 3 },
                              value: 1,
                              saveInto: {},
                              choiceLayout: "COMPACT",
                              choiceStyle: "CARDS",
                              validations: {}
                            ),

                          }
                        ),
                        equals: 3,
                        then: a!sectionLayout(),
                        equals: 4,
                        then: a!sectionLayout(),
                        equals: 5,
                        then: a!sectionLayout(),
                        default: {}
                      ),
                      a!sectionLayout(
                        label: "",
                        contents: {
                          a!columnsLayout(
                            columns: {
                              a!columnLayout(
                                contents: {
                                  a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(
                                        label: "Back",
                                        style: "OUTLINE",
                                        showWhen: local!currentFormStep > 1,
                                        value: local!currentFormStep - 1,
                                        saveInto: local!currentFormStep
                                      ),
                                      a!buttonWidget(label: "Cancel", style: "LINK")
                                    },
                                    align: "START",
                                    marginBelow: "NONE"
                                  )
                                }
                              ),
                              a!columnLayout(
                                contents: {
                                  a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(
                                        label: "Next",
                                        style: "SOLID",
                                        showWhen: local!currentFormStep < length(local!formSteps),
                                        value: local!currentFormStep + 1,
                                        saveInto: local!currentFormStep
                                      )
                                    },
                                    align: "END",
                                    marginBelow: "NONE"
                                  )
                                }
                              )
                            }
                          )
                        },
                        divider: "ABOVE"
                      )
                    },
                    width: "MEDIUM_PLUS"
                  ),
                  a!columnLayout(contents: {})
                }
              )
            }
          )
        }
      )
    }
  )
)
```

###### Base pattern SAIL

Use this pattern as a starting point for designing your own sidebar with wizard steps. You can use design mode to drag and drop components as you see fit. Once you're ready to plug in your own data, consult the Functional pattern.

Copy expression Launch demo

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
a!headerContentLayout(
  contents: {
    a!paneLayout(
      panes: {
        a!pane(
          contents: {
            a!headingField(
              text: "Set Up a Recurring Gift",
              size: "MEDIUM_PLUS",
              headingTag: "H2",
              fontWeight: "BOLD",
              marginBelow: "EVEN_MORE"
            ),
            a!milestoneField(
              steps: {
                "Donor Information",
                "Amount and Frequency",
                "Payment Source",
                "Tax Information",
                "Confirmation"
              },
              active: 1,
              stepStyle: "DOT",
              orientation: "VERTICAL"
            )
          },
          width: "MEDIUM",
          backgroundColor: "#f0f0f0",
          padding: "EVEN_MORE"
        ),
        a!pane(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(contents: {}),
                a!columnLayout(
                  contents: {
                    a!headingField(
                      text: "Amount and Frequency",
                      size: "LARGE",
                      marginAbove: "EVEN_MORE",
                      marginBelow: "EVEN_MORE",
                      headingTag: "H3"
                    ),
                    a!radioButtonField(
                      label: "Gift Amount",
                      labelPosition: "ABOVE",
                      choiceLabels: {
                        "$5",
                        "$10",
                        "$25",
                        "$50",
                        "$100",
                        "$250",
                        "$500",
                        "$1,000",
                        "Other"
                      },
                      choiceValues: { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
                      value: 3,
                      saveInto: {},
                      choiceLayout: "COMPACT",
                      choiceStyle: "CARDS",
                      validations: {}
                    ),
                    a!radioButtonField(
                      label: "Frequency",
                      labelPosition: "ABOVE",
                      choiceLabels: { "Monthly", "Quarterly", "Annually" },
                      choiceValues: { 1, 2, 3 },
                      value: 1,
                      saveInto: {},
                      choiceLayout: "COMPACT",
                      choiceStyle: "CARDS",
                      validations: {}
                    ),
                    a!sectionLayout(
                      label: "",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!buttonArrayLayout(
                                  buttons: {
                                    a!buttonWidget(label: "Back", style: "OUTLINE"),
                                    a!buttonWidget(label: "Cancel", style: "LINK")
                                  },
                                  align: "START",
                                  marginBelow: "NONE"
                                )
                              }
                            ),
                            a!columnLayout(
                              contents: {
                                a!buttonArrayLayout(
                                  buttons: {
                                    a!buttonWidget(label: "Next", style: "SOLID")
                                  },
                                  align: "END",
                                  marginBelow: "NONE"
                                )
                              }
                            )
                          }
                        )
                      },
                      divider: "ABOVE"
                    )
                  },
                  width: "MEDIUM_PLUS"
                ),
                a!columnLayout(contents: {})
              }
            )
          }
        )
      }
    )
  }
)
```

##### Sidebar step indicator (simple)

If you want a less prominent sidebar, like in the example below where the page already has a bold header, use this pattern for a simpler display of wizard steps.

![](ds-images/wizard-sidebar-step-indicator-simple.png)

Copy expression Launch demo

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
a!wizardLayout(
  titleBar: a!headerTemplateFull(
    title: "Order Birth Certificate",
    backgroundColor: "#03122a"
  ),
  steps: {
    a!wizardStep(
      label: "Birth Name",
      contents: {
        a!sideBySideLayout(
          items: {
            a!sideBySideItem(
              item: a!textField(
                label: "First Name",
                labelPosition: "ABOVE",
                saveInto: {},
                refreshAfter: "UNFOCUS",
                required: true,
                validations: {}
              ),
              width: "2X"
            ),
            a!sideBySideItem(
              item: a!textField(
                label: "Middle Name",
                labelPosition: "ABOVE",
                saveInto: {},
                refreshAfter: "UNFOCUS",
                validations: {}
              ),
              width: "2X"
            ),
            a!sideBySideItem(
              item: a!textField(
                label: "Last Name",
                labelPosition: "ABOVE",
                saveInto: {},
                refreshAfter: "UNFOCUS",
                required: true,
                validations: {}
              ),
              width: "2X"
            ),
            a!sideBySideItem(
              item: a!dropdownField(
                choiceLabels: {
                  "Option 1",
                  "Option 2",
                  "Option 3",
                  "Option 4",
                  "Option 5",
                  "Option 6",
                  "Option 7",
                  "Option 8",
                  "Option 9",
                  "Option 10",
                  "Option 11",
                  "Option 12"
                },
                choiceValues: {
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12
                },
                label: "Suffix",
                labelPosition: "ABOVE",
                placeholder: " ",
                saveInto: {},
                searchDisplay: "AUTO",
                validations: {}
              ),
              width: "AUTO"
            )
          }
        ),
        a!richTextDisplayField(
          labelPosition: "COLLAPSED",
          value: {
            a!richTextItem(
              text: {
                "Enter name exactly as it appeared on the original birth certificate"
              },
              color: "#999999",
              size: "SMALL"
            )
          }
        ),
        a!checkboxField(
          choiceLabels: {"The name on the birth certificate is different than the applicant's current legal name"},
          choiceValues: {1},
          label: "",
          labelPosition: "COLLAPSED",
          saveInto: {},
          validations: {},
          marginBelow: "EVEN_MORE"
        ),
        a!fileUploadField(
          label: "Proof of Name",
          labelPosition: "ABOVE",
          saveInto: {},
          required: true,
          validations: {}
        ),
        a!cardLayout(
          contents: {
            a!richTextDisplayField(
              labelPosition: "COLLAPSED",
              value: {
                a!richTextIcon(
                  icon: "info-circle",
                  color: "ACCENT"
                ),
                " You must upload a legible photograph of a document that provides evidence of your legal name.",
                char(10),
                char(10),
                "Acceptable documents include:",
                char(10),
                char(10),
                "• Driver's license issued by a US state or territory (upload photo of front of license)",
                char(10),
                "• US passport (upload photo of biographical data page)",
                char(10),
                char(10)
              }
            )
          },
          height: "AUTO",
          style: "#f3f5f9",
          padding: "STANDARD",
          marginBelow: "STANDARD"
        )
      }
    ),
    a!wizardStep(
      label: "Birth Date & Location",
      contents: {}
    ),
    a!wizardStep(
      label: "Parental Information",
      contents: {}
    ),
    a!wizardStep(
      label: "Confirmation",
      contents: {}
    )
  },
  showStepHeadings: false,
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
  },
  showButtonDivider: false
)
```

##### Sidebar step indicator with icons

You can also use icons to help visually differentiate steps, as long as each step has a clear and obvious icon to represent it. Icons are useful for adding visual appeal to simple forms.

![](ds-images/auto_insurance_quote_wizard_bundled_savings.png)

Copy expression

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
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
678
679
680
681
682
683
684
685
686
687
688
689
690
691
692
693
694
695
696
697
698
699
700
701
702
703
704
705
706
707
708
709
710
711
712
713
714
715
716
717
718
719
720
721
722
723
724
725
726
727
728
729
730
731
732
733
734
735
736
737
738
739
740
741
742
743
744
745
746
747
748
749
750
751
752
753
754
755
756
757
758
759
760
761
762
763
764
765
766
767
768
769
770
771
772
773
774
775
776
777
778
779
780
781
782
783
784
785
786
787
788
789
790
791
792
793
794
795
796
797
798
799
800
801
802
803
804
805
806
807
808
809
810
811
812
813
814
815
816
817
818
819
820
821
822
823
824
825
826
827
828
829
830
831
832
833
834
835
836
837
838
839
840
841
842
843
844
845
846
847
848
849
850
851
852
853
854
855
856
857
858
859
860
861
862
863
864
865
866
867
868
869
870
871
872
873
874
875
876
877
878
879
880
881
882
883
884
885
886
887
888
889
890
891
892
893
894
895
896
897
898
899
900
901
902
903
904
905
906
907
908
909
910
911
912
913
914
915
916
917
918
919
920
921
922
923
924
925
926
927
928
929
930
931
932
933
934
935
936
937
938
939
940
941
942
943
944
945
946
947
948
949
950
951
952
953
954
955
956
957
958
959
960
961
962
963
964
965
966
967
968
969
970
971
972
973
974
975
976
977
978
979
980
981
982
983
984
985
986
987
988
989
990
991
992
993
994
995
996
997
998
999
1000
1001
1002
1003
1004
1005
1006
1007
1008
1009
1010
1011
1012
1013
1014
1015
1016
1017
1018
1019
1020
1021
1022
1023
1024
1025
1026
1027
1028
1029
1030
1031
1032
1033
1034
1035
1036
1037
1038
1039
1040
1041
1042
1043
1044
1045
1046
1047
1048
1049
1050
1051
1052
1053
1054
1055
1056
1057
1058
1059
1060
1061
1062
1063
1064
1065
1066
1067
1068
1069
1070
1071
1072
1073
1074
1075
1076
1077
1078
1079
1080
1081
1082
1083
1084
1085
1086
1087
1088
1089
1090
1091
1092
1093
1094
1095
1096
1097
1098
1099
1100
1101
1102
1103
1104
1105
1106
1107
1108
1109
1110
1111
1112
1113
1114
1115
1116
1117
1118
1119
1120
1121
1122
1123
1124
1125
1126
1127
1128
1129
1130
1131
1132
1133
1134
1135
1136
1137
1138
1139
1140
1141
1142
1143
1144
1145
1146
1147
1148
1149
1150
1151
1152
1153
1154
1155
1156
1157
1158
1159
1160
1161
1162
1163
1164
1165
1166
1167
1168
1169
1170
1171
1172
1173
1174
1175
1176
1177
1178
1179
1180
1181
1182
1183
1184
1185
1186
1187
1188
1189
1190
1191
1192
1193
1194
1195
1196
1197
1198
1199
1200
1201
1202
1203
1204
1205
1206
1207
1208
1209
1210
1211
1212
1213
1214
1215
1216
1217
1218
1219
1220
1221
1222
1223
1224
1225
1226
1227
1228
1229
1230
1231
1232
1233
1234
1235
1236
1237
1238
1239
1240
1241
1242
1243
1244
1245
1246
1247
1248
1249
1250
1251
1252
1253
1254
1255
1256
1257
1258
1259
1260
1261
1262
1263
1264
1265
1266
1267
1268
1269
1270
1271
1272
1273
1274
1275
1276
1277
1278
1279
1280
1281
1282
1283
1284
1285
1286
1287
1288
1289
1290
1291
1292
1293
1294
1295
1296
1297
1298
1299
1300
1301
1302
1303
1304
1305
1306
1307
1308
1309
1310
1311
1312
1313
1314
1315
1316
1317
1318
1319
1320
1321
1322
1323
1324
1325
1326
1327
1328
1329
1330
1331
1332
1333
1334
1335
1336
1337
1338
1339
1340
1341
1342
1343
1344
1345
1346
1347
1348
1349
1350
1351
1352
1353
1354
1355
1356
1357
1358
1359
1360
1361
1362
1363
1364
1365
1366
1367
1368
1369
1370
1371
1372
1373
1374
1375
1376
1377
1378
1379
1380
1381
1382
1383
1384
1385
1386
1387
1388
1389
1390
1391
1392
1393
1394
1395
1396
1397
1398
1399
1400
1401
1402
1403
1404
1405
1406
1407
1408
1409
1410
1411
1412
1413
1414
1415
1416
1417
1418
1419
1420
1421
1422
1423
1424
1425
1426
1427
1428
1429
1430
1431
1432
1433
1434
1435
1436
1437
1438
1439
1440
1441
1442
1443
1444
1445
1446
1447
1448
1449
1450
1451
1452
1453
1454
1455
1456
1457
1458
1459
1460
1461
1462
1463
1464
1465
1466
1467
1468
1469
1470
1471
1472
1473
1474
1475
1476
1477
1478
1479
1480
1481
1482
1483
1484
1485
1486
1487
1488
1489
1490
1491
1492
1493
1494
1495
1496
1497
1498
1499
1500
1501
1502
1503
1504
1505
1506
1507
1508
1509
1510
1511
1512
1513
1514
1515
1516
1517
1518
1519
1520
1521
1522
1523
1524
1525
1526
1527
1528
1529
1530
1531
1532
1533
1534
1535
1536
1537
1538
1539
1540
1541
1542
1543
1544
1545
1546
1547
1548
1549
1550
1551
1552
1553
1554
1555
1556
1557
1558
1559
1560
1561
1562
1563
1564
1565
1566
1567
1568
1569
1570
1571
1572
1573
1574
1575
1576
1577
1578
1579
1580
1581
1582
1583
1584
1585
1586
1587
1588
1589
1590
1591
1592
1593
1594
1595
1596
1597
1598
1599
1600
1601
1602
1603
1604
1605
1606
1607
1608
1609
1610
1611
1612
1613
1614
1615
1616
1617
1618
1619
1620
1621
1622
1623
1624
1625
1626
1627
1628
1629
1630
1631
1632
1633
1634
1635
1636
1637
1638
1639
1640
1641
1642
1643
1644
1645
1646
1647
1648
1649
1650
1651
1652
1653
1654
1655
1656
1657
1658
1659
1660
1661
1662
1663
1664
1665
1666
1667
1668
1669
1670
1671
1672
1673
1674
1675
1676
1677
1678
1679
1680
1681
1682
1683
1684
1685
1686
1687
1688
1689
1690
1691
1692
1693
1694
1695
1696
1697
1698
1699
1700
1701
1702
1703
1704
1705
1706
1707
1708
1709
1710
1711
1712
1713
1714
1715
1716
1717
1718
1719
1720
1721
1722
1723
1724
1725
1726
1727
1728
1729
1730
1731
1732
1733
1734
1735
1736
1737
1738
1739
1740
1741
1742
1743
1744
1745
1746
1747
1748
1749
1750
1751
1752
1753
1754
1755
1756
1757
1758
1759
1760
1761
1762
1763
1764
1765
1766
1767
1768
1769
1770
1771
1772
1773
1774
1775
1776
1777
1778
1779
1780
1781
1782
1783
1784
1785
1786
1787
1788
1789
1790
1791
1792
1793
1794
1795
1796
1797
1798
1799
1800
1801
1802
1803
1804
1805
1806
1807
1808
1809
1810
1811
1812
1813
1814
1815
1816
1817
1818
1819
1820
1821
1822
1823
1824
1825
1826
1827
1828
1829
1830
1831
1832
1833
1834
1835
1836
1837
1838
1839
1840
1841
1842
1843
1844
1845
1846
1847
1848
1849
1850
1851
1852
1853
1854
1855
1856
1857
1858
1859
1860
1861
1862
1863
1864
1865
1866
1867
1868
1869
1870
1871
1872
1873
1874
1875
1876
1877
1878
1879
1880
1881
1882
1883
1884
1885
1886
1887
1888
1889
1890
1891
1892
1893
1894
1895
1896
1897
1898
1899
1900
1901
1902
1903
1904
1905
1906
1907
1908
1909
1910
1911
1912
1913
1914
1915
1916
1917
1918
1919
1920
1921
1922
1923
1924
1925
1926
1927
1928
1929
1930
1931
1932
1933
1934
1935
1936
1937
1938
1939
1940
1941
1942
1943
1944
1945
1946
1947
1948
1949
1950
1951
1952
1953
1954
1955
1956
1957
1958
1959
1960
1961
1962
1963
1964
1965
1966
1967
1968
1969
1970
1971
1972
1973
1974
1975
1976
1977
1978
1979
1980
1981
1982
1983
1984
1985
1986
1987
1988
1989
1990
1991
1992
1993
1994
1995
1996
1997
1998
1999
2000
2001
2002
2003
2004
2005
2006
2007
2008
2009
2010
2011
2012
2013
2014
2015
2016
2017
2018
2019
2020
2021
2022
2023
2024
2025
2026
2027
2028
2029
2030
2031
2032
2033
2034
2035
2036
2037
2038
2039
2040
2041
2042
2043
2044
2045
2046
2047
2048
2049
2050
2051
2052
2053
2054
2055
2056
2057
2058
2059
2060
2061
2062
2063
2064
2065
2066
2067
2068
2069
2070
2071
2072
2073
2074
2075
2076
2077
2078
2079
2080
2081
2082
2083
2084
2085
2086
2087
2088
2089
2090
2091
2092
2093
2094
2095
2096
2097
2098
2099
2100
2101
2102
2103
2104
2105
2106
2107
2108
2109
2110
2111
2112
2113
2114
2115
2116
2117
2118
2119
2120
2121
2122
2123
2124
2125
2126
2127
2128
2129
2130
2131
2132
2133
2134
2135
2136
2137
2138
2139
2140
2141
2142
2143
2144
2145
2146
2147
2148
2149
2150
2151
2152
2153
2154
2155
2156
2157
2158
2159
2160
2161
2162
2163
2164
2165
2166
2167
2168
2169
2170
2171
2172
2173
2174
2175
2176
2177
2178
2179
2180
2181
2182
2183
2184
2185
2186
2187
2188
2189
2190
2191
2192
2193
2194
2195
2196
2197
2198
2199
2200
2201
2202
2203
2204
2205
2206
2207
2208
2209
2210
2211
2212
2213
2214
2215
2216
2217
2218
2219
2220
2221
2222
2223
2224
2225
2226
2227
2228
2229
2230
2231
2232
2233
2234
2235
2236
2237
2238
2239
2240
2241
2242
2243
2244
2245
2246
2247
2248
2249
2250
2251
2252
2253
2254
2255
2256
2257
2258
2259
2260
2261
2262
2263
2264
2265
2266
2267
2268
2269
2270
2271
2272
2273
2274
2275
2276
2277
2278
2279
2280
2281
2282
2283
2284
2285
2286
2287
2288
2289
2290
2291
2292
2293
2294
2295
2296
2297
2298
2299
2300
2301
2302
2303
2304
2305
2306
2307
2308
2309
2310
2311
2312
2313
2314
2315
2316
2317
2318
2319
2320
2321
2322
2323
2324
2325
2326
2327
2328
2329
2330
2331
2332
2333
2334
2335
2336
2337
2338
2339
2340
2341
2342
2343
2344
2345
2346
2347
2348
2349
2350
2351
2352
2353
2354
2355
2356
2357
2358
2359
2360
2361
2362
2363
2364
2365
2366
2367
2368
2369
2370
2371
2372
2373
2374
2375
2376
2377
2378
2379
2380
2381
2382
2383
2384
2385
2386
2387
2388
2389
2390
2391
2392
2393
2394
2395
2396
2397
2398
2399
2400
2401
2402
2403
2404
2405
2406
2407
2408
2409
2410
2411
2412
2413
2414
2415
2416
2417
2418
2419
2420
2421
2422
2423
2424
2425
2426
2427
2428
2429
2430
2431
2432
2433
2434
2435
2436
2437
2438
2439
2440
2441
2442
2443
2444
2445
2446
2447
2448
2449
2450
2451
2452
2453
2454
2455
2456
2457
2458
2459
2460
2461
2462
2463
2464
2465
2466
2467
2468
2469
2470
2471
2472
2473
2474
2475
2476
2477
2478
2479
2480
2481
2482
2483
2484
2485
2486
2487
2488
2489
2490
2491
2492
2493
2494
2495
2496
2497
2498
2499
2500
2501
2502
2503
2504
2505
2506
2507
2508
2509
2510
2511
2512
2513
2514
2515
2516
2517
2518
2519
2520
2521
2522
2523
2524
2525
2526
2527
2528
2529
2530
2531
2532
2533
2534
2535
2536
2537
2538
2539
2540
2541
2542
2543
2544
2545
2546
2547
2548
2549
2550
2551
2552
2553
2554
2555
2556
2557
2558
2559
2560
2561
2562
2563
2564
2565
2566
2567
2568
2569
2570
2571
2572
2573
2574
2575
2576
2577
2578
2579
2580
2581
2582
2583
2584
2585
2586
2587
2588
2589
2590
2591
2592
2593
2594
2595
2596
2597
2598
2599
2600
2601
2602
2603
2604
2605
2606
2607
2608
2609
2610
2611
2612
2613
2614
2615
2616
2617
2618
2619
2620
2621
2622
2623
2624
2625
2626
2627
2628
2629
2630
2631
2632
2633
2634
2635
2636
2637
2638
2639
2640
2641
2642
2643
2644
2645
2646
2647
2648
a!localVariables(
  local!zipCode: null(),
  local!stepNumber: 1,
  local!bundleSelections: {},
  local!showSaveForLater: false,
  choose(
    local!stepNumber,
    a!headerContentLayout(
      header: {
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(contents: {}),
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Great rates, great service, and great protection."
                              },
                              color: "#434343",
                              size: "LARGE",
                              style: { "STRONG" }
                            ),
                            " "
                          },
                          marginAbove: "NONE",
                          marginBelow: "MORE"
                        ),
                        a!cardLayout(
                          contents: {
                            a!richTextDisplayField(
                              labelPosition: "COLLAPSED",
                              value: {
                                a!richTextItem(
                                  text: { "Get your no-obligation quote now" },
                                  color: "#434343",
                                  size: "MEDIUM",
                                  style: { "STRONG" }
                                )
                              },
                              align: "CENTER",
                              marginBelow: "STANDARD"
                            ),
                            a!columnsLayout(
                              columns: {
                                a!columnLayout(contents: {}),
                                a!columnLayout(
                                  contents: {
                                    a!sideBySideLayout(
                                      items: {
                                        a!sideBySideItem(
                                          item: a!textField(
                                            label: "Your ZIP Code",
                                            labelPosition: "COLLAPSED",
                                            placeholder: "Enter your 5-digit ZIP code",
                                            saveInto: local!zipCode,
                                            refreshAfter: "UNFOCUS",
                                            validations: {}
                                          )
                                        ),
                                        a!sideBySideItem(
                                          item: a!buttonArrayLayout(
                                            buttons: {
                                              a!buttonWidget(
                                                label: "Get Started",
                                                value: 2,
                                                saveInto: local!stepNumber,
                                                size: "STANDARD",
                                                style: "OUTLINE"
                                              )
                                            },
                                            align: "START",
                                            marginBelow: "NONE"
                                          ),
                                          width: "MINIMIZE"
                                        )
                                      },
                                      alignVertical: "MIDDLE"
                                    )
                                  },
                                  width: "MEDIUM"
                                ),
                                a!columnLayout(contents: {})
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          height: "AUTO",
                          style: "NONE",
                          padding: "MORE",
                          marginBelow: "STANDARD",
                          showBorder: false,
                          decorativeBarPosition: "TOP",
                          decorativeBarColor: "#BF04A0"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "We may use information from public sources or third parties, such as driving records, claim history, vehicle driving data, and credit reports to provide you with the best quote. "
                              },
                              color: "#666666",
                              size: "SMALL"
                            ),
                            char(10),
                            char(10),
                            a!richTextItem(
                              text: {
                                "Some discounts, coverages, payment plans, and features are not available in all states."
                              },
                              color: "#666666",
                              size: "SMALL"
                            )
                          }
                        )
                      },
                      height: "AUTO",
                      style: "#efefef",
                      padding: "EVEN_MORE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  width: "WIDE"
                ),
                a!columnLayout(contents: {}),
                a!columnLayout(
                  contents: {
                    a!imageField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      images: {
                        a!webImage(
                          source: "https://images.pexels.com/photos/3785391/pexels-photo-3785391.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                        )
                      },
                      size: "FIT",
                      isThumbnail: false,
                      style: "STANDARD"
                    )
                  },
                  width: "WIDE"
                )
              },
              alignVertical: "MIDDLE",
              marginBelow: "NONE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE"
              }
            )
          },
          height: "AUTO",
          style: "#efefef",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false
        ),
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!imageField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      images: {
                        a!webImage(
                          source: "https://images.pexels.com/photos/9518015/pexels-photo-9518015.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
                        )
                      },
                      size: "FIT",
                      isThumbnail: false,
                      style: "STANDARD"
                    )
                  },
                  width: "WIDE"
                ),
                a!columnLayout(contents: {}),
                a!columnLayout(
                  contents: {
                    a!cardLayout(
                      contents: {
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: {
                                "Get just the right amount of coverage for your needs"
                              },
                              color: "STANDARD",
                              size: "MEDIUM_PLUS",
                              style: { "STRONG" }
                            )
                          },
                          marginAbove: "NONE",
                          marginBelow: "MORE"
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { a!richTextIcon(icon: "check-circle") },
                              color: "STANDARD",
                              size: "MEDIUM_PLUS",
                              style: { "STRONG" }
                            ),
                            a!richTextItem(
                              text: {
                                a!richTextItem(text: { " " }, style: { "STRONG" }),
                                "Liability Coverage"
                              },
                              size: "MEDIUM_PLUS"
                            )
                          }
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { a!richTextIcon(icon: "check-circle") },
                              color: "STANDARD",
                              size: "MEDIUM_PLUS",
                              style: { "STRONG" }
                            ),
                            a!richTextItem(
                              text: {
                                a!richTextItem(text: { " " }, style: { "STRONG" }),
                                "Uninsured and Underinsured Motorist Coverage"
                              },
                              size: "MEDIUM_PLUS"
                            )
                          }
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { a!richTextIcon(icon: "check-circle") },
                              color: "STANDARD",
                              size: "MEDIUM_PLUS",
                              style: { "STRONG" }
                            ),
                            a!richTextItem(
                              text: {
                                a!richTextItem(text: { " " }, style: { "STRONG" }),
                                "Comprehensive Coverage"
                              },
                              size: "MEDIUM_PLUS"
                            )
                          }
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { a!richTextIcon(icon: "check-circle") },
                              color: "STANDARD",
                              size: "MEDIUM_PLUS",
                              style: { "STRONG" }
                            ),
                            a!richTextItem(
                              text: {
                                a!richTextItem(text: { " " }, style: { "STRONG" }),
                                "Collision Coverage"
                              },
                              size: "MEDIUM_PLUS"
                            )
                          }
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { a!richTextIcon(icon: "check-circle") },
                              color: "STANDARD",
                              size: "MEDIUM_PLUS",
                              style: { "STRONG" }
                            ),
                            a!richTextItem(
                              text: {
                                a!richTextItem(text: { " " }, style: { "STRONG" }),
                                "Medical Payments Coverage"
                              },
                              size: "MEDIUM_PLUS"
                            )
                          }
                        ),
                        a!richTextDisplayField(
                          labelPosition: "COLLAPSED",
                          value: {
                            a!richTextItem(
                              text: { a!richTextIcon(icon: "check-circle") },
                              color: "STANDARD",
                              size: "MEDIUM_PLUS",
                              style: { "STRONG" }
                            ),
                            a!richTextItem(
                              text: {
                                a!richTextItem(text: { " " }, style: { "STRONG" }),
                                "Personal Injury Protection"
                              },
                              size: "MEDIUM_PLUS"
                            )
                          }
                        )
                      },
                      height: "AUTO",
                      style: "#73245d",
                      padding: "MORE",
                      marginBelow: "NONE",
                      showBorder: false
                    )
                  },
                  width: "WIDE"
                ),
                a!columnLayout(contents: {})
              },
              alignVertical: "MIDDLE",
              marginBelow: "NONE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE"
              }
            )
          },
          height: "AUTO",
          style: "#73245d",
          padding: "NONE",
          marginBelow: "NONE",
          showBorder: false
        ),
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!imageField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      images: {
                        a!documentImage(
                          document: a!EXAMPLE_DOCUMENT_IMAGE()
                        )
                      },
                      size: "MEDIUM",
                      isThumbnail: false,
                      style: "STANDARD"
                    )
                  },
                  width: "MEDIUM"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        "We may use information from public sources or third parties, such as driving records, claim history, vehicle driving data, and credit reports to provide you with the best quote.",
                        char(10),
                        char(10),
                        "Some discounts, coverages, payment plans, and features are not available in all states.",
                        char(10),
                        char(10),
                        "This site exists for demonstration purposes only. We can't actually sell you auto insurance."
                      }
                    )
                  }
                )
              },
              stackWhen: { "PHONE", "TABLET_PORTRAIT" }
            )
          },
          height: "TALL",
          style: "#333",
          padding: "EVEN_MORE",
          marginBelow: "STANDARD",
          showBorder: false,
          decorativeBarPosition: "NONE",
          decorativeBarColor: "#056CF2"
        )
      },
      contents: {},
      backgroundColor: "#333",
      contentsPadding: "NONE"
    ),
    a!headerContentLayout(
      header: {
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(contents: {}),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "piggy-bank",
                                  backgroundColor: "ACCENT",
                                  contentColor: "STANDARD",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step"
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
                                      text: { "Bundled Savings" },
                                      size: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Current Step (1 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginAbove: "STANDARD",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "portrait",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "About You" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (2 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "car",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Your Vehicles" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (3 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "user-friends",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Other Drivers" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (4 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "umbrella",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
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
                                      text: { "Coverage Options" },
                                      size: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (5 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "clipboard-check",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Quote" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (6 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        )
                      },
                      showWhen: a!isPageWidth(pageWidths: { "DESKTOP", "DESKTOP_WIDE" })
                    )
                  },
                  width: "NARROW_PLUS"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: { "Save more with a bundled quote" },
                          size: "LARGE"
                        )
                      },
                      marginBelow: "MORE"
                    ),
                    a!cardChoiceField(
                      label: "Insurance Options 1",
                      labelPosition: "COLLAPSED",
                      data: {
                        a!map(
                          id: 1,
                          icon: "car",
                          primaryText: "Auto",
                          secondaryText: "Cars & SUVs"
                        )
                      },
                      cardTemplate: a!cardTemplateBarTextStacked(
                        id: fv!data.id,
                        primaryText: fv!data.primaryText,
                        secondaryText: fv!data.secondaryText,
                        icon: fv!data.icon
                      ),
                      value: 1,
                      saveInto: {},
                      maxSelections: 1,
                      validations: {}
                    ),
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: {
                            "Save as much as ",
                            a!richTextItem(text: { "25%" }, style: { "STRONG" }),
                            " by bundling multiple policies today."
                          },
                          size: "MEDIUM"
                        ),
                        char(10),
                        char(10),
                        a!richTextItem(
                          text: { "What else do you want to protect?" },
                          size: "MEDIUM",
                          style: { "STRONG" }
                        )
                      },
                      marginAbove: "MORE",
                      marginBelow: "MORE"
                    ),
                    a!cardChoiceField(
                      label: "Insurance Options 1",
                      labelPosition: "COLLAPSED",
                      data: {
                        a!map(
                          id: 1,
                          icon: "home",
                          primaryText: "Homeowners",
                          secondaryText: "Single-family & townhomes"
                        ),
                        a!map(
                          id: 2,
                          icon: "building",
                          primaryText: "Renters",
                          secondaryText: "Rental homes & apartments"
                        ),
                        a!map(
                          id: 3,
                          icon: "motorcycle",
                          primaryText: "Other Vehicles",
                          secondaryText: "Motorcycles & ATVs"
                        )
                      },
                      cardTemplate: a!cardTemplateBarTextStacked(
                        id: fv!data.id,
                        primaryText: fv!data.primaryText,
                        secondaryText: fv!data.secondaryText,
                        icon: fv!data.icon
                      ),
                      value: local!bundleSelections,
                      saveInto: local!bundleSelections,
                      maxSelections: 3,
                      validations: {}
                    ),
                    a!sectionLayout(
                      label: "",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(contents: {}),
                            a!columnLayout(
                              contents: {
                                a!buttonArrayLayout(
                                  buttons: {
                                    a!buttonWidget(
                                      label: "Next: About You",
                                      value: 3,
                                      saveInto: local!stepNumber,
                                      size: "LARGE",
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
                      divider: "ABOVE",
                      marginAbove: "EVEN_MORE"
                    )
                  },
                  width: "WIDE"
                ),
                a!columnLayout(contents: {})
              },
              marginAbove: "EVEN_MORE",
              marginBelow: "EVEN_MORE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW"
              }
            ),
            a!cardLayout(
              contents: {},
              height: "SHORT_PLUS",
              style: "NONE",
              marginBelow: "STANDARD",
              showBorder: false
            )
          },
          height: "AUTO",
          style: "NONE",
          marginBelow: "NONE",
          showBorder: false
        ),
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!imageField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      images: {
                        a!documentImage(
                          document: a!EXAMPLE_DOCUMENT_IMAGE()
                        )
                      },
                      size: "MEDIUM",
                      isThumbnail: false,
                      style: "STANDARD"
                    )
                  },
                  width: "MEDIUM"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        "We may use information from public sources or third parties, such as driving records, claim history, vehicle driving data, and credit reports to provide you with the best quote.",
                        char(10),
                        char(10),
                        "Some discounts, coverages, payment plans, and features are not available in all states.",
                        char(10),
                        char(10),
                        "This site exists for demonstration purposes only. We can't actually sell you auto insurance."
                      }
                    )
                  }
                )
              },
              stackWhen: { "PHONE", "TABLET_PORTRAIT" }
            )
          },
          height: "TALL",
          style: "#333",
          padding: "EVEN_MORE",
          marginBelow: "STANDARD",
          showBorder: false,
          decorativeBarPosition: "NONE",
          decorativeBarColor: "#056CF2"
        )
      },
      contents: {},
      backgroundColor: "#333",
      contentsPadding: "NONE"
    ),
    a!headerContentLayout(
      header: {
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(contents: {}),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "piggy-bank",
                                  backgroundColor: "ACCENT",
                                  contentColor: "STANDARD",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step"
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
                                      text: { "Bundled Savings" },
                                      size: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step (1 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginAbove: "STANDARD",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "portrait",
                                  backgroundColor: "ACCENT",
                                  contentColor: "STANDARD",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Current Step"
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
                                      text: { "About You" },
                                      size: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Current Step (2 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "car",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Your Vehicles" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (3 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "user-friends",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Other Drivers" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (4 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "umbrella",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
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
                                      text: { "Coverage Options" },
                                      size: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (5 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "clipboard-check",
                                  backgroundColor: "#d9d9d9",
                                  contentColor: "#666666",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Quote" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step (6 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        )
                      },
                      showWhen: a!isPageWidth(pageWidths: { "DESKTOP", "DESKTOP_WIDE" })
                    )
                  },
                  width: "NARROW_PLUS"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: { "Please tell us a bit about you" },
                          size: "LARGE"
                        )
                      },
                      marginBelow: "MORE"
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!textField(
                            label: "First Name",
                            labelPosition: "ABOVE",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            validations: {}
                          ),
                          width: "4X"
                        ),
                        a!sideBySideItem(
                          item: a!textField(
                            label: "M.I.",
                            labelPosition: "ABOVE",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            validations: {}
                          )
                        ),
                        a!sideBySideItem(
                          item: a!textField(
                            label: "Last Name",
                            labelPosition: "ABOVE",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            validations: {}
                          ),
                          width: "4X"
                        ),
                        a!sideBySideItem(
                          item: a!dropdownField(
                            label: "Suffix",
                            labelPosition: "ABOVE",
                            placeholder: "",
                            choiceLabels: {
                              "None",
                              "Sr.",
                              "Jr.",
                              "II",
                              "III",
                              "IV",
                              "V",
                              "VI",
                              "VII"
                            },
                            choiceValues: { 1, 2, 3, 4, 5, 6, 7, 8, 9 },
                            value: 1,
                            saveInto: {},
                            searchDisplay: "AUTO",
                            validations: {}
                          ),
                          width: "2X"
                        )
                      },
                      marginBelow: "MORE"
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!textField(
                            label: "Street Address",
                            labelPosition: "ABOVE",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            validations: {}
                          ),
                          width: "3X"
                        ),
                        a!sideBySideItem(
                          item: a!textField(
                            label: "Apt / Unit No.",
                            labelPosition: "ABOVE",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            validations: {}
                          )
                        )
                      }
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!textField(
                            label: "City",
                            labelPosition: "ABOVE",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            validations: {}
                          ),
                          width: "4X"
                        ),
                        a!sideBySideItem(
                          item: a!textField(
                            label: "State",
                            labelPosition: "ABOVE",
                            value: "VA",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            readOnly: true,
                            validations: {}
                          )
                        ),
                        a!sideBySideItem(
                          item: a!textField(
                            label: "ZIP Code",
                            labelPosition: "ABOVE",
                            value: "22102",
                            saveInto: {},
                            refreshAfter: "UNFOCUS",
                            readOnly: true,
                            validations: {}
                          )
                        ),
                        a!sideBySideItem(width: "2X")
                      },
                      marginBelow: "MORE"
                    ),
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!dateField(
                            label: "Date of Birth",
                            labelPosition: "ABOVE",
                            saveInto: {},
                            validations: {}
                          )
                        ),
                        a!sideBySideItem(width: "2X")
                      },
                      marginBelow: "MORE"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextIcon(
                                    icon: "shield",
                                    color: "ACCENT",
                                    size: "LARGE"
                                  )
                                }
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: { "Your information is safe with us." },
                                    style: { "STRONG" }
                                  ),
                                  " We will never share it with other parties. This information will be used to provide the best quote for your insurance needs."
                                }
                              )
                            )
                          },
                          alignVertical: "MIDDLE"
                        )
                      },
                      height: "AUTO",
                      style: "#f8eff3",
                      padding: "STANDARD",
                      marginBelow: "NONE",
                      decorativeBarPosition: "START"
                    ),
                    a!sectionLayout(
                      label: "",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(contents: {}),
                            a!columnLayout(
                              contents: {
                                a!buttonArrayLayout(
                                  buttons: {
                                    a!buttonWidget(
                                      label: "Next: Your Vehicles",
                                      value: 4,
                                      saveInto: local!stepNumber,
                                      size: "LARGE",
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
                      divider: "ABOVE",
                      marginAbove: "EVEN_MORE"
                    )
                  },
                  width: "WIDE"
                ),
                a!columnLayout(contents: {})
              },
              marginAbove: "EVEN_MORE",
              marginBelow: "EVEN_MORE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW"
              }
            ),
            a!cardLayout(
              contents: {},
              height: "SHORT_PLUS",
              style: "NONE",
              marginBelow: "STANDARD",
              showBorder: false
            )
          },
          height: "AUTO",
          style: "NONE",
          marginBelow: "NONE",
          showBorder: false
        ),
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!imageField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      images: {
                        a!documentImage(
                          document: a!EXAMPLE_DOCUMENT_IMAGE()
                        )
                      },
                      size: "MEDIUM",
                      isThumbnail: false,
                      style: "STANDARD"
                    )
                  },
                  width: "MEDIUM"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        "We may use information from public sources or third parties, such as driving records, claim history, vehicle driving data, and credit reports to provide you with the best quote.",
                        char(10),
                        char(10),
                        "Some discounts, coverages, payment plans, and features are not available in all states.",
                        char(10),
                        char(10),
                        "This site exists for demonstration purposes only. We can't actually sell you auto insurance."
                      }
                    )
                  }
                )
              },
              stackWhen: { "PHONE", "TABLET_PORTRAIT" }
            )
          },
          height: "TALL",
          style: "#333",
          padding: "EVEN_MORE",
          marginBelow: "STANDARD",
          showBorder: false,
          decorativeBarPosition: "NONE",
          decorativeBarColor: "#056CF2"
        )
      },
      contents: {},
      backgroundColor: "#333",
      contentsPadding: "NONE"
    ),
    a!headerContentLayout(
      header: {
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(contents: {}),
                a!columnLayout(
                  contents: {
                    a!sectionLayout(
                      label: "",
                      labelSize: "MEDIUM",
                      labelColor: "STANDARD",
                      contents: {
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "piggy-bank",
                                  backgroundColor: "ACCENT",
                                  contentColor: "STANDARD",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step"
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
                                      text: { "Bundled Savings" },
                                      color: "STANDARD",
                                      size: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step (1 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginAbove: "STANDARD",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "portrait",
                                  backgroundColor: "ACCENT",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "About You" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step (2 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "car",
                                  backgroundColor: "ACCENT",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Your Vehicles" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step (3 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "user-friends",
                                  backgroundColor: "ACCENT",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(
                              contents: {
                                a!richTextDisplayField(
                                  labelPosition: "COLLAPSED",
                                  value: {
                                    a!richTextItem(text: { "Other Drivers" }, size: "STANDARD")
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step (4 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "umbrella",
                                  backgroundColor: "ACCENT",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
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
                                      text: { "Coverage Options" },
                                      size: "STANDARD"
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Completed Step (5 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!imageField(
                                  label: "",
                                  labelPosition: "COLLAPSED",
                                  images: {
                                    a!documentImage(
                                      document: a!EXAMPLE_VERTICAL_CONNECTOR_IMAGE()
                                    )
                                  },
                                  size: "TINY",
                                  isThumbnail: false,
                                  style: "STANDARD",
                                  align: "CENTER"
                                )
                              },
                              width: "EXTRA_NARROW"
                            ),
                            a!columnLayout(contents: {})
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        ),
                        a!columnsLayout(
                          columns: {
                            a!columnLayout(
                              contents: {
                                a!stampField(
                                  labelPosition: "COLLAPSED",
                                  icon: "clipboard-check",
                                  backgroundColor: "ACCENT",
                                  contentColor: "STANDARD",
                                  size: "TINY",
                                  align: "CENTER",
                                  marginBelow: "NONE",
                                  accessibilityText: "Future Step"
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
                                      text: { "Quote" },
                                      size: "STANDARD",
                                      style: { "STRONG" }
                                    )
                                  },
                                  preventWrapping: true,
                                  align: "LEFT",
                                  marginAbove: "NONE",
                                  marginBelow: "NONE",
                                  accessibilityText: "Current Step (6 of 6)"
                                )
                              }
                            )
                          },
                          alignVertical: "MIDDLE",
                          marginBelow: "NONE",
                          spacing: "NONE"
                        )
                      },
                      showWhen: a!isPageWidth(pageWidths: { "DESKTOP", "DESKTOP_WIDE" })
                    )
                  },
                  width: "NARROW_PLUS"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(
                          text: { "Here's your personalized quote" },
                          size: "LARGE"
                        )
                      },
                      marginBelow: "MORE"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      a!richTextItem(text: { "$113.50" }, style: { "STRONG" }),
                                      " "
                                    },
                                    size: "LARGE"
                                  ),
                                  a!richTextItem(text: { "/ Month" }, size: "MEDIUM")
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "Purchase Now",
                                    size: "LARGE",
                                    style: "SOLID"
                                  )
                                },
                                align: "START",
                                marginBelow: "NONE"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(text: { "– or –" }, size: "MEDIUM")
                                }
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "Save for Later",
                                    value: true,
                                    saveInto: local!showSaveForLater,
                                    size: "LARGE",
                                    style: "OUTLINE"
                                  )
                                },
                                align: "START",
                                marginBelow: "NONE"
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE",
                          showWhen: not(local!showSaveForLater)
                        ),
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: {
                                  a!richTextItem(
                                    text: {
                                      a!richTextItem(text: { "$113.50" }, style: { "STRONG" }),
                                      " "
                                    },
                                    size: "LARGE"
                                  ),
                                  a!richTextItem(text: { "/ Month" }, size: "MEDIUM")
                                }
                              )
                            ),
                            a!sideBySideItem(
                              item: a!textField(
                                label: "Your email address",
                                labelPosition: "COLLAPSED",
                                placeholder: "Your email address",
                                saveInto: {},
                                refreshAfter: "UNFOCUS",
                                validations: {}
                              )
                            ),
                            a!sideBySideItem(
                              item: a!buttonArrayLayout(
                                buttons: {
                                  a!buttonWidget(
                                    label: "Send Quote",
                                    icon: "envelope-o",
                                    size: "LARGE",
                                    style: "OUTLINE"
                                  )
                                },
                                align: "START",
                                marginBelow: "NONE"
                              ),
                              width: "MINIMIZE"
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                helpTooltip: "",
                                value: {
                                  a!richTextIcon(
                                    icon: "times-circle",
                                    link: a!dynamicLink(
                                      value: false,
                                      saveInto: local!showSaveForLater
                                    ),
                                    linkStyle: "STANDALONE"
                                  )
                                },
                                tooltip: "Cancel"
                              ),
                              width: "MINIMIZE"
                            )
                          },
                          alignVertical: "MIDDLE",
                          showWhen: local!showSaveForLater
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      padding: "STANDARD",
                      marginBelow: "STANDARD",
                      showBorder: true,
                      showShadow: false,
                      decorativeBarPosition: "TOP",
                      decorativeBarColor: "ACCENT"
                    ),
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        a!richTextItem(text: { "Auto Insurance" }, size: "MEDIUM")
                      }
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(
                                        icon: "hand-holding-usd",
                                        size: "MEDIUM_PLUS"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(text: { "3 discounts" }, size: "MEDIUM")
                                    }
                                  ),
                                  width: "AUTO"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "$42.90/mo" },
                                        color: "#38761d",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          a!richTextIcon(icon: "angle-right-bold")
                                        },
                                        color: "STANDARD",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "STANDARD"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(icon: "car", size: "MEDIUM_PLUS")
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(text: { "1 vehicle" }, size: "MEDIUM")
                                    }
                                  ),
                                  width: "AUTO"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          a!richTextIcon(icon: "angle-right-bold")
                                        },
                                        color: "STANDARD",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "STANDARD"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(icon: "user-friends", size: "MEDIUM_PLUS")
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(text: { "1 driver" }, size: "MEDIUM")
                                    }
                                  ),
                                  width: "AUTO"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          a!richTextIcon(icon: "angle-right-bold")
                                        },
                                        color: "STANDARD",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          marginBelow: "NONE"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "STANDARD"
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextIcon(icon: "umbrella", size: "MEDIUM_PLUS")
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(text: { "Coverage" }, size: "MEDIUM")
                                    }
                                  ),
                                  width: "AUTO"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { a!richTextIcon(icon: "angle-down-bold") },
                                        color: "STANDARD",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "MIDDLE"
                            )
                          },
                          divider: "NONE",
                          marginBelow: "NONE"
                        )
                      },
                      link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "NONE",
                      showShadow: false
                    ),
                    a!cardLayout(
                      contents: {
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Bodily Injury Liability" },
                                        style: { "STRONG" }
                                      ),
                                      char(10),
                                      "$50,000/person",
                                      char(10),
                                      "$100,000/accident"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                    },
                                    align: "START",
                                    marginBelow: "NONE"
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "BELOW"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: {
                                          "Uninsured/Underinsured Motorist Bodily Injury Liability"
                                        },
                                        style: { "STRONG" }
                                      ),
                                      char(10),
                                      "$50,000/person",
                                      char(10),
                                      "$100,000/accident"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                    },
                                    align: "START",
                                    marginBelow: "NONE"
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "BELOW"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Property Damage Liability" },
                                        style: { "STRONG" }
                                      ),
                                      char(10),
                                      "$75,000/accident"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                    },
                                    align: "START",
                                    marginBelow: "NONE"
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "BELOW"
                        ),
                        a!sectionLayout(
                          label: "",
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Medical Payments" },
                                        style: { "STRONG" }
                                      ),
                                      char(10),
                                      "$25,000/person",
                                      char(10),
                                      "$50,000/accident"
                                    }
                                  )
                                ),
                                a!sideBySideItem(
                                  item: a!buttonArrayLayout(
                                    buttons: {
                                      a!buttonWidget(label: "Edit", style: "OUTLINE", color: "SECONDARY")
                                    },
                                    align: "START",
                                    marginBelow: "NONE"
                                  ),
                                  width: "MINIMIZE"
                                )
                              },
                              alignVertical: "TOP"
                            )
                          },
                          divider: "NONE"
                        )
                      },
                      height: "AUTO",
                      style: "NONE",
                      marginBelow: "STANDARD"
                    )
                  },
                  width: "WIDE"
                ),
                a!columnLayout(contents: {})
              },
              marginAbove: "EVEN_MORE",
              marginBelow: "EVEN_MORE",
              stackWhen: {
                "PHONE",
                "TABLET_PORTRAIT",
                "TABLET_LANDSCAPE",
                "DESKTOP_NARROW"
              }
            ),
            a!cardLayout(
              contents: {},
              height: "SHORT_PLUS",
              style: "NONE",
              marginBelow: "STANDARD",
              showBorder: false
            )
          },
          height: "AUTO",
          style: "NONE",
          marginBelow: "NONE",
          showBorder: false
        ),
        a!cardLayout(
          contents: {
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!imageField(
                      label: "",
                      labelPosition: "COLLAPSED",
                      images: {
                        a!documentImage(
                          document: a!EXAMPLE_DOCUMENT_IMAGE()
                        )
                      },
                      size: "MEDIUM",
                      isThumbnail: false,
                      style: "STANDARD"
                    )
                  },
                  width: "MEDIUM"
                ),
                a!columnLayout(
                  contents: {
                    a!richTextDisplayField(
                      labelPosition: "COLLAPSED",
                      value: {
                        "We may use information from public sources or third parties, such as driving records, claim history, vehicle driving data, and credit reports to provide you with the best quote.",
                        char(10),
                        char(10),
                        "Some discounts, coverages, payment plans, and features are not available in all states.",
                        char(10),
                        char(10),
                        "This site exists for demonstration purposes only. We can't actually sell you auto insurance."
                      }
                    )
                  }
                )
              },
              stackWhen: { "PHONE", "TABLET_PORTRAIT" }
            )
          },
          height: "TALL",
          style: "#333",
          padding: "EVEN_MORE",
          marginBelow: "STANDARD",
          showBorder: false,
          decorativeBarPosition: "NONE",
          decorativeBarColor: "#056CF2"
        )
      },
      contents: {},
      backgroundColor: "#333",
      contentsPadding: "NONE"
    )
  )
)
```

The following pattern shows another step in this wizard. Note how the colored in icons help orient the user in where they are in the process.

![Example of an insurance quote form step that asks for user information.](ds-images/auto_insurance_quote_wizard_about_you.png)

##### Multi-level sidebar step indicator

For wizards with many steps, use this pattern to break steps up into sub-steps. Only showing the sub-steps for the current step reduces clutter and makes it easier for users to navigate the form.

For forms that can't easily be completed in one session, consider providing a button for users to save their progress and return later. In this pattern, a "Save my progress" button is placed underneath the wizard.

![](ds-images/image60.png)

Copy expression Launch demo

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
331
332
333
334
335
336
337
338
339
340
341
342
343
344
345
346
347
348
349
350
351
352
353
354
355
356
357
358
359
360
361
362
363
364
365
366
367
368
369
370
371
372
373
374
375
376
377
378
379
380
381
382
383
384
385
386
387
388
389
390
391
392
393
394
395
396
397
398
399
400
401
402
403
404
405
406
407
408
409
410
411
412
413
414
415
416
417
418
419
420
421
422
423
424
425
426
427
428
429
430
431
432
433
434
435
436
437
438
439
440
441
442
443
444
445
446
447
448
449
450
451
452
453
454
455
456
457
458
459
460
461
462
463
464
465
466
467
468
469
470
471
472
473
474
475
476
477
478
479
480
481
482
483
484
485
486
487
488
489
490
491
492
493
494
495
496
497
498
499
500
501
502
503
504
505
506
507
508
509
510
511
512
513
514
515
516
517
518
519
520
521
522
523
524
525
526
527
528
529
530
531
532
533
534
535
536
537
538
539
540
541
542
543
544
545
546
547
548
549
550
551
552
553
554
555
556
557
558
559
560
561
562
563
564
565
566
567
568
569
570
571
572
573
574
575
576
577
578
579
580
581
582
583
584
585
586
587
588
589
590
591
592
593
594
595
596
597
598
599
600
601
602
603
604
605
606
607
608
609
610
611
612
613
614
615
616
617
618
619
620
621
622
623
624
625
626
627
628
629
630
631
632
633
634
635
636
637
638
639
640
641
642
643
644
645
646
647
648
649
650
651
652
653
654
655
656
657
658
659
660
661
662
663
664
665
666
667
668
669
670
671
672
673
674
675
676
677
a!headerContentLayout(
  header: {
    a!cardLayout(
      contents: {
        a!sideBySideLayout(
          items: {
            a!sideBySideItem(
              item: a!richTextDisplayField(
                labelPosition: "COLLAPSED",
                value: {
                  "Home ",
                  a!richTextIcon(
                    icon: "chevron-right"
                  ),
                  " Online Self Service",
                  char(10),
                  a!richTextItem(
                    text: {
                      "Motor Vehicle Dealer Registration"
                    },
                    size: "LARGE_PLUS"
                  )
                }
              )
            )
          },
          alignVertical: "MIDDLE"
        )
      },
      height: "AUTO",
      style: "#03122a",
      padding: "MORE",
      marginBelow: "NONE",
      showBorder: false
    )
  },
  contents: {
    a!cardLayout(
      contents: {},
      height: "EXTRA_SHORT",
      style: "NONE",
      marginBelow: "NONE",
      showBorder: false
    ),
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {}
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "",
              contents: {
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            icon: "check",
                            text: "",
                            backgroundColor: "ACCENT",
                            contentColor: "STANDARD",
                            size: "TINY"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "About You" },
                                color: "ACCENT",
                                size: "MEDIUM"
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE",
                      marginBelow: "STANDARD"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  accessibilityText: "Completed section"
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            icon: "check",
                            text: "",
                            backgroundColor: "ACCENT",
                            contentColor: "STANDARD",
                            size: "TINY"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Business Entity" },
                                color: "ACCENT",
                                size: "MEDIUM"
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE",
                      marginBelow: "STANDARD"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  accessibilityText: "Completed section"
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            text: "3",
                            backgroundColor: "ACCENT",
                            contentColor: "STANDARD",
                            size: "TINY"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Dealership Facility" },
                                color: "STANDARD",
                                size: "MEDIUM",
                                style: { "STRONG" }
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE",
                      marginBelow: "STANDARD"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  accessibilityText: "Current section"
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!columnsLayout(
                  columns: {
                    a!columnLayout(contents: {}, width: "EXTRA_NARROW"),
                    a!columnLayout(
                      contents: {
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(text: { "❘" }, color: "ACCENT", size: "LARGE")
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Location" },
                                        color: "ACCENT",
                                        size: "MEDIUM",
                                        style: { "STRONG" }
                                      )
                                    },
                                    preventWrapping: true
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE"
                            )
                          },
                          link: a!dynamicLink(saveInto: {}),
                          height: "AUTO",
                          padding: "NONE",
                          marginBelow: "NONE",
                          showBorder: false,
                          accessibilityText: "Current step"
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Rich Text",
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "❘" },
                                        color: "#ffffff",
                                        size: "LARGE"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Rich Text",
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Structures and Services" },
                                        color: "ACCENT",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE"
                            )
                          },
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                          height: "AUTO",
                          padding: "NONE",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Rich Text",
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "❘" },
                                        color: "#ffffff",
                                        size: "LARGE"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Rich Text",
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Zoning Search" },
                                        color: "ACCENT",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE"
                            )
                          },
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                          height: "AUTO",
                          padding: "NONE",
                          marginBelow: "NONE",
                          showBorder: false
                        ),
                        a!cardLayout(
                          contents: {
                            a!sideBySideLayout(
                              items: {
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Rich Text",
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "❘" },
                                        color: "#ffffff",
                                        size: "LARGE"
                                      )
                                    }
                                  ),
                                  width: "MINIMIZE"
                                ),
                                a!sideBySideItem(
                                  item: a!richTextDisplayField(
                                    label: "Rich Text",
                                    labelPosition: "COLLAPSED",
                                    value: {
                                      a!richTextItem(
                                        text: { "Zoning Approval" },
                                        color: "ACCENT",
                                        size: "MEDIUM"
                                      )
                                    },
                                    preventWrapping: true
                                  )
                                )
                              },
                              alignVertical: "MIDDLE",
                              spacing: "DENSE"
                            )
                          },
                          link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                          height: "AUTO",
                          padding: "NONE",
                          marginBelow: "NONE",
                          showBorder: false
                        )
                      }
                    )
                  },
                  spacing: "NONE"
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            text: "4",
                            backgroundColor: "#cccccc",
                            contentColor: "STANDARD",
                            size: "TINY"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Salespeople" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE",
                      marginBelow: "STANDARD"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  accessibilityText: "Not yet started section"
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            text: "5",
                            backgroundColor: "#cccccc",
                            contentColor: "STANDARD",
                            size: "TINY"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Dealer Plates" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE",
                      marginBelow: "STANDARD"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  accessibilityText: "Not yet started section"
                ),
                a!cardLayout(
                  contents: {},
                  height: "AUTO",
                  padding: "EVEN_LESS",
                  marginBelow: "NONE",
                  showBorder: false
                ),
                a!cardLayout(
                  contents: {
                    a!sideBySideLayout(
                      items: {
                        a!sideBySideItem(
                          item: a!stampField(
                            labelPosition: "COLLAPSED",
                            text: "6",
                            backgroundColor: "#cccccc",
                            contentColor: "STANDARD",
                            size: "TINY"
                          ),
                          width: "MINIMIZE"
                        ),
                        a!sideBySideItem(
                          item: a!richTextDisplayField(
                            labelPosition: "COLLAPSED",
                            value: {
                              a!richTextItem(
                                text: { "Surety Bond and Insurance" },
                                color: "STANDARD",
                                size: "MEDIUM"
                              )
                            }
                          )
                        )
                      },
                      alignVertical: "MIDDLE",
                      marginBelow: "STANDARD"
                    )
                  },
                  link: a!dynamicLink(label: "Dynamic Link", saveInto: {}),
                  height: "AUTO",
                  style: "NONE",
                  padding: "NONE",
                  marginBelow: "NONE",
                  showBorder: false,
                  accessibilityText: "Not yet started section"
                )
              },
              divider: "BELOW",
              marginBelow: "MORE"
            ),
            a!buttonArrayLayout(
              buttons: {
                a!buttonWidget(
                  label: "Save My Progress",
                  style: "OUTLINE",
                  color: "SECONDARY"
                )
              },
              align: "START"
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              label: "Location",
              labelSize: "LARGE",
              labelHeadingTag: "H2",
              labelColor: "STANDARD",
              contents: {},
              marginBelow: "STANDARD"
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
                      label: "State",
                      labelPosition: "ABOVE",
                      placeholder: "--- Select a State ---",
                      choiceLabels: {"Option 1", "Option 2", "Option 3", "Option 4",
                      "Option 5", "Option 6", "Option 7", "Option 8",
                      "Option 9", "Option 10", "Option 11", "Option 12"},
                      choiceValues: {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
                      saveInto: {},
                      searchDisplay: "AUTO",
                      validations: {}
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!textField(
                      label: "ZIP",
                      labelPosition: "ABOVE",
                      saveInto: {},
                      refreshAfter: "UNFOCUS",
                      validations: {}
                    )
                  }
                )
              }
            ),
            a!cardLayout(
              contents: {},
              height: "AUTO",
              style: "NONE",
              marginBelow: "STANDARD",
              showBorder: false
            ),
            a!cardLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextIcon(
                      icon: "info-circle",
                      color: "ACCENT"
                    ),
                    " The proposed dealership location must comply with the following requirements:",
                    char(10),
                    char(10),
                    "• Have sales, service, and office space devoted exclusively to the dealership of at least 250 square feet in a permanent, enclosed building not used as a residence.",
                    char(10),
                    char(10),
                    "• Equip your office space with a desk, chairs, filing space, a working telephone listed in the name of the dealership",
                    char(10),
                    char(10),
                    "• Display business hours and a sign as required by law. A dealer must be open a minimum of 20 hours per week. 10 of these hours must be between 9am. – 5pm. Monday through Friday.",
                    char(10),
                    char(10),
                    "• Have contiguous parking space designated for the exclusive use of the dealership adequate to permit the display of at least 10 vehicles."
                  }
                )
              },
              height: "AUTO",
              style: "#f3f5f9",
              padding: "STANDARD",
              marginBelow: "MORE"
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!buttonArrayLayout(
                      buttons: {
                        a!buttonWidget(
                          label: "Back",
                          style: "OUTLINE"
                        ),
                        a!buttonWidget(
                          label: "Cancel",
                          style: "LINK"
                        )
                      },
                      align: "START",
                      marginBelow: "NONE"
                    )
                  }
                ),
                a!columnLayout(
                  contents: {
                    a!buttonArrayLayout(
                      buttons: {
                        a!buttonWidget(
                          label: "Next",
                          style: "SOLID"
                        )
                      },
                      align: "END",
                      marginBelow: "NONE"
                    )
                  }
                )
              }
            )
          },
          width: "WIDE"
        ),
        a!columnLayout(
          contents: {}
        )
      },
      stackWhen: {
        "PHONE",
        "TABLET_PORTRAIT"
      }
    )
  },
  backgroundColor: "WHITE",
  contentsPadding: "NONE"

)
```

### Custom wizard navigation guidelines

When creating a custom wizard, keep the following in mind to make wizards easy to navigate:

-   Include back and next buttons on wizards to allow users to easily navigate between steps, so they can either review a previous input or move smoothly onto the next step. You can alternatively add links to step indicators for quick navigation between steps.
-   To keep users aware of where they are in a wizard, use visual cues like color changing or bolded text to show a user's current step.

### Taking advantage of automatic scrolling in wizards

In both custom wizards and wizard layouts, Appian automatically handles the page scrolling between each step of the wizard. This means that whenever a user navigates to the next step, the page will automatically scroll to the top of the page.

To take advantage of this, make sure that you don't have multiple read-only components—elements that the user does not interact with—that affects the automatic page scrolling.

Additionally, if you are using a form layout in a custom wizard, make sure that the buttons or dynamic links that control form navigation are placed in the _buttons_ parameter. If they are placed in the _contents_ parameter, auto scrolling will not work.