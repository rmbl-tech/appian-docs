---
source_url: https://docs.appian.com/suite/help/25.3/recipe-set-the-default-value-of-cdt-fields-based-on-a-user-input.html
original_path: recipe-set-the-default-value-of-cdt-fields-based-on-a-user-input.html
version: "25.3"
title: "Set the Default Value of CDT Fields Based on a User Input"
page_id: "recipe-set-the-default-value-of-cdt-fields-based-on-a-user-input"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Set the Default Value of CDT Fields Based on a User Input

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

Set the value of a CDT field based on a user input.

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
a!localVariables(
  local!myCdt: 'type!{http://www.appian.com/ae/types/2009}LabelValue'(),
  a!formLayout(
    titleBar: a!headerTemplateSimple(
      title: "Example: Default Value Based on User Input",
      secondaryText: "local!myCdt: " & local!myCdt
    ),
    contents: {
      a!textField(
        label: "Label",
        instructions: "Value saved: " & local!myCdt.label,
        value: local!myCdt.label,
        saveInto: {
          local!myCdt.label,
          a!save(local!myCdt.value, append(save!value, "@example.com"))
        },
        refreshAfter: "KEYPRESS"
      ),
      a!textField(
        label: "Value",
        instructions: "Value saved: " & local!myCdt.value,
        value: local!myCdt.value,
        saveInto: local!myCdt.value,
        refreshAfter: "KEYPRESS"
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: a!buttonWidget(
        label: "Submit",
        submit: true
      )
    )
  )
)
```

## Test it out

1.  Type into the first text field, and notice that the second text field is pre-populated. The instructions of the form show the value of the CDT variable.

## To write your data to process

Any Type is not a supported data type in the Process Modeler. Before creating the process model, you will need to create a CDT that matches the data structure of local!myCdt.

1.  Save your interface as sailRecipe
2.  Create rule input: myCdt (CDT)
3.  Remove the `localVariables()` function
4.  Delete local variable: `local!myCdt`
5.  In your expression, replace:
    -   `local!myCdt` with `ri!myCdt`
6.  In your process model, on the [process start form](process-model-object.html#process-start-form-tab) or [forms tab](Process_Node_and_Smart_Service_Properties.html#forms-tab) of an activity, enter the name of your interface in the search box and select it
7.  Click **Yes** when the Process Modeler asks, "Do you want to import the rule inputs?"
    -   On a task form, change the records node inputs to data type of the CDT used in the interface.
    -   On a start form, change the records process variable to data type of the CDT used in the interface.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...