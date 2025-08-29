---
source_url: https://docs.appian.com/suite/help/25.3/recipe-set-the-default-value-of-an-input-on-a-start-form.html
original_path: recipe-set-the-default-value-of-an-input-on-a-start-form.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Set the Default Value of an Input on a Start Form

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

Display a default value in some form inputs on a start form, and save the value into the process when submitting.

## Steps

1.  Create an interface with one rule input called title (Text) and another one called date (Date).
2.  Enter the following definition for the interface, and save it as sailRecipe.
3.  In your process model, on the process start form enter the name of your interface in the search box and select it
4.  Click **Yes** when the Process Modeler asks, "Do you want to import the rule inputs?"
    -   This will create parameterized process variables
5.  On the Variables Tab, give the process variables the following values:
    -   caseTitle (Text): `="My default text"`
    -   date (Date): `=today()`
6.  Save and publish the process model.
7.  To view the start form in Tempo, add the process model to an application and configure it as an action. Don't forget to publish your application.

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
=a!formLayout(
  titleBar: "Example: Default Value",
  contents: {
    a!textField(
      label: "Case Title",
      value: ri!title,
      saveInto: ri!title,
      required: true
    ),
    a!dateField(
      label: "Date",
      value: ri!date,
      saveInto: ri!date,
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

1.  On the start form, don't modify the value of either field, and click the Submit button. Check the value of the process variables, and notice that they have the default value.
2.  Now modify the value of the text and date fields, and click the Submit button. Check the value of the process variables, and notice that they have the values you entered.
    -   If you do not see the value you entered, make sure that you selected the Parameter checkbox when you created the process variable.
3.  To see what happens when the default value is incorrectly configured, remove the default value from the process variable definition. Then update the expression and set the `value` parameter of the text component to `="Default text from the component"`. View the form and submit without modifying the text field. Notice that the corresponding process variable does not have the default value.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...