---
source_url: https://docs.appian.com/suite/help/25.3/form-steps-pattern.html
original_path: form-steps-pattern.html
version: "25.3"
title: "Form Steps"
page_id: "form-steps-pattern"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Form Steps

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

Use the form steps patten to break down complicated forms into a series of quickly completed steps that are well organized and easy to navigate. This pattern uses a combination of cards and rich text to create steps that can represent fields from one or more interfaces. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![screenshot of the form steps pattern](images/patterns/form_steps_pattern.png)

## Design structure

This page will break down this expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

The main components in this pattern are card layouts, side by side layouts, and rich text. The image below displays how the pattern looks on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the form steps pattern highlighting that there are stamp and rich text display components within a columns layout](images/patterns/form_steps_pattern_details.png)

### Pattern expression

When you drag and drop the form steps pattern onto your interface, 179 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!formSteps: {
      "Confirm flight details",
      "Select flight preferences",
      "Enter passenger information",
      "Choose payment plan"
    },
    local!currentFormStep: 3,
    a!forEach(
      items: local!formSteps,
      expression: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: a!stampField(
                icon: if(
                  fv!index < local!currentFormStep,
                  "check",
                  null
                ),
                text: if(
                  fv!index >= local!currentFormStep,
                  fv!index,
                  null
                ),
                backgroundColor: if(
                  fv!index < local!currentFormStep,
                  "POSITIVE",
                  if(
                    fv!index > local!currentFormStep,
                    "#949494",
                    "ACCENT"
                  )
                ),
                contentColor: if(
                  fv!index > local!currentFormStep,
                  "#ffffff",
                  null
                ),
                size: "TINY"
              ),
              width: "EXTRA_NARROW"
            ),
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  value: a!richTextItem(
                    text: fv!item,
                    link: a!dynamicLink(
                      value: fv!index,
                      saveInto: local!currentFormStep,
                      showWhen: fv!index < local!currentFormStep
                    ),
                    linkStyle: "STANDALONE",
                    color: if(
                      fv!index > local!currentFormStep,
                      "SECONDARY",
                      "ACCENT"
                    ),
                    size: "MEDIUM",
                    style: if(
                      fv!index = local!currentFormStep,
                      "STRONG",
                      "PLAIN"
                    )
                  ),
                  align: "LEFT"
                )
              }
            )
          },
          alignVertical: "MIDDLE",
          marginBelow: if(
            fv!index = local!currentFormStep,
            "NONE",
            "STANDARD"
          ),
          spacing: "NONE",
          stackWhen: "NEVER"
        ),
        a!columnsLayout(
          columns: {
            a!columnLayout(width: "EXTRA_NARROW"),
            a!columnLayout(
              contents: a!sectionLayout(
                contents: {
                  a!richTextDisplayField(),
                  choose(
                    local!currentFormStep,
                    {
                      /* Replace this rich text with the component or rule that should populate this step */
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: "The contents of the first step belong here",
                            style: "EMPHASIS"
                          )
                        },
                        align: "LEFT"
                      )
                    },
                    {
                      /* Replace this rich text with the component or rule that should populate this step */
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: "The contents of the second step belong here",
                            style: "EMPHASIS"
                          )
                        },
                        align: "LEFT"
                      )
                    },
                    a!localVariables(
                      local!passengerName,
                      local!passengerPhoneNumber,
                      local!passengerEmail,
                      {
                        /* Replace these inputs with the component or rule that should populate this step */
                        a!textField(
                          label: "Name",
                          value: local!passengerName,
                          saveInto: local!passengerName,
                          inputPurpose: "NAME"
                        ),
                        a!textField(
                          label: "Email",
                          value: local!passengerEmail,
                          saveInto: local!passengerEmail,
                          inputPurpose: "EMAIL"
                        ),
                        a!textField(
                          label: "Phone Number",
                          value: local!passengerPhoneNumber,
                          saveInto: local!passengerPhoneNumber,
                          inputPurpose: "PHONE_NUMBER"
                        )
                      }
                    ),
                    {
                      /* Replace this rich text with the component or rule that should populate this step */
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: "The contents of the fourth step belong here",
                            style: "EMPHASIS"
                          )
                        },
                        align: "LEFT"
                      )
                    }
                  ),
                  a!buttonArrayLayout(
                    buttons: a!buttonWidget(
                      label: "Continue",
                      value: local!currentFormStep + 1,
                      saveInto: local!currentFormStep,
                      style: "SOLID"
                    ),
                    align: "START",
                    marginBelow: "NONE"
                  )
                }
              ),
              width: "MEDIUM"
            )
          },
          alignVertical: "TOP",
          showWhen: local!currentFormStep = fv!index,
          spacing: "NONE"
        )
      }
    )
  )
}
```

### \[Line 1-9\] Define local variables

The local variables at the top of the expression are used to define the step titles and determine which step the user is currently on.

```sail
1
2
3
4
5
6
7
8
9
{
  a!localVariables(
    local!formSteps: {
      "Confirm flight details",
      "Select flight preferences",
      "Enter passenger information",
      "Choose payment plan"
    },
    local!currentFormStep: 2,
```

### \[Line 10-81\] Display current step

This section begins the [a!forEach()](fnc_looping_a_foreach.html) function that makes up the majority of the expression. Within the `a!forEach()` function there are columns layouts, stamps, and rich text displaycomponents working with `if()` statements to define the behavior of the completed, current, and future steps.

By default, this pattern shows you on step two. This is so that we can see the behavior of all three step states; completed, current, and future. The `if()` statements change the color and icon of the stamp and the boldness of the step title depending on the state of that step. The `a!forEach()` function loops through these `if()` statements for each step in the form.

```sail
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
         a!forEach(
      items: local!formSteps,
      expression: {
        a!columnsLayout(
          columns: {
            a!columnLayout(
              contents: a!stampField(
                icon: if(
                  fv!index < local!currentFormStep,
                  "check",
                  null
                ),
                text: if(
                  fv!index >= local!currentFormStep,
                  fv!index,
                  null
                ),
                backgroundColor: if(
                  fv!index < local!currentFormStep,
                  "POSITIVE",
                  if(
                    fv!index > local!currentFormStep,
                    "#949494",
                    "ACCENT"
                  )
                ),
                contentColor: if(
                  fv!index > local!currentFormStep,
                  "#ffffff",
                  null
                ),
                size: "TINY"
              ),
              width: "EXTRA_NARROW"
            ),
            a!columnLayout(
              contents: {
                a!richTextDisplayField(
                  value: a!richTextItem(
                    text: fv!item,
                    link: a!dynamicLink(
                      value: fv!index,
                      saveInto: local!currentFormStep,
                      showWhen: fv!index < local!currentFormStep
                    ),
                    linkStyle: "STANDALONE",
                    color: if(
                      fv!index > local!currentFormStep,
                      "SECONDARY",
                      "ACCENT"
                    ),
                    size: "MEDIUM",
                    style: if(
                      fv!index = local!currentFormStep,
                      "STRONG",
                      "PLAIN"
                    )
                  ),
                  align: "LEFT"
                )
              }
            )
          },
          alignVertical: "MIDDLE",
          marginBelow: if(
            fv!index = local!currentFormStep,
            "NONE",
            "STANDARD"
          ),
          spacing: "NONE",
          stackWhen: "NEVER"
        ),
```

### \[Line 82-179\] Configure the content for each step

This section defines the display for the current step. Here, the displays for what each step will show when it is selected as the current step is defined between `{}`; (step one, lines `91-103`), (step two, lines `104-116`), (step three, lines `117-142`), and (step four, lines `143-155`). Click the **CONTINUE** button to move through the steps to see what each displays when it's selected as the current step.

To modify this pattern to work with your own interface, replace the content in the brackets for each step with the interface rule or components that you want to display.

In this section you can also see that this pattern uses the _input purpose_ parameter ( lines `127`, `133`, and `139`) to suggest data that your browser has previously saved as values for the name, email, and phone number text fields. This feature streamlines the user experience on forms with common used fields and helps them to move through steps quickly.

```sail
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
           a!columnsLayout(
          columns: {
            a!columnLayout(width: "EXTRA_NARROW"),
            a!columnLayout(
              contents: a!sectionLayout(
                contents: {
                  a!richTextDisplayField(),
                  choose(
                    local!currentFormStep,
                    {
                      /* Replace this rich text with the component or rule that should populate this step */
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: "The contents of the first step belong here",
                            style: "EMPHASIS"
                          )
                        },
                        align: "LEFT"
                      )
                    },
                    {
                      /* Replace this rich text with the component or rule that should populate this step */
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: "The contents of the second step belong here",
                            style: "EMPHASIS"
                          )
                        },
                        align: "LEFT"
                      )
                    },
                    a!localVariables(
                      local!passengerName,
                      local!passengerPhoneNumber,
                      local!passengerEmail,
                      {
                        /* Replace these inputs with the component or rule that should populate this step */
                        a!textField(
                          label: "Name",
                          value: local!passengerName,
                          saveInto: local!passengerName,
                          inputPurpose: "NAME"
                        ),
                        a!textField(
                          label: "Email",
                          value: local!passengerEmail,
                          saveInto: local!passengerEmail,
                          inputPurpose: "EMAIL"
                        ),
                        a!textField(
                          label: "Phone Number",
                          value: local!passengerPhoneNumber,
                          saveInto: local!passengerPhoneNumber,
                          inputPurpose: "PHONE_NUMBER"
                        )
                      }
                    ),
                    {
                      /* Replace this rich text with the component or rule that should populate this step */
                      a!richTextDisplayField(
                        labelPosition: "COLLAPSED",
                        value: {
                          a!richTextItem(
                            text: "The contents of the fourth step belong here",
                            style: "EMPHASIS"
                          )
                        },
                        align: "LEFT"
                      )
                    }
                  ),
                  a!buttonArrayLayout(
                    buttons: a!buttonWidget(
                      label: "Continue",
                      value: local!currentFormStep + 1,
                      saveInto: local!currentFormStep,
                      style: "SOLID"
                    ),
                    align: "START",
                    marginBelow: "NONE"
                  )
                }
              ),
              width: "MEDIUM"
            )
          },
          alignVertical: "TOP",
          showWhen: local!currentFormStep = fv!index,
          spacing: "NONE"
        )
      }
    )
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...