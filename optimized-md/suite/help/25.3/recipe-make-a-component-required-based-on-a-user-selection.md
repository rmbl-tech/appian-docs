---
source_url: https://docs.appian.com/suite/help/25.3/recipe-make-a-component-required-based-on-a-user-selection.html
original_path: recipe-make-a-component-required-based-on-a-user-selection.html
version: "25.3"
title: "Make a Component Required Based on a User Selection"
page_id: "recipe-make-a-component-required-based-on-a-user-selection"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Make a Component Required Based on a User Selection

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

Make a paragraph component conditionally required based on the user selection.

![](images/SAIL_Recipe_Make_Component_Conditionally_Required.png)

This scenario demonstrates:

-   How to configure a _required_ parameter of one component based off the interaction of another

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
a!localVariables(
  local!isCritical,
  local!phoneNumber,
  a!formLayout(
    titleBar: "Example: Conditionally Required Field",
    contents:{
      a!columnsLayout(
        columns:{
          a!columnLayout(
            contents:{
              a!checkboxField(
                label: "Is Mission Critical",
                choiceLabels: "Check the box if the employee will be on a mission critical team",
                choiceValues: {true},
                value: local!isCritical,
                saveInto: local!isCritical
              )
            }
          ),
          a!columnLayout(
            contents:{
              a!textField(
                label: "Cell Number",
                placeholder:"555-456-7890",
                required: local!isCritical,
                value: local!phoneNumber,
                saveInto: local!phoneNumber,
                validations: if( len(local!phoneNumber) > 12, "Contains more than 12 characters. Please reenter phone number, and include only numbers and dashes", null )
              )
            }
          )
        }
      )
    },
    buttons:a!buttonLayout(
      primaryButtons:{
        a!buttonWidget(
          label:"Submit",
          submit: true
        )
      }
    )
  )
)
```

## Test it out

1.  Select the _Is Mission Critical_ checkbox. Notice that the _Cell Number_ field is required. If the checkbox is not selected but no comments are entered, the user cannot submit the form.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...