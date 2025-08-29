---
source_url: https://docs.appian.com/suite/help/25.3/reference-translation-strings.html
original_path: reference-translation-strings.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Reference Translation Strings in your Applications

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

## Overview

You can directly reference a [translation string](translation-set-object.html#overview) in interfaces and expressions throughout your application using the `translation!` domain. This [domain prefix](domain_prefixes.html#object-prefixes) is a direct object reference to your translation string.

You can use the `translation!` domain to reference a translation string in any parameter with user display text. It's easy to construct your translation string references, since the `translation!` domain leverages type-ahead to suggest a selection of existing translation strings from the translation sets in your environment.

And, the translation string can be referenced using whichever locale is set as your user locale, as long as the translation string has a value for that locale. For example, if your user locale is Spanish, reference the translation strings using Spanish. If a translation string doesn't have a value in your user locale, the translation string will use the primary translation locale.

### Reference a translation string

You can use the `translation!` domain to reference a translation string in any parameter that shows user display text in any expression editor in your application, except for those using [sync-time custom fields](custom-record-fields.html#prodlink-sync-time-evaluations).

Translation strings are ideal for translating the label, instruction, and tooltip parameters of input and display components. They are also great for translating links, buttons, charts, the names of process models, and more.

Translation strings are frequently used to translate interfaces, and the references can be used in both expression and design mode.

To reference an existing translation string in an interface in expression mode:

1.  If necessary, remove the existing text in the parameter that you want to add the translation string to.
2.  Enter `translation!` followed by the translation string you want to use or select it from the list of suggested existing translation strings. You can hover over the suggested translation strings to make sure you're selecting the correct string.

Follow these same steps to reference a translation string from an expression rule or any object with an expression editor.

To reference an existing translation string in an interface from design mode:

1.  Click on the component that contains the parameter that you want to add the translation string to.
2.  In the **Component Configuration** pane, click **Edit as Expression** next to the parameter name.
3.  Delete the text that you're replacing with the translation string.
4.  Enter `translation!` followed by the translation string you want to use or select it from the list of suggested existing translation strings. You can hover over the suggested translation strings to make sure you're selecting the correct string.
5.  Click **OK**.

**Tip:**  If you are unable to reference a specific translation string, make sure that you have **Viewer** permission to the translation set.

### Referencing translation variables

[Translation variables](translation-set-object.html#adding-and-editing-translation-variables) are variables in a translation string that represent dynamic values, such as the value of a function, rule input, or variable. Translation variables can also be used to format parts of a translation string with rich text formatting. Similarly to functions, parameters, and rules, translation variables use keyword syntax and you can pass in arguments for the translation variables into the translation strings using parentheses.

Referencing a translation string that contains a translation variable is as easy as following the [instructions above for referencing a translation string](#reference-a-translation-string) and adding values for the translation variable's value like you would for the parameters in any function.

To reference translation variables in an expression:

1.  Enter `translation!` followed by the translation string you want to use or select it from the list of suggested existing translation strings.
2.  In the parentheses, enter the names of each translation variable followed by a colon `:` on separate lines, like you would for parameters in a function.
3.  For each translation variable in the translation string, enter the function, variable, or rule input that you want to use for the value of the translation variable. You can also add rich text formatting to format translation variables.

The example below shows how to use both functions and rich text formatting with translation variables.

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
{
  a!richTextDisplayField(
    value: translation!Case submitted on {date} and last modified by {name}(
      date: today(),
      name: a!richTextItem(
        text: loggedInUser(),
        style: "STRONG"
      )
    )
  )
}
```

_Translation string references are specific to each environment. This example is for reference only and will not work if you copy and paste it into your environment._

To learn more about creating and editing translation variables, see [Adding and editing translation variables](translation-set-object.html#adding-and-editing-translation-variables).

Translation variables cannot contain direct object references to record types, but you can use rule inputs and translation variables to reference record data. For examples of how to use record data in your translation variable, see [Using translation variables](translation-set-object.html#example-using-record-data-with-translation-strings).

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...