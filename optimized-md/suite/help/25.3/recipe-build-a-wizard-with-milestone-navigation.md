---
source_url: https://docs.appian.com/suite/help/25.3/recipe-build-a-wizard-with-milestone-navigation.html
original_path: recipe-build-a-wizard-with-milestone-navigation.html
version: "25.3"
title: "Build a Wizard with Milestone Navigation"
page_id: "recipe-build-a-wizard-with-milestone-navigation"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Build a Wizard with Milestone Navigation

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

Create a wizard that divides a form into validated steps and uses the milestone component to display progress.

![](images/SAIL-recipe-milestone-wizard.png)

Wizards help break large forms into smaller, manageable steps, allowing users to move back and forth without losing data.

In this example, users navigate steps with milestone links or Next/Back buttons. All fields must be completed to progress, but users can revisit previous steps even if they have incomplete fields on their current step. The final step shows a read-only confirmation of their entries.

This scenario demonstrates:

-   Creating a wizard using the _showWhen_ parameter.
-   Conditionally setting _readOnly_ and _required_ parameters.
-   Using a milestone field to display the current step of the wizard.

**Tip:**  Follow this pattern to learn how to manually increment wizard steps. To accelerate development when building a wizard, [use a!wizardLayout()](Wizard_Layout.html).

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
a!localVariables(
  local!employee: a!map(firstName: null,  lastName: null, department: null,  title: null, phoneNumber: null, startDate: null),
  local!activeStep: 1,
  local!steps: {"Basic Info", "Additional Info", "Review"},
  a!formLayout(
    titleBar: "Example: Onboarding Wizard",
    contents: {
      a!columnsLayout(
        columns: {
          a!columnLayout(
            contents: {
              a!milestoneField(
                steps: local!steps,
                links: {
                  a!forEach(
                    items: local!steps,
                    expression: if(
                      /* This logic ensures the link appears only for previous steps. */
                      fv!index < local!activeStep,
                      a!dynamicLink(
                        label: fv!item,
                        value: fv!index,
                        saveInto: local!activeStep
                      ),
                      null
                    )
                  )
                },
                active: local!activeStep,
                /* Choose a different step style to easily change the appearance of the milestone */
                stepStyle: "DOT",
                orientation: if(
                  a!isPageWidth(pageWidths: { "PHONE" }),
                  "HORIZONTAL",
                  "VERTICAL"
                ),
                marginAbove: "STANDARD",
                marginBelow: "MORE"
              )
            },
            width: "NARROW"
          ),
          a!columnLayout(
            contents: {
              a!sectionLayout(
                label: if(
                  /* This logic hides the step name at the top of the form on PHONE widths
                  since the step label is already displayed at the top when the screen is narrow */
                  a!isPageWidth(pageWidths: { "PHONE" }),
                  "",
                  /* This uses local!activeStep as the index of local!steps to display the name of the current step */
                  local!steps[local!activeStep]
                ),
                labelSize: "MEDIUM",
                labelColor: "STANDARD",
                contents: {
                  a!sideBySideLayout(
                    items: {
                      a!sideBySideItem(
                        item: a!textField(
                          label: "First Name",
                          value: local!employee.firstName,
                          saveInto: local!employee.firstName,
                          showWhen: or(local!activeStep = { 1, 3 }),
                          required: not(local!activeStep = 3),
                          readOnly: local!activeStep = 3,
                          marginAbove: "STANDARD"
                        )
                      ),
                      a!sideBySideItem(
                        item: a!textField(
                          label: "Last Name",
                          value: local!employee.lastName,
                          saveInto: local!employee.lastName,
                          showWhen: or(local!activeStep = { 1, 3 }),
                          required: not(local!activeStep = 3),
                          readOnly: local!activeStep = 3,
                          marginAbove: "STANDARD"
                        )
                      )
                    }
                  ),
                  a!textField(
                    label: "Department",
                    value: local!employee.department,
                    saveInto: local!employee.department,
                    showWhen: or(local!activeStep = { 1, 3 }),
                    required: not(local!activeStep = 3),
                    readOnly: local!activeStep = 3,
                    marginAbove: "STANDARD"
                  ),
                  a!textField(
                    label: "Title",
                    value: local!employee.title,
                    saveInto: local!employee.title,
                    showWhen: or(local!activeStep = { 1, 3 }),
                    required: not(local!activeStep = 3),
                    readOnly: local!activeStep = 3,
                    marginAbove: "STANDARD"
                  ),
                  a!textField(
                    label: "Phone Number",
                    value: local!employee.phoneNumber,
                    saveInto: local!employee.phoneNumber,
                    showWhen: or(local!activeStep = { 2, 3 }),
                    required: not(local!activeStep = 3),
                    readOnly: local!activeStep = 3,
                    marginAbove: "STANDARD"
                  ),
                  a!dateField(
                    label: "Start Date",
                    value: local!employee.startDate,
                    saveInto: local!employee.startDate,
                    showWhen: or(local!activeStep = { 2, 3 }),
                    required: not(local!activeStep = 3),
                    readOnly: local!activeStep = 3,
                    marginAbove: "STANDARD"
                  )
                },
                marginAbove: "STANDARD"
              )
            },
            width: "MEDIUM_PLUS"
          )
        },
        marginBelow: "STANDARD",
        stackWhen: { "PHONE" }
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: {
        a!buttonWidget(
          label: "Next",
          value: local!activeStep + 1,
          saveInto: local!activeStep,
          style: "SOLID",
          showWhen: or(local!activeStep = { 1, 2 }),
          validate: true
        ),
        a!buttonWidget(
          label: "Onboard Employee",
          submit: true,
          style: "SOLID",
          showWhen: local!activeStep = 3
        )
      },
      secondaryButtons: {
        a!buttonWidget(
          label: "Back",
          value: local!activeStep - 1,
          saveInto: local!activeStep,
          showWhen: or(local!activeStep = { 2, 3 })
        )
      }
    ),
    formWidth: "MEDIUM"
  )
)
```

## Test it out

1.  Copy and paste the expression into an interface object.
2.  Click **Next** without entering a value in any of the fields. The validation prevents you from moving to the next step.
3.  Enter values for all the fields, and click **Next**. The milestone progress moves to the next step.
4.  Enter values for all the fields in the next step, and click **Next**. The milestone field progresses to the final step and all values appear as read-only data.

## Notable implementation details

-   The _labelPosition_, _showWhen_, _required_, and _readOnly_ parameters are conditionally set based on the value of `local!activeStep`.
-   The "Back" and "Next" buttons update the value of `local!activeStep`.
-   The "Next" button enforces validation (`validate: true`) to ensure all fields are completed before advancing.
-   The "Back" button skips validation, allowing users to navigate to previous steps even if the current step has incomplete or invalid fields.
-   The milestone component uses links to allow users to navigate to a step by clicking on it. Users can only click on previous steps.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...