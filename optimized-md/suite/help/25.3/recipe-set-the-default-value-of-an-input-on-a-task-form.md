---
source_url: https://docs.appian.com/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-task-form.html
original_path: recipe-set-the-default-value-of-an-input-on-a-task-form.html
version: "25.3"
title: "Set the Default Value of an Input on a Task Form"
page_id: "recipe-set-the-default-value-of-an-input-on-a-task-form"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Set the Default Value of an Input on a Task Form

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

Display a default value in some form inputs on a task form, and save the value to process when submitting.

## Steps

1.  Create an interface with one rule input called title (Text).
2.  Enter the following definition for the interface, and save it as sailRecipe.
3.  In your process model, drag a User Input Task on the canvas.
4.  On the [forms tab](Process_Node_and_Smart_Service_Properties.html#forms-tab) of that activity, enter the name of your interface in the search box and select it
5.  Click **Yes** when the Process Modeler asks, "Do you want to import the rule inputs?"
    -   This will create node inputs
6.  On the Data tab, set **caseTitle** value parameter to `="My default text"`. Save the node input into a process variable.
7.  Save and publish the process model.
8.  Start a new process.

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
=a!formLayout(
  titleBar: "Example: Default Value",
  contents: {
    a!textField(
      label: "Case Title",
      value: ri!title,
      saveInto: ri!title,
      required: true
    )
  },
  buttons: a!buttonLayout(
    primaryButtons: a!buttonWidget(
      label: "Submit",
      submit: true
    )
  )
)
```

## Test it out

1.  On the task form, don't modify the value of the text field, and click the Submit button. Check the value of the process variable, and notice that it has the default value.
2.  Now modify the value of the text field, and click the Submit button. Check the value of the process variable, and notice that it has the value you entered.
3.  To see what happens when the default value is incorrectly configured, remove the default value from the node input. Then update the interface definition and set the `value` parameter of the textField component to `="Default text from the component"`. View the form and submit without modifying the text field. Notice that the corresponding process variable does not have the default value.

Watch out! A common mistake is to use load() and to configure a local variable called ri!title as follows:

```
1
2
3
4
=load(
  ri!title: "Default text",
  ...
)
```

The expression doesn't result in the intended behavior because `load()` only creates local variables. In the above example, a local variable called ri!title is created, with this default value, but its value is not saved in process. Load variables must only be used for data that are not saved back into the process.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...