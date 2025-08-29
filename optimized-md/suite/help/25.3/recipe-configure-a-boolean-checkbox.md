---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-a-boolean-checkbox.html
original_path: recipe-configure-a-boolean-checkbox.html
version: "25.3"
title: "Configure a Boolean Checkbox"
page_id: "recipe-configure-a-boolean-checkbox"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure a Boolean Checkbox

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

Configure a checkbox that saves a boolean (true/false) value, and validate that the user selects the checkbox before submitting a form.

![](images/SAIL-recipes-boolean-checkbox.png)

This scenario demonstrates:

-   How to configure a checkbox field so that a single user interaction records a true or false value

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
a!localVariables(
  local!userAgreed,
  a!formLayout(
    titleBar:"Example: Configure a Boolean Checkbox",
    contents:{
      a!checkboxField(
        label: "Acknowledge",
        choiceLabels: {"I agree to the terms and conditions."},
        choiceValues: {true},
        /* If local!userAgreed is false, set the value      */
        /* to null so that the checkbox is unchecked        */
        value: if(local!userAgreed, true, null),
        /* We want to save a false value when the checkbox  */
        /* is unchecked, so we need to check whether        */
        /* save!value is null and update the variable if so */
        saveInto: a!save(
          local!userAgreed,
          if(isnull(save!value), false, true)
        ),
        required: true,
        requiredMessage: "You must check this box!"
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

1.  Click "Submit" without selecting the checkbox. Notice that the custom message shows up. Appian recommends using a custom required message when you have a single required checkbox.
2.  Select the checkbox and click "Submit".

## Notable Implementation Details

-   Unchecking the checkbox saves a value of `false`. However, the initial value of `local!userAgreed` is null, which also results in the box being unchecked. Therefore, you may need to account for values of both `false` and `null` in your interface. Alternatively, you can set the initial value of `local!userAgreed` to `false` to avoid null values entirely.
-   In this recipe, we had to modify the `value` of the component in addition to the `saveInto`. We had to do that in order to save a value of `false`, which is not a valid option in our checkbox field that only has one option. This design pattern works because both the `value` and `saveInto` parameters are set using the same variable, so the component responds to the user's interactions.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...