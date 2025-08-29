---
source_url: https://docs.appian.com/suite/help/25.3/recipe-format-the-users-input.html
original_path: recipe-format-the-users-input.html
version: "25.3"
title: "Format the User's Input"
page_id: "recipe-format-the-users-input"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Format the User's Input

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

Format the user's input as a telephone number in the US and save the formatted value, not the user's input.

![](images/SAIL_Recipe_Format_Users_Input.png)

This expression uses the `text()` function to format the telephone number. You may choose to format using your own rule, so you would create the supporting rule first, and then create an interface with the main expression.

This scenario demonstrates:

-   How to configure a field to format a user's input

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
a!localVariables(
  local!telephone,
  a!textField(
    label: "Employee Telephone Number",
    instructions: "Value saved: " & local!telephone,
    value: local!telephone,
    saveInto: a!save(
      local!telephone,
      text(save!value, "###-###-####;###-###-####")
    )
  )
)
```

## Test it out

1.  Enter `1234567890` then click somewhere else on the form. Notice that the phone number is now formatted.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...