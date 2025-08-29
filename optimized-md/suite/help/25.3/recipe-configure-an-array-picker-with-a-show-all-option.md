---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-an-array-picker-with-a-show-all-option.html
original_path: recipe-configure-an-array-picker-with-a-show-all-option.html
version: "25.3"
title: "Configure an Array Picker with a Show All Option"
page_id: "recipe-configure-an-array-picker-with-a-show-all-option"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure an Array Picker with a Show All Option

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

Allow users to choose from a long text array using an autocompleting picker, but also allow them to see the entire choice set using a dropdown.

![screenshot of an empty text bar for the array picker with a show all option](images/SAIL_Recipe_Picker_with_Show_All.png)

Dropdowns with many choices can be a little unwieldy, but when there is doubt about even the first letters of an option they can be very useful.

This scenario demonstrates:

-   How to create a link that replace one component with another
-   How to save a value in one component and be able to see those results in another component

## Setup

The main expression uses a supporting rule, so let's create that first.

-   `ucArrayPickerFilter`: Scans labels that match the text entered by the user and returns a DataSubset for use in the picker component.

Create expression rule `ucArrayPickerFilter` with the following rule inputs:

-   filter (Text)
-   labels (Text Array)
-   identifiers (Text Array)

Enter the following definition for the rule:

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
  local!matches: where(
    a!forEach(
      items: ri!labels,
      expression: search( ri!filter, fv!item)
    )
  ),
  a!dataSubset(
    data: index( ri!labels, local!matches),
    identifiers: index( ri!identifiers, local!matches)
  )
)
```

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
45
46
47
48
49
a!localVariables(
  local!pickedState,
  /*
  * local!showPicker is used as a field toggle. When set to true, a picker and link
  * will be visible. The link field with set this to false when clicked, showing a dropdown.
  */
  local!showPicker: true,
  local!stateLabels: { "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming" },
  local!stateAbbreviations: { "AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY" },
  a!sectionLayout(
    contents:{
      a!linkField(
        links: a!dynamicLink(
          label: "Show All",
          value: false,
          saveInto: local!showPicker,
          showWhen: local!showPicker
        )
      ),
      a!pickerFieldCustom(
        label: "States",
        instructions: "Enter the employee's state of residence.",
        maxSelections: 1,
        /*
        * To use with your data, replace local!stateLabels with the datapoint  you wish to be displayed and
        * local!stateAbbreviations with the datapoint you eventually want to save.
        */
        suggestFunction: rule!ucArrayPickerFilter(filter: _, labels: local!stateLabels, identifiers: local!stateAbbreviations),
        selectedLabels: a!forEach(
          items: local!pickedState,
          expression: index(local!stateLabels, wherecontains(fv!item, local!stateAbbreviations))
        ),
        value: local!pickedState,
        saveInto: local!pickedState,
        showWhen: local!showPicker
      ),
      a!dropdownField(
        label: "States",
        instructions: "Enter the employee's state of residence.",
        choiceLabels: local!stateLabels,
        placeholder: "Select a US state",
        choiceValues: local!stateAbbreviations,
        value: local!pickedState,
        saveInto: local!pickedState,
        showWhen: not( local!showPicker )
      )
    }
  )
)
```

## Test it out

1.  Click the "Show All" link and see how the picker changes to a dropdown. In this example there is no link to switch back to a picker, but one could easily be added.
2.  Now make a selection with the picker. Then click "Show All". Notice how, since they use the same variable as a value, the dropdown is set to the value previously selected with the picker.

## Notable Implementation Details

-   A support rule is needed for the _suggestFunction_ because we need to partially evaluate the suggested filter.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...