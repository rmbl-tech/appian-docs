---
source_url: https://docs.appian.com/suite/help/25.3/recipe-define-a-simple-currency-component.html
original_path: recipe-define-a-simple-currency-component.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Define a Simple Currency Component

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

Show a text field that allows the user to enter dollar amounts including the dollar symbol and thousand separators, but save the value as a decimal rather than text. Additionally, always show the dollar amount with the dollar symbol.

![](images/SAIL_Recipe_Define_Currency_Component.png)

This scenario demonstrates:

-   How to configure an interface component to format a user's input

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
a!localVariables(
  local!amount,
  a!textField(
    label:"Amount in Text",
    /* Instructions  show the saved datatype*/
    instructions: "Type of local!amount: " & typename(typeof(local!amount)),
    value: a!currency(
      isoCode: "USD",
      value: local!amount,
      format: "SYMBOL"
    ),
    /* Instead of saving the value as text, a!save() is used to store to the desired datatype*/
    saveInto: a!save(local!amount, todecimal(save!value))
  )
)
```

## Test it out

Each of the following examples assumes you have the Locale set to English (US) in your user settings. Try changing your user locale to see how the currency formatting changes.

1.  Enter `$12345` and click away from the field. Notice that the text box shows $12,345.00 and that the saved value is a decimal.
2.  Enter `$12,345.23` and click away from the field.
3.  Enter `a1b2c3` and click away. Notice that the text box removes the non-numeric characters and treats the remaining as a decimal value. A true currency component would catch this as an error case, hence why this is called a simple currency example.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...