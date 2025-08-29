---
source_url: https://docs.appian.com/suite/help/25.3/inline-survey-pattern.html
original_path: inline-survey-pattern.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Inline Survey

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

Use this pattern to create a clean and easy to navigate survey. This page explains how you can use this pattern in your interface, and walks through the design structure in detail.

![screenshot of the inline survey pattern](images/patterns/inline_survey.png)

## Design structure

This page will break down the expression so you can better understand how to [adapt this pattern to your own data](Adapt_a_SAIL_Recipe_to_Work_with_My_Applications.html) so that it works to best suit your needs.

The main components in this pattern are radio buttons, checkboxes, paragraph fields, and buttons. The image below displays how all three pages of the survey look on a blank interface with callouts for the main components. You can examine the entire expression or jump down to the subsections below with referenced line numbers to see a detailed breakdown of the main components.

![screenshot of the inline survey pattern showing all three survey pages with callouts highlighting the radio buttons and checkboxes using the Cards style.](images/patterns/inline_survey_highlights.png)

### Pattern expression

When you drag and drop the inline survey pattern onto your interface, 158 lines of expressions will be added to the section where you dragged it.

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
{
  a!localVariables(
    local!currentSurveyPage: 1,
    local!totalSurveyPages: 3,
    local!satisfaction: 1,
    local!favoriteFeatures,
    local!feedback,
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!cardLayout(
                contents: {
                  a!richTextDisplayField(
                    value: a!richTextHeader(
                      text: "Feedback Survey"
                    )
                  ),
                  /* Visual indicator to show the current survey page */
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: a!forEach(
                      items: enumerate(local!totalSurveyPages),
                      expression: {
                        a!richTextIcon(
                          icon: "circle",
                          color: if(
                            fv!index = local!currentSurveyPage,
                            "ACCENT",
                            "SECONDARY"
                          )
                        ),
                        "  "
                      }
                    ),
                    accessibilityText: "Page" & " " & local!currentSurveyPage & " " & "of" & " " & local!totalSurveyPages
                  ),
                  choose(
                    local!currentSurveyPage,
                    /* Page 1 */
                    {
                      a!radioButtonField(
                        label: "How satisfied are you with our product?",
                        choiceLabels: {
                          "Satisfied",
                          "Neither satisfied nor dissatisfied",
                          "Dissatisfied",
                          "Prefer not to answer"
                        },
                        choiceValues: {1, 2, 3, 4},
                        value: local!satisfaction,
                        saveInto: local!satisfaction,
                        choiceStyle: "CARDS"
                      )
                    },
                    /* Page 2 */
                    {
                      a!checkboxField(
                        label: "Which are your favorite features?",
                        choiceLabels: {
                          "Viewing trends on the Analytics Dashboard",
                          "Customizing my interfaces and reports",
                          "Messaging/collaborating with other users",
                          "Other/My favorite feature is not listed"
                        },
                        choiceValues: {1, 2, 3, 4},
                        value: local!favoriteFeatures,
                        saveInto: local!favoriteFeatures,
                        choiceStyle: "CARDS"
                      )
                    },
                    /* Page 3 */
                    {
                      a!paragraphField(
                        label: "Any other feedback?",
                        placeholder: "The next feature I want is...",
                        value: local!feedback,
                        saveInto: local!feedback,
                        characterLimit: 255,
                        height: "TALL"
                      )
                    }
                  ),
                  a!buttonLayout(
                    primaryButtons: {
                      a!buttonWidget(
                        label: "Next",
                        value: local!currentSurveyPage + 1,
                        saveInto: local!currentSurveyPage,
                        width: "FILL",
                        style: "SOLID",
                        showWhen: local!currentSurveyPage < local!totalSurveyPages
                      ),
                      a!buttonWidget(
                        label: "Submit",
                        submit: true,
                        width: "FILL",
                        style: "SOLID",
                        showWhen: local!currentSurveyPage = local!totalSurveyPages
                      )
                    },
                    secondaryButtons: {
                      a!buttonWidget(
                        label: "Back",
                        value: local!currentSurveyPage - 1,
                        saveInto: local!currentSurveyPage,
                        width: "FILL",
                        showWhen: local!currentSurveyPage > 1
                      ),
                      /* On the first page of the survey , *
                       * show the Skip Survey button      *
                       * inline with the Next button      */
                      a!buttonWidget(
                        label: "Skip Survey",
                        width: "FILL",
                        style: if(
                          local!currentSurveyPage > 1,
                          "LINK",
                          "OUTLINE"
                        ),
                        showWhen: or(
                          local!currentSurveyPage = 1,
                          a!isPageWidth("PHONE")
                        )
                      )
                    }
                  ),
                  /* After the first page of the survey, *
                   * show the Skip Survey button         *
                   * below the Back and Next buttons     */
                  a!buttonArrayLayout(
                    buttons: {
                      a!buttonWidget(
                        label: "Skip Survey",
                        width: "FILL",
                        style: "LINK"
                      )
                    },
                    showWhen: and(
                      local!currentSurveyPage > 1,
                      not(a!isPageWidth("PHONE"))
                    ),
                    align: "CENTER",
                    marginBelow: "NONE"
                  )
                },
                padding: "STANDARD",
                showShadow: true
              )
            },
            width: "MEDIUM"
          )
        }
      )
    }
  )
}
```

### \[Line 1-7\] Define local variables

The local variables at the top of the expression are used to store the current page that the user is on, the number of pages in the survey, and the survey results, as well as provide a default selection for the radio buttons on the first page.

```sail
1
2
3
4
5
6
7
{
  a!localVariables(
    local!currentSurveyPage: 1,
    local!totalSurveyPages: 3,
    local!satisfaction: 1,
    local!favoriteFeatures,
    local!feedback,
```

### \[Line 8-56\] Define the first survey page

This first section contains columns and card layouts, rich text display components, and radio buttons. The first few lines open up the columns and card layouts that give structure to the survey.

Then, two rich text display components are used to create the survey title and the page indicator icons. The page indicator icons \[lines 21-38\] are created using three circle icons that change color to indicate the page that you're on. The color change is defined using an [if()](fnc_logical_if.html) statement.

The last part of this section opens up the [choose() function](fnc_logical_choose.html) and defines the first survey page. The `choose()` function determines which page of the survey to show based on the value that is currently stored in `local!currentSurveyPage`.

The first survey page asks users "How satisfied are you with our product?" and provides a group of radio buttons in the `"CARDS"` style to give the user response options. You can use the `"CARDS"` style for radio buttons or checkboxes to give your choices more visual prominence and your users a larger click target.

```sail
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
    {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!cardLayout(
                contents: {
                  a!richTextDisplayField(
                    value: a!richTextHeader(
                      text: "Feedback Survey"
                    )
                  ),
                  /* Visual indicator to show the current survey page */
                  a!richTextDisplayField(
                    labelPosition: "COLLAPSED",
                    value: a!forEach(
                      items: enumerate(local!totalSurveyPages),
                      expression: {
                        a!richTextIcon(
                          icon: "circle",
                          color: if(
                            fv!index = local!currentSurveyPage,
                            "ACCENT",
                            "SECONDARY"
                          )
                        ),
                        "  "
                      }
                    ),
                    accessibilityText: "Page" & " " & local!currentSurveyPage & " " & "of" & " " & local!totalSurveyPages
                  ),
                  choose(
                    local!currentSurveyPage,
                    /* Page 1 */
                    {
                      a!radioButtonField(
                        label: "How satisfied are you with our product?",
                        choiceLabels: {
                          "Satisfied",
                          "Neither satisfied nor dissatisfied",
                          "Dissatisfied",
                          "Prefer not to answer"
                        },
                        choiceValues: {1, 2, 3, 4},
                        value: local!satisfaction,
                        saveInto: local!satisfaction,
                        choiceStyle: "CARDS"
                      )
                    },
```

### \[Line 57-84\] Define the second and third survey pages

The second page of the survey asks users "Which are your favorite features?" and provides a list of checkboxes in the `"CARDS"` style to give the user response options. Checkboxes are used here instead of radio buttons so that users are able to select multiple features.

The third page of the survey asks users to provide additional feedback and provides a paragraph field with a 255 character limit \[line 80\] for them to leave a brief response.

```sail
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
                    /* Page 2 */
                    {
                      a!checkboxField(
                        label: "Which are your favorite features?",
                        choiceLabels: {
                          "Viewing trends on the Analytics Dashboard",
                          "Customizing my interfaces and reports",
                          "Messaging/collaborating with other users",
                          "Other/My favorite feature is not listed"
                        },
                        choiceValues: {1, 2, 3, 4},
                        value: local!favoriteFeatures,
                        saveInto: local!favoriteFeatures,
                        choiceStyle: "CARDS"
                      )
                    },
                    /* Page 3 */
                    {
                      a!paragraphField(
                        label: "Any other feedback?",
                        placeholder: "The next feature I want is...",
                        value: local!feedback,
                        saveInto: local!feedback,
                        characterLimit: 255,
                        height: "TALL"
                      )
                    }
                  ),
```

### \[Line 85-158\] Configure page navigation buttons

The last section configures the buttons used to navigate through the survey. Different buttons in different styles appear depending on the page that you're on.

On the first page, there is a "Skip Survey" button using the `"OUTLINE"` style and a "Next" button using the `"SOLID"` style.

On the second page, there are "Back", "Next", and "Skip Survey" buttons. Here, the "Back" button is using the `"OUTLINE"` style and is in the place where "Skip Survey" was on the first page. The "Skip Survey" button has moved beneath the "Back" and "Next" buttons and is now using the `"LINK"` style. To configure the style and placement of the "Skip Survey" button, the expression uses two different button components that conditionally appear based on the current page.

On the third page, there are "Back", "Submit", and "Skip Survey" buttons. The placement and style of these buttons are the same as the previous page, but the "Next" button is now replaced by a "Submit" button.

Whether or not these buttons are shown on each page is defined in the _showWhen_ parameter \[lines 93, 100, 109 and 122\].

For information on when to use different button styles, see these [buttons best practices](sail/ux-buttons.html).

```sail
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
                  a!buttonLayout(
                    primaryButtons: {
                      a!buttonWidget(
                        label: "Next",
                        value: local!currentSurveyPage + 1,
                        saveInto: local!currentSurveyPage,
                        width: "FILL",
                        style: "SOLID",
                        showWhen: local!currentSurveyPage < local!totalSurveyPages
                      ),
                      a!buttonWidget(
                        label: "Submit",
                        submit: true,
                        width: "FILL",
                        style: "SOLID",
                        showWhen: local!currentSurveyPage = local!totalSurveyPages
                      )
                    },
                    secondaryButtons: {
                      a!buttonWidget(
                        label: "Back",
                        value: local!currentSurveyPage - 1,
                        saveInto: local!currentSurveyPage,
                        width: "FILL",
                        showWhen: local!currentSurveyPage > 1
                      ),
                      /* On the first page of the survey , *
                       * show the Skip Survey button      *
                       * inline with the Next button      */
                      a!buttonWidget(
                        label: "Skip Survey",
                        width: "FILL",
                        style: if(
                          local!currentSurveyPage > 1,
                          "LINK",
                          "OUTLINE"
                        ),
                        showWhen: or(
                          local!currentSurveyPage = 1,
                          a!isPageWidth("PHONE")
                        )
                      )
                    }
                  ),
                  /* After the first page of the survey, *
                   * show the Skip Survey button         *
                   * below the Back and Next buttons     */
                  a!buttonArrayLayout(
                    buttons: {
                      a!buttonWidget(
                        label: "Skip Survey",
                        width: "FILL",
                        style: "LINK"
                      )
                    },
                    showWhen: and(
                      local!currentSurveyPage > 1,
                      not(a!isPageWidth("PHONE"))
                    ),
                    align: "CENTER",
                    marginBelow: "NONE"
                  )
                },
                padding: "STANDARD",
                showShadow: true
              )
            },
            width: "MEDIUM"
          )
        }
      )
    }
  )
}
```

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...