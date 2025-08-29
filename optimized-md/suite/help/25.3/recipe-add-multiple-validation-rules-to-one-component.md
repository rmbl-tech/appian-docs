---
source_url: https://docs.appian.com/suite/help/25.3/recipe-add-multiple-validation-rules-to-one-component.html
original_path: recipe-add-multiple-validation-rules-to-one-component.html
version: "25.3"
title: "Add Multiple Validation Rules to One Component"
page_id: "recipe-add-multiple-validation-rules-to-one-component"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Add Multiple Validation Rules to One Component

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

Enforce that the user enters at least a certain number of characters in their text field, and also enforce that it contains the "@" character.

This scenario demonstrates:

-   How to configure multiple validations for a single component

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
a!localVariables(
  local!varA,
  a!formLayout(
    titleBar: "Example: Multiple Validation Rules on One Component",
    contents:{
      a!textField(
        label: "Text",
        instructions: "Enter at least 5 characters, and include the @ character",
        value: local!varA,
        saveInto: local!varA,
        validations: {
          if(len(local!varA)>=5, null, "Enter at least 5 characters"),
          if(isnull(local!varA), null, if(find("@", local!varA)<>0, null, "You need an @ character!"))
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

1.  Type fewer than 5 characters and click "Submit".
    -   When testing offline, the form queues for submission but returns the validation messages when you go back online and the form attempts to submit.
2.  Type more than 5 characters but no "@" and click "Submit".
    -   When testing offline, the form queues for submission but returns the validation messages when you go back online and the form attempts to submit.
3.  Type more than 5 characters and include "@" and click "Submit".

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...