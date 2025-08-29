---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-a-dropdown-field-to-save-a-cdt.html
original_path: recipe-configure-a-dropdown-field-to-save-a-cdt.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure a Dropdown Field to Save a CDT

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

When using a dropdown to select values from the database, or generally from an array of CDT values, configure it to save the entire CDT value rather than just a single field.

![](images/SAIL-recipe-dropdown-to-CDT.png)

This scenario demonstrates:

-   How to configure a dropdown component to save a CDT value

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
a!localVariables(
  local!foodTypes: {
    a!map( id: 1, name: "Fruits" ),
    a!map( id: 2, name: "Vegetables" )
  },
  local!selectedFoodType,
  a!formLayout(
    titleBar: "Example: Dropdown with CDT",
    contents: {
      a!dropdownField(
        label: "Food Type",
        instructions: "Value saved: " & local!selectedFoodType,
        choiceLabels: index(local!foodTypes, "name", null),
        placeholder: "--- Select Food Type ---",
        /* choiceValues gets the CDT/dictionary rather than the ids */
        choiceValues: local!foodTypes,
        value: local!selectedFoodType,
        saveInto: local!selectedFoodType
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

1.  Select the choices in the dropdown and notice that the instructions are updated to reflect the value of the variable that is saved, in this case the entire CDT.
    -   When testing offline, the instructions do not update, but the same value is saved.

## Notable implementation details

-   Saving the entire CDT saves you from having to store the id and query the entire object separately when you need to display attributes of the selected CDT elsewhere on the form.
-   When you configure your dropdown, replace the value of `local!foodTypes` with a CDT array that is the result of `a!queryEntity()` or `a!queryRecordType()`. These functions allow you to retrieve only the fields that you need to configure your dropdown.
-   This technique is well suited for selecting lookup values for nested CDTs. Let's say you have a project CDT and each project can have zero, one, or many team members. Team members reference the employee CDT. Use this technique when displaying a form to the end user for selecting team members.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...