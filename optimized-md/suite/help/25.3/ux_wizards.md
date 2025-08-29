---
source_url: https://docs.appian.com/suite/help/25.3/ux_wizards.html
original_path: ux_wizards.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Wizards

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

Use wizards to guide users through sequential steps for completing a task. Wizards also help to break long forms up into more manageable components.

Don’t design wizards that require users to frequently reference previous steps to complete the current step.

## Wizard with milestones

Use a [milestone component](Milestone_Component.html) to show the user’s progress. Include links on the milestone component when you want users to easily navigate to previous steps.

![](images/wizard_milestone.png)

![](images/milestones_dont.png)

DON'T

Don’t use a horizontal milestone component when there are a large number of steps, as this can result in a cluttered look. If a wizard contains more than 5 or 6 steps, it’s worthwhile to consider a side navigation bar instead.

## Wizard with side navigation bar

Instead of showing wizard steps in a milestone component, you may choose to implement a side navigation bar using a [card layout](card_layout.html) and [rich text display](Rich_Text_Component.html) component in a fixed-width column. Consider this approach if you want more control over the appearance of the wizard navigation. This approach also works well when there are too many steps to comfortably fit in a milestone component or when each step in the wizard has a relatively narrow interface. Utilizing available horizontal space to display the navigation also reduces vertical scrolling.

![](images/wizard_side_nav.png)

### Pattern expression

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
a!localVariables(
  local!activeStep: 2,
  {
    a!columnsLayout(
      columns: {
        a!columnLayout(
          contents: {
            a!cardLayout(
              contents: {
                a!sectionLayout(),
                a!sectionLayout(),
                a!forEach(
                  items: {
                    "Getting Started",
                    "About the Applicant",
                    "Assets",
                    "Income",
                    "Other Real Estate",
                    "Additional Questions",
                    "Demographic Data (Optional)",
                    "Final Review"
                  },
                  expression: {
                    a!sectionLayout(
                      contents: {
                        a!sideBySideLayout(
                          items: {
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: a!richTextIcon(
                                  icon: if(fv!index = local!activeStep, "chevron-right",
                                    if(fv!index < local!activeStep, "check",
                                    "circle-o")
                                  ),
                                  color: if(fv!index <= local!activeStep, "POSITIVE", "SECONDARY"),
                                  size: "MEDIUM"
                                )
                              )
                            ),
                            a!sideBySideItem(
                              item: a!richTextDisplayField(
                                labelPosition: "COLLAPSED",
                                value: a!richTextItem(
                                  text: fv!item,
                                  size: "MEDIUM",
                                  style: if(fv!index = local!activeStep, "STRONG", "PLAIN")
                                )
                              ),
                              width: "10X"
                            )
                          }
                        )
                      }
                    ),
                    a!sectionLayout(),
                    a!sectionLayout()
                  }
                )
              },
              style: "#fbfbfb",
              height: "AUTO"
            )
          },
          width: "MEDIUM"
        ),
        a!columnLayout(),
        a!columnLayout(
          contents: {
            a!sectionLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: "Basic Information",
                      size: "LARGE"
                    )
                  }
                )
              }
            ),
            a!sectionLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: "NAME",
                      color: "SECONDARY",
                      style: "STRONG"
                    )
                  }
                ),
                a!sideBySideLayout(
                 items: {
                   a!sideBySideItem(
                     item: a!textField(
                       label: "First Name"
                     ),
                     width: "4X"
                   ),
                   a!sideBySideItem(
                     item: a!textField(
                       label: "M.I."
                     )
                   ),
                   a!sideBySideItem(
                     item: a!textField(
                       label: "Last Name"
                     ),
                     width: "4X"
                   ),
                   a!sideBySideItem(
                     item: a!textField(
                       label: "Suffix"
                     )
                   )
                 },
                 spacing: "DENSE"
               )
             }
            ),
            a!sectionLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: "CONTACT",
                      color: "SECONDARY",
                      style: "STRONG"
                    )
                  }
                ),
                a!sideBySideLayout(
                 items: {
                   a!sideBySideItem(
                     item: a!textField(
                       label: "Email Address"
                     )
                   ),
                   a!sideBySideItem(
                     item: a!textField(
                       label: "Confirm Email Address"
                     )
                   )
                 }
                ),
                a!sideBySideLayout(
                 items: {
                   a!sideBySideItem(
                     item: a!textField(
                       label: "Telephone"
                     )
                   ),
                   a!sideBySideItem(
                     item: a!radioButtonField(
                       label: "Type",
                       choiceLabels: {"Mobile", "Home", "Office"},
                       choiceValues: {1, 2, 3},
                       value: 1,
                       choiceLayout: "COMPACT"
                     )
                   )
                 }
                )
              }
            ),
            a!sectionLayout(
              contents: {
                a!richTextDisplayField(
                  labelPosition: "COLLAPSED",
                  value: {
                    a!richTextItem(
                      text: "MAILING ADDRESS",
                      color: "SECONDARY",
                      style: "STRONG"
                    )
                  }
                ),
                a!sideBySideLayout(
                 items: {
                   a!sideBySideItem(
                     item: a!textField(
                       label: "Street Address or PO Box"
                     ),
                     width: "2X"
                   ),
                   a!sideBySideItem(
                     item: a!textField(
                       label: "Apartment or Unit #"
                     )
                   )
                 }
                ),
                a!sideBySideLayout(
                 items: {
                   a!sideBySideItem(
                     item: a!textField(
                       label: "City"
                     ),
                     width: "3X"
                   ),
                   a!sideBySideItem(
                     item: a!dropdownField(
                       label: "State",
                       placeholder: "Select State",
                       choiceLabels: {"DC", "MD", "VA"},
                       choiceValues: {1, 2, 3}
                     )
                   ),
                   a!sideBySideItem(
                     item: a!textField(
                       label: "ZIP Code"
                     ),
                     width: "2X"
                   )
                 }
                )
              }
            ),
            a!columnsLayout(
              columns: {
                a!columnLayout(
                  contents: {
                    a!buttonArrayLayout(
                      buttons: {
                        a!buttonWidget(
                          label: "Go Back",
                          size: "LARGE"
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
                          label: "Continue",
                          size: "LARGE",
                          style: "SOLID",
                          submit: true
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
        a!columnLayout()
      }
    )
  }
)
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...