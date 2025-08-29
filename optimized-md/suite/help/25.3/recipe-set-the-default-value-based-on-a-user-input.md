---
source_url: https://docs.appian.com/suite/help/25.3/recipe-set-the-default-value-based-on-a-user-input.html
original_path: recipe-set-the-default-value-based-on-a-user-input.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Set the Default Value Based on a User Input

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

Set the default value of a variable based on what the user enters in another component.

This example only applies when the default value is based on the user's input in another component. See [Set the Default Value of an Input on a Task Form](recipe-set-the-default-value-of-an-input-on-a-task-form.html) recipe when the default value must be set as soon as the form is displayed and without requiring the user to interact with the form.

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
a!localVariables(
  local!username,
  local!email,
  local!emailModified: false,
  a!formLayout(
    titleBar: "Example: Default Value Based on User Input",
    contents: {
      a!textField(
        label: "Username",
        instructions: "Value saved: " & local!username,
        value: local!username,
        saveInto: {
          local!username,
          if(local!emailModified, {}, a!save(local!email, append(save!value, "@example.com")))
        },
        refreshAfter: "KEYPRESS"
      ),
      a!textField(
        label: "Email",
        instructions: "Value saved: " & local!email,
        value: local!email,
        saveInto: {
          local!email,
          a!save(local!emailModified, true)
        }
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

1.  Type into the _Username_ field and notice that the _Email_ field is pre-populated.
2.  Type into the _Username_ field, then modify the _Email_ value, and type into the _Username_ field again. The _Email_ field is no longer pre-populated.

Notice that the value of username as well as the email address field are updated as you type. That's because the username input is configured with `refreshAfter: "KEYPRESS"`

## To write your data to process

1.  Save your interface as sailRecipe
2.  Create rule inputs: username (Text), email (Text)
3.  Delete local variables: `local!username`, `local!email`
4.  In your expression, replace:
    -   `local!username` with `ri!username`
    -   `local!email` with `ri!email`
5.  In your process model, on the [process start form](process-model-object.html#process-start-form-tab) or [forms tab](Process_Node_and_Smart_Service_Properties.html#forms-tab) of an activity, enter the name of your interface in the search box and select it
6.  Click **Yes** when the Process Modeler asks, "Do you want to import the rule inputs?"
    -   On a task form, this will create node inputs
    -   On a start form, this will create parameterized process variables

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...