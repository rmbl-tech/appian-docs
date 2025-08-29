---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-cascading-dropdowns.html
original_path: recipe-configure-cascading-dropdowns.html
version: "25.3"
---

Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure Cascading Dropdowns

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

Show different dropdown options depending on the user selection.

![screenshot example of a cascading dropdown for department and title](images/SAIL-recipe-cascading-dropdown.png)

This scenario demonstrates:

-   How to setup a dropdown field's choice labels and values based of another dropdown's selection.
-   How to clear a child dropdown selection when the parent dropdown value changes.

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
40
41
42
43
44
a!localVariables(
  local!selectedDepartment,
  local!selectedTitle,
  /*
    * Hardcoded values are stored here through the choose function. Typically
    * this data would live with the department in a lookup value. In that case
    * local!selectedDepartment would act as a filter on that query to bring
    * back titles by department.
    */
  local!availableTitles:choose(
    if(isnull(local!selectedDepartment), 1, local!selectedDepartment),
    {"CEO","CFO","COO","Executive Assistant"},
    {"Director","Quality Engineer","Manager","Software Engineer"},
    {"Accountant","Manager","Director"},
    {"Coordinator","Director","Manager"},
    {"Consultant","Principal Consultant","Senior Consultant"},
    {"Account Executive","Director","Manager"}
  ),
  a!sectionLayout(
    label: "Example: Cascading Dropdowns",
    contents: {
      a!dropdownField(
        label: "Department",
        choiceLabels: { "Corporate", "Engineering", "Finance", "Human Resources", "Professional Services", "Sales" },
        choiceValues: { 1, 2, 3, 4, 5, 6 },
        placeholder: "-- Select a Department -- ",
        value: local!selectedDepartment,
        saveInto: {
          local!selectedDepartment,
          a!save(local!selectedTitle, null)
        }
      ),
      a!dropdownField(
        label: "Title",
        choiceLabels: local!availableTitles,
        choiceValues: local!availableTitles,
        placeholder: "--- Select a Title ---",
        value: local!selectedTitle,
        saveInto: local!selectedTitle,
        disabled: isnull(local!selectedDepartment)
      )
    }
  )
)
```

## Test it out

1.  Select "Corporate" in the first dropdown. Notice that the second dropdown is now enabled and shows the Corporate Titles. Select a title.
2.  Next, change the first dropdown to "Human Resources" and notice that the second dropdown now shows the placeholder text so that the user can select an applicable title.

## Notable implementation details

The value of the second dropdown is reset to null when the first dropdown's value changes to ensure that the value of the selected model always matches what the user sees in the UI.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...