---
source_url: https://docs.appian.com/suite/help/25.3/recipe-showing-validation-errors-that-arent-specific-to-one-component.html
original_path: recipe-showing-validation-errors-that-arent-specific-to-one-component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Showing Validation Errors that Aren't Specific to One Component

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

Alert the user about form problems that aren't specific to one component, showing the message only when the user clicks "Submit".

In this case, there are two fields and although neither are required, at least one of them must be filled out to submit the form.

![](images/Form_Validation_Message.png)

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
a!localVariables(
  local!phone,
  local!email,
  a!formLayout(
    titleBar: "Example: Showing Form Errors on Submission",
    contents:{
      a!textField(
        label: "Phone Number",
        value: local!phone,
        saveInto: local!phone
      ),
      a!textField(
        label: "Email Address",
        value: local!email,
        saveInto: local!email
      )
    },
    buttons: a!buttonLayout(
      primaryButtons: a!buttonWidget(
        label: "Submit",
        submit: true
      )
    ),
    /*
    * This validation occurs at the form level and is useful when the form or
    * section's validation checks are non-field specific.
    */
    validations: {
      if(
        and(isnull(local!phone), isnull(local!email)),
        a!validationMessage(
          message: "You must enter either a phone number or an email address!",
          validateAfter: "SUBMIT"
        ),
        {}
      )
    }
  )
)
```

## Test it out

1.  Leave both text fields blank and click "Submit".
    -   When testing offline, the form queues for submission but returns the validation message when you go back online and the form attempts to submit.

## Notable implementation details

-   The system function a!validationMessage() allows us to specify whether the validation message is shown right away (`REFRESH`) or when the user submits the form (`SUBMIT`). If the validation message should always be shown right away, we could just pass the message to `a!formLayout()`'s `validations` parameter as Text. To show multiple messages, we can pass a list of Text, a list of `a!validationMessage()`, or a mix of the two.
-   You can also configure `a!sectionLayout()` to show validation messages:

![](images/Section_Validation_Message.png)

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...