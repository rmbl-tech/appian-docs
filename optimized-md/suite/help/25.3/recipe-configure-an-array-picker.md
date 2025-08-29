---
source_url: https://docs.appian.com/suite/help/25.3/recipe-configure-an-array-picker.html
original_path: recipe-configure-an-array-picker.html
version: "25.3"
title: "Configure an Array Picker"
page_id: "recipe-configure-an-array-picker"
section: "Goal"
tags: ["appian","docs","v25.3"]
---


Free cookie consent management tool by [TermsFeed](https://www.termsfeed.com/)

# Configure an Array Picker

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

Allow users to choose from a long text array using an auto-completing picker.

Also, allow users to work with user-friendly long labels but submit machine-friendly abbreviations.

![screenshot of an array picker with state names](images/SAIL_Recipe_Custom_Picker.png)

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

Now that we've created the supporting rule, let's move on to the main expression.

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
a!localVariables(
  local!pickedState,
  local!stateLabels: { "Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming" },
  local!stateAbbreviations: { "AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY" },
  a!pickerFieldCustom(
    label: "State of Residence",
    instructions: "Value saved: " & local!pickedState,
    placeholder: "Type to select the employee's state of residence",
    maxSelections: 1,
    suggestFunction: rule!ucArrayPickerFilter(
      filter:_ ,
      labels: local!stateLabels,
      identifiers: local!stateAbbreviations
    ),
    selectedLabels: a!forEach(
      items: local!pickedState,
      expression: index(local!stateLabels, wherecontains(fv!item, local!stateAbbreviations))
    ),
    value: local!pickedState,
    saveInto: local!pickedState
  )
)

```

## Test it out

1.  Type in the picker field. Even if you don't know for sure how to spell the state you want or what its abbreviation is, the picker constrains your choices to valid states.
2.  Select a state. Notice that because of the _maxSelections_ configuration, once you select a state you must remove the selected state first before selecting an new state.
3.  Remove a selection by clicking on the **X** after the label. Now you can add another one.

## Notable Implementation Details

-   A support rule is needed for the _suggestFunction_ because we need to partially evaluate the suggested filter.

## Feedback

Was this page helpful?

SHARE FEEDBACK

Loading...