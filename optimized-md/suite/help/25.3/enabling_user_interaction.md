---
source_url: https://docs.appian.com/suite/help/25.3/enabling_user_interaction.html
original_path: enabling_user_interaction.html
version: "25.3"
title: "Interface Variables and Inputs"
page_id: "enabling_user_interaction"
section: "Overview"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Interface Variables and Inputs

Share

Share via

LinkedIn

Reddit

Email

Copy Link

* * *

Print

How do I Pass Data through Appian Objects?

Watch this video to learn how data is passed between objects, as well as the difference between rule inputs, local variables, activity class parameters, and process variables.

## Overview

Some interface components allow users to interact with them. Interactions are filling out form inputs, like typing in a text field or making a choice in a dropdown. Clicking links or buttons are also interactions.

When a user interacts with an interface, the interface expression is reevaluated and the resulting interface displayed. This means the interface can dynamically respond to user interactions, such as changing the options in a dropdown based on an earlier dropdown, showing a section after a link is clicked, sorting columns in a grid, and so on.

Every interface component that supports user interaction has a parameter called `saveInto` that defines what changes to make when the user interacts with the component. The only way for a user to cause changes is through a component's `saveInto` parameter.

There are three ways to respond to user interactions with the `saveInto` parameter:

-   Save the user's input to a variable, for example, `local!name` or `ri!amountPaid`
-   Save a modified or alternative value into a variable, for example, `a!save(ri!username, lower(save!value))`
-   Execute a smart service, for example, `a!deleteDocument(document: ri!requestForm)`

This page is an overview of how to configure components when a user needs to interact with them.

## Saving input into variables

When a user interacts with a component and that component's `saveInto` parameter is configured with a [variable](parts-of-an-expression.html#variables), the component's updated value will be saved to that variable.

### Simple example

The most common way to configure a component is to set its `value` and `saveInto` to the same variable. To see how this works, click **Expression mode** ![expression mode icon](images/expression-mode-icon.svg) to copy and paste an example into the **Interface Definition**:

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
a!localVariables(
  local!name,
  a!textField(
    label: "Name",
    instructions: "Your name has " & len(local!name) & " characters",
    value: local!name,
    saveInto: local!name
  )
)
```

When the user types a name into the text field, the text they type will be saved to `local!name`. This in turn will be displayed in the text field because the same variable is passed to the `value` parameter.

Notice the `local!name` variable is used in the expression for the `instructions` parameter, as well as the `value` and `saveInto` parameters.

In the live view, type into the text field then press the tab key. Notice how the character count in the field instructions updates when you are no longer focused on the text input. This is because the expression was evaluated again and this time `local!name` had the new value.

The value of the variable configured in the `saveInto` parameter does not automatically show up as the display value of the component. The `value` input must be set separately for the change to be displayed by the component. To see what happens when this is not done, try updating that expression so that the `value` parameter is `null`:

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
a!localVariables(
  local!name,
  a!textField(
    label: "Name",
    instructions: "Your name has " & len(local!name) & " characters",
!    value: null,
    saveInto: local!name
  )
)
```

Now, when you click away from the text input, the text input becomes blank. This is because the value of the component is hard-coded to null. Notice, though, the character count was updated. That's because the variable has the correct data.

### Local variables

When a variable is defined in an expression instead of made available to the expression by the framework, it is called a [local variable](Local_Variables.html). Rule inputs, process variables, and record fields are examples of non-local variables that are provided to the expression because of where it is being evaluated.

Most local variables can be updated through a `saveInto`. However, some local variable configurations can make that variable an invalid save target. For a full list of which types of local variables can be updated through a `saveInto`, see [Configuring Refresh Behavior of Local Variables](Local_Variables.html#configuring-refresh-behavior).

### Arrays and custom data types

In addition to saving to a variable, you can save into an array at a specific index using square brackets. For example:

```
1
saveInto: local!names[10]
```

or

```
1
saveInto: local!names[local!index]
```

This is especially useful when generating components based on a list of data, such as in the [Add Multiple Text Components Dynamically recipe](recipe-add-multiple-text-components-dynamically.html).

You can also save into a field of a custom data type using the dot operator. For example:

```
1
saveInto: local!person.firstName
```

This is useful when you want to populate a custom data type via user input, since you can display an appropriate component for each field.

The dot and bracket notation can also be combined:

```
1
saveInto: local!persons.firstNames[local!index]
```

For a more extensive example, see the [Add and Populate Sections Dynamically recipe](recipe-add-and-populate-sections-dynamically.html).

**Note:**  You must use square brackets or the dot operator to index in a `saveInto` variable. You cannot use the `index()` function to save to a specific index.

### Rule inputs

When saving sections of your expression into rules, you can pass a local variable, a process variable, or a node input to the rule and save into the rule input. In such a scenario, the variable must always be passed to the rule input as is. The `saveInto` parameter will not work if the variable has been modified with a function or operator, nor will it work if something besides a valid variable is passed, like `"hello"`, `3`, or a local variable with a refresh configuration that prevents saving into the variable.

For example, let’s say you have a local variable called `local!name` and a rule that returns a Text component. In the rule definition, you want to save into `local!name`. You would create a rule input of type Text, and map it to the local variable by passing the local variable to the rule.

```
1
2
3
4
a!localVariables(
  local!name,
  returnTextField(local!name)
)
```

Where the definition of `returnTextField` is the following:

```
1
2
3
4
5
6
a!textField(
  label: "Name",
  instructions: "Your name has " & len(ri!name) & " characters",
  value: ri!name,
  saveInto: ri!name
)
```

## Saving modified or alternative values

Instead of saving the user's exact input, you can also modify the component's updated value before saving it into a variable. To do so, use the [a!save() function](fnc_evaluation_save.html). The first parameter of this function is the variable to be updated. The second parameter is the value to set. This parameter can be configured with an expression that can either modify the component's value or return an alternative value completely unrelated to that of the component. The component's new value can be accessed in the second parameter using the special variable `save!value`.

For example, if you want to remove leading and trailing spaces from the user's input before saving it, you can use the `a!save()` function along with the `trim()` function. Update your interface with the following expression:

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
a!localVariables(
  local!name,
  a!textField(
    label: "Name",
    instructions: "Your name has " & len(local!name) & " characters",
    value: local!name,
!    saveInto: a!save(local!name, trim(save!value))
  )
)
```

Enter leading and trailing spaces into the text field and click away. Notice how the character count in the instructions does not count the spaces you entered.

You can modify the user’s input with as many functions or operators as you like. For example, update your interface with the following expression:

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
a!localVariables(
  local!name,
  a!textField(
    label: "Name",
    instructions: local!name,
    value: local!name,
    saveInto: a!save(local!name, `fn!append("Hello ", trim(save!value)))`
  )
)
```

To save into multiple variables, you can pass an array containing both variables to update and `a!save()` functions. This expression saves the user's input into one variable while updating a second variable the input prefixed with `"Hello "`:

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
a!localVariables(
  local!name,
!  local!greeting,
  a!textField(
    label: "Name",
!    instructions: local!greeting,
    value: local!name,
    saveInto: {
      local!name,
!      a!save(local!greeting, append("Hello ", save!value))
    }
  )
)
```

You can also use multiple `a!save()` functions. This expression trims the user's input before saving it into the first variable, then updates the second by prefixing the first variable:

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
a!localVariables(
  local!name,
!  local!greeting,
  a!textField(
    label: "Name",
!    instructions: local!greeting,
    value: local!name,
!    saveInto: {
!      a!save(local!name, trim(save!value)),
!      a!save(local!greeting, append("Hello ", local!name))
!    }
  )
)
```

Try typing leading and trailing spaces into the field and notice how `local!greeting` is getting updated with the trimmed name, not the original user input.

The expression in the `saveInto` parameter evaluates when the user interacts with the component. Each item in the `saveInto` array evaluates one at a time. Therefore, if an a!save() parameter uses a variable that was updated higher in the list, a!save() evaluates with the variable's updated value.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...